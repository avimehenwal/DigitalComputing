use std.textio.all;

entity hello-world is
end hello-world;

architecture behaviour of hello-world is
begin
    process
        variable l: line;
    begin
        write(l, String("Hello World"));
        writeline (output, l);
        wait;
    end process;
end behaviour;
