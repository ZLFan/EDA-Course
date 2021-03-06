module rc2(clk,en,A,B,C,D,E,F,G,DP,DS);
input clk;input[7:0]en;
output wire A,B,C,D,E,F,G,DP;output[7:0]DS;

wire clk_1hz;
wire [3:0]cq;
//divi_1hz
divi_1hz u1(.clk(clk),.clk_1hz(clk_1hz));
//fsm7
fsm7 u2(.clk(clk_1hz),.cq(cq));
//seg
seg u3(.clk(clk_1hz),.d_in(cq),.en(en),.a(A),.b(B),.c(C),.d(D),.e(E),.f(F),.g(G),.dp(DP),.ds(DS));
//d_in,a,b,c,d,e,f,g,dp,ds;
endmodule
