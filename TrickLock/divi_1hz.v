module divi_1hz(clk,divi_1hz); 
  input clk; 
  output reg divi_1hz; 
  reg [24:0] count_reg1; //����һ��25λ�ļ���ֵ
  always@(posedge clk)
    if(count_reg1==25'd4999999) //��50Mhz / 5hz��/ 2 - 1
      begin
        divi_1hz <= ~ divi_1hz; //�ߵ͵�ƽ��ת
        count_reg1 <= 25'd0; //����ֵ����
      end
    else
      begin 
        count_reg1 <= count_reg1 + 25'd1;
      end
endmodule