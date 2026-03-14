library verilog;
use verilog.vl_types.all;
entity ALU4bit is
    port(
        LEDG3           : out    vl_logic;
        InputA          : in     vl_logic_vector(3 downto 0);
        InputB          : in     vl_logic_vector(3 downto 0);
        S0              : in     vl_logic;
        S1              : in     vl_logic;
        S2              : in     vl_logic;
        LEDG2           : out    vl_logic;
        LEDG1           : out    vl_logic;
        LEDG0           : out    vl_logic;
        LEDG5           : out    vl_logic
    );
end ALU4bit;
