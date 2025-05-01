vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/lib_cdc_v1_0_3
vlib modelsim_lib/msim/proc_sys_reset_v5_0_15

vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_3 modelsim_lib/msim/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_15 modelsim_lib/msim/proc_sys_reset_v5_0_15

vlog -work xpm  -incr -mfcu  -sv "+incdir+../../../../pfc_3ph_vanilla.gen/sources_1/bd/design_1/ipshared/3242" \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../pfc_3ph_vanilla.gen/sources_1/bd/design_1/ipshared/3242" \
"../../../bd/design_1/ipshared/8587/a_b_sub.v" \
"../../../bd/design_1/ipshared/8587/DA_MATRIX.v" \
"../../../bd/design_1/ipshared/8587/Detect_Rise_Positive.v" \
"../../../bd/design_1/ipshared/8587/Detect_Rise_Positive1.v" \
"../../../bd/design_1/ipshared/8587/dsp_block.v" \
"../../../bd/design_1/ipshared/8587/FPGA_tc.v" \
"../../../bd/design_1/ipshared/8587/HDL_Algorithm.v" \
"../../../bd/design_1/ipshared/8587/HDL_Subsystem.v" \
"../../../bd/design_1/ipshared/8587/MUAC_DSP_2.v" \
"../../../bd/design_1/ipshared/8587/Positive.v" \
"../../../bd/design_1/ipshared/8587/Positive_block.v" \
"../../../bd/design_1/ipshared/8587/Sample_and_Hold.v" \
"../../../bd/design_1/ipshared/8587/Sample_and_Hold1.v" \
"../../../bd/design_1/ipshared/8587/SimpleDualPortRAM_generic.v" \
"../../../bd/design_1/ipshared/8587/Subsystem.v" \
"../../../bd/design_1/ipshared/8587/FPGA.v" \
"../../../bd/design_1/ip/design_1_PFC_3PH_0_0/sim/design_1_PFC_3PH_0_0.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0/design_1_clk_wiz_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0/design_1_clk_wiz_0.v" \

vcom -work lib_cdc_v1_0_3  -93  \
"../../../../pfc_3ph_vanilla.gen/sources_1/bd/design_1/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_15  -93  \
"../../../../pfc_3ph_vanilla.gen/sources_1/bd/design_1/ipshared/3a26/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_1/ip/design_1_rst_clk_wiz_390M_0/sim/design_1_rst_clk_wiz_390M_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../pfc_3ph_vanilla.gen/sources_1/bd/design_1/ipshared/3242" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

