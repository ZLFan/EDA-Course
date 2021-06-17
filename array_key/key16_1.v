module key16_1(

			input		wire				clk,
			input		wire				rst_n,
			input		wire		[3:0]	row,
			output	reg		[3:0]	col,
			output  	reg		[4:0]	key_val

		);
	
	parameter T50Hz = 6'd400;
	
	reg [5:0]	cnt;

	always @(posedge clk or negedge rst_n)
	if(!rst_n) begin
		col <= 4'b1110;
		key_val <= 5'b1_1111;
		cnt <= 0;
	end
	else  if(cnt >= T50Hz - 1)begin
		cnt <= 0;
		col <= {col[2:0], col[3]};
		case({col , row})	
			8'b1110_1110	:	key_val[4:0] <= 0;
			8'b1101_1110	:	key_val[4:0] <= 1;
			8'b1011_1110	:	key_val[4:0] <= 2;
			8'b0111_1110	:	key_val[4:0] <= 3;
		
			8'b1110_1101	:	key_val[4:0] <= 4;
			8'b1101_1101	:	key_val[4:0] <= 5;
			8'b1011_1101	:	key_val[4:0] <= 6;
			8'b0111_1101	:	key_val[4:0] <= 7;
			
			8'b1110_1011	:	key_val[4:0] <= 8;
			8'b1101_1011	:	key_val[4:0] <= 9;
			8'b1011_1011	:	key_val[4:0] <= 10;
			8'b0111_1011	:	key_val[4:0] <= 11;
			
			8'b1110_0111	:	key_val[4:0] <= 12;
			8'b1101_0111	:	key_val[4:0] <= 13;
			8'b1011_0111	:	key_val[4:0] <= 14;
			8'b0111_0111	:	key_val[4:0] <= 15;

			default			:	key_val[4:0] <= 5'b1_1111;	
		endcase			
	end
	else	begin
		cnt <= cnt + 1'b1;
		key_val <= key_val;
	end
	
endmodule
