//以十进制输出cost
module displayCost(
input clk,
input rst,
input [15:0]cost,
output reg[6:0]seg0,
output reg[6:0]seg1,
output reg[6:0]seg2,
output reg[6:0]seg3
);
wire [3:0]bit;
wire [3:0]ten;
wire [3:0]hundred;
assign bit=cost%10;
assign ten=cost/10%10;
assign hundred=cost/100%10;
always@(posedge clk)
begin
	//if(!rst)
	//begin
		case(bit)
		4'h0:seg0=7'b1000000;
		4'h1:seg0=7'b1111001;
		4'h2:seg0=7'b0100100;
		4'h3:seg0=7'b0110000;
		4'h4:seg0=7'b0011001;
		4'h5:seg0=7'b0010010;
		4'h6:seg0=7'b0000010;
		4'h7:seg0=7'b1111000;
		4'h8:seg0=7'b0000000;
		4'h9:seg0=7'b0010000;
		4'ha:seg0=7'b0001000;
		4'hb:seg0=7'b0000011;
		4'hc:seg0=7'b1000110;
		4'hd:seg0=7'b0100001;
		4'he:seg0=7'b0000110;
		4'hf:seg0=7'b0001110;
		default:seg0=7'b1111111;
		endcase
		case(ten)
		4'h0:seg1=7'b1000000;
		4'h1:seg1=7'b1111001;
		4'h2:seg1=7'b0100100;
		4'h3:seg1=7'b0110000;
		4'h4:seg1=7'b0011001;
		4'h5:seg1=7'b0010010;
		4'h6:seg1=7'b0000010;
		4'h7:seg1=7'b1111000;
		4'h8:seg1=7'b0000000;
		4'h9:seg1=7'b0010000;
		4'ha:seg1=7'b0001000;
		4'hb:seg1=7'b0000011;
		4'hc:seg1=7'b1000110;
		4'hd:seg1=7'b0100001;
		4'he:seg1=7'b0000110;
		4'hf:seg1=7'b0001110;
		default:seg1=7'b1111111;
		endcase
		case(hundred)
		4'h0:seg2=7'b1000000;
		4'h1:seg2=7'b1111001;
		4'h2:seg2=7'b0100100;
		4'h3:seg2=7'b0110000;
		4'h4:seg2=7'b0011001;
		4'h5:seg2=7'b0010010;
		4'h6:seg2=7'b0000010;
		4'h7:seg2=7'b1111000;
		4'h8:seg2=7'b0000000;
		4'h9:seg2=7'b0010000;
		4'ha:seg2=7'b0001000;
		4'hb:seg2=7'b0000011;
		4'hc:seg2=7'b1000110;
		4'hd:seg2=7'b0100001;
		4'he:seg2=7'b0000110;
		4'hf:seg2=7'b0001110;
		default:seg2=7'b1111111;
		endcase
		case(0)
		4'h0:seg3=7'b1000000;
		4'h1:seg3=7'b1111001;
		4'h2:seg3=7'b0100100;
		4'h3:seg3=7'b0110000;
		4'h4:seg3=7'b0011001;
		4'h5:seg3=7'b0010010;
		4'h6:seg3=7'b0000010;
		4'h7:seg3=7'b1111000;
		4'h8:seg3=7'b0000000;
		4'h9:seg3=7'b0010000;
		4'ha:seg3=7'b0001000;
		4'hb:seg3=7'b0000011;
		4'hc:seg3=7'b1000110;
		4'hd:seg3=7'b0100001;
		4'he:seg3=7'b0000110;
		4'hf:seg3=7'b0001110;
		default:seg3=7'b1111111;
		endcase
	//end
	//else 
	//begin
		//seg0=7'b1111111;
		//seg1=7'b1111111;
		//seg2=7'b1111111;
		//seg3=7'b1111111;
	//end
end
endmodule
