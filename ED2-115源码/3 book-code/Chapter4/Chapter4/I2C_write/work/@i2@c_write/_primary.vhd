library verilog;
use verilog.vl_types.all;
entity I2C_write is
    port(
        CLK             : in     vl_logic;
        SCLK            : out    vl_logic;
        SDIN            : inout  vl_logic;
        regdata         : in     vl_logic_vector(26 downto 0);
        GO              : in     vl_logic;
        ACK             : out    vl_logic;
        reset           : in     vl_logic;
        rstACK          : out    vl_logic;
        ACK1            : out    vl_logic;
        ACK2            : out    vl_logic;
        ACK3            : out    vl_logic;
        ldnACK1         : out    vl_logic;
        ldnACK2         : out    vl_logic;
        ldnACK3         : out    vl_logic
    );
end I2C_write;
