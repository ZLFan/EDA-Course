library verilog;
use verilog.vl_types.all;
entity base1 is
    port(
        en              : in     vl_logic;
        clk             : in     vl_logic;
        addr            : out    vl_logic_vector(3 downto 0);
        data            : out    vl_logic_vector(3 downto 0)
    );
end base1;
