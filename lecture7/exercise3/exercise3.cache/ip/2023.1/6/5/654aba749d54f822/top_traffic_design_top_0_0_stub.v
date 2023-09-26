// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Sep 26 12:00:07 2023
// Host        : LAPTOP-4V14CJV4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_traffic_design_top_0_0_stub.v
// Design      : top_traffic_design_top_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "top,Vivado 2023.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(red, yellow, green, clk)
/* synthesis syn_black_box black_box_pad_pin="red,green" */
/* synthesis syn_force_seq_prim="yellow" */
/* synthesis syn_force_seq_prim="clk" */;
  output red;
  output yellow /* synthesis syn_isclock = 1 */;
  output green;
  input clk /* synthesis syn_isclock = 1 */;
endmodule
