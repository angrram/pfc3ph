//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Fri May  2 20:55:54 2025
//Host        : AngelPC running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=32,numReposBlks=32,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_board_cnt=18,da_clkrst_cnt=48,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (DW_L1_0,
    DW_L2_0,
    DW_L3_0,
    SCK,
    SDI,
    UP_L1_0,
    UP_L2_0,
    UP_L3_0,
    en,
    en_gd,
    nCS1,
    nCS2,
    nCS3,
    nCS4,
    reset,
    sys_clock,
    va,
    vb,
    vc);
  input DW_L1_0;
  input DW_L2_0;
  input DW_L3_0;
  output SCK;
  output SDI;
  input UP_L1_0;
  input UP_L2_0;
  input UP_L3_0;
  input en;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clockenable:1.0 CE.EN_GD CE" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CE.EN_GD, POLARITY ACTIVE_HIGH" *) input en_gd;
  output nCS1;
  output nCS2;
  output nCS3;
  output nCS4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN design_1_sys_clock, FREQ_HZ 12000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input sys_clock;
  output va;
  output vb;
  output vc;

  wire DW_L1_0;
  wire DW_L2_0;
  wire DW_L3_0;
  wire [11:0]PFC3PH_0_O_I_load;
  wire [11:0]PFC3PH_0_O_Ia;
  wire [11:0]PFC3PH_0_O_Ib;
  wire [11:0]PFC3PH_0_O_Ic;
  wire [11:0]PFC3PH_0_O_Va;
  wire [11:0]PFC3PH_0_O_Vb;
  wire [11:0]PFC3PH_0_O_Vc;
  wire [11:0]PFC3PH_0_O_Vout;
  wire SCK;
  wire SDI;
  wire UP_L1_0_1;
  wire UP_L2_0;
  wire UP_L3_0;
  wire [0:0]c_addsub_0_S;
  wire [0:0]c_addsub_1_S;
  wire [0:0]c_addsub_2_S;
  wire [0:0]c_addsub_3_S;
  wire [0:0]c_addsub_4_S;
  wire [0:0]c_addsub_5_S;
  wire [0:0]cero_0_dout;
  wire [11:0]cero_2_dout;
  wire [11:0]cero_3_dout;
  wire clk_wiz_clk_out1;
  wire clk_wiz_clk_out2;
  wire clk_wiz_clk_out3;
  wire clk_wiz_locked;
  wire compar_tc_0_c;
  wire compar_tc_1_c;
  wire compar_tc_2_c;
  wire compar_tc_3_c;
  wire compar_tc_4_c;
  wire compar_tc_5_c;
  wire en;
  wire en_gd_1;
  wire nCS1;
  wire nCS2;
  wire nCS3;
  wire nCS4;
  wire reset;
  wire [0:0]rst_clk_wiz_1_6M1_peripheral_reset;
  wire [0:0]rst_clk_wiz_1_6M2_peripheral_reset;
  wire [0:0]rst_clk_wiz_1_6M3_peripheral_reset;
  wire [17:0]sine_3ph_0_alphaout_va;
  wire [17:0]sine_3ph_0_out_vb;
  wire [17:0]sine_3ph_0_out_vc;
  wire sys_clock;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_1_Res;
  wire [0:0]util_vector_logic_2_Res;
  wire [0:0]util_vector_logic_3_Res;
  wire [0:0]util_vector_logic_4_Res;
  wire va;
  wire vb;
  wire vc;
  wire [17:0]vio_0_probe_out0;

  assign UP_L1_0_1 = UP_L1_0;
  assign en_gd_1 = en_gd;
  design_1_MCP_DRIVER_0_0 MCP_DRIVER_0
       (.SCK(SCK),
        .SDI(SDI),
        .clk(clk_wiz_clk_out3),
        .clk_enable(en),
        .nCS1(nCS1),
        .nCS2(nCS2),
        .nCS3(nCS3),
        .nCS4(nCS4),
        .rst(rst_clk_wiz_1_6M3_peripheral_reset),
        .v1_1({1'b0,1'b0,1'b0,1'b0,PFC3PH_0_O_Va}),
        .v1_2({1'b0,1'b0,1'b0,1'b0,PFC3PH_0_O_Vc}),
        .v2_1({1'b0,1'b0,1'b0,1'b0,PFC3PH_0_O_Vb}),
        .v2_2({1'b0,1'b0,1'b0,1'b0,PFC3PH_0_O_Ia}),
        .v3_1({1'b0,1'b0,1'b0,1'b0,PFC3PH_0_O_Vout}),
        .v3_2({1'b0,1'b0,1'b0,1'b0,PFC3PH_0_O_I_load}),
        .v4_1({1'b0,1'b0,1'b0,1'b0,PFC3PH_0_O_Ib}),
        .v4_2({1'b0,1'b0,1'b0,1'b0,PFC3PH_0_O_Ic}));
  design_1_PFC3PH_0_0 PFC3PH_0
       (.DW_L1(c_addsub_1_S),
        .DW_L2(c_addsub_3_S),
        .DW_L3(c_addsub_5_S),
        .I_load_in(vio_0_probe_out0),
        .O_I_load(PFC3PH_0_O_I_load),
        .O_Ia(PFC3PH_0_O_Ia),
        .O_Ib(PFC3PH_0_O_Ib),
        .O_Ic(PFC3PH_0_O_Ic),
        .O_Va(PFC3PH_0_O_Va),
        .O_Vb(PFC3PH_0_O_Vb),
        .O_Vc(PFC3PH_0_O_Vc),
        .O_Vout(PFC3PH_0_O_Vout),
        .UP_L1(c_addsub_0_S),
        .UP_L2(c_addsub_2_S),
        .UP_L3(c_addsub_4_S),
        .clk(clk_wiz_clk_out1),
        .clk_enable(en),
        .reset(rst_clk_wiz_1_6M1_peripheral_reset),
        .va_i(sine_3ph_0_alphaout_va),
        .vb_i(sine_3ph_0_out_vb),
        .vc_i(sine_3ph_0_out_vc));
  design_1_amc_simulator_0_0 amc_simulator_0
       (.clk(clk_wiz_clk_out1),
        .clk_enable(en),
        .pwm(va),
        .rst(rst_clk_wiz_1_6M1_peripheral_reset),
        .v({1'b0,1'b0,1'b0,1'b0,PFC3PH_0_O_Ia}));
  design_1_amc_simulator_0_1 amc_simulator_1
       (.clk(clk_wiz_clk_out1),
        .clk_enable(en),
        .pwm(vb),
        .rst(rst_clk_wiz_1_6M1_peripheral_reset),
        .v({1'b0,1'b0,1'b0,1'b0,PFC3PH_0_O_Ib}));
  design_1_amc_simulator_1_0 amc_simulator_2
       (.clk(clk_wiz_clk_out1),
        .clk_enable(en),
        .pwm(vc),
        .rst(rst_clk_wiz_1_6M1_peripheral_reset),
        .v({1'b0,1'b0,1'b0,1'b0,PFC3PH_0_O_Ic}));
  design_1_c_addsub_0_0 c_addsub_0
       (.A(UP_L1_0_1),
        .B(cero_0_dout),
        .BYPASS(en_gd_1),
        .CLK(clk_wiz_clk_out2),
        .S(c_addsub_0_S));
  design_1_c_addsub_0_1 c_addsub_1
       (.A(DW_L1_0),
        .B(cero_0_dout),
        .BYPASS(en_gd_1),
        .CLK(clk_wiz_clk_out2),
        .S(c_addsub_1_S));
  design_1_c_addsub_1_0 c_addsub_2
       (.A(UP_L2_0),
        .B(cero_0_dout),
        .BYPASS(en_gd_1),
        .CLK(clk_wiz_clk_out2),
        .S(c_addsub_2_S));
  design_1_c_addsub_2_0 c_addsub_3
       (.A(DW_L2_0),
        .B(cero_0_dout),
        .BYPASS(en_gd_1),
        .CLK(clk_wiz_clk_out2),
        .S(c_addsub_3_S));
  design_1_c_addsub_3_0 c_addsub_4
       (.A(UP_L3_0),
        .B(cero_0_dout),
        .BYPASS(en_gd_1),
        .CLK(clk_wiz_clk_out2),
        .S(c_addsub_4_S));
  design_1_c_addsub_4_0 c_addsub_5
       (.A(DW_L3_0),
        .B(cero_0_dout),
        .BYPASS(en_gd_1),
        .CLK(clk_wiz_clk_out2),
        .S(c_addsub_5_S));
  design_1_xlconstant_0_0 cero_0
       (.dout(cero_0_dout));
  design_1_cero_0_1 cero_2
       (.dout(cero_2_dout));
  design_1_cero_2_0 cero_3
       (.dout(cero_3_dout));
  design_1_clk_wiz_15 clk_wiz
       (.clk_in1(sys_clock),
        .clk_out1(clk_wiz_clk_out1),
        .clk_out2(clk_wiz_clk_out2),
        .clk_out3(clk_wiz_clk_out3),
        .locked(clk_wiz_locked),
        .reset(reset));
  design_1_compar_tc_0_0 compar_tc_0
       (.a({1'b0,1'b0,1'b0,1'b0,PFC3PH_0_O_Ib}),
        .b({1'b0,1'b0,1'b0,1'b0,cero_2_dout}),
        .c(compar_tc_0_c));
  design_1_compar_tc_0_1 compar_tc_1
       (.a({1'b0,1'b0,1'b0,1'b0,cero_3_dout}),
        .b({1'b0,1'b0,1'b0,1'b0,PFC3PH_0_O_Ib}),
        .c(compar_tc_1_c));
  design_1_compar_tc_0_2 compar_tc_2
       (.a({1'b0,1'b0,1'b0,1'b0,PFC3PH_0_O_Ic}),
        .b({1'b0,1'b0,1'b0,1'b0,cero_2_dout}),
        .c(compar_tc_2_c));
  design_1_compar_tc_0_3 compar_tc_3
       (.a({1'b0,1'b0,1'b0,1'b0,cero_3_dout}),
        .b({1'b0,1'b0,1'b0,1'b0,PFC3PH_0_O_Ic}),
        .c(compar_tc_3_c));
  design_1_compar_tc_0_4 compar_tc_4
       (.a({1'b0,1'b0,1'b0,1'b0,PFC3PH_0_O_Ib}),
        .b({1'b0,1'b0,1'b0,1'b0,cero_2_dout}),
        .c(compar_tc_4_c));
  design_1_compar_tc_0_5 compar_tc_5
       (.a({1'b0,1'b0,1'b0,1'b0,cero_3_dout}),
        .b({1'b0,1'b0,1'b0,1'b0,PFC3PH_0_O_Ib}),
        .c(compar_tc_5_c));
  design_1_ila_0_0 ila_0
       (.clk(clk_wiz_clk_out1),
        .probe0({1'b0,1'b0,1'b0,1'b0,PFC3PH_0_O_Ia}),
        .probe1({1'b0,1'b0,1'b0,1'b0,PFC3PH_0_O_Ib}),
        .probe2({1'b0,1'b0,1'b0,1'b0,PFC3PH_0_O_Ic}),
        .trig_in(util_vector_logic_4_Res));
  design_1_rst_clk_wiz_1_6M_2 rst_clk_wiz_1_6M1
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_locked),
        .ext_reset_in(reset),
        .mb_debug_sys_rst(1'b0),
        .peripheral_reset(rst_clk_wiz_1_6M1_peripheral_reset),
        .slowest_sync_clk(clk_wiz_clk_out1));
  design_1_rst_clk_wiz_1_6M1_0 rst_clk_wiz_1_6M2
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_locked),
        .ext_reset_in(reset),
        .mb_debug_sys_rst(1'b0),
        .peripheral_reset(rst_clk_wiz_1_6M2_peripheral_reset),
        .slowest_sync_clk(clk_wiz_clk_out2));
  design_1_rst_clk_wiz_1_6M2_0 rst_clk_wiz_1_6M3
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_locked),
        .ext_reset_in(reset),
        .mb_debug_sys_rst(1'b0),
        .peripheral_reset(rst_clk_wiz_1_6M3_peripheral_reset),
        .slowest_sync_clk(clk_wiz_clk_out3));
  design_1_sine_3ph_0_0 sine_3ph_0
       (.alphaout_va(sine_3ph_0_alphaout_va),
        .clk(clk_wiz_clk_out2),
        .clk_enable(en),
        .out_vb(sine_3ph_0_out_vb),
        .out_vc(sine_3ph_0_out_vc),
        .reset(rst_clk_wiz_1_6M2_peripheral_reset));
  design_1_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(compar_tc_1_c),
        .Op2(compar_tc_0_c),
        .Res(util_vector_logic_0_Res));
  design_1_util_vector_logic_0_1 util_vector_logic_1
       (.Op1(compar_tc_5_c),
        .Op2(compar_tc_4_c),
        .Res(util_vector_logic_1_Res));
  design_1_util_vector_logic_0_2 util_vector_logic_2
       (.Op1(compar_tc_3_c),
        .Op2(compar_tc_2_c),
        .Res(util_vector_logic_2_Res));
  design_1_util_vector_logic_0_3 util_vector_logic_3
       (.Op1(util_vector_logic_0_Res),
        .Op2(util_vector_logic_1_Res),
        .Res(util_vector_logic_3_Res));
  design_1_util_vector_logic_3_0 util_vector_logic_4
       (.Op1(util_vector_logic_3_Res),
        .Op2(util_vector_logic_2_Res),
        .Res(util_vector_logic_4_Res));
  design_1_vio_0_0 vio_0
       (.clk(clk_wiz_clk_out1),
        .probe_in0(c_addsub_0_S),
        .probe_in1({1'b0,1'b0,1'b0,1'b0,PFC3PH_0_O_Ia}),
        .probe_in2({1'b0,1'b0,1'b0,1'b0,PFC3PH_0_O_Vout}),
        .probe_in3(UP_L1_0_1),
        .probe_in4(en_gd_1),
        .probe_out0(vio_0_probe_out0));
endmodule
