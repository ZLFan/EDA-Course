module divclk(
input clk,
input rst,
output divi_1hz
);
reg divi;
 reg [31:0] count_reg1; //定义一个25位的计数值
  always@(posedge clk)
    if(count_reg1==32'd39999999) //（50Mhz / 5hz）/ 2 - 1
      begin
        divi <= ~ divi; //高低电平翻转
        count_reg1 <= 32'd0; //计数值清零
      end
    else
      begin 
        count_reg1 <= count_reg1 + 32'd1;
      end
assign divi_1hz=divi;
endmodule
