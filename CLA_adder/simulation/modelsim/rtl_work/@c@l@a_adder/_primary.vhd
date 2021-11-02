library verilog;
use verilog.vl_types.all;
entity CLA_adder is
    port(
        C0              : in     vl_logic;
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        s               : out    vl_logic_vector(3 downto 0);
        C4              : out    vl_logic
    );
end CLA_adder;
