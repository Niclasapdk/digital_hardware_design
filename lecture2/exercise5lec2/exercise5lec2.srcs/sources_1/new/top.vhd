----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/12/2023 09:51:23 AM
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
    Port ( IN1 : in STD_LOGIC_VECTOR (3 downto 0);
           IN2 : in STD_LOGIC_VECTOR (3 downto 0);
           Cin : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (3 downto 0);
           Cout : out STD_LOGIC);
end top;

architecture Behavioral of top is
    signal FA1c : STD_LOGIC;
    signal FA2c : STD_LOGIC;
    signal FA3c : STD_LOGIC;
begin

FA1 : entity work.full_adder
port map(
    A => IN1(0),
    B => IN2(0),
    Cin => Cin,
    S => S(0),
    Cout => FA1c
);

FA2 : entity work.full_adder
port map(
    A => IN1(1),
    B => IN2(1),
    Cin => FA1c,
    S => S(1),
    Cout => FA2c
);

FA3 : entity work.full_adder
port map(
    A => IN1(2),
    B => IN2(2),
    Cin => FA2c,
    S => S(2),
    Cout => FA3c
);

FA4 : entity work.full_adder
port map(
    A => IN1(3),
    B => IN2(3),
    Cin => FA3c,
    S => S(3),
    Cout => Cout
);

end Behavioral;
