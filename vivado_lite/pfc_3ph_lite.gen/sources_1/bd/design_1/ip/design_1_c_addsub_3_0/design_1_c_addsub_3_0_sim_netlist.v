// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sat May  3 13:20:17 2025
// Host        : AngelPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top design_1_c_addsub_3_0 -prefix
//               design_1_c_addsub_3_0_ design_1_c_addsub_0_0_sim_netlist.v
// Design      : design_1_c_addsub_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s25csga225-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_addsub_0_0,c_addsub_v12_0_19,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_19,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module design_1_c_addsub_3_0
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
  design_1_c_addsub_3_0_c_addsub_v12_0_19 U0
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
q7RkYFNTDmScaq/Yt/Pw8/4gXPcMcAykDwlegnBuGoJmiEXA8eOx5FmdqlB/w0pmoSC+CYDg9S+W
Tn/K6801eZTRFbWbfz1FJDFlVfnn3//PFbPdluluzMytQUXeWiYXmh0w3RgsMIwk1qYfkOP+/xrg
UQHlrrH88HJylBvBKAegnh8sfQvhU6WYcuZslwAt/fP8wsYCTCrQ1rXLweo8PEZboSzNkuQdF9Qw
tJbeABVn7xDVYSqOzG2zuHQuhKRyApStMyrRfEk4GXI6mm4bmKAw4Rg+j8P68zVzL+nJI5MNZAkR
uRPdjUbdPcOaFw3iMefrpqrUzoWP7cr15wKpqWGYXLT9/60F0KBdn/26zO/mg6UeujDv1Xq0aP2D
OY+AxPO2RsiN+y95XBcv5G7W/hietkLz4hVoB1v0Wv63HuNjSPX+5x1eYknPSw+UgN3Q9IXhTTj4
F4hdxDtyIeEAg+JQTNKw3J1tQ+8AAkOFDZBik1eyBKW1cwTg+yJUsWZWnRw2VAizwfuNqBqkpKGy
rKZWdkKrBwYeJxPxg9YxwOPR/lqTw7DsHZHllY2gVejUOLyQBVHpNWaNxHCdmNBD8CWPnX7FWN3m
XTNOn3/dIxJOHzWtRwcmWGH8zpfSYwQm66Gy4GnPnh1gKX4EyKZaObn8s+4alR/RZdnV+yeAWjVb
YlPITQptXtXfbHCdrBLpEz37me0jMv9fEOlm0iaozvVmBiVJDqYlMIjffVhlM0jM7KaWfPJSiqlo
9N8vivXqcDthP9y0m/t1OPTCbCaARCwYym6c1KFEYrXU/OwOMAs7k2cT6b8kUJa4aYzBaBmktdWM
mKJGcOqZNaPt+uTrQlVBIRaWPXHjGbYR46zm9cKmd3YpdfzpVTX0iEoGG1FZ2IZWMKAI0NqxyRdi
fmDedAqm06C4cHj5csREPGDInxxD5wJUqo3Sq9Yn0oJRltnea+x4pnBxeFgw+xF03Q65cNFaltRc
I7LRJ0Fx/7y10O3LVudWqRHkH8vUziOzAB/xx24qix0D0MB3RP+233bc0TAWbuDz4SMIvfGchgH1
TepZiXBySpmql9d3YWKHrmV+VyUEe7xA9r/VmyxwSvi/0PKMoE8XuNZuq3+ckLALA7Ojs58K+W6I
ulLMGYWxE0EpjnMMgS9sDD+/RyT0FaqX8zosQva6qp4QcMBKFPSsdmcdsn7BZWjF2DsZ8jirwtot
Edt521JekH8mYt5CJXRGcFCFIbsQAYuXaAaFolPWoLSP2lzXnTsw4gxwY/d1prv1bbhSqJUFsys6
aeQrEnAzAgoocvUXqRnydWSEDLFRV4Q0fJ7n00isxjVgrdYAu3M4PBstffQ0BtOWbifxo/qMJlO1
sNGxKSrGyGviyeQKKbfNgz4nkAx5A7+vsUB6D9lUtry6k6ibTQQTPPM01nX1OCdFWkbUdFPVRGls
HaLgvodrru2/6yd8ZQK49392z/Yi8vnTY++P4YNb97yw1UyNdy/NqLkiyIO3SE9p2qht/S/bv5Xa
kaK4gFuf+rVdn1V28m0asJYxvxTqmqItT9E//3QmJRxP+iQBrOeICb2TMQC7LxGj1QibEwxOJ/8y
UxB6sKfZLPi++3Z9cDTEBhjTwH+ZRKI7CUHbcMrW7nl/SmWnQI3BstZKHdspJfEdE4fys2J5Mj7O
2cUbzWY4Z7C9k8/9GA5tBDfFkQOvfitCA/itb9aQBWBUtKxO8a+oOVN0f1P1OXNeTXG/aZksc1nH
g6gzY0fP0DRW+Tk+YTR1dQ0nb7Jw/8rGTGmVJLSf+5g6Kd/jADbdsqPZcgHOs68xFllMRvaPRB6I
bqdikhgVKkZUVL/xjEwwGduzto4LfkikgAX+VDNidJ2HUE3+dE7LkBULQTR0VJuWXwCSsSHhDvbJ
SoxhwuFfWnxE72B8bP3vI5Hm7oQpfweEbIxFrK39s6ZmKaQI3sxlst5+rGfNg/UA9la5bNdI93jF
jbSEyMI5DRoj1xSAy62POiL4UJ49gyjds5YTPpwt7Fwa0uIrSJWpgLEHS0+MmfvtjZdTWAOwJBTp
kK+RpicKsx9X1gS3+WgGhFeS7+nyhRCjCDqmBneJuhUSgr8vciavGl8mNiqdm4iqinURPpdK2yYt
XhqGWQfBLPN+csIQAKZwjZZIEbrOp693DT49Uoiraxj8O+BD/D9XHNCRc7W+x0anbhSvgBKmJNoK
Bhau0t0ioET6gGms/dPuBXzpkRztc880YPcX6yctEZ3pDwVWET7kX8OlBSU4LQP/2ucyvRlywBKY
Fm4ASDnqbdA7hAYS1JDV8tPE6UqLw5PG5i2RnPeJUILt4zkHBgGnEF9h7CAzns7cZM7yMvk43nOb
FKCQeynw5+uHf5/8xAV6kwjnimSWgE4ph00Ucd881DX7Ujbb1oeVgAcxLH52Vp6mVGQ4feJWNnNM
ooVJAkd0sv1ROsqFcIH/QQuWZPJyhZ3nPxg1FNRB99AgCLTIWi9i3/A/4aAnzR3ypMJYDpknUn8G
ch2fNssHU+k5dwXZBQDJg/MlEFIZY4SUkZrSxAO5rL3hgdcxg8u6Xf0JKdvG0r0n1vJKBYye+aWZ
b34Qts8gNcIOVa+8ujcpuHWbg3WWF8ehlsVKFBh71Kx1Aqh+Yik9g1RjeLcrsVnKVdnQ4IMnpLMh
UXUht9IBJ1JsU7tkmQhJp7ppSDuNVb/cENJsYVQ0OUmG3ekTXRBPGaj2UGxQps47I2tFMD2sp+RN
DWop3zyMNvzLQHKpk3lMkR5bdTKa6OYG18q4xB9HDkNUpfzHbLSayRwIKJkIUebHw1/sTTZSgFGb
pr+6Z5PjHXy//Z20ZL6iFnxX0bI1+hlFa/tRfYav851VIt88O1zaUUgZolp+m3EoHW/IfoK2WrBC
HrlcJIT91ZsgPzDaUxJdgatLeoTc1FewM5ilpzFNGR0lrJr/XdHj17x1QA6gIOsLjd+/JZ/Amv3+
+YivFbfz/G6umpd0oAy3qo5QNHlxBOGNw4/Cbk8rbbh7/cS2dE+F+bAQQCksWlOKrvmB6tRIeLyM
rwa82XtLwsHp4Qhibw3G9CAR2lpD+6nDczxXznPvuap+FnwkiIyEJeivMxPCFiwmYT0nB935Vmxa
BthQ3155n8t/HBwtEk51GuPas14YsagPLyfvJ5T7kF1acOYbaPC+2+nCMsxZPCR/twFXlZtWIDAl
NnLQp1AnJFaRmrsfeCLRR2f8bLw4WO1us3RfbhM5Mjl8htXGbbjYIGUGHw0gWWC1QX22Nqt1TZ8T
clSfIgRp1Xmn7L26UY1cZwF19r1SYYbI78eruVpRzxCJVS80HfsAEfWk2LSimao1pJyyDWJtPuGC
5HclVDAhJ5EzENCbnWvAwufI8ThTdsR3grRk1QsNyIiuPSvxfDWt9eRJtbQgkfxdXxunqgbC2srs
6hXcF3LFFrnTaT8=
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
