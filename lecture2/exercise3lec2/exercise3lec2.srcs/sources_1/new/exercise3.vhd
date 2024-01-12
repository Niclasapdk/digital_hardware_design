----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.09.2023 11:42:46
-- Design Name: 
-- Module Name: exercise4 - Behavioral
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

entity exercise3 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           out_AND : out STD_LOGIC;
           out_OR : out STD_LOGIC;
           out_XOR : out STD_LOGIC);
end exercise3;

architecture Behavioral of exercise3 is
begin
    out_AND <= A and B;
    out_OR  <= A or B;
    out_XOR <= A xor B;
end Behavioral;
