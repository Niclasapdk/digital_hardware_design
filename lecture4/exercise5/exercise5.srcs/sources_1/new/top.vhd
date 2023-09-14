----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/14/2023 11:37:40 AM
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
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           Cin : in STD_LOGIC;
           RE : in STD_LOGIC; 
           WE : in STD_LOGIC;
           outp : out STD_LOGIC_VECTOR (4 downto 0));
end top;

architecture Behavioral of top is
signal S: std_logic_vector (4 downto 0);
begin

FA : entity work.adder_4
port map(
    A => A,
    B => B,
    Cin => Cin,
    Cout => S(4),
    S => S(3 downto 0)
);

REG : entity work.reg_5
port map(
    inp => S,
    outp => outp,
    RE => RE,
    WE => WE
);

end Behavioral;
