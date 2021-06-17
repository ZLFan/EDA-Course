library verilog;
use verilog.vl_types.all;
entity wave_rom is
    port(
        clk             : in     vl_logic;
        en              : in     vl_logic;
        addr            : in     vl_logic_vector(7 downto 0);
        wave            : out    vl_logic_vector(9 downto 0)
    );
end wave_rom;
