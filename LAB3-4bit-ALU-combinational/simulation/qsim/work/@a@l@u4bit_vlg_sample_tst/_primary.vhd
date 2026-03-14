library verilog;
use verilog.vl_types.all;
entity ALU4bit_vlg_sample_tst is
    port(
        InputA          : in     vl_logic_vector(3 downto 0);
        InputB          : in     vl_logic_vector(3 downto 0);
        S0              : in     vl_logic;
        S1              : in     vl_logic;
        S2              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end ALU4bit_vlg_sample_tst;
