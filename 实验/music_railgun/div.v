module div(in_clk,rst,clk_4,addr);
input in_clk,rst;
output reg [9:0]addr;
output reg clk_4;
reg [31:0] count_4;

always@(posedge in_clk or negedge rst)
	begin
	if(!rst)
		begin
		clk_4<=1'b0;
		count_4<=32'b0;
		end
	else if(count_4==50000000/(8*2)-1)
		begin
		clk_4<=~clk_4;
		count_4<=32'd0;
		end
	else count_4<=count_4+32'd1;
	end

always@(posedge clk_4 or negedge rst)
	begin
	if(!rst) addr<=9'd0;
	else if(addr==9'd420) addr<=9'd0;
	else addr<=addr+9'd1;
	end
endmodule
