----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.09.2023 11:07:49
-- Design Name: 
-- Module Name: Exercise2 - Behavioral
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

entity Exercise2 is
    Port ( SW0 : in STD_LOGIC;
           SW1 : in STD_LOGIC;
           SW2 : in STD_LOGIC;
           SW3 : in STD_LOGIC;
           LED0 : out STD_LOGIC);
end Exercise2;

architecture Behavioral of Exercise2 is

begin

LED0 <= (SW0 AND SW1) OR (SW2 NAND SW3);

end Behavioral;
