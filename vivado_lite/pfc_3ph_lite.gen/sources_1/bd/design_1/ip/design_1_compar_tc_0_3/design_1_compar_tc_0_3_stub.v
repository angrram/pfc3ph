// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Fri May  2 17:32:59 2025
// Host        : AngelPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Angel/Desktop/hil/pfc3ph/vivado_lite/pfc_3ph_lite.gen/sources_1/bd/design_1/ip/design_1_compar_tc_0_3/design_1_compar_tc_0_3_stub.v
// Design      : design_1_compar_tc_0_3
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s25csga225-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "design_1_compar_tc_0_3,compar,{}" *) (* CORE_GENERATION_INFO = "design_1_compar_tc_0_3,compar,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=compar_tc,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "package_project" *) (* X_CORE_INFO = "compar,Vivado 2024.2" *) 
module design_1_compar_tc_0_3(a, b, c)
/* synthesis syn_black_box black_box_pad_pin="a[15:0],b[15:0],c" */;
  input [15:0]a;
  input [15:0]b;
  output c;
endmodule
