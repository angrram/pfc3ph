// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sun Dec  8 17:57:12 2024
// Host        : Angel running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_PFC_3PH_0_0_stub.v
// Design      : design_1_PFC_3PH_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s25csga225-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "FPGA,Vivado 2024.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, reset, clk_enable, G_Up_L2c, G_Up_L3c, 
  G_Up_L1c, G_Dw_L1c, Va1, G_Dw_L2c, Vb1, G_Dw_L3c, Vc1, I_sink, ce_out, Ia, Ib, V_out, Va, I_load, Vb, Ic, Vc)
/* synthesis syn_black_box black_box_pad_pin="reset,clk_enable,G_Up_L2c[29:0],G_Up_L3c[29:0],G_Up_L1c[29:0],G_Dw_L1c[29:0],Va1[29:0],G_Dw_L2c[29:0],Vb1[29:0],G_Dw_L3c[29:0],Vc1[29:0],I_sink[29:0],ce_out,Ia[29:0],Ib[29:0],V_out[29:0],Va[29:0],I_load[29:0],Vb[29:0],Ic[29:0],Vc[29:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input reset;
  input clk_enable;
  input [29:0]G_Up_L2c;
  input [29:0]G_Up_L3c;
  input [29:0]G_Up_L1c;
  input [29:0]G_Dw_L1c;
  input [29:0]Va1;
  input [29:0]G_Dw_L2c;
  input [29:0]Vb1;
  input [29:0]G_Dw_L3c;
  input [29:0]Vc1;
  input [29:0]I_sink;
  output ce_out;
  output [29:0]Ia;
  output [29:0]Ib;
  output [29:0]V_out;
  output [29:0]Va;
  output [29:0]I_load;
  output [29:0]Vb;
  output [29:0]Ic;
  output [29:0]Vc;
endmodule
