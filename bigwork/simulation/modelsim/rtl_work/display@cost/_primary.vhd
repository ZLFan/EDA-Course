library verilog;
use verilog.vl_types.all;
entity displayCost is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        cost            : in     vl_logic_vector(15 downto 0);
        seg0            : out    vl_logic_vector(6 downto 0);
        seg1            : out    vl_logic_vector(6 downto 0);
        seg2            : out    vl_logic_vector(6 downto 0);
        seg3            : out    vl_logic_vector(6 downto 0)
    );
end displayCost;
