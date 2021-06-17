module simulateCar(
input clk,
input stop,//暂停
input rst,//停止
input add,//加速
input dec,//减速
output reg [15:0]distence,//里程
output reg [15:0]speed//车速,一个时钟周期行驶的里程，初始为1
);

always@(posedge clk)//车速控制
begin
if(rst)
	speed=0;
else if(stop)
	speed=0;
else
begin
	if(add)
		speed=speed+1;
	else if(dec&&speed)
		speed=speed-1;
	else if(speed)
		speed=speed;
	else 
		speed=0;
end
end

always@(posedge clk)//里程计算
begin
	if(rst)//停止
		distence=0;
	else if(stop)//暂停
		distence=distence;
	else
		distence=distence+speed;
end
endmodule
