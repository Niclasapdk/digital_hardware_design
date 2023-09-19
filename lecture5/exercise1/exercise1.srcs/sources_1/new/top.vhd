----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.09.2023 10:12:58
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top is
    Port ( clk : in STD_LOGIC;
           up : in STD_LOGIC;
           reset : in std_logic;
           dout : out STD_LOGIC_VECTOR (23 downto 0));
end top;

architecture Behavioral of top is
signal shorty_next: unsigned (23 downto 0);
begin
    process (clk)
    begin
        if (clk = '1' and clk'event) then
            if(reset = '1') then
                shorty_next <= "000000000000000000000000";
            else
                if (up = '1') then
                    shorty_next <= shorty_next + 1;
                else
                    shorty_next <= shorty_next - 1;
                end if;
            end if;
        end if;
    end process; 
    dout <= std_logic_vector(shorty_next);
end Behavioral;
