library verilog;
use verilog.vl_types.all;
entity Lab_1_vlg_check_tst is
    port(
        LEDG            : in     vl_logic_vector(2 downto 0);
        sampler_rx      : in     vl_logic
    );
end Lab_1_vlg_check_tst;
