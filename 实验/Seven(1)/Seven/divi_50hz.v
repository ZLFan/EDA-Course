module divi_50hz(clk,divi_50hz); 
  input clk; 
  output reg divi_50hz; 
  reg [24:0] count_reg1; //����һ��25λ�ļ���ֵ
  always@(posedge clk)
    if(count_reg1==25'd499999) //��50Mhz / 50hz��/ 2 - 1
      begin
        divi_50hz <= ~ divi_50hz; //�ߵ͵�ƽ��ת
        count_reg1 <= 25'd0; //����ֵ����
      end
    else
      begin 
        count_reg1 <= count_reg1 + 25'd1;
      end
endmodule