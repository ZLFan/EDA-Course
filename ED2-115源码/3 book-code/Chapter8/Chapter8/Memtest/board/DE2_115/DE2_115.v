module DE2_115 (
 
  //////// CLOCK //////////
  CLOCK_50,
  KEY,
  
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
	DRAM_WE_N

);

  input                 CLOCK_50;
  input       [3:0]     KEY;
  
  //////////// SDRAM //////////
output	    [12:0]		DRAM_ADDR;
output		  [1:0]		DRAM_BA;
output		        		DRAM_CAS_N;
output		        		DRAM_CKE;
output		        		DRAM_CLK;
output		        		DRAM_CS_N;
inout		    [31:0]		DRAM_DQ;
output		  [3:0]		DRAM_DQM;
output		         	DRAM_RAS_N;
output		         	DRAM_WE_N;

wire                    clk; 
wire                    reset_n;
wire                    locked;

assign    reset_n = KEY[0];

sys_pll sys_pll_inst(
    .inclk0(CLOCK_50),
		.c0(clk)
 );

    top_system u0 (
        .clk_clk             (clk),             //             clk.clk
        .reset_n_reset_n     (reset_n),     //         reset_n.reset_n
        .sdram_addr          (DRAM_ADDR),          //           sdram.addr
        .sdram_we_n          (DRAM_WE_N),          //                .we_n
        .sdram_ras_n         (DRAM_RAS_N),         //                .ras_n
        .sdram_dq            (DRAM_DQ),            //                .dq
        .sdram_cke           (DRAM_CKE),           //                .cke
        .sdram_cs_n          (DRAM_CS_N),          //                .cs_n
        .sdram_ba            (DRAM_BA),            //                .ba
        .sdram_dqm           (DRAM_DQM),           //                .dqm
        .sdram_cas_n         (DRAM_CAS_N),         //                .cas_n
        .outclk_to_sdram_clk (DRAM_CLK)  // outclk_to_sdram.clk
    );
	 
endmodule
