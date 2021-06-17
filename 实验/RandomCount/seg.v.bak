module seg(d_in,a,b,c,d,e,f,g,dp,ds);
input[3:0]d_in;//输入开关信号
output[7:0]ds;//控制只有一个七段数码管亮
output a,b,c,d,e,f,g,dp;//dp is raiex dot dp控制小数点，一直不亮，恒为0
reg[7:0]seg;//g,f,e,d,c,b,a,dp;输出七段数码管上的笔画

assign ds = 8'b01111111;//控制只有一个七段数码管亮
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
