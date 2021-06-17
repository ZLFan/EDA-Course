library verilog;
use verilog.vl_types.all;
entity spi_three_wire is
    generic(
        X_IDLE          : integer := 0;
        X_START         : integer := 1;
        X_SHIFT         : integer := 2;
        X_STOP          : integer := 3
    );
    port(
        reset           : in     vl_logic;
        CLK             : in     vl_logic;
        GO              : in     vl_logic;
        bitcount        : in     vl_logic_vector(3 downto 0);
        SCLK            : out    vl_logic;
        bitcountEN      : out    vl_logic;
        rstbitcount     : out    vl_logic;
        LDEN            : out    vl_logic;
        SHEN            : out    vl_logic;
        SCEN            : out    vl_logic;
        ORDY            : out    vl_logic;
        SPC             : out    vl_logic
    );
end spi_three_wire;
