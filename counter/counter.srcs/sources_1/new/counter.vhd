
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity counter is
  Port ( 
        clk, rst : in std_logic;
        counter_out : buffer std_logic_vector(7 downto 0)
        );
end counter;

architecture Behavioral of counter is
    signal temp : std_logic_vector(7 downto 0);
begin
    process(clk,rst)
    begin
        if(rst = '1') then
            temp <= "00000000";
        elsif(clk'event and clk = '1') then
            temp <= temp + 1;
        end if;
    end process;
    counter_out <= temp;
end Behavioral;
