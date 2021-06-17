module IR_control (
		clk,
		iRST_N ,
		code,
		tone_switch,
		autoplay,
		channel1,
		channel2
	 );
	 //=======================================================
    //  PORT declarations
    //=======================================================
    input 			clk,
	 input   		iRST_N  ;
    input [7:0] 	code;
    output 			tone_switch,autoplay,channel1,channel2;
    reg 				tone_switch,autoplay,channel1,channel2;
	 
	 //=============================================================================
    // Structural coding
    //=============================================================================
    always @ (posedge clk or negedge iRST_N  )
    begin
        if(!iRST_N)
        begin
            tone_switch <= 1'b0;
            autoplay <= 1'b0;
            channel1 <= 1'b0;
            channel2 <= 1'b0;
        end
        else
        begin
            case (code)
                8'h01 :
                    tone_switch <= 1'b0;
                8'h02 :
                    tone_switch <= 1'b1;
                8'h03 :
                    autoplay <= 1'b0;
                8'h04 :
                    autoplay <= 1'b1;

                8'h1A :
                    channel1 <= 1'b0;

                8'h1E :
                    channel1 <= 1'b1;
                8'h1B :
                    channel2 <= 1'b0;
                8'h1F :
                    channel2 <= 1'b1;
            endcase
        end
    end
endmodule
