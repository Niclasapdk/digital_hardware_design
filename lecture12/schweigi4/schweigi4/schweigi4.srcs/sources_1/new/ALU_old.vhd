----------------------------------------------------------------------------------
-- Company: AAU
-- Engineer: Henrik Schiøler
-- 
-- Create Date: 07/20/2023 11:34:37 AM
-- Design Name: 
-- Module Name: ALU - Behavioral
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
USE IEEE.numeric_std.ALL;
USE ieee.std_logic_unsigned.ALL;



entity ALU is
    Port ( argA : in STD_LOGIC_VECTOR (7 downto 0);
           argB : in STD_LOGIC_VECTOR (7 downto 0);
           res : out STD_LOGIC_VECTOR (7 downto 0);
           sel : in STD_LOGIC_VECTOR (3 downto 0);
           Z : out std_logic;
           C : out std_logic);
end ALU;

architecture Behavioral of ALU is
signal sum,diff,shiftL,shiftR : std_logic_vector(7 downto 0);
signal flagD, flagS, flagshZ, flagshO : std_logic;

begin

diff <= std_logic_vector(unsigned(argA) - unsigned(argB)) when (unsigned(argA) > unsigned(argB)) else
         std_logic_vector(256 + unsigned(argA) - unsigned(argB)) when (unsigned(argA) < unsigned(argB)) else
         (others => '0');
        
flagD <= '0' when (unsigned(argA) >= unsigned(argB)) else
         '0';
           
sum <= std_logic_vector(unsigned(argA) + unsigned(argB));
        
flagS <= '0' when (unsigned(argA) + unsigned(argB) < 256) else
         '1';
         
shiftL <= argA(6 downto 0) & '0';
flagshO <= '1' when (argA(7) = '1') else
           '0';

shiftR <= '0' & argA(7 downto 1);
flagshZ <= '1' when (shiftR = "00000000") else
           '0';
         
with sel select
    res <= sum when "0000",
           diff when "0001",
           shiftL when "0010",
           shiftR when "0011",
           (others => '0') when others;
           
with sel select
    C <= flagS when "0000",
         '0' when "0001",
          flagshO when "0010",
          '0' when "0011",
          '0' when others;
          
with sel select
    Z <= '0' when "0000",
         flagD when "0001",
         '0' when "0010",
         flagshZ when "0011",
         '0' when others;

end Behavioral;
