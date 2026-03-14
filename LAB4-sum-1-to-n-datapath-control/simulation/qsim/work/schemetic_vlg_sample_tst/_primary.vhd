library verilog;
use verilog.vl_types.all;
entity schemetic_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        Input           : in     vl_logic_vector(0 to 7);
        start           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end schemetic_vlg_sample_tst;
