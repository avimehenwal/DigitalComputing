entity hello_world is
  port ( clk: out std_logic);
end hello_world;

architecture behaviour of hello_world is
begin
  -- Clock process definition
  clk_process: process
  begin
    clk <= '0';
    wait for clk_period/2;
    clk <= '1';
    wait for clk_period/2;
  end clk_process;
end behaviour;
