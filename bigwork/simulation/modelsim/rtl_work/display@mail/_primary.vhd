library verilog;
use verilog.vl_types.all;
entity displayMail is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        distance        : in     vl_logic_vector(15 downto 0);
        seg6            : out    vl_logic_vector(6 downto 0);
        seg7            : out    vl_logic_vector(6 downto 0)
    );
end displayMail;
