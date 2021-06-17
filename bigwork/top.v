module top(
input clk,
input rst,
input stop,
input add,
input dec,
input set,//预置信号
input [2:0]initcost,//起步价
input [2:0]percost,//单价
input [2:0]addmail,//加费里程
output [6:0]seg0,
output [6:0]seg1,
output [6:0]seg2,
output [6:0]seg3,
output [6:0]seg4,
output [6:0]seg5,
output [6:0]seg6,
output [6:0]seg7,
output [17:0]led
);
wire [15:0]distence;
wire divi_1hz;
wire [15:0]speed;
//计费模块
simulateCar u1(
divi_1hz,
stop,//暂停
rst,//停止
add,//加速
dec,//
distence,//里程
speed//车速,一个时钟周期行驶的里程，初始为1
);
//费用显示模块
displaySpeed u2(
divi_1hz,
rst,
speed,
seg4,
seg5//,
//seg6,
//seg7
);
displayMail uu(
divi_1hz,
rst,
distence,
seg6,
seg7//,
);

topCost u3(
divi_1hz,
rst,
set,//预置信号
initcost,//起步价
percost,//单价
addmail,//加费里程
distence,
seg0,
seg1,
seg2,
seg3
);
divclk u4(
clk,
rst,
divi_1hz
);
lantern u5(
clk,
rst,
stop,
speed,
led
);

endmodule
