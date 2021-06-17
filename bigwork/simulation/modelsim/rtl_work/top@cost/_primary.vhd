library verilog;
use verilog.vl_types.all;
entity topCost is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        set             : in     vl_logic;
        initcost        : in     vl_logic_vector(2 downto 0);
        percost         : in     vl_logic_vector(2 downto 0);
        addmail         : in     vl_logic_vector(2 downto 0);
        distence        : in     vl_logic_vector(15 downto 0);
        seg0            : out    vl_logic_vector(6 downto 0);
        seg1            : out    vl_logic_vector(6 downto 0);
        seg2            : out    vl_logic_vector(6 downto 0);
        seg3            : out    vl_logic_vector(6 downto 0)
    );
end topCost;
