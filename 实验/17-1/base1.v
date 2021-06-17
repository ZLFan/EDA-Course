module  base1(en,clk,addr,data);
input en;
input clk;
output reg [3:0]addr;
output reg [3:0]data;


always@(posedge clk, posedge en)
begin
 if(en==1)
  begin
   if(addr==0||data==0||addr==1||data==1)
    begin 
	   addr<=addr+1;
      data<=data+1;
    end
   else
    begin 
      addr<=0;
      data<=0;
    end
   end
 else if(addr<4'b1111)
 begin
  addr<=addr+1;
  data<=data+1;
  end
  else
  begin
  addr<=4'bz;
  data<=4'bz;
 end
end
endmodule
