library ieee;
use ieee.std_logic_1164.all;

entity foo is
end;

architecture behave of foo is
    signal clk: std_logic := '0';
begin
    -- Conurrent signal assignment
CLOCK:
clk <=  '1' after 0.5 ns when clk = '0' else
        '0' after 0.5 ns when clk = '1';
end;

-- ghdl -a foo.vhdl
-- ghdl -r foo --stop-time=10ns --wave=foo.ghw
-- ghdl:info: simulation stopped by --stop-time
-- gtkwave foo.ghw
