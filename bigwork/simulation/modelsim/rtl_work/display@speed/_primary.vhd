library verilog;
use verilog.vl_types.all;
entity displaySpeed is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        speed           : in     vl_logic_vector(15 downto 0);
        seg4            : out    vl_logic_vector(6 downto 0);
        seg5            : out    vl_logic_vector(6 downto 0)
    );
end displaySpeed;
