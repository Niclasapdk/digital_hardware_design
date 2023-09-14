----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/14/2023 11:06:45 AM
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top is
    Port ( inp : in STD_LOGIC_VECTOR (3 downto 0);
           outp : out STD_LOGIC_VECTOR (3 downto 0);
           WE : in STD_LOGIC;
           RE : in STD_LOGIC);
end top;

architecture Behavioral of top is
begin

process(WE, RE)
variable state: std_logic_vector (3 downto 0) := "0000";
begin
    if RE = '1' then
        outp <= state;
    else
        outp <= "0000";
    end if;
    if WE = '1' then
        state := inp;
    end if;
end process;

end Behavioral;
