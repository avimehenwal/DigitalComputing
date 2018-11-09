--Multiplexer using when-else construct
library IEEE
use IEEE.STD_LOGIC_1164.ALL

entity When_Else is
    port (   A        : in  std_logic;
             B        : in  std_logic;
             C        : in  std_logic;
             signal_A : in  std_logic;
             signal_B : in  std_logic;
             Z        : out std_logic);
end When_Else;

Architecture rtl is
begin
    Z <= A when assign_A = '1' else
         B when assign_B = '1' else
         C;
end rtl;

