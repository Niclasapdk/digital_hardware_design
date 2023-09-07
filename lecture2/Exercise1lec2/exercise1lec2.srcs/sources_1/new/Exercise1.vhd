----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.09.2023 10:21:06
-- Design Name: 
-- Module Name: Exercise1 - Behavioral
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

entity Exercise1 is
    Port ( B1 : in STD_LOGIC;
           B2 : in STD_LOGIC;
           LED1 : out STD_LOGIC;
           LED2 : out STD_LOGIC;
           LED3 : out STD_LOGIC);
end Exercise1;

architecture Behavioral of Exercise1 is

begin

LED1 <= B1;
LED2 <= B2;
LED3 <= B1 NAND B2;

end Behavioral;
