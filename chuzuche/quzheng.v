module quzheng ( M_int,M_dec,Mile ) ;	//ȡ��ģ��
	input [12:0] M_int ;  //������������
	input [3:0] M_dec ;	//��������С��
	output [12:0] Mile ;
	reg [12:0] Mile ;
	always @ ( M_int,M_dec )
		begin
			if (M_dec !=0)	Mile <= M_int+1 ;	//����һ����ģ���һ������㣬���������ּ�һ
				else Mile <= M_int ;		//Ϊ������������
		end
endmodule