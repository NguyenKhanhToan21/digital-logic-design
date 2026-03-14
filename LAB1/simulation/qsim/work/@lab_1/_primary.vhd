library verilog;
use verilog.vl_types.all;
entity Lab_1 is
    port(
        LEDG            : out    vl_logic_vector(2 downto 0);
        SW              : in     vl_logic_vector(2 downto 0);
        KEY             : in     vl_logic_vector(1 downto 0)
    );
end Lab_1;
