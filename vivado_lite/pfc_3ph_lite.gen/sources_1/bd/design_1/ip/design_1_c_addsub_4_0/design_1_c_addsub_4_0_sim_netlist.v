// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sat May  3 13:20:17 2025
// Host        : AngelPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top design_1_c_addsub_4_0 -prefix
//               design_1_c_addsub_4_0_ design_1_c_addsub_0_0_sim_netlist.v
// Design      : design_1_c_addsub_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s25csga225-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_addsub_0_0,c_addsub_v12_0_19,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_19,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module design_1_c_addsub_4_0
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
  design_1_c_addsub_4_0_c_addsub_v12_0_19 U0
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
QXAtk9CcfOK6c2c=
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
