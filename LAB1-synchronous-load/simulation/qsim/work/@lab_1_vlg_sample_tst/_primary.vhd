library verilog;
use verilog.vl_types.all;
entity Lab_1_vlg_sample_tst is
    port(
        KEY             : in     vl_logic_vector(1 downto 0);
        SW              : in     vl_logic_vector(2 downto 0);
        sampler_tx      : out    vl_logic
    );
end Lab_1_vlg_sample_tst;
