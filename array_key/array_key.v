module array_key(

				input		wire						clk,
				input		wire						rst_n,

				input		wire			[3:0]		row,
				output	wire			[3:0]		col,
				
				output	wire			[2:0]		addr,
				output	wire			[7:0]		seg_n

			);
	
	wire			clk_20K;
	wire	[4:0]	key_val;

	clk_div clk_div_inst(	
		
			.clk			(clk),
			.rst_n		(rst_n),
			.clk_20K		(clk_20K)

		);
	
	key16_1 key16_1_inst(

			.clk			(clk_20K),
			.rst_n		(rst_n),
			.row			(row),
			.col			(col),
			.key_val		(key_val)

		);
		
	encoder encoder_inst(
				
			.data			(key_val),
			.seg_n		(seg_n)
				
			);
			
	assign addr = 3'd0;

endmodule
