module seg(seg0,seg1,seg2,seg3,seg4,seg5,seg6,seg7,clk,rst);
input clk;
input rst;
output reg[6:0]seg0;
output reg[6:0]seg1;
output reg[6:0]seg2;
output reg[6:0]seg3;
output reg[6:0]seg4;
output reg[6:0]seg5;
output reg[6:0]seg6;
output reg[6:0]seg7;
always@(posedge clk)
begin
	if(!rst)
	begin
		seg0[6:0]=7'b00000010;
		seg1[6:0]=7'b1001111;
		seg2[6:0]=7'b1101101;
		seg3[6:0]=7'b1111001;      
		seg4[6:0]=7'b0110011;      
		seg5[6:0]=7'b0011111;      
		seg6[6:0]=7'b1011111; 
		seg7[6:0]=7'b1111111; 
	end
	else 
	begin
		seg0[6:0]=7'b1111111;
		seg1[6:0]=7'b1111111;
		seg2[6:0]=7'b1111111;
		seg3[6:0]=7'b1111111;      
		seg4[6:0]=7'b1111111;      
		seg5[6:0]=7'b1111111;      
		seg6[6:0]=7'b1111111; 
		seg7[6:0]=7'b1111111; 
	end
end

endmodule
