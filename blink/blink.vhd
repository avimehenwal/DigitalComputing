library ieee;	
use ieee.std_logic_1164.all;

entity blink is
end blink;

architecture rtl of blink is
  signal x, phi : bit;
begin
  process
  begin
    phi <= '0';
    wait for 5 ns;
    phi <= '1';
    wait for 5 ns;
  end process;

  process(phi)
  begin
    if (phi'event and phi='1') then
      x <= not x;
    end if;
  end process;
end rtl;
