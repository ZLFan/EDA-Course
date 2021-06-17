module FDIV ( CLK, K);	//��Ƶ�����
	input CLK ;
	output K ;
	reg[12:0] count ;	reg M1 ;
	parameter ratio=50 ;	//�����Ƶ��Ϊ50�����ǲ�ͬ������̥�������˲���
	
	always @(posedge CLK)
	begin
		if (count==ratio-1) 	count<=0 ;	else count<= count+1 ;
		if (count==0)	M1 <= ~M1;	else if (count==ratio/2)	M1 <= ~M1 ;
	end
	assign K=M1 ;
endmodule 	