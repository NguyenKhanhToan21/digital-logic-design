library verilog;
use verilog.vl_types.all;
entity controller_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        i               : in     vl_logic;
        start           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end controller_vlg_sample_tst;
