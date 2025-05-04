// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sat May  3 13:20:17 2025
// Host        : AngelPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top design_1_c_addsub_1_0 -prefix
//               design_1_c_addsub_1_0_ design_1_c_addsub_0_0_sim_netlist.v
// Design      : design_1_c_addsub_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s25csga225-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_addsub_0_0,c_addsub_v12_0_19,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_19,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module design_1_c_addsub_1_0
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
  design_1_c_addsub_1_0_c_addsub_v12_0_19 U0
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
85qklv37YFV4b3Q=
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
OMJdt31LeIynpqDjSMU23aL+ucZg+d3PqB4CBX8TRLCXE2g30QN+vWmiZa2NBqfTbEAB3q3kzVGQ
S79Ura2LKfUeKQzMjJYizO7InHJ9ANYUhQLcQgm8SSWoK+uXQxJwj6BrvE92pqzdbWLDBK2EPsBU
SCBTd74FBWmdHZhv72BYTnrThG7mm32m5DOCY/SZ6NdZtZvp+qVPyFXDakGqfz+TRqN9gRvaRSUV
26Dl1OM9nTNnKJmHPI/7VgKEKuX3PEyNUDAoelupK7xlXiRYQ2yNN40bDPuVBSu6HuGawAbPRmpN
eXzrHTPcP/7OFfHr7hQ+g6UAKvtcRLaLjdkYHh9J5UBOMKv0CXWxnkCIsIUMyI8+5wLbq6oijsbI
rhB9CnGfZGYlMOhPNLtZe0YIwGJK8EYTBnRDP525Rt9P0nRbYetG7srssvkdo/hW1fN4PfqLg9xj
lZMunN0eQInQo8VRVA8W9hHK1dxoldQjyBjnNnLDZX3deQWTgP2oZI05tEnX18f77uoOI2Vhlf4M
GEYSKE8vkJvWW/mwe3WX8djc6yU8H4LpqlQ2stcIPk0dLexZhIHcoiJ66VycVZR4nmHqAdcspPbr
my0i8dM8dP9ZPDtpvcShaUZWUKdiF6K/AAwtp60KR8GGrbxkm2qJZdd8pkxpZhABN3wtQquMYHP/
D1ZyIAAIKfaCKhulXnfwwvO5Z14KQMzOf13Q6mTFBgUEQy1OOB/GBvbqmit4vg18HBfcLv7egRo2
+sQ0jX5XkkMuiAQ3bUP3+jS1cIrz3IuNi2QoXF+6Z8WUVFk/lmkIWyrUJeoAJAJtT0e1HQPGslxa
ot/CDNje5jyRHa0Fi3hClErLNK5xv2/SJcJjWUpILm9yKgsgrCOBj8diXdIw6tFvlfSIH/7kr0rY
P2ovRFVSmpJnqLTg0q4Zt/TNvs7oOZO8wYB7sJrJwSBVH1KkeUVHnCAUO7egL8olhLnGFWEC4qaB
0wbTGTCY2/8cR1gKRoU4ly5iYo85uoJAOlItOnicHmo4vds0K+nlyBULMoLmRUlnKwoj3Dc3nkNq
SP9Zr/XbnF8cLKTe4hSoZF+9MZlavwj4bSpVv2hEUpvAUp+vZo9423oqWn+b3cYmrPZ3QzgSW6i5
O+A4H+d3jTneIOSvrPh1Z01ZVXwo1JyE8uTRXieCHZ/r1O584mPfGKXpXDJlEKyUrhANc/L+8O/M
OwjjwjfYlUhqhX+Dc2r97vhXbRwZDfB0fxi903WbIykca/lBd6fWTWyjSsMYFK/hWy+bfOB5C+6a
MJziu8cis4fUsEB/XQsGMz0PPW2m/HVGsx2eYuwTPaI/Jj523vPqY4xU8u94JUAkTLeo/vwMUwsP
h4fLfaW9bAMoogq0TZFwpBmDY+cqbFhJiuY72jFgbicWskF197PAwse4i655bMecL2k0n7ecZCEy
gH8yOwK4cF01/nJcrcsbVIgN9mSqHGVuxnyX9N+kTADcONGJK9UEA6jxVFdzrOI74w252YRKTg4v
hb5XTEvbb5hSsS7tGtNZzOycVgt0iTWzMDm/VGhO2OmBgEvZ14iSl1bLB0SMJ1gMGWKfmAvS2UzN
e0ll7FgYMoKFyYmvOGu+e1Gj4cJc7zeadFFBWmaxEIIWkMaQGZmnywpjoYHPfR19GIMWkzyDSFZ9
TJJj4ElYP+Ns2x26hewoL9HNUUiAIqoapybr89NnR3Vz3i9Rn2ScMnfG/Gmiqz5ocuwBAVRHPXs/
lJ36CwflSaost10vI2m30P+pXGWFsq4bxy/Xl+iLQL73IbtyDq58KRVXYPj8RbfIzWMde0CKBzAN
01F2KfSdwIt82d3rEu3h/dRlIhfxYekh5RTABauL8mvTHsPk5jCpuVR6A7unt8xMSzpz+9vL7HTG
7Rn7WcXwf2GmuBMnysXcB2tqVEkvNsEihknaBPWRJGlN8AALd2k4ax1JBoZ5LZ/SuZkr1FM2aixQ
7c57UO6s6lUO9DsQMLYKI+sxsescNLm5VRCTYyEp61zd2NHQY44BIDnWBD6d06rghNCqWqYJQOO1
wjxZJEcZ+aqeb+YZrTINdYm93TLna7FJ/l45rM7l5YdhCJyAS9uTib5wm2KrGr7yYMdsalO4wuyz
nXXqmeWOWXx5LSIFo9VVe0Rf9uYIB0D121WwYTZB2ind63kSWawWo2guRaG8UngLo5bMRSf5fOa7
LXqIrbvUBfEh7BvNDmK0lHxO+7F7mDL/CJgC4wvHyxdGdg+fty/yfJpHGO5J33CE3E73m3BGBgkP
rXnRE6QM043cCNdjipVwk8Jn5UlWe3QW52F3M1AFC7QBblfBmHoqYY3anNhM519NJ0+Awi7Nnqh6
rWcnUYFu4Umo41XZ7VHfQGqZKNOqhpzUm9AJeyX0b/beqQ9WrzfmYQtKu7xzIqruogTzZl5xrZaK
YfC0gxBR355B/IWSmZGwup/WnYKHSaecnTuGlL68LP3r8xF72xVVm6hqC6TYsQYKcCQhVKJ2KZtP
O7si1DzJrG1yPwps5EGppYkZTrG7L0CmEypLHGDxywupI3IoaKFolEeIgwl9T+XaATcGyxFzUlbw
J44btCwY3vvVKbkG2PkuTy6S8PAvyXaqma+p82W9/xzNlx3k5Tgn6N89JQbOK/EVq6aGem4qryJY
v1+4FlmxDHH6ZIVqFQVEU32ziSY3TjC57Fcsxc8PoDUSPKYdAWKva5e0NQa3SrdVE3b+F4CDTEcI
N3ljNu7qjihBnU6D5ATOLfpAyGkGkTPZWV0HuhXSSlSgDYhDis59gkGL8mnwAgM7RcRlFs/zOfr/
WcjHLrnF+GJdT5aZmZj3pV2DVtROXF9uVByjbK2wwY9R1fPAnnF1IO9yA8XpRbf8/avht5meLtMA
GMXirK9MGtQIyFyxnZh5rvfQyFcH8NwpVX8ViOuKQ7tEoysSx/Rm7JgJpzdtgswC6rKQDJBY+YUv
DG7MicPoXxTkqwY/TOcM6/Dv8sD8aLox+G3URbg6WOvstBr3vWNwGh4bn7RIvkk88B2xyFQgK4ZB
qlCTa8AeKh8s5/lIaA9wwXhmI5IwUvzzuWEYp02Ddwn6gZG1erXATel84QFXPRu8Sh4JQ6BpVIxy
unGzfU8KK72QwEYfpdKUmuLlWkThcksBVWZbDUPFtnQyJyS8wekpGxDymJ/zOXdHWQxwJgswc/vW
RFg1yAHpCp5PuF64XtNlexW31300GYwaZhThQdVCQLoIO3F366ys6hGaE1lvxDo1DcF8KDQIXY3Y
6+3wgHeSlmAv316rl2nTbQxGWNom1ru+ln29AIAKu0ZJAI0FNhvWIeyx5n83AdkqpA1zQXc3AIGm
5B8uT8+ik+ZVorTzvOiQ4mvP+US6yKA9PVmx5xZTDJcHY0dxz0Enlo0Fc6g4rR1ecY+LHNRsx2h2
8L6meY4/IV4T8lZhF1Wjzx/V6Yar/TQ3PnJ5OokktsemWDJac6sy5gHiRf/laeFzRbwtZEKYGhYl
VzM83FAym3VdzVtpDAMbE9XnQCehFtl7Rr9dLkb6XK6covihrLA7YNWCMXrd/VxO0N5fLcgxhWox
CQzCMDsJNyHf/nVPyIX/Zd6NayDzHCp9P/xNUzY5UIZpdEnxLl9PewY4G3TDiSw0glMkdaKG51bo
o/dqTjuzEoiLNCXidWS1vhJKW6gpeBOHCw50Bhx+xj4i9GzjoH+qkQ+Cxa20u85SXW5g7iCMd5yL
J39fJx5kvZQ2X7Z3pglyumi2s+8gR5r4ZsmAzDd8pTh4wbXfWhm+ETum42zAR04kRo8AdnCqUhBs
nPRrXBEQqoMps3/1dXUWO7+k710mSE2e93cD4c93y7X6OEiV2oBqMdT4si0DsmfiBC2I4BqXhiMc
T9s7W5djXBeE+MhzluwMUY3By8gbm94PxmUJa9tLE1L//6quhr/MqQ6gmBBa7QlCITwIEakv0u4V
Yb2k8vRqxYuG25tjMFbspHhg8M/CA3vMDIMLcYQkRjvgDwA2+ydYdwkYmgv7l5Tf8mTasP8Gg3gj
oY0ySik2495u4TQDC+SX8ltnbIfyHALIwzhut/vxdy5bPOCq2PMXJ2qt1DzwBagPPh3TxaeuAAyP
DkwBbbmgevplbPbFRxw7Uu6b0v53gU+BTDLgXguiPzidDmUVr8r6rg3OPZYp0z1137jDg3EGVtYJ
v8ZbwFQk1gD3QKpbsJaF4LBmiGPiWcR0fp/wgn7aksjMccnLa16/KgzJ+Cq6pOHlTcQ918xrYD6i
YhzKCNYqu742PIu7rn2DV3HZIYe2syREjbtUioxjUSOlEtbonXMc1a3BlWIqvjFuvRXBVBlmij2x
8QtyInfKhKJ+ZC7q/iCgGJsvCT1aPni1Ak8XPvo4Xuuh2/f3m3wnnYfy8SFDefgKfITDEj4E04oW
P/SrlPwy0ZCZLlxeYDG2YkxL3xHRH8a0cOxo402GYnzE6v/iftr7XLmBFYWAFTDUL0soUT355s2m
Hdamp4mzDTk5cGU5UUEzbetSYtxpJOeW/phKl99ztrwJFLr2MAZMjO785lG49loo3JDbK3+c7N/A
pf9tp+zrIOx7LHQeY4EUG3UWC/6PKJJ/t6ru+xlenhNIfbmC+xANLnxo/3Dg6/4FrRPT1HeFXcLS
2IVjBZQXAcgOQZSOiGuRtxDZc7vKeCKgzV1G6nqoLYijJV1fzZxfA9XRSejcPhPL7WhJlkBI996o
ZFP0IBa3ThDA54/zObP2SAvzqJl0MkUTEx9AWCo57wSI2KM66m2/2pcnFMTVUt6AcrIWvtGoLqlw
rLf6dRdieof7Oo8jQW0OZr+ighvtsY87S8nS7OFFgXa0MK9jVXwk4dMOsQGw+DchS0Y1zq9CT09K
Qx/16HcO6DpPNnSScjJuu3CIcDchu1uy8x3Y/kDSSLkSqbZLgwpWCfioV9R7pLtlhN/ArnrUNTdr
DfaV8SuqPyQDWRZCwiY6wTgzEaOKPWKdgB4WEgeRQptV/6pCGGs4IXfnTgLuIr77iQnwlnRG/tTz
nvgWZh1Gqqn7uwngAAceK+cW3xnxI0Dkq97GYVQH2mSlhcsTJTw/rg/REJ0acUy1OiMTIuY+Z5lO
twhrzJKzpA9t2/vBkVmaxHtPeotl0qElcFCnIOSobpXj/qTWPq971Dea+GsqOW7H2wdVDzCjRUSz
ecddREUre2b1NEa1s961ZI2D6XMoqC8SmZctW2l8b9CzwFJ6qfFuAgsbunU9yWRjtdmwNo4jXjNx
VR5weIRwqOOQNhSzQZj+xKJR9bVJBbXlNEd74mboVYvL2nB9rIbS20m9CI1g2Op9hI3G3NTDlcpI
GhehXd6wPaXmxJ3SqbDufdzBbHrmWqw5J7SzU3Z7e1NhMUx9gXICU4GdnoothntifXUJcnFtuj56
seqDRZQIk0CwvUn/Wwm/M315gtywFMdTskiJWu5nt+kp
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
