library verilog;
use verilog.vl_types.all;
entity test is
    generic(
        clk_freq        : integer := 100000000
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of clk_freq : constant is 1;
end test;
