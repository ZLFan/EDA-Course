module Fare ( CLK,RST,Mile,T_fare ) ;		//�Ʒ�ģ��
	parameter S_price=10 , Fuel=1;			//�𲽼�10Ԫ��ȼ�͸��ӷ�1Ԫ
	input CLK,RST ;
	input [12:0]Mile ;	//ȡ������������
	output [12:0] T_fare ;		//�ܵĳ���
	reg [12:0] Q1 ;
	always @ (posedge CLK or posedge RST)
		begin 
			if(RST)	Q1<=0 ;
			else if(Mile<=3)	 Q1 <= S_price+Fuel ;	//С��3����𲽼�11Ԫ
					else if(Q1<20)	Q1 <= S_price+Fuel+2*(Mile-3) ;	//����11С��20Ԫÿ�������2Ԫ
						else	Q1 <= S_price+Fuel+3*(Mile-3) ;//����20Ԫÿ�������3Ԫ
		end
	assign T_fare = Q1 ;
endmodule