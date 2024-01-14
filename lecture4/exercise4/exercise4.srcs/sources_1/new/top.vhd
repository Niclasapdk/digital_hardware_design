----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/14/2024 01:44:24 PM
-- Design Name: 
-- Module Name: top - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity top is
    Port ( addr : in STD_LOGIC_VECTOR (3 downto 0); -- Address port
           inp : in STD_LOGIC_VECTOR (3 downto 0);
           outp : out STD_LOGIC_VECTOR (3 downto 0);
           WE : in STD_LOGIC;  -- Write Enable
           RE : in STD_LOGIC); -- Read Enable
end top;

architecture Behavioral of top is
    constant M : natural := 16; -- Number of memory blocks
    constant N : natural := 4;  -- Address size
    type memory_array is array (0 to M-1) of std_logic_vector(3 downto 0);
    signal memory : memory_array := (others => (others => '0'));
begin

process(WE, RE, addr)
begin
    if RE = '1' then
        outp <= memory(to_integer(unsigned(addr))); -- Read from the selected memory block
    else
        outp <= (others => '0');
    end if;

    if WE = '1' then
        memory(to_integer(unsigned(addr))) <= inp; -- Write to the selected memory block
    end if;
end process;

end Behavioral;
