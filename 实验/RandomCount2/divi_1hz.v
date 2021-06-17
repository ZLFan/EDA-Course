module divi_1hz(clk,clk_1hz);
 input clk;
 output reg clk_1hz;
 reg [39:0]count;
 always@(clk)
 begin
  if(count==40'd24999999)
  begin
   clk_1hz<=~clk_1hz;
   count<=40'd0;
  end
  else
  begin
   count=count+40'd1;
  end
 end
endmodule
