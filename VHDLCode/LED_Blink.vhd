	----------------------------------------------------------------------------------
-- Company: TKJ Electronics
-- Engineer: Thomas Jespersen
-- 
-- Create Date:    18:31:45 02/04/2012 
-- Design Name:    LED Blink Tutorial
-- Module Name:    LED_Blink - Behavioral 
-- Project Name: 
-- Target Devices:  Spartan 3E - Basys2 Board
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 1.00 - Tutorial done
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity LED_Blink is
	port (
		CLK_50MHz: in std_logic;
		LED: out std_logic
	);
end LED_Blink;

architecture Behavioral of LED_Blink is
	signal Counter: std_logic_vector(24 downto 0);
	signal CLK_1Hz: std_logic;
begin

	Prescaler: process(CLK_50MHz)
	begin
		if rising_edge(CLK_50MHz) then
			if Counter < "1011111010111100001000000" then
				Counter <= Counter + 1;
			else
				CLK_1Hz <= not CLK_1Hz;
				Counter <= (others => '0');
			end if;
		end if;
	end process Prescaler;
	
	LED <= CLK_1Hz;


end Behavioral;

