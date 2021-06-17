module SDRAM_CONTROL
	(
		//////// CLOCK //////////
		CLOCK_50,

		//////// KEY //////////
		KEY,

		//////// SEG7 //////////
		HEX0,
		HEX1,
		HEX2,
		HEX3,

		//////// SDRAM //////////
		DRAM_ADDR,
		DRAM_BA,
		DRAM_CAS_N,
		DRAM_CKE,
		DRAM_CLK,
		DRAM_CS_N,
		DRAM_DQ,
		DRAM_DQM,
		DRAM_RAS_N,
		DRAM_WE_N,
	);

//===========================================================================
// PARAMETER declarations
//===========================================================================


//===========================================================================
// PORT declarations
//===========================================================================
//////////// CLOCK //////////
input		          		CLOCK_50;

//////////// KEY //////////
input		     [3:0]		KEY;

//////////// SEG7 //////////
output		     [6:0]		HEX0;
output		     [6:0]		HEX1;
output		     [6:0]		HEX2;
output		     [6:0]		HEX3;

//////////// SDRAM //////////
output		    [12:0]		DRAM_ADDR;
output		     [1:0]		DRAM_BA;
output		          		DRAM_CAS_N;
output		          		DRAM_CKE;
output		          		DRAM_CLK;
output		          		DRAM_CS_N;
inout		    [31:0]		DRAM_DQ;
output		     [3:0]		DRAM_DQM;
output		          		DRAM_RAS_N;
output		          		DRAM_WE_N;

//=============================================================================
// REG/WIRE declarations
//=============================================================================
reg     [7:0]   counter;
reg     [1:0]   key1_dly, key2_dly;
reg    [15:0]   display_latch;
wire   [15:0]   display;
wire            read;
reg             latch;
wire            counter_max;
reg             wr1_wen;
wire				    clk_27m;
//=============================================================================
// Structural coding
//=============================================================================
assign  counter_max = &counter; 
assign  write = key1_dly[1] && !key1_dly[0];
assign  read = key2_dly[1] && !key2_dly[0];

pll_27	pll_27_inst (
	.inclk0 ( CLOCK_50 ),
	.c0 ( clk_27m )
	);
	
always @ (posedge clk_27m or negedge KEY[0])
    if (!KEY[0])
    begin
    	key1_dly <= 2'b11;
    	key2_dly <= 2'b11;
    	counter <= 0;
    	wr1_wen <= 1'b0;
    	latch <= 1'b0;
    end
    else	
    begin
      key1_dly <= {key1_dly[0],KEY[1]};
      key2_dly <= {key2_dly[0],KEY[2]};
	    if (wr1_wen)
	       counter <= counter + 1;
      if (write)
         wr1_wen <= 1'b1;
      else if (counter_max)
      	 wr1_wen <= 1'b0;
      latch <= read;
      if (latch)
         display_latch <= display;
    end

//	SDRAM frame buffer
Sdram_Control	u1	(	//	HOST Side
						  .REF_CLK(clk_27m),
						  .RESET_N(1'b1),
							//	FIFO Write Side 1
						  .WR1_DATA({8'b0, counter}),
							.WR1(wr1_wen),
							.WR1_ADDR(0),
							.WR1_MAX_ADDR(256),
							.WR1_LENGTH(9'h40),
							.WR1_LOAD(!KEY[0]),
							.WR1_CLK(clk_27m),
							//	FIFO Read Side 1
						  .RD1_DATA(display),
				      .RD1(read),
				      .RD1_ADDR(0),	
							.RD1_MAX_ADDR(256),
							.RD1_LENGTH(9'h40),
				      .RD1_LOAD(!KEY[0] || wr1_wen),
							.RD1_CLK(clk_27m),
							//	SDRAM Side
						  .SA(DRAM_ADDR),
						  .BA(DRAM_BA),
						  .CS_N(DRAM_CS_N),
						  .CKE(DRAM_CKE),
						  .RAS_N(DRAM_RAS_N),
				      .CAS_N(DRAM_CAS_N),
				      .WE_N(DRAM_WE_N),
						  .DQ(DRAM_DQ),
				      .DQM({DRAM_DQM}),
							.SDR_CLK(DRAM_CLK)	);
							
SEG7_LUT	u2	(	HEX0,display_latch[3:0]	 );
SEG7_LUT	u3	(	HEX1,display_latch[7:4]	 );
SEG7_LUT	u4	(	HEX2,display_latch[11:8]  );
SEG7_LUT	u5	(	HEX3,display_latch[15:12] );

endmodule
