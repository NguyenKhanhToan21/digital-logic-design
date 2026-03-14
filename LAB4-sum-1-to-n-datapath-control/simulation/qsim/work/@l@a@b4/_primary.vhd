library verilog;
use verilog.vl_types.all;
entity LAB4 is
    port(
        i               : out    vl_logic;
        E               : in     vl_logic;
        D_reg           : in     vl_logic;
        S               : in     vl_logic;
        CLK             : in     vl_logic;
        B               : in     vl_logic_vector(0 to 7);
        O               : out    vl_logic_vector(0 to 7);
        OE              : in     vl_logic;
        Load            : in     vl_logic;
        Select_mux      : in     vl_logic
    );
end LAB4;
