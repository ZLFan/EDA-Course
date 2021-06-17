module count6b(clk,addr);
input clk;
output reg[5:0]addr;
always@(posedge clk)
begin
 addr<=addr+6'b000001;
end
endmodule
