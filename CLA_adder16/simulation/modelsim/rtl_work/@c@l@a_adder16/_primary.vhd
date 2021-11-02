library verilog;
use verilog.vl_types.all;
entity CLA_adder16 is
    port(
        a_in            : in     vl_logic_vector(31 downto 0);
        b_in            : in     vl_logic_vector(31 downto 0);
        c_in            : in     vl_logic;
        sum_o           : out    vl_logic_vector(31 downto 0);
        c_0             : out    vl_logic
    );
end CLA_adder16;
