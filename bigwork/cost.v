//1.计费功能
////起步费为10.00元，
////车行3公里后再按2元/公里
////当计费器计费达到或超过一定收费(如20元)时，每公里加收50%的车费
//车停止不计费。
module cost(
input clk,//时钟信号
input rst,//车停止信号
input set,//预置信号
input [2:0]initcost,//起步价
input [2:0]percost,//单价
input [2:0]addmail,//加费里程
input [15:0]distence,//行程
output[15:0]fare//车费
);
reg[15:0]f;
reg [3:0]init;
reg [3:0]per;
reg [3:0]inm;

always@(posedge clk)
begin
	if(set)
		begin
			init=initcost;
			per=percost;
			inm=addmail;
		end
	else
		begin
			init=4'd10;
			per=4'd2;
			inm=4'd7;
		end
end

always@(posedge clk)
begin
	if(!rst)
	begin
		if(distence<3)
			f=init;
		else if(distence<7)
		begin
			f=init+(distence-3)*2;
		end
		else 
		begin
			if(!set) f=10+(distence-7)*3+8;
			else f=((distence-inm)*per/2*3)+init+(inm-3)*per;
		end
	end
	else 
	begin
		f=0;
	end
end
assign fare=f;
endmodule
