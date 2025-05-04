-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Sat May  3 18:20:49 2025
-- Host        : AngelPC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Angel/Desktop/hil/pfc3ph/vivado_lite/pfc_3ph_lite.gen/sources_1/bd/design_1/ip/design_1_util_vector_logic_3_1/design_1_util_vector_logic_3_1_stub.vhdl
-- Design      : design_1_util_vector_logic_3_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7s25csga225-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_util_vector_logic_3_1 is
  Port ( 
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_util_vector_logic_3_1 : entity is "design_1_util_vector_logic_3_1,util_vector_logic_v2_0_4_util_vector_logic,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1_util_vector_logic_3_1 : entity is "design_1_util_vector_logic_3_1,util_vector_logic_v2_0_4_util_vector_logic,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=util_vector_logic,x_ipVersion=2.0,x_ipCoreRevision=4,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_OPERATION=not,C_SIZE=1}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_util_vector_logic_3_1 : entity is "yes";
end design_1_util_vector_logic_3_1;

architecture stub of design_1_util_vector_logic_3_1 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "Op1[0:0],Res[0:0]";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "util_vector_logic_v2_0_4_util_vector_logic,Vivado 2024.2";
begin
end;
