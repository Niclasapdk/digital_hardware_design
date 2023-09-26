// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Sep 26 11:33:52 2023
// Host        : LAPTOP-4V14CJV4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/johba/digital_hardware_design/lecture7/exercise3/exercise3.gen/sources_1/bd/top_traffic_design/ip/top_traffic_design_c_counter_binary_0_0/top_traffic_design_c_counter_binary_0_0_sim_netlist.v
// Design      : top_traffic_design_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "top_traffic_design_c_counter_binary_0_0,c_counter_binary_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_16,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module top_traffic_design_c_counter_binary_0_0
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
  top_traffic_design_c_counter_binary_0_0_c_counter_binary_v12_0_16 U0
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
gNwcWL8Qbl6e/skM+z/iwH1HB5FQpHj9t7/Sn8s9s2hKz6eZ/uhba9fY1no3rGz78GepumVNgjme
dMiNNbMcUDTilXL4eHji8pZOLvUVRhViXBOIxRwHwNm39u291MqXlYT0EQlOLlttqph5jbGUo/UT
ZpLeYmYXxw6+waaXCcGShtAkDb1GOHHJVYlOoRY6qZbvzhtpZ8PNU0NKBK+kAI9W3mMy7z5GEOhA
alqrA/+nsPeRDXq3zFsPU53vSy27gm/HYhhrDEYYNsKaGGK04SRQDjJCT3zXKS/3LmSzT5jVz9qq
t30PDihS1iBTHXB0R0zT0kU25pTqytvBLmRtbg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
d7PFVfrLUxyVCMrDUV00FuHSDJHZIFR3X+CaFNktDduEM9h63pHPKHK5P18M/rtB3DPDd31/FmAt
bzMIix7RAmqFbMG3eGsv2vhbZ+Wrst2m817rn81YfQzraCkhE17UaBZayrkJXWG8P6BNrW1UX354
yzuJ0Jbwf2613FL1KCakyggA6UtGRArGrzP1ZIX+tBhEUvgNnnZSqclXPnazTrdup9gruBuvEpKT
6TYkEEGGMc1zpsIsb72a0lilS6ahQAMdQRaKfLDSKSqs0QzHuRcLCNMeqmS4W8tqF/HuSS7UBdSU
G11f3RJZdQ5IrSVQZtMViil15OPoJkQ5Ck8hcQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17504)
`pragma protect data_block
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
qdaZNtI=
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
