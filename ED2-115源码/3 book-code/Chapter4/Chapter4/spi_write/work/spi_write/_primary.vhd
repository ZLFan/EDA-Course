library verilog;
use verilog.vl_types.all;
entity spi_write is
    port(
        CLK             : in     vl_logic;
        SPC             : out    vl_logic;
        SDAT            : inout  vl_logic;
        regdata         : in     vl_logic_vector(15 downto 0);
        GO              : in     vl_logic;
        ORDY            : out    vl_logic;
        reset           : in     vl_logic;
        SCEN            : out    vl_logic
    );
end spi_write;
