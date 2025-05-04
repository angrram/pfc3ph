// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sat May  3 13:20:17 2025
// Host        : AngelPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top design_1_c_addsub_0_1 -prefix
//               design_1_c_addsub_0_1_ design_1_c_addsub_0_0_sim_netlist.v
// Design      : design_1_c_addsub_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s25csga225-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_addsub_0_0,c_addsub_v12_0_19,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_19,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module design_1_c_addsub_0_1
   (A,
    B,
    CLK,
    BYPASS,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_mode = "slave a_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value FALSE}}}} DATA_WIDTH 1}" *) input [0:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_mode = "slave b_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [0:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_mode = "slave clk_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 4757812, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 bypass_intf DATA" *) (* x_interface_mode = "slave bypass_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME bypass_intf, LAYERED_METADATA undef" *) input BYPASS;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_mode = "master s_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value FALSE}}}} DATA_WIDTH 1}" *) output [0:0]S;

  wire [0:0]A;
  wire [0:0]B;
  wire BYPASS;
  wire CLK;
  wire [0:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "spartan7" *) 
  (* c_a_type = "1" *) 
  (* c_a_width = "1" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "1" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "0" *) 
  (* c_b_width = "1" *) 
  (* c_bypass_low = "1" *) 
  (* c_has_bypass = "1" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  design_1_c_addsub_0_1_c_addsub_v12_0_19 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(BYPASS),
        .CE(1'b1),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
oeiSycU/+UTHUctAP/1EG0ARA7oWt+xFQ9F10RrtHn5SZO+NXJ2Sm1lpLWPVfe/IDP9GV69i1poN
BhSAs1MJDIQLH5itROLuDXYYF/elSJEMeT/k73s+GON1baIJHccZb15U9aChMHgHXrYpoUMUrHTj
cWKmcYvrvycsSZ0Ngj0=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qORY6ws3UX1BZqnQJ1io0G9Nj1mDoEV6ROyL+jga0TOnG+bD0DFym5LX2wB5jhQI/eRptItp6+Xw
3dz9zFmq8NXFF+H+NoAKmelb5s1UO1+nfsrEsY8jRSPwzzSzuTFf9OtMNFu42aJmeH09lBQfBPMd
0g8oj4NEftYfLjmarR5bIjHb/GieQEuAG4o3tNixOIZPopFrEcLQmXA0/6Si94XRfX8SGit/uPiX
Cm3Ld7fjVMOIf5S5tOgoEZwsHYzMx0XvK3i+9QPsCeqsuebvotwtKvZDSmshdCRoRGC2h/2yNcZl
ec51FkbmEd1je49PLDVQ8/qLCS6k38XKHO3MBQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
lmkJZn2yha+73EQxzvf2ftjA2ZPsXiOCU7WmgNFhW/A6MvolqZ8LDAIchWnJc/ZHbIScX4wfK6+7
nDmo6Gs7JUBsq8skyRrsRz+cU89cm9KQWXWgtduzrbZnLzKX46ZgLyQglaYI6K3bULnKfCjO8SLR
LtNR6Q2KaQzjkJvk6SQ=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eUZvqSLYSMj/GdGxHahsqEMos5RJfJi42gE7cSTGksQEWHG4i3FQfGZX1wHlW544I/vgSbV+T81a
VLBgL8TiR93gf3RM05BCx8hCdksptudNbJ1B+4bvi8ZUhlGzurVccrLFZwFViff1f7GRdvDjzWaC
gOP2Ljbv4XRXnLGH2pxiBcZOMaKwAlxIvD4LazzzRpctyr2JFmoxUvEo+YztJYzUGHSBsEtnzBtd
J7yR39/fIvbDUpo/EHHYPEgeKU4TqN311PIFFg4H/jMgjESY+COMLQNxYMNBoLECrtgjYfOa0o2M
cChrq3YEH96IEyG8GPIv/BrjL3zNOZfog2sp8w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
K26hlSK1EjbroYKyAOeyuiAeDIHUk71YecuhEaZditw+NrpQu3KoUAiuicPSmI1CMdSZyYBxyLV5
1zZW6PAXj/jSMlODXEo5cpb86txEmESnLjH9zpgRiRvN5tSxGAIHxnuwOlqT6Oqsyek5yoTywyTz
lAjGwIvXleEv832/9ERcxAFOPqeI5aKS39t+VTcC9fhAnvrMTACqwFgkEWl8O5l0B5tK49ogIRlj
NmgVEAnTph1Jz2k5wajNZccl3LPj/11FbVllMHM8UV3jR/Jn21gWOnBcc+Z55sGeUvOMdOXuv1gX
OU8m9JenUD3vWSVeyg3klIRuYc+H8lLDlxT70Q==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bzXdP1pGOW3mmxgqQfwXHtnVzDGC/wEa2NlskilDjfkNQUN5CsHuexL9ELnpc4xM656F9IQy3qdN
piNJKaCQxyCFaAKUELbM5o+y8sbqpyVb7p+1PEkmVqZEX6WN4hWeKD20/nlshmC7fHDGYRDOFHQv
UVCqnndg8GmguGkFVlc6xNb0DB+UFIUeMVxsbRC3c+5xuIKlUpf3xO2wJ2JMcHsGoGExA5jDpVtC
XUb6lRjP6FQKVPpHxVM43BDo4meN0J4mZJgJ6Y0NGl7p2hIpw2B3FUeCsGuMBHa1yyjtbeaYm04V
ZtsEdxqhatDH6Hbh1HmBYUrqB5AWn0IQCFBcJw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
E9YZrDeBcNG88vADiIeQq98M+D+IK5O8qKdsAiqH8H2Vq6CihreD0CvL8FNmEeeK29hS1YcWPCIM
Vwii1zmOvyMg70UBVcqHUSHSCU+9gUfFtXhbceEsyGvflmbTqPLzIQv4+JAixbrvmdtDkAnrgBBb
mP2pUJpAbd2EJ5aSksRcY7nZxv/9/cPYiDfnGma6GIwsGcVmEfX45fEWszsNE5cuwZ9mDYww+Wwr
4TQ7mHobAuu8bFp870HEVz691DIkWHFCis3+2xdsOqJFwFIrNbUTXpJyDq7aB1bMVpfsWFJiR/nd
m7QGmvoxXtZB4099VGFkmiRQoe43NF881HmROg==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
XWIUz3r9K8YdMNtaDPZkHe/sQ6BdHgzj6ek4zBJS2bZbt+F9Uuu0cDLJ/G4cMqkL7Euw5Tyy09Ba
kqvksnSP/Q34/hUL6lgViALqcO5b4oL7wuCqzJ7ghXQ7IOU3kPn/zDkXZ53Xf4RQCR8EYWxobBcX
C5jBL3Ra174J3ZNpwK8jSxkoH/zXfIy7YzwVkOK3sfYyiBROekX3pLu52dooP6VCZeGDVfZQi3ki
2QUbldTjM807egjriAka63+4cLzrlil3HjPPhJ1jsWqpP/b1pEPDjtfRt3qRC6q01mbnuQhJc/Qp
fWZoKt6T5F5FHmAdb9HwiGfxQmOXxTXiCCN8OgZnNOOeGEloQoB/OjByD+bzq9D3fGzHZOidm7xG
YeiwIX+r8L4p7fPa8tXtyzbTQD+doc9JsPYl2eweVHAqvXFUQRL17bAsxW3MsaLOJa/77ZbTBkvx
vitvirW0oMKOGwQ9n/yo7LteTENDBnMrmNJhoklTavuV+XSZqje0USVQ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YZ//P+GUHQDqpn2u7+vaRR/n6pkgMcX0ltpdiACAy9T1rY9/JIRYQaB0jbllhOrQAppfK9GfyabA
0PpVWsb2l42OnLoZg5rlWo6g+aaOAe8Vii++hndQmXs9M3gbv6lUmrE7P+u/8LdmuRaPzEUnFJeH
tn1O3IjnizGIsbwnD7lPOtetKIA0X9BIdwHx0x4vH845vPXdzz210rc/Y/PP6NN8uHzxeYaE5s0w
sr29XI9ibUMV07reHGJOZbiAbzzUMELVDuLeHFra4b1zriwCUVbeax/RhTcNggdKjbcpjo8HT/yW
IHglsLc4qAt3aTStevZ4b03narZeDNBHdSPhrw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
EsSOcM2Ymz4XVAa0+f0dwPkTVaLSDSU6b/FPqA/TuuKf9X+OY4I0pT12//yNB5tSSxRW6aTsvpFT
isjZq3EDfIjvVzkFvRB+gAIJfFLUz+wE9HMbvrIkVpouAIjjjiXwQyX/8bF/8wN6QhWAr327PE94
OSYhfM22sNAfyr/tpX0BQe6zkO7I8wC8s0A+XHMDHmzfCA0ACcTwMhv7Hn4O4lBQbqhlGpdCY2T+
IhGXWCY/rXETUI/myVT4br4jxSFqQajZotIjycwHFeS+Gb3eUaXY+5Bsm8X3WAWW5RZiecGzoND7
uha2V8ClYn3Z9DcxmKp8nJn08TwK97bL98hxwg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OApFoHJ3RKPX62eyc4yYtb5WJ3Qq2xS6L7LmVy1hGXfeO5s98jlGjNSDa+MYB7Vj9QU2mlejnFqT
EtDgJngAQuR4gPz6gdKAvARnH9/YyO/8gmkUmHvHhHOZdeho5P9VUagspwSb9O51a3yP+ubv3Jd6
7K7oHXPeFume77AEP0tsCheh0r/9IkwWu4CrETL/Xccob5Am5wEp6fStopqDNThZsQu/i+9Id10z
/nuVz+nBzYgcU1zL1FZfKrKqATGivEVsKDaY8Hhy/z2COk6iT9/5HLY2QTXDn6npr2PzbZXt7vyW
E9/1Op+Z8E+6CnWp1HXH4uMJGVTS6Kr6yGU60Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2576)
`pragma protect data_block
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
M/IjkFTFylWJHic=
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
oeiSycU/+UTHUctAP/1EG0ARA7oWt+xFQ9F10RrtHn5SZO+NXJ2Sm1lpLWPVfe/IDP9GV69i1poN
BhSAs1MJDIQLH5itROLuDXYYF/elSJEMeT/k73s+GON1baIJHccZb15U9aChMHgHXrYpoUMUrHTj
cWKmcYvrvycsSZ0Ngj0=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qORY6ws3UX1BZqnQJ1io0G9Nj1mDoEV6ROyL+jga0TOnG+bD0DFym5LX2wB5jhQI/eRptItp6+Xw
3dz9zFmq8NXFF+H+NoAKmelb5s1UO1+nfsrEsY8jRSPwzzSzuTFf9OtMNFu42aJmeH09lBQfBPMd
0g8oj4NEftYfLjmarR5bIjHb/GieQEuAG4o3tNixOIZPopFrEcLQmXA0/6Si94XRfX8SGit/uPiX
Cm3Ld7fjVMOIf5S5tOgoEZwsHYzMx0XvK3i+9QPsCeqsuebvotwtKvZDSmshdCRoRGC2h/2yNcZl
ec51FkbmEd1je49PLDVQ8/qLCS6k38XKHO3MBQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
lmkJZn2yha+73EQxzvf2ftjA2ZPsXiOCU7WmgNFhW/A6MvolqZ8LDAIchWnJc/ZHbIScX4wfK6+7
nDmo6Gs7JUBsq8skyRrsRz+cU89cm9KQWXWgtduzrbZnLzKX46ZgLyQglaYI6K3bULnKfCjO8SLR
LtNR6Q2KaQzjkJvk6SQ=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eUZvqSLYSMj/GdGxHahsqEMos5RJfJi42gE7cSTGksQEWHG4i3FQfGZX1wHlW544I/vgSbV+T81a
VLBgL8TiR93gf3RM05BCx8hCdksptudNbJ1B+4bvi8ZUhlGzurVccrLFZwFViff1f7GRdvDjzWaC
gOP2Ljbv4XRXnLGH2pxiBcZOMaKwAlxIvD4LazzzRpctyr2JFmoxUvEo+YztJYzUGHSBsEtnzBtd
J7yR39/fIvbDUpo/EHHYPEgeKU4TqN311PIFFg4H/jMgjESY+COMLQNxYMNBoLECrtgjYfOa0o2M
cChrq3YEH96IEyG8GPIv/BrjL3zNOZfog2sp8w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
K26hlSK1EjbroYKyAOeyuiAeDIHUk71YecuhEaZditw+NrpQu3KoUAiuicPSmI1CMdSZyYBxyLV5
1zZW6PAXj/jSMlODXEo5cpb86txEmESnLjH9zpgRiRvN5tSxGAIHxnuwOlqT6Oqsyek5yoTywyTz
lAjGwIvXleEv832/9ERcxAFOPqeI5aKS39t+VTcC9fhAnvrMTACqwFgkEWl8O5l0B5tK49ogIRlj
NmgVEAnTph1Jz2k5wajNZccl3LPj/11FbVllMHM8UV3jR/Jn21gWOnBcc+Z55sGeUvOMdOXuv1gX
OU8m9JenUD3vWSVeyg3klIRuYc+H8lLDlxT70Q==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bzXdP1pGOW3mmxgqQfwXHtnVzDGC/wEa2NlskilDjfkNQUN5CsHuexL9ELnpc4xM656F9IQy3qdN
piNJKaCQxyCFaAKUELbM5o+y8sbqpyVb7p+1PEkmVqZEX6WN4hWeKD20/nlshmC7fHDGYRDOFHQv
UVCqnndg8GmguGkFVlc6xNb0DB+UFIUeMVxsbRC3c+5xuIKlUpf3xO2wJ2JMcHsGoGExA5jDpVtC
XUb6lRjP6FQKVPpHxVM43BDo4meN0J4mZJgJ6Y0NGl7p2hIpw2B3FUeCsGuMBHa1yyjtbeaYm04V
ZtsEdxqhatDH6Hbh1HmBYUrqB5AWn0IQCFBcJw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
E9YZrDeBcNG88vADiIeQq98M+D+IK5O8qKdsAiqH8H2Vq6CihreD0CvL8FNmEeeK29hS1YcWPCIM
Vwii1zmOvyMg70UBVcqHUSHSCU+9gUfFtXhbceEsyGvflmbTqPLzIQv4+JAixbrvmdtDkAnrgBBb
mP2pUJpAbd2EJ5aSksRcY7nZxv/9/cPYiDfnGma6GIwsGcVmEfX45fEWszsNE5cuwZ9mDYww+Wwr
4TQ7mHobAuu8bFp870HEVz691DIkWHFCis3+2xdsOqJFwFIrNbUTXpJyDq7aB1bMVpfsWFJiR/nd
m7QGmvoxXtZB4099VGFkmiRQoe43NF881HmROg==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
XWIUz3r9K8YdMNtaDPZkHe/sQ6BdHgzj6ek4zBJS2bZbt+F9Uuu0cDLJ/G4cMqkL7Euw5Tyy09Ba
kqvksnSP/Q34/hUL6lgViALqcO5b4oL7wuCqzJ7ghXQ7IOU3kPn/zDkXZ53Xf4RQCR8EYWxobBcX
C5jBL3Ra174J3ZNpwK8jSxkoH/zXfIy7YzwVkOK3sfYyiBROekX3pLu52dooP6VCZeGDVfZQi3ki
2QUbldTjM807egjriAka63+4cLzrlil3HjPPhJ1jsWqpP/b1pEPDjtfRt3qRC6q01mbnuQhJc/Qp
fWZoKt6T5F5FHmAdb9HwiGfxQmOXxTXiCCN8OgZnNOOeGEloQoB/OjByD+bzq9D3fGzHZOidm7xG
YeiwIX+r8L4p7fPa8tXtyzbTQD+doc9JsPYl2eweVHAqvXFUQRL17bAsxW3MsaLOJa/77ZbTBkvx
vitvirW0oMKOGwQ9n/yo7LteTENDBnMrmNJhoklTavuV+XSZqje0USVQ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YZ//P+GUHQDqpn2u7+vaRR/n6pkgMcX0ltpdiACAy9T1rY9/JIRYQaB0jbllhOrQAppfK9GfyabA
0PpVWsb2l42OnLoZg5rlWo6g+aaOAe8Vii++hndQmXs9M3gbv6lUmrE7P+u/8LdmuRaPzEUnFJeH
tn1O3IjnizGIsbwnD7lPOtetKIA0X9BIdwHx0x4vH845vPXdzz210rc/Y/PP6NN8uHzxeYaE5s0w
sr29XI9ibUMV07reHGJOZbiAbzzUMELVDuLeHFra4b1zriwCUVbeax/RhTcNggdKjbcpjo8HT/yW
IHglsLc4qAt3aTStevZ4b03narZeDNBHdSPhrw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
EsSOcM2Ymz4XVAa0+f0dwPkTVaLSDSU6b/FPqA/TuuKf9X+OY4I0pT12//yNB5tSSxRW6aTsvpFT
isjZq3EDfIjvVzkFvRB+gAIJfFLUz+wE9HMbvrIkVpouAIjjjiXwQyX/8bF/8wN6QhWAr327PE94
OSYhfM22sNAfyr/tpX0BQe6zkO7I8wC8s0A+XHMDHmzfCA0ACcTwMhv7Hn4O4lBQbqhlGpdCY2T+
IhGXWCY/rXETUI/myVT4br4jxSFqQajZotIjycwHFeS+Gb3eUaXY+5Bsm8X3WAWW5RZiecGzoND7
uha2V8ClYn3Z9DcxmKp8nJn08TwK97bL98hxwg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OApFoHJ3RKPX62eyc4yYtb5WJ3Qq2xS6L7LmVy1hGXfeO5s98jlGjNSDa+MYB7Vj9QU2mlejnFqT
EtDgJngAQuR4gPz6gdKAvARnH9/YyO/8gmkUmHvHhHOZdeho5P9VUagspwSb9O51a3yP+ubv3Jd6
7K7oHXPeFume77AEP0tsCheh0r/9IkwWu4CrETL/Xccob5Am5wEp6fStopqDNThZsQu/i+9Id10z
/nuVz+nBzYgcU1zL1FZfKrKqATGivEVsKDaY8Hhy/z2COk6iT9/5HLY2QTXDn6npr2PzbZXt7vyW
E9/1Op+Z8E+6CnWp1HXH4uMJGVTS6Kr6yGU60Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4080)
`pragma protect data_block
QksAg5EwG9pTx+HpqU0CNCUf3fFRcVExqFgAHe6v2fbxp6HzG0VRnDY/us/+1cBz1wtZJagBUGJM
DhamVwMWb0TB+MOxRJBPO+3DQS/k7159PRzmmuE4tTEuyw/rXHQ5AmE0o8ckrnBHnUbOz8NwTVRf
ty991L9kEiDA2p3BIQN66Lm4WyJ6pojHvSgUBv5XG4NIci/eAaut38M9AZAFWxRfXgQnLc/cx702
3TH6ZrcwMEhNbyXsxsTb5B/ZtXSMItLZjmPl/8TvCnkuR90PRlo0sIVo45FzRCVcGBs/I+ofuAbH
k0mFGxXYYvJXLzG7rEr51v3d3glgncQohNVnshkitje51hlT3UcEx9bGuYfeQGkI1bgBilAh1Hed
l3diZr128nrUJPyPpsJUj3HugQ7zZ67HXmPnlo1ZiFAXfTQy+HIeOptW1CwpL8Tex3guUtpj59VH
LxQxOUB4DpRG35P9lfWY4mthws/DQmTmyYLEuBo2Wl3tCbhiRL7q6wPoqvSH56XfspwXlxJqNtaI
KUY/1hvBPmdHYVV2lJP8D7r0VDiYN8v4U/iCSIUPVhRy4Acw7uuyd2AVB/HcF3CezXz2SeEUTBpA
yU4alAYR5DLaQaym4uyatC3Q8vVlbURgQD4XxraAUi58QvuFYE0LpYvdmK09I7NjTNLD31XbgPgY
iRzt9COATw+WqF6krZq0nCFBzVh1RImIEVuqx8kcZJmPpsLdMYSGcDL7tN84AqUYXfJbQChITfjm
HACjmy4PqNlL+Kd0hjQIgr29IUzw6HTWnb1HnPKOoPMm62YngpcNZpyNrgQe8JpMPnlMSt2NGNQy
KYc5JZogoDXbq9etGW9Ah69e3ZmSTMObEADtVZfr7E03SFz6qGIiZxzYK6XRaM+7J7HMipHMsDDT
LTLBBZPnKAwyn9y++gJpjTOMSsxDAfx0JLY1Fyl3Pl0aLnAi6fDXCER5BoDRU4X2PAOilb64TMGQ
KEMWVihmxigSl3K0IkGn7wqYUCetdY0/MbTtJa2VIf0MPBrinoY+ufeuVaOQ1hJCaovDJYRqSiq1
j9tCVzB0JpYmEAq6sW/0SaMFpYmyKVeT5fhld7GFhOiJAWjXax8hvGMEVCrrWLJxqpc4yzCLKcID
CCdKZkx947zOrAUjWagGRAzTbXGpljJ2Yj/aP0VaqXuTBF7wvXqbsKqPPPaI3yV+ZVYUXvrsulpC
mo/qJDAbolQZPxyv1fjdlN/SNTxo0vrY6fid0E4o4BhyQT51dd+HaggSfP+JstH16Sjc0m99uJ13
oMvW+k9nDuFe3j80lfyq3PTxgvRhb1ccYibxIhYe7b5AJglAVmo3hjviMCu78V8qjMf6ZgGFQe5p
Bt66R3wIMtYMq87oyYpj7sPGUGMcKjC3iYpRtwQSnJIzO3WCrpu7rUC0AE3/H99CboTk4Yytt5YT
NH2QoIqiAu99FAOyOEwSQYApX9c5hhT0pLONyxgVz6+a2w8pVG9laqfCqFbmpZWURT7JCdh99Jgo
MpbRRr9Xq0lqm2te55RXJjX+2ifzAQrRwWgOpX5IkwihNTqpJ9NkkMqY/fP9U8vEyr1tzvYCtfkM
HD9MphFk2IvI0AQdfEbX6Qe2w3cM7nzyUs06+D0ONSkzKEH0PPekQx9vlndT/dsLOVNQD4Z3yFmy
cARWQ4KotVHfy0PS+eNJaE118EblyJv7xkCvJgnTBzwKykG1RJw+VvHfiljVtcRCEfWNID3RrBQh
/g7AsUxXLeeCIRWK++YkCSKgrAxTE7m13NjKpXXxjHxSVunmob5qOmaQiPpP2gklU5MMYf5rNX9q
moPPiNOxknpfku02/Ph2VjITtZJ8CMqr8mKEOjuKbUejZuTRSTU4GqBFD1EZPt4CbLgpZXopGAWg
KCJKr/Ip769Ndk04LDTso4ZxmDRRj1OKlgtlmuIY/Jt6o0XsovsWjCn3Fdgtd2UEfqBow/LUOzWf
wPfZg6Vwd0sa+L4KF/4ltebZ74IyzzwNRv8lQOF5v2Q6vGl65gOcecN3GzszOZNiYe14j6q4DL6d
1ddfxttE2CZGswLc4hQKNc0khHWjm+JrL7iU2yo6TcNuF34ZxCMFCdEZ+T9CKE0IAwvDf3nth6I0
q4z+EkiLzTrrsOEtWlg0eOG9hOyIb9ZDLgDd45hNYzuBP5B8zzp77PzRsV5m57ILzDgOMCh7/Wl3
SEzcfuh8w7EdDIK6rf4FsX0iUMbOO5OAuCEQlkzofAqIEFsp1k9OoKoLNiOunzUqmDH5mcKVNuye
I5Y9kjuC33pqScKgQWBBGf5x482RtuaSaXowdDJ6o9RcsxmLB8Pedvp5nKwNXe7Aoes9qnRkjIrL
+Lljl21xywYMTzkj4WYgqBvU44P/3zYkqxir6TFHJEhfi931HFzrdhe7y0I/lqTFIukwW6cVxxif
7AcYquR6+WXfoB4XlKs1GH6YhrMYOopwsy/O5SQvyesYJKW27h/DjNxvGAsdt19oJf4T5CJjeVh8
hy6pUNxeZw9uae4VGohH6W9kTKF1zIpYfMfOLCScOSXA+YL5mbpss8dEMwj3Z8lepJkm4Ffh4Dts
04R29RYvsZG8/sdGxnquub43e7hnoGacfp7zwvtGLNaixGqEYxHuzjhnEtTOEXxFYGqQgcU7YFTK
RlsOPhoOi6Vo2QRWq1VwiylY1fDgIVpROuS1YEvlRsiKnfcQdfn07sctMZqN9lX0ggV42XtB8EZE
P1QMbL46M5wI/Rxy8ggyQ7QYMAV0Si+aXrrzyKj9N8zxdnYWc7pvkdcMClltT1Sfj2sreiJZNQtK
MMkf5IVHbk6TE87pcd5kIqgmtwscfWJ7XcQEfsTkGK7aBseDocPRRFXVti+5ybrry5d9zBgkf6qT
o03geRqD4qhS0b0VgI12hAsg4Ff1Re/h/k4093mFRgI8Sz4zmqXN58R4vuyXtg1sWEh7fTaTmAVf
36MJ+mBtUerEEHJAqJYkwBq1i6anNVBy8x41p+Qghudks3SHJQtSALmIKEEwv5ShiiG9KvN+43AX
r7RJ7asYo94zH97HSSydbAXGRWuaLXRUrUgbUt20gYpoCfJUpiHgmTP7RV3zxW3J+oWSovq6srfr
UcIuDC5yzfFU73i9VxC5Sgcm4Yy672xtgJJtH0Pwcp2g1S4KA/g1oO1C+glaoKbtatdoyc9oT7Au
sdoA9VCWCID8EZsBCjg8aq1FY8SMH37W96QHRkxZWtxFoMGRzdu7KrCuHQ87v3l3EmtgNJ9O+l3e
th6xvtAIN8UXZL7twAwOBoMhUkumjd39jll6ttnKNWEWPNcXj474BGmRgFPHRThWCjoheECdtsiW
1kZlTw2I7xhjZeCGadFoxFVbEHs6ovJSQBuVuPo8EQg2LcgrpolGPX+SDBdFxJb1md8rUH8kexbi
5KhxUEc0t0qx0VBnPgnidHp1+kMXbparannE1dMYAjPY23oj/QLGWpdBIfXELvSKdUArjh87hNtB
v2J3KVZ8GsnwXb4bfQot/rDx/zEXpeaXpW6DFZ4D/9HaqO4UYC022n1p8hbsExFVzo3LGnpFqACi
14hPeVa/BzioIhHEwpZeiRVPthwv/fZW6zp1IjMvywbMWUA4KFqVwxZlIpgrfXbLsn4wo3KLvTIp
ySMNprg7jy5Jjm1TDArKnKsz/HdbuHWtaXSFD0UBIUNlDXF3pyAIaF5DJp71QKRXsU108L5ZWIxc
FpwWAUdklVWesdXOCUsVqNX1hZxavbuUoIJUcTMD07P6f6u003Hq9NuaNijGDcPtyrGGyE6bnG1J
XfDiG8S0ShjsYzGzBtAMynYhrRiQzDnbIgYOUen9px/kdV1P2OCh6kI1tMqQY6UTxw34EGz3OUoz
V5k5rDz74bv880kFTPRAuyHh8XiMUkyWFcU1BvL0JY6KxYXJ6zhRgqcBw42T8g8jTR94W4v8f6kS
kIx8TBAtQPNOywGJGTkK+PuF9UOddHXTZSa9Mq64hMdYtnBv5r/jAHVfuvo7jCp5O6RPZVxwJCPm
yj4jTNT1+1pHZb4H23k+F6Wx8wVWWihyAMwEmFsmbIhstnO9q4Rsd7KBYMDYbMVxne0onMY2//bb
J11zMLs+HGl5L5t57hIc7kjR21bwfIs+Wya/t881WqcKy5MnbvFOvlv9roJnBy0b3t/3C+jl2fwN
LsP1TH95ASucVmozENwAmFc71jBz9yCrHHFigtgpV+mfJA+936lth5l/NVOoCPODhiIwoPER9JJL
QpHK8LDzxTxCUqbGo+yzDTzMwhG2URAV0oycyYQVmJtM/zLFydLXskU0Jbo1sQE5QeWarShWkkL3
sHKF9IVcK8BKAdAPsIaXVhixnocuFm8VqODj3IXKxPDNKE66zxPyI9tarlowQkgdMfmnb0i3NbWj
GsBxOOXR05CkKU6s9a+P9LH0dbjrrtZu0y5Yqo4NcT8B4+BBDUVuDBkQmrCNARbfj68LtyvUysjB
+5PIbFPpYSSCtaXJ3fWvx9n8evz+DXOfU4onyaY1QTPlVXfwA3QxsQ07sNn6gIJyco1eq+vphM5V
OtP+jeMClQgnf+Sq6/5mRFLOqExJzaSb2hy1VBZ5YrWYp45O3cJmNxm1rX55NJ93waUSx3Y67Ycr
aSaH6PG+f16oVj6ZPDcsiIwoV2rORjteucpY2RKyEAjnUBFbIx/QiU5rYc0SPoaZaNpYs0tpqMqI
+bLtpZ+Wr997PFs9/cf+Oh8UmQ7TW9a4OF5ZDGjowMJFPL6uewU3lIyKdxaQ/Ddf8R39v5uCNYp8
XVfc3Z0nLB0/w3oxNnulnWBbvKd6T735IQQgcdML1omFTQ77rxTV28x2nvv+8DgunEz9PuCUdJop
ReGRLOxtM3x7FmK94Q67BhAJo59yyFL16T2tveiI36ZW42yUDMccN0fqRwxEuwoiCnCJ76FbxLg3
TM3ih1GY/B3Pa0D1OgC6PzA3NMrRsjQvl8RyvQR/RVED7ycJw/5rD30GYDDE6wEgSOYgfODsZCQl
nQn5ZtUznhDemo8lkmG2e0U4tlf+w7vAV97h9aNPZ0N3jbkc+cUW33gtMlcap1JK28276iH/pQFa
/tx6ye4s0cpbvW31X2TPsppmqUnrElv1NXKH3qRHf6lGThQTm25816laSk59mgWhVlAQXAogXb3e
jFdooKfv+mWqhPGoOEegKaNhMvJrsFfjLpJEro50BCQQ2aXJ6Qe5GVSSxuoGcnu4nApI78LzNfRO
TLckGiR1erlJqjrS1nlJFHw0DKB5HoeOcQEXeVY6SWFyYu7ZBexEWf4y54xdTyAHM08adXRSye2f
+V7QjtMEl+I9I79zwPXTj3TqB9p4PA6kOq5A9S+STQq+SarogxQv+j6cmFnnmXmj6Id/T0+oyCEB
WHZlNn3CVHE97rGRiCWx9B9NpccuHaGSvaTQu6xibkhH
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
