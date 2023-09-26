--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
--Date        : Tue Sep 26 11:59:31 2023
--Host        : LAPTOP-4V14CJV4 running 64-bit major release  (build 9200)
--Command     : generate_target top_traffic_design.bd
--Design      : top_traffic_design
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_traffic_design is
  port (
    CLK_0 : in STD_LOGIC;
    green_0 : out STD_LOGIC;
    red_0 : out STD_LOGIC;
    yellow_0 : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of top_traffic_design : entity is "top_traffic_design,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=top_traffic_design,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of top_traffic_design : entity is "top_traffic_design.hwdef";
end top_traffic_design;

architecture STRUCTURE of top_traffic_design is
  component top_traffic_design_c_counter_binary_0_0 is
  port (
    CLK : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 24 downto 0 )
  );
  end component top_traffic_design_c_counter_binary_0_0;
  component top_traffic_design_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 24 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component top_traffic_design_xlslice_0_0;
  component top_traffic_design_top_0_0 is
  port (
    red : out STD_LOGIC;
    yellow : out STD_LOGIC;
    green : out STD_LOGIC;
    clk : in STD_LOGIC
  );
  end component top_traffic_design_top_0_0;
  signal CLK_0_1 : STD_LOGIC;
  signal c_counter_binary_0_Q : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal top_0_green : STD_LOGIC;
  signal top_0_red : STD_LOGIC;
  signal top_0_yellow : STD_LOGIC;
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLK_0 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLK_0 : signal is "XIL_INTERFACENAME CLK.CLK_0, CLK_DOMAIN top_traffic_design_CLK_0, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
begin
  CLK_0_1 <= CLK_0;
  green_0 <= top_0_green;
  red_0 <= top_0_red;
  yellow_0 <= top_0_yellow;
c_counter_binary_0: component top_traffic_design_c_counter_binary_0_0
     port map (
      CLK => CLK_0_1,
      Q(24 downto 0) => c_counter_binary_0_Q(24 downto 0)
    );
top_0: component top_traffic_design_top_0_0
     port map (
      clk => xlslice_0_Dout(0),
      green => top_0_green,
      red => top_0_red,
      yellow => top_0_yellow
    );
xlslice_0: component top_traffic_design_xlslice_0_0
     port map (
      Din(24 downto 0) => c_counter_binary_0_Q(24 downto 0),
      Dout(0) => xlslice_0_Dout(0)
    );
end STRUCTURE;
