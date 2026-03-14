library verilog;
use verilog.vl_types.all;
entity schemetic is
    port(
        Output          : out    vl_logic_vector(0 to 7);
        start           : in     vl_logic;
        CLK             : in     vl_logic;
        Input           : in     vl_logic_vector(0 to 7)
    );
end schemetic;
