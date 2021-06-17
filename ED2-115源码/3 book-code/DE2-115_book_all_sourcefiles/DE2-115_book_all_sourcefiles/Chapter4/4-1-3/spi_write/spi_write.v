`timescale 1ns/1ns
module  spi_write (
        CLK,
        SPC,
        SDAT,
        regdata,
        GO,      //GO transfor
        ORDY,
        reset,
        SCEN

    );
	 
	 //=======================================================
    //  PARAMETER declarations
    //=======================================================
	 
	 //=======================================================
    //  PORT declarations
    //=======================================================
    input  			CLK;
    input  			GO;
    input  			reset;
    input [15:0] 	regdata;

    //input  READ;
    inout  			SDAT;
    output 			SPC;
    output 			SCEN;
    output 			ORDY;
	 
	 //=======================================================
    //  REG/WIRE declarations
    //=======================================================
    wire				LDEN;
	 wire				SHEN;
	 wire				rstbitcount;
    wire  			bitcountEN;
    reg	[3:0]		bitcount;
    wire 			SCLK;
	 
	 //=======================================================
    //  Structural coding
	 //=======================================================
    spi_three_wire    spi1 (
                          .reset(reset),
								  .CLK(CLK),
								  .GO(GO),
								  .bitcount(bitcount),
                          .bitcountEN(bitcountEN),
								  .rstbitcount(rstbitcount),
                          .LDEN(LDEN),
								  .SHEN(SHEN),
								  .SCLK(SCLK),
								  .SCEN(SCEN),
								  .ORDY(ORDY),
								  .SPC(SPC));


    always @(posedge CLK or posedge reset)
    begin
        if (reset)
            bitcount <= 0;
        else
        begin
            if (rstbitcount)
                bitcount <= 0;
            else if (bitcountEN)
                bitcount <= bitcount+1;

        end
    end


    reg  [15:0] Q;
    always @(posedge CLK or posedge reset)
    begin
        if (reset)
            Q <= 0;
        else
        begin
            if (LDEN)
                Q <= regdata;
            else
                if (SHEN)
                begin
                    Q[15:1] <= Q[14:0];  //shift left
                    Q[0]   <= 0;
                end
        end
    end

    assign SDAT = (SCEN|SCLK) ? 1'bz:Q[15];

endmodule
