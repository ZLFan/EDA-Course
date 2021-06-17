module clk_div(	
		
			input	wire				clk,
			input	wire				rst_n,
			output	reg			clk_20K

		);
		
	reg [19:0]	cnt;

	always @(posedge clk or negedge rst_n)
	if(!rst_n)
		cnt <= 20'd0;
	else if(cnt == 20'd1250 - 1)
		cnt <= 20'd0;
	else
		cnt <= cnt + 1'b1;

	always @(posedge clk or negedge rst_n)
	if(!rst_n)
		clk_20K <= 1'b1;
	else if(cnt == 20'd1250 - 1)
		clk_20K <= ~clk_20K;
	else
		clk_20K <= clk_20K;
endmodule
