library verilog;
use verilog.vl_types.all;
entity square_ROM is
    port(
        clk             : in     vl_logic;
        en              : in     vl_logic;
        addr            : in     vl_logic_vector(7 downto 0);
        q               : out    vl_logic_vector(9 downto 0)
    );
end square_ROM;
