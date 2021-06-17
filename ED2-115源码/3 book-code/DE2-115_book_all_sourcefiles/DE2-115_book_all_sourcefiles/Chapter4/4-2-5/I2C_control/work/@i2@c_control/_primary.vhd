library verilog;
use verilog.vl_types.all;
entity I2C_control is
    generic(
        X_IDLE          : integer := 0;
        X_GO            : integer := 1;
        X_START         : integer := 2;
        X_WAIT          : integer := 3;
        X_SHIFT         : integer := 4;
        X_STOP          : integer := 5;
        X_FINAL         : integer := 6;
        X_END           : integer := 7
    );
    port(
        reset           : in     vl_logic;
        CLK             : in     vl_logic;
        GO              : in     vl_logic;
        bitcount        : in     vl_logic_vector(4 downto 0);
        SCLK_Temp       : out    vl_logic;
        bitcountEN      : out    vl_logic;
        rstbitcount     : out    vl_logic;
        LDEN            : out    vl_logic;
        ldnACK1         : out    vl_logic;
        ldnACK2         : out    vl_logic;
        ldnACK3         : out    vl_logic;
        rstACK          : out    vl_logic;
        SHEN            : out    vl_logic;
        SDO             : out    vl_logic;
        SCLK            : out    vl_logic
    );
end I2C_control;
