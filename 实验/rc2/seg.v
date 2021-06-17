module seg(clk ,d_in,en,a,b,c,d,e,f,g,dp,ds);
input clk;
input[3:0]d_in;
input[7:0]en;//输入开关信号
//output ds;//控制只有一个七段数码管亮
output a,b,c,d,e,f,g,dp;
output reg [7:0]ds;//dp is raiex dot dp控制小数点，一直不亮，恒为0
reg[7:0]seg;//g,f,e,d,c,b,a,dp;输出七段数码管上的笔画

reg [2:0]count;
initial count = 0;
always@(posedge clk)
begin
 case(count)
  0:if(en[0])ds=8'b01111111;
	else ds=8'b11111111;
  1:
	if(en[1])ds=8'b10111111;
	else ds=8'b11111111;
  2:if(en[2])ds=8'b11011111;
	else ds=8'b11111111;
  3:if(en[3])ds=8'b11101111;
	else ds=8'b11111111;
  4:if(en[4])ds=8'b11110111;
	else ds=8'b11111111;
  5:if(en[5])ds=8'b11111011;
	else ds=8'b11111111;
  6:if(en[6])ds=8'b11111101;
	else ds=8'b11111111;
  7:if(en[7])ds=8'b11111110;
	else ds=8'b11111111;
 endcase
 count=(count+1)%8;
end

//控制只有一个七段数码管亮
always @(d_in)
	case(d_in)
		4'b0000:seg=8'b01111110;//0
		4'b0001:seg=8'b00001100;//1
		4'b0010:seg=8'b10110110;//2
		4'b0011:seg=8'b10011110;//3
		4'b0100:seg=8'b11001100;//4
		4'b0101:seg=8'b11011010;//5
		4'b0110:seg=8'b11111010;//6
		4'b0111:seg=8'b00001110;//7
		4'b1000:seg=8'b11111110;//8
		4'b1001:seg=8'b11011110;//9
		4'b1010:seg=8'b11101110;//a
		4'b1011:seg=8'b11111000;//b
		4'b1100:seg=8'b01110010;//c
		4'b1101:seg=8'b10111100;//d
		4'b1110:seg=8'b11110010;//e
		4'b1111:seg=8'b11100010;//f
		default:seg=8'b00000000;//全不亮
	endcase
assign a=seg[1];
assign b=seg[2];
assign c=seg[3];
assign d=seg[4];
assign e=seg[5];
assign f=seg[6];
assign g=seg[7];
assign dp=seg[0]; 

endmodule
