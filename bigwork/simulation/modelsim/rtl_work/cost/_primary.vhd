library verilog;
use verilog.vl_types.all;
entity cost is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        set             : in     vl_logic;
        initcost        : in     vl_logic_vector(2 downto 0);
        percost         : in     vl_logic_vector(2 downto 0);
        addmail         : in     vl_logic_vector(2 downto 0);
        distence        : in     vl_logic_vector(15 downto 0);
        fare            : out    vl_logic_vector(15 downto 0)
    );
end cost;
