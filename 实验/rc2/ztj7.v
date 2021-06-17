module ztj7(clk,en,a,b,c,d,e,f,g,se);
parameter s0=1,s1=2,s2=3,s3=4,s4=5,s5=6,s6=7,s7=8;
input clk;
input [7:0]en;
output a,b,c,d,e,f,g;
output [7:0]se;
reg [6:0]seg;
assign se=en;
always @(posedge clk)
begin
		case(seg)
			s0:seg<=s1;
			s1:seg<=s2;
			s2:seg<=s3;
			s3:seg<=s4;
			s4:seg<=s5;
			s5:seg<=s6;
			s6:seg<=s7;
			s7:seg<=s0;
			default:seg<=s0;
		endcase

end
 assign a=seg[0];
 assign b=seg[1];
 assign c=seg[2];
 assign d=seg[3];
 assign e=seg[4];
 assign f=seg[5];
 assign g=seg[6];
 endmodule