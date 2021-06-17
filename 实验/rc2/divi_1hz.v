module divi_1hz(clk,clk_1hz);
 input clk;
 output reg clk_1hz;
 reg [39:0]count;
 always@(posedge clk)
 begin
  if(count==24999999)
  begin
   clk_1hz<=~clk_1hz;
   count<=0;
  end
  else
  begin
   count=count+1;
  end
 end
endmodule
