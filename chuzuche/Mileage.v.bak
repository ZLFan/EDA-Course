module Mileage ( CLK,RST,Mile_int,Mile_dec ) ; 	//里程模块

	input CLK,RST ;	
	output [12:0] Mile_int ;	
output[3:0] Mile_dec ;	//定义小数和整数的里程以便取整
	reg [3:0] count1 ; reg [12:0] count2 ;
	
	always @(posedge CLK or posedge RST)
	begin
		if(RST)		begin	count1<=0 ; count2<=0 ; end		//里程清零
		else if (count1==9)	 begin count1<=0 ;count2<=count2+1 ;	end
			else	count1 <= count1+1 ;			//每一个脉冲小数里程加1，满十后整数部分加1
	end
	assign Mile_dec=count1 ;	assign Mile_int=count2 ;	
endmodule