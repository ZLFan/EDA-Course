library verilog;
use verilog.vl_types.all;
entity mem is
    port(
        clk             : in     vl_logic;
        rstn            : in     vl_logic;
        en              : in     vl_logic;
        sel             : in     vl_logic_vector(1 downto 0);
        addr            : in     vl_logic_vector(7 downto 0);
        dout_en         : out    vl_logic;
        dout            : out    vl_logic_vector(9 downto 0)
    );
end mem;
