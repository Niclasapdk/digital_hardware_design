----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/14/2023 10:30:37 AM
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
    Port ( D : in STD_LOGIC;
           clk : in STD_LOGIC;
           LED : out STD_LOGIC_VECTOR (3 downto 0));
end top;

architecture Behavioral of top is
begin

process(clk)
variable buff : std_logic_vector (3 downto 0) := "0000";
begin
    if (clk'event and clk = '1') then
        buff(3 downto 1) := buff(2 downto 0);
        buff(0) := D;
        LED <= buff;
    end if;
end process;

end Behavioral;
