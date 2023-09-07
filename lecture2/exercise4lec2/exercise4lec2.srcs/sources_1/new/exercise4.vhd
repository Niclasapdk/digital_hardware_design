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

entity fulladder is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Cin : in STD_LOGIC;
           O : out STD_LOGIC;
           Cout : out STD_LOGIC);
end fulladder;

architecture Behavioral of fulladder is

    signal HA1s : STD_LOGIC;    
    signal HA1c : STD_LOGIC;
    signal HA2c : STD_LOGIC;
    
begin

HA1 : entity work.halfadder
port map(
    A => A,
    B => B,
    C => HA1c,
    S => HA1s
);

HA2 : entity work.halfadder
port map(
    A => Cin,
    B => HA1s,
    C => HA2c,
    S => O
);

Cout <= HA2c OR HA1c;
    
end Behavioral;
