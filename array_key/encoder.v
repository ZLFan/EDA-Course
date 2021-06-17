`include "seven_segment_head.v"
module encoder(
				
				input			wire		[4:0]		data,
				output		reg		[7:0]		seg_n
				
			);
	
	always @(*)
	if(data[4] == 1'b1)
		seg_n = ~{1'b0, `SEGN};
	else	
		case(data[3:0])
			0	:	seg_n = ~{1'b0, `SEG0};
			1	:	seg_n = ~{1'b0, `SEG1};
			2	:	seg_n = ~{1'b0, `SEG2};
			3	:	seg_n = ~{1'b0, `SEG3};
			4	:	seg_n = ~{1'b0, `SEG4};
			5	:	seg_n = ~{1'b0, `SEG5};
			6	:	seg_n = ~{1'b0, `SEG6};
			7	:	seg_n = ~{1'b0, `SEG7};
			8	:	seg_n = ~{1'b0, `SEG8};
			9	:	seg_n = ~{1'b0, `SEG9};
			10	:	seg_n = ~{1'b0, `SEGA};
			11	:	seg_n = ~{1'b0, `SEGB};
			12	:	seg_n = ~{1'b0, `SEGC};
			13	:	seg_n = ~{1'b0, `SEGD};
			14	:	seg_n = ~{1'b0, `SEGE};
			15	:	seg_n = ~{1'b0, `SEGF};
			default	:		seg_n = ~{1'b0, `SEGN};
		endcase

endmodule
	