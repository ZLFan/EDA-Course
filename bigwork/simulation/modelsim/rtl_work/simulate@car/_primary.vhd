library verilog;
use verilog.vl_types.all;
entity simulateCar is
    port(
        clk             : in     vl_logic;
        stop            : in     vl_logic;
        rst             : in     vl_logic;
        add             : in     vl_logic;
        dec             : in     vl_logic;
        distence        : out    vl_logic_vector(15 downto 0);
        speed           : out    vl_logic_vector(15 downto 0)
    );
end simulateCar;
