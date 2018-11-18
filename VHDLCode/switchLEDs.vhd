library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--- VHDL module
entity Switches_LEDs is
	port (
        switch0 : in std_logic;
        switch1 : in std_logic;
        led0 : out std_logic;
        led1 : out std_logic   --no ; in last line
	);
end Switches_LEDs;

architecture Behavioral of Switches_LEDs is
begin
    led0 <= switch0;
    led1 <= switch1;
end Behavioral;

