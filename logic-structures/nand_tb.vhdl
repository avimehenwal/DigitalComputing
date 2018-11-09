library IEEE
use IEEE.STD_LOGIC_1164.ALL

entity nand_tb is
end nand_tb;

Architecture behaviour of nand_tb is
    COMPONENT nand_gate
        PORT(
        a : IN std_logic;
        b : IN std_logic;
        z : OUT std_logic
    );
    END COMPONENT;

    --inputs
    signal a : std_logic := '0';
    signal b : std_logic := '0';
    --outputs
    signal z : std_logic;
    --Instantiate Unit Under Test UUT
    uut: nand_gate PORT MAP (
        a => a,
        b => b,
        z => z
    );
    --stimuli process
    stim_proc: process

begin
    --hold reset for 100ns
    wait for 100 ns;
    --insert stimulus here
        a <= '0';
        b <= '0';
        wait for 100 ns;
        a <= '1';
        b <= '0';
        wait for 100 ns;
        a <= '0';
        b <= '1';
        wait for 100 ns;
        a <= '1';
        b <= '1';

wait;
end process;
end rtl;

