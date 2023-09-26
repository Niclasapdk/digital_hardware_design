--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
--Date        : Tue Sep 26 11:59:31 2023
--Host        : LAPTOP-4V14CJV4 running 64-bit major release  (build 9200)
--Command     : generate_target top_traffic_design_wrapper.bd
--Design      : top_traffic_design_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_traffic_design_wrapper is
  port (
    CLK_0 : in STD_LOGIC;
    green_0 : out STD_LOGIC;
    red_0 : out STD_LOGIC;
    yellow_0 : out STD_LOGIC
  );
end top_traffic_design_wrapper;

architecture STRUCTURE of top_traffic_design_wrapper is
  component top_traffic_design is
  port (
    CLK_0 : in STD_LOGIC;
    green_0 : out STD_LOGIC;
    yellow_0 : out STD_LOGIC;
    red_0 : out STD_LOGIC
  );
  end component top_traffic_design;
begin
top_traffic_design_i: component top_traffic_design
     port map (
      CLK_0 => CLK_0,
      green_0 => green_0,
      red_0 => red_0,
      yellow_0 => yellow_0
    );
end STRUCTURE;
