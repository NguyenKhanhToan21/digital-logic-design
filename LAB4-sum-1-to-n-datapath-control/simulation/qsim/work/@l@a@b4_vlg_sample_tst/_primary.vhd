library verilog;
use verilog.vl_types.all;
entity LAB4_vlg_sample_tst is
    port(
        B               : in     vl_logic_vector(0 to 7);
        CLK             : in     vl_logic;
        D_reg           : in     vl_logic;
        E               : in     vl_logic;
        Load            : in     vl_logic;
        OE              : in     vl_logic;
        S               : in     vl_logic;
        Select_mux      : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end LAB4_vlg_sample_tst;
