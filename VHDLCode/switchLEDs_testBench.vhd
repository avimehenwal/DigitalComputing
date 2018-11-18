--implement clock
--in test bench we specify only the i/p as o/p vary as per requirnment

--stimulus process
stim_proc: process
begin
--hold reset state for 100 ns.
    wait for 100 ns;

    switch0 <='0';
    switch1 <='0';
    wait for 10 ns;
    switch0 <='1';
    switch1 <='0';
    wait for 10 ns;
    switch0 <='0';
    switch1 <='1';
    wait for 10 ns;
    switch0 <='1';
    switch1 <='1';
