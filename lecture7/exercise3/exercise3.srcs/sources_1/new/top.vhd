----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.09.2023 09:46:25
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top is
    Port ( red : out STD_LOGIC;
           yellow : out STD_LOGIC;
           green : out STD_LOGIC;
           clk : in std_logic);
end top;

architecture Behavioral of top is
    type state is (S0, S1, S2, S3);
    signal current_state, next_state: state;
    signal cnt : std_logic_vector(25 downto 0) := (others => '0');
begin
    -- Current state logic
    process(clk)
    begin
        if(clk'event and clk = '1') then
            current_state <= next_state;
        end if;
    end process;
    -- Next state logic
    process(current_state, cnt)
    begin
        case current_state is  
            when S0 =>
                if cnt(25) = '1' then
                    next_state <= S1;
                else
                    next_state <= S0;
                end if;
            when S1 =>
                if cnt(25) = '1' then
                    next_state <= S2;
                else
                    next_state <= S1;
                end if;
            when S2 =>
                if cnt(25) = '1' then
                    next_state <= S3;
                else
                    next_state <= S2;
                end if;
            when S3 =>
                if cnt(25) = '1' then
                    next_state <= S0;
                else
                    next_state <= S3;
                end if;
        end case;
    end process;
    -- Output logic
    process(clk, current_state, cnt)
    begin
        if rising_edge(clk) then
            cnt <= std_logic_vector(to_unsigned(to_integer(unsigned(cnt)) + 1, 26));
            if cnt(25) = '1' then
                cnt <= "00000000000000000000000000";
            end if;
            case current_state is
                when S0 =>
                    red <= '1';
                    yellow <= '0';
                    green <= '0';
                when S1 =>
                    red <= '1';
                    yellow <= '1';
                    green <= '0';
                when S2 =>
                    red <= '0';
                    yellow <= '0';
                    green <= '1';
                when S3 =>
                    red <= '0';
                    yellow <= '1';
                    green <= '0';
            end case;
        end if;
    end process;
end Behavioral;
