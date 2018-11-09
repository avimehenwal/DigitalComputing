--Multiplexer using when-select construct
library IEEE
use IEEE.STD_LOGIC_1164.ALL

entity With_Select is
    port (   A        : in  std_logic;
             B        : in  std_logic;
             C        : in  std_logic;
             D        : in  std_logic;
             control  : in  std_logic_vector(1 downto 0);
             Z        : out std_logic);
end With_Select;

Architecture rtl is
    signal control_signal : std_logic_vector(1 downto 0);

begin
    control_signal <= control;
    with control_signal select
        Z <= A when "00",
             B when "01",
             C when "10",
             D when "11",
             '0' when others;
end rtl;

