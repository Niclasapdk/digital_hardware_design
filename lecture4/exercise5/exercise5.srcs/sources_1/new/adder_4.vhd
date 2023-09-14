----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/14/2023 11:37:40 AM
-- Design Name: 
-- Module Name: adder_4 - Behavioral
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

entity adder_4 is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           Cin : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (3 downto 0);
           Cout : out STD_LOGIC);
end adder_4;

architecture Behavioral of adder_4 is
    signal FA1c : STD_LOGIC;
    signal FA2c : STD_LOGIC;
    signal FA3c : STD_LOGIC;
begin

FA1 : entity work.full_adder
port map(
    A => A(0),
    B => B(0),
    Cin => Cin,
    S => S(0),
    Cout => FA1c
);

FA2 : entity work.full_adder
port map(
    A => A(1),
    B => B(1),
    Cin => FA1c,
    S => S(1),
    Cout => FA2c
);

FA3 : entity work.full_adder
port map(
    A => A(2),
    B => B(2),
    Cin => FA2c,
    S => S(2),
    Cout => FA3c
);

FA4 : entity work.full_adder
port map(
    A => A(3),
    B => B(3),
    Cin => FA3c,
    S => S(3),
    Cout => Cout
);
end Behavioral;
