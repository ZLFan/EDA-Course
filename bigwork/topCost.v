module topCost(
input clk,
input rst,
input set,//预置信号
input [2:0]initcost,//起步价
input [2:0]percost,//单价
input [2:0]addmail,//加费里程
input [15:0]distence,
output [6:0]seg0,
output [6:0]seg1,
output [6:0]seg2,
output [6:0]seg3
);
wire [15:0]fare;

//计费模块
cost a1(
clk,//时钟信号
rst,//车停止信号
set,//预置信号
initcost,//起步价
percost,//单价
addmail,//加费里程
distence,//行程
fare//车费
);
//费用显示模块
displayCost displayCost(
clk,//时钟信号
rst,//停止信号
fare,//车费
seg0,//HEX0
seg1,//HEX1
seg2,//HEX2
seg3
);
endmodule
