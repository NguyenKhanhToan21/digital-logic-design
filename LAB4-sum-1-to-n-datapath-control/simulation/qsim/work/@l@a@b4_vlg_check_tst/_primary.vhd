library verilog;
use verilog.vl_types.all;
entity LAB4_vlg_check_tst is
    port(
        DataS           : in     vl_logic;
        O               : in     vl_logic_vector(0 to 7);
        sampler_rx      : in     vl_logic
    );
end LAB4_vlg_check_tst;
