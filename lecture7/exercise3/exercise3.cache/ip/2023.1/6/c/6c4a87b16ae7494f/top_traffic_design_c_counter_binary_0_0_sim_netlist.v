// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Sep 26 11:33:50 2023
// Host        : LAPTOP-4V14CJV4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_traffic_design_c_counter_binary_0_0_sim_netlist.v
// Design      : top_traffic_design_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "top_traffic_design_c_counter_binary_0_0,c_counter_binary_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_16,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN top_traffic_design_CLK_0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 25} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 25}" *) output [24:0]Q;

  wire CLK;
  wire [24:0]Q;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "25" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_16 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
nEluQH6zbAqCbx0un3ty7CjKmzIb6EE6u9eMzKEB04v4MBOVFM+Tahu9b35foYTx0ihB8y9vIi1u
WozDAbVIl41ubtYHe98pHqHDDaCjTtGiBRDyfCBDrGxTGZ4brq0UvFaDSbdlQl3n5JemF3KnHqfg
wMYrkU7wFFHkJLVMcTk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nW/9GT0jwg0cGJXOm2WNy5LCgMgb0iaGjzfae0GthFaapA92trGlBPZ8CO9WKXJmM5uTS80UB9rD
PuKl8kfF+MG342ST68iI7DEW8s5TwjZk16znEVWSr2bA2Kn0PBosSg+Xmq22Tj/wcxxQcTijzHNd
O60FvXr2XSMC89T28ONefeTtZc6WwvwyL9H5+IkmdoTJ5mAKgqeYLihv1mxycnq+uM8fyoR79tlA
S3p9q+0Y0k6mCABleE1Ze6a4b5wxmpGtGTvbzc3RGTwstzb4UZPpiyAgnW9A4DQCUBY93aPziiKT
c7MisqRYeGnScSQ1FOFsbD6hotYBh+P8LwGGCw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
KDiNIUMtatDrhphzmTBFbPhLQnuq6phc0PrJ1hiogLQb7IUEt6plouP9tjwt7I0ZIWDhaRnf5MCk
Gd5vI6wDka/OMxNVtptdLxiIJkVcQbbLuHt+0LQQEt9l+z52R0xVETrazwDGWj83+vCsrNlljbUl
fMz4KSBOf9kOPE6MbqM=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
k3Hey9AcH0q64Q+fl481nMcvpHNQ6Af06OnUlq2GSyZHZ3t2v9ryStnHIvSi1l/SQIJMgrZCgME9
lown5XX21YqIMVQoEyGMSpNBNwfTJGTI61QOeUpcU3LzuNlRl4w47st6eceWqPKVrD6oTR3sXq9T
ctrBzMTMaGg9YZmYGJ7Ot/ADRu8vcaT+f6OfgECwuoGk0UOAQaKF/ADVY9WpFWZ5qlC0Cd8wDuXC
jLLq0Fbcps0ea5PDonxV2Z1kh/nXuE2aSrCoEg703Iy1Vimiwe/kvCqZHRWzwoyrK1sXDJdkt7ni
uGVcdxaCDSuAQBAY+DvKCaHxy8HVe23B9nIm7g==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
JgKK/t7ZhsrBmIhtzEHF7fMq/kVx5rC3SDMpxvFJyxvxWyGHc1knzwHpNUZlhxl2+QiWII15PkPH
tRsPxzKmKRUfoUn98Iz+DDEv/t53oxteaulFll9kYXLae5Kr3Z0dSjzo6RhFlK3srBeNbOBQ5kLM
GmLMJXqAg+QCR1zI3uySLoZKPvoArxl0nQXNl+LyCj3NSV6UZbat9kspBEf8Ajes+X3D3fFv6x7R
QFcujdR2uP3rtU2X+kjUyKS68fWQyxeNVQRRtK0+pYzwAjslKl9X2yuZLP8sbivJF+KMMGIR6mDJ
Evvk6N3D/2t3QMFH/QwpvnMzM7FWwR1+A2XB+A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
l1upFntc7IVck7RcCXkYErX39AcroU+a5uEQXMYfQhip8WAsHSLdZlUa+Pekqto4E2g8SgecRBRu
QrTkaI7ASczWH6LcnIz//dsEIf29ekkxATEsJgnRku8WWT0qoHAHSHdh5/QBxPMMciAaoZZn7Oao
iMi43cgsYOKLrxaRVA1CADZ/GqPdF85TfjeFZM6SbwE9mPf1OSJvOTiaz9xmgcqX6v1Z9g8EnoxJ
6I829suxYY7M6LZ0d0EjjUyaavZjV5HDiB1fssOvW/djjXtxFJRNs2Gjhme3uFqkpCEPEmN552yh
8Dh9ZD+svzOa4souKCgpp+Me8Fjk7DseJZFS+w==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
l7Jl6pHBA954sGX8lOxgRbkjqIY8qsUwlO/a8pzc9ccc3J6g7NH7JFDFJo/lP4EGu33DhHMaekKk
D4zrS/BeJYsvT4iIAxDLg04OtrvXSJldjg34BLszQLhqUGfb3q06Oj0fXD2iEyLNSR/dM1elF9xE
hKaV329dq6ZrzVp7pI0Kl4Phi/0xqfaA4pxpvDmn6jz/v6My3nmy28BMd5KJpLTeEVwRfwf1KaSP
Kbi19ZYAimO73Cj9C1mrQdmzLERkopxYs+N+PKEg/uJ33h3AIIXYALv1dtvCi/kY33mMor2YzciC
cOvpgm0rOl8N+wluwGldTr51jmMU3UgRXnpIcA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
sDLt9yC+aGCruo0Pc7rNmFvG2ac6bXjKm57sR9Rc7vhL9yi9iuJX/dei64d6laIYpv7rKof457yt
dHM3kNbfEvjncjiGOY7W6JH9B9crujUlJSAtPxDBpA1ViiJACab8Tkr/b8aim+gsfCRULaYQf7Em
PZgRR/YsxeTPzLR6+g6rtTiWVwHOSHeRFwlXDUwOHC9ojrEk758fcOul3bUMy5jBkbIrnMckcYNJ
UTIM/NeQ2Z/19PGsmo1DzokYwWzLO/zziA3yzHUXNK/w69M9ML2Iuta7bZVscwAupPOW9l6jLkCf
ml/TslOBHqpc17ZtvXijJ69O/LsO1U2gWTdgP/LZuz80gMWMCxCrdGVp/uSa/4xGr4H3vIXkdIx0
Sg4fr4eszK3MgUcF10OTIa2Q1kSgpDI+mwH+yvUepsWPGRNbJ26keoVN9FUem6TOAoMBjMIrwjVL
ew9v9xzan9X7FYCU+yrylMvdNWv0ozAy2lW5sx96wNHOJF5NyPNMrrgu

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
G1e/ZtUXcVEpkIPuRVXcxOiovL5iPfoV4SVmgSb0Q/5PbZ5mJDGQX9Sp80Mjta07Bt/3DCSMp0KJ
TCu25lkbgnZpMU/VZ0Q5fpryTT0QlNvXapuLZpwz2mB71FqiOCtJCUJgTkh27JBiAtqXVPo5BzA7
9FlPrsD6aZeAnLU1VNhug43fOPpbojbhxh5A3rYZfHTf2ybdNunH1OhuZxXW6dssnmEmaIhaYP/U
tSLQxjYWOD87MQ4xPqXgJim9qdjCyeahZxxq1nIffw2rSxV1NEvmZCAxL36YKl0GAW3YS4F4uFS8
x1YSENfQJ73Udn5tHSJeGSFENuCPYsx9hzSkZA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
b2snWoa7Tm54tqYlXYvu2nCWT3C8sA41QTX92BtlcR2TtRNE61Jy/WUD2hBapET8allxgW9Awq5w
AEFDpiEmjuRwYma7iyUm1iu3+1yPG0T3Gv0I0JLnFxm0LFrx94ZhghitweO6zSvtU80g3e00Las5
Om54yM6qpRS081oSVzBBkIvECxRTQghULbnsJ1zR7V1t3UFD7LEZbQJTQYT8LT3XY1Gifph1jhmP
cjMxqIdcgmYBRb07sluApa8rTEZYsySKRZ/tGqtnbQCZ5Oedmug/i9nrkNuRi0FYdH+W/DJRn3e+
ZiGbj3eVXxoM3uKfaHHiiE2hL8/P4BP6bfIUIg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Tw+Lce8EaUE51Bjk//5L2fDoopZhecBLiE4OUHQz1ylbisNCNpG4qFZKWRRgjaI+QRADt7sDnMRJ
vCrvA0qCEkYEqp0QHpEEkxH65Nt3CfyFyeiXfYX0+W9NFFelawGb99yXQFuQR6N7IPmB0/oHdjj2
Ju4HAOgLnm6LnuV2n4QPxe+DuHnInnuEeNtl7hXU7vxV0gXk3XMpVPuSq28+IFDzZQNBX4+s7rdT
d1N/NA5GHcz51QnWMVzLONwWnN7sKI1H7R7Gk1nBtjbSfLenXPIXWi1PpLfRa2txIY5WeyOPAkSG
5N03QCRfXuQ8dd6y8nyfuNvuwjlE6yKK2UVv/Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17152)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
