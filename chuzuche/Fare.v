module Fare ( CLK,RST,Mile,T_fare ) ;		//计费模块
	parameter S_price=10 , Fuel=1;			//起步价10元，燃油附加费1元
	input CLK,RST ;
	input [12:0]Mile ;	//取整后的里程输入
	output [12:0] T_fare ;		//总的车费
	reg [12:0] Q1 ;
	always @ (posedge CLK or posedge RST)
		begin 
			if(RST)	Q1<=0 ;
			else if(Mile<=3)	 Q1 <= S_price+Fuel ;	//小于3公里，起步价11元
					else if(Q1<20)	Q1 <= S_price+Fuel+2*(Mile-3) ;	//大于11小于20元每公里加收2元
						else	Q1 <= S_price+Fuel+3*(Mile-3) ;//大于20元每公里加收3元
		end
	assign T_fare = Q1 ;
endmodule