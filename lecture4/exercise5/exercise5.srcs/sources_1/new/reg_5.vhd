----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/14/2023 11:37:40 AM
-- Design Name: 
-- Module Name: reg_5 - Behavioral
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

entity reg_5 is
    Port ( inp : in STD_LOGIC_VECTOR (4 downto 0);
           outp : out STD_LOGIC_VECTOR (4 downto 0);
           RE : in STD_LOGIC;
           WE : in STD_LOGIC);
end reg_5;

architecture Behavioral of reg_5 is

begin

process(WE, RE)
variable state: std_logic_vector (4 downto 0) := "00000";
begin
    if RE = '1' then
        outp <= state;
    else
        outp <= "00000";
    end if;
    if WE = '1' then
        state := inp;
    end if;
end process;

end Behavioral;
