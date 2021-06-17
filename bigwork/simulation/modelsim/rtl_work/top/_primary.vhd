library verilog;
use verilog.vl_types.all;
entity top is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        stop            : in     vl_logic;
        add             : in     vl_logic;
        dec             : in     vl_logic;
        set             : in     vl_logic;
        initcost        : in     vl_logic_vector(2 downto 0);
        percost         : in     vl_logic_vector(2 downto 0);
        addmail         : in     vl_logic_vector(2 downto 0);
        seg0            : out    vl_logic_vector(6 downto 0);
        seg1            : out    vl_logic_vector(6 downto 0);
        seg2            : out    vl_logic_vector(6 downto 0);
        seg3            : out    vl_logic_vector(6 downto 0);
        seg4            : out    vl_logic_vector(6 downto 0);
        seg5            : out    vl_logic_vector(6 downto 0);
        seg6            : out    vl_logic_vector(6 downto 0);
        seg7            : out    vl_logic_vector(6 downto 0);
        led             : out    vl_logic_vector(17 downto 0)
    );
end top;
