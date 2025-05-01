// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2024 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:PFC_3PH:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_PFC_3PH_0_0 (
  clk,
  reset,
  clk_enable,
  G_Up_L2c,
  G_Up_L3c,
  G_Up_L1c,
  G_Dw_L1c,
  Va1,
  G_Dw_L2c,
  Vb1,
  G_Dw_L3c,
  Vc1,
  I_sink,
  ce_out,
  Ia,
  Ib,
  V_out,
  Va,
  I_load,
  Vb,
  Ic,
  Vc
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 384000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *)
input wire reset;
input wire clk_enable;
input wire [29 : 0] G_Up_L2c;
input wire [29 : 0] G_Up_L3c;
input wire [29 : 0] G_Up_L1c;
input wire [29 : 0] G_Dw_L1c;
input wire [29 : 0] Va1;
input wire [29 : 0] G_Dw_L2c;
input wire [29 : 0] Vb1;
input wire [29 : 0] G_Dw_L3c;
input wire [29 : 0] Vc1;
input wire [29 : 0] I_sink;
output wire ce_out;
output wire [29 : 0] Ia;
output wire [29 : 0] Ib;
output wire [29 : 0] V_out;
output wire [29 : 0] Va;
output wire [29 : 0] I_load;
output wire [29 : 0] Vb;
output wire [29 : 0] Ic;
output wire [29 : 0] Vc;

  FPGA inst (
    .clk(clk),
    .reset(reset),
    .clk_enable(clk_enable),
    .G_Up_L2c(G_Up_L2c),
    .G_Up_L3c(G_Up_L3c),
    .G_Up_L1c(G_Up_L1c),
    .G_Dw_L1c(G_Dw_L1c),
    .Va1(Va1),
    .G_Dw_L2c(G_Dw_L2c),
    .Vb1(Vb1),
    .G_Dw_L3c(G_Dw_L3c),
    .Vc1(Vc1),
    .I_sink(I_sink),
    .ce_out(ce_out),
    .Ia(Ia),
    .Ib(Ib),
    .V_out(V_out),
    .Va(Va),
    .I_load(I_load),
    .Vb(Vb),
    .Ic(Ic),
    .Vc(Vc)
  );
endmodule
