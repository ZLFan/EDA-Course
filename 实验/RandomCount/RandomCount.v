module RandomCount(clk,rst,A,B,C,D,E,F,G,DP,DS);
input clk,rst;
output wire A,B,C,D,E,F,G,DP,DS;
wire clk_1hz;
wire [2:0]cq;
//divi_1hz
divi_1hz u1(clk,clk_1hz);
//fsm7
fsm7 u2(clk_1hz,rst,cq);
//seg
seg u3(cq,A,B,C,D,E,F,G,DP,DS);
endmodule
