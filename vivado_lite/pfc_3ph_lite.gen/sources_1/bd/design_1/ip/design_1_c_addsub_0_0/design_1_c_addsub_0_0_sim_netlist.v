// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sat May  3 13:20:18 2025
// Host        : AngelPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Angel/Desktop/hil/pfc3ph/vivado_lite/pfc_3ph_lite.gen/sources_1/bd/design_1/ip/design_1_c_addsub_0_0/design_1_c_addsub_0_0_sim_netlist.v
// Design      : design_1_c_addsub_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s25csga225-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_addsub_0_0,c_addsub_v12_0_19,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_19,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module design_1_c_addsub_0_0
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
  design_1_c_addsub_0_0_c_addsub_v12_0_19 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2624)
`pragma protect data_block
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
m/g=
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4336)
`pragma protect data_block
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
+JQaJQ==
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
