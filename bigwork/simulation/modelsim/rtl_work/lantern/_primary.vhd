library verilog;
use verilog.vl_types.all;
entity lantern is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        stop            : in     vl_logic;
        speed           : in     vl_logic_vector(15 downto 0);
        led18           : out    vl_logic_vector(17 downto 0)
    );
end lantern;
