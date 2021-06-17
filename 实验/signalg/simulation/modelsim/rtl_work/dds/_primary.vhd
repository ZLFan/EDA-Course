library verilog;
use verilog.vl_types.all;
entity dds is
    port(
        clk             : in     vl_logic;
        rstn            : in     vl_logic;
        wave_en         : in     vl_logic;
        wave_amp        : in     vl_logic_vector(1 downto 0);
        phase_init      : in     vl_logic_vector(7 downto 0);
        f_word          : in     vl_logic_vector(7 downto 0);
        dout            : out    vl_logic_vector(9 downto 0);
        dout_en         : out    vl_logic_vector(9 downto 0)
    );
end dds;
