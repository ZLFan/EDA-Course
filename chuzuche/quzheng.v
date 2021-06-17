module quzheng ( M_int,M_dec,Mile ) ;	//取整模块
	input [12:0] M_int ;  //输入的里程整数
	input [3:0] M_dec ;	//输入的里程小数
	output [12:0] Mile ;
	reg [12:0] Mile ;
	always @ ( M_int,M_dec )
		begin
			if (M_dec !=0)	Mile <= M_int+1 ;	//不满一公里的，按一公里计算，即整数部分加一
				else Mile <= M_int ;		//为零则整数不变
		end
endmodule