module displayMail(
input clk,
input rst,
input [15:0]distance,
output reg[6:0]seg6,
output reg[6:0]seg7
);
wire [3:0]bit;
wire [3:0]ten;
wire [3:0]hundred;
assign bit=distance%10;
assign ten=distance/10%10;
always@(posedge clk)
begin
	if(!rst)
	begin
		case(bit)
		4'h0:seg6=7'b1000000;
		4'h1:seg6=7'b1111001;
		4'h2:seg6=7'b0100100;
		4'h3:seg6=7'b0110000;
		4'h4:seg6=7'b0011001;
		4'h5:seg6=7'b0010010;
		4'h6:seg6=7'b0000010;
		4'h7:seg6=7'b1111000;
		4'h8:seg6=7'b0000000;
		4'h9:seg6=7'b0010000;
		4'ha:seg6=7'b0001000;
		4'hb:seg6=7'b0000011;
		4'hc:seg6=7'b1000110;
		4'hd:seg6=7'b0100001;
		4'he:seg6=7'b0000110;
		4'hf:seg6=7'b0001110;
		default:seg6=7'b1111111;
		endcase
		case(ten)
		4'h0:seg7=7'b1000000;
		4'h1:seg7=7'b1111001;
		4'h2:seg7=7'b0100100;
		4'h3:seg7=7'b0110000;
		4'h4:seg7=7'b0011001;
		4'h5:seg7=7'b0010010;
		4'h6:seg7=7'b0000010;
		4'h7:seg7=7'b1111000;
		4'h8:seg7=7'b0000000;
		4'h9:seg7=7'b0010000;
		4'ha:seg7=7'b0001000;
		4'hb:seg7=7'b0000011;
		4'hc:seg7=7'b1000110;
		4'hd:seg7=7'b0100001;
		4'he:seg7=7'b0000110;
		4'hf:seg7=7'b0001110;
		default:seg7=7'b1111111;
		endcase
	end
	else 
	begin
		seg6=7'b1000000;
		seg7=7'b1000000;
	end
end
endmodule