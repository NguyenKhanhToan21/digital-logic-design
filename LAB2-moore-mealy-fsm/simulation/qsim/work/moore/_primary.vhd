library verilog;
use verilog.vl_types.all;
entity moore is
    port(
        Z               : out    vl_logic;
        CLK             : in     vl_logic;
        X               : in     vl_logic
    );
end moore;
