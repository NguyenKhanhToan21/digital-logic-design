library verilog;
use verilog.vl_types.all;
entity controller_vlg_check_tst is
    port(
        D               : in     vl_logic;
        E               : in     vl_logic;
        Load            : in     vl_logic;
        OE              : in     vl_logic;
        S               : in     vl_logic;
        Select_mux      : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end controller_vlg_check_tst;
