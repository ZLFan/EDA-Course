library verilog;
use verilog.vl_types.all;
entity divclk is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        divi_1hz        : out    vl_logic
    );
end divclk;
