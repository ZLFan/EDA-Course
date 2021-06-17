module divi_500hz(clk,divi_500hz); 
  input clk; 
  output reg divi_500hz; 
  reg [24:0] count_reg1; //����һ��25λ�ļ���ֵ
  always@(posedge clk)
    if(count_reg1==25'd49999) //��50Mhz / 500hz��/ 2 - 1
      begin
        divi_500hz <= ~ divi_500hz; //�ߵ͵�ƽ��ת
        count_reg1 <= 25'd0; //����ֵ����
      end
    else
      begin 
        count_reg1 <= count_reg1 + 25'd1;
      end
endmodule