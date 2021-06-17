
module LTM_timing_control		(
        i_RGB_EN,iCLK, 	// LCD display clock
        iRST_n, 			// systen reset
        //LCD SIDE
        oHD,				// LCD Horizontal sync
        oVD,				// LCD Vertical sync
        oDEN,				// LCD Data Enable
        oLCD_R,			// LCD Red color data
        oLCD_G,         // LCD Green color data
        oLCD_B,         // LCD Blue color data

        Key,
		  gmRST,
		  oVGA_CLOCK,
		  oAddress,
		  oCoord_X,
		  oCoord_Y,
		  iRed,
		  iGreen,
		  iBlue,
		  );
    //============================================================================
    // PARAMETER declarations
    //============================================================================
    parameter 	H_LINE = 1056;
    parameter 	V_LINE = 525;
    parameter 	Hsync_Blank = 216;
    parameter 	Hsync_Front_Porch = 40;
    parameter 	Vertical_Back_Porch = 35;
    parameter 	Vertical_Front_Porch = 10;
    //===========================================================================
    // PORT declarations
    //===========================================================================
    input				iCLK,Key;
    input	[2:0]		i_RGB_EN;

    input				iRST_n;
    output	[7:0]		oLCD_R;
    output  [7:0]		oLCD_G;
    output  [7:0]		oLCD_B;
    output				oHD;
    output				oVD;
    output				oDEN; 
	 output				gmRST;
	 output				oVGA_CLOCK;

    input	[7:0]		iRed;
	 input	[7:0]		iGreen;
	 input	[7:0]		iBlue;

    output	[19:0]	oAddress;
	 reg		[19:0]	oAddress;
	 
    output 	[10:0] 	oCoord_X;
	 reg 		[10:0]   oCoord_X;
	 
	 output	[10:0]	oCoord_Y;
	 reg    	[10:0]	oCoord_Y;
    

    //=============================================================================
    // REG/WIRE declarations
    //=============================================================================
    reg		[10:0]   x_cnt;
    reg		[9:0]		y_cnt;
    reg		[7:0]		mred;
    reg		[7:0]		mgreen;
    reg		[7:0]		mblue;
    wire					display_area;
    reg					mhd;
    reg					mvd;
    reg					mden;
    reg					oHD;
    reg					oVD;
    reg					oDEN;
    reg		[7:0]		oLCD_R;
    reg		[7:0]		oLCD_G;
    reg		[7:0]		oLCD_B;
    wire		[1:0]		msel;
    reg		[7:0]		red_1;
    reg 		[7:0]		green_1;
    reg 		[7:0]		blue_1;
    reg 		[7:0]		graycnt;
    reg		[7:0]		pattern_data;
	 
	 

    //=============================================================================
    // Structural coding
    //=============================================================================
    assign gmRST = Key;

    // This signal indicate the lcd display area .
    assign	display_area = ((x_cnt>(Hsync_Blank-1)&& //>215
                            (x_cnt<(H_LINE-Hsync_Front_Porch))&& //< 1016
                            (y_cnt>(Vertical_Back_Porch-1))&&
                            (y_cnt<(V_LINE - Vertical_Front_Porch))
                           ))  ? 1'b1 : 1'b0;


    ///////////////////////// x  y counter  and lcd hd generator //////////////////
    always@(posedge iCLK or negedge iRST_n)
    begin
        if (!iRST_n)
        begin
            x_cnt <= 11'd0;
            mhd  <= 1'd0;
        end
        else if (x_cnt == (H_LINE-1))
        begin
            x_cnt <= 11'd0;
            mhd  <= 1'd0;
        end
        else
        begin
            x_cnt <= x_cnt + 11'd1;
            mhd  <= 1'd1;
        end
    end

    always@(posedge iCLK or negedge iRST_n)
    begin
        if (!iRST_n)
            y_cnt <= 10'd0;
        else if (x_cnt == (H_LINE-1))
        begin
            if (y_cnt == (V_LINE-1))
                y_cnt <= 10'd0;
            else
                y_cnt <= y_cnt + 10'd1;
        end
    end
    ////////////////////////////// touch panel timing //////////////////

    always@(posedge iCLK  or negedge iRST_n)
    begin
        if (!iRST_n)
            mvd  <= 1'b1;
        else if (y_cnt == 10'd0)
            mvd  <= 1'b0;
        else
            mvd  <= 1'b1;
    end

    always@(posedge iCLK  or negedge iRST_n)
    begin
        if (!iRST_n)
            mden  <= 1'b0;
        else if (display_area)
            mden  <= 1'b1;
        else
            mden  <= 1'b0;
    end

    //////////////RGB color patten generator ///////

    //////////////gray level  patten generator ///////

    ////////////// displayed color pattern selection //////////////

    always@(x_cnt or y_cnt or i_RGB_EN or iRed or
                iGreen or iBlue )
    begin
        if((x_cnt>(Hsync_Blank-1)&& //>215
                (x_cnt<(H_LINE-Hsync_Front_Porch))&& //< 1016
                (y_cnt>(Vertical_Back_Porch-1))&&
                (y_cnt<(V_LINE - Vertical_Front_Porch))
           ))
        begin
            if (i_RGB_EN[2]==1)
                mred=iRed	;
            else
                mred=0;
            if (i_RGB_EN[1]==1)
                mgreen=iGreen	;
            else
                mgreen=0;
            if (i_RGB_EN[0]==1)
                mblue=iBlue	;
            else
                mblue=0;
        end
        else
        begin
            mred=0;
            mgreen=0;
            mgreen=0;
        end
    end
    
    always@(posedge iCLK or negedge iRST_n)
    begin
        if(!iRST_n)
        begin
            oCoord_X	<=	0;
            oCoord_Y	<=	0;
            oAddress	<=	0;
        end
        else
        begin
            if((x_cnt>(Hsync_Blank-1)&& //>215
                    (x_cnt<(H_LINE-Hsync_Front_Porch))&& //< 1016
                    (y_cnt>(Vertical_Back_Porch-1))&&
                    (y_cnt<(V_LINE - Vertical_Front_Porch))
               ))
            begin
                oCoord_X	<=	x_cnt-(Hsync_Blank-1);
                oCoord_Y	<=	y_cnt-(Vertical_Back_Porch-1);
                oAddress	<=	oCoord_Y*(H_LINE- Hsync_Blank-Hsync_Front_Porch )+oCoord_X-3;
            end
        end
    end
    always@(posedge iCLK or negedge iRST_n)
    begin
        if (!iRST_n)
        begin
            oHD	<= 1'd0;
            oVD	<= 1'd0;
            oDEN <= 1'd0;
            oLCD_R <= 8'd0;
            oLCD_G <= 8'd0;
            oLCD_B <= 8'd0;
        end
        else
        begin
            oHD	<= mhd;
            oVD	<= mvd;
            oDEN <= display_area;
            oLCD_R <= mred;
            oLCD_G <= mgreen;
            oLCD_B <= mblue;
        end
    end

    assign	oVGA_CLOCK	=	~iCLK;

endmodule











