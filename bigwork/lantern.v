module lantern(
input clk,
input rst,
input stop,
input [15:0]speed,
output [17:0]led18
);
reg [17:0]led;
reg newclk;
reg [31:0]count_reg1;
initial
begin
	led=18'b1000_0000_0000_0000_00;
end
always@(posedge clk)
begin
	if(count_reg1>(32'd4999999-speed*500000)) //（50Mhz / 5hz）/ 2 - 1
      begin
        newclk <= ~ newclk; //高低电平翻转
        count_reg1 <= 32'd0; //计数值清零
      end
    else 
		//begin  
			//if(speed<5)
			//begin
				count_reg1 <= count_reg1+1;
			//end 
			//else 
			//begin 
				//count_reg1 <= count_reg1+2;
			//end
		//end
end
always@(posedge newclk)
begin
	if(rst)//停止
		led=18'b1000_0000_0000_0000_00;
	else if(stop)//暂停
		led=led;
	else
	begin
		led=led>>1;
		if(led==18'b0000_0000_0000_0000_01)
			led=18'b1000_0000_0000_0000_00;
	end
		
end
assign led18=led;
endmodule


