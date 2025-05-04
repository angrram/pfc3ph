// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sat May  3 13:20:17 2025
// Host        : AngelPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top design_1_c_addsub_2_0 -prefix
//               design_1_c_addsub_2_0_ design_1_c_addsub_0_0_sim_netlist.v
// Design      : design_1_c_addsub_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s25csga225-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_addsub_0_0,c_addsub_v12_0_19,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_19,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module design_1_c_addsub_2_0
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
  design_1_c_addsub_2_0_c_addsub_v12_0_19 U0
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
VSv9YqpdND3Tceo=
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
