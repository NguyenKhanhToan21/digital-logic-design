library verilog;
use verilog.vl_types.all;
entity schemetic_vlg_check_tst is
    port(
        Output          : in     vl_logic_vector(0 to 7);
        sampler_rx      : in     vl_logic
    );
end schemetic_vlg_check_tst;
