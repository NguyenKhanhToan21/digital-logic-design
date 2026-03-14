library verilog;
use verilog.vl_types.all;
entity controller is
    port(
        S               : out    vl_logic;
        CLK             : in     vl_logic;
        i               : in     vl_logic;
        start           : in     vl_logic;
        E               : out    vl_logic;
        D               : out    vl_logic;
        Load            : out    vl_logic;
        OE              : out    vl_logic;
        Select_mux      : out    vl_logic
    );
end controller;
