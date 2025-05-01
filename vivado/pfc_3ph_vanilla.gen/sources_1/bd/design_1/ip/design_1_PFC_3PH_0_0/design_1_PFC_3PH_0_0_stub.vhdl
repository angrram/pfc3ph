-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Sun Dec  8 17:57:21 2024
-- Host        : Angel running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/angro/Desktop/hil/3phase_pfc_vanilla/vivado/pfc_3ph_vanilla.gen/sources_1/bd/design_1/ip/design_1_PFC_3PH_0_0/design_1_PFC_3PH_0_0_stub.vhdl
-- Design      : design_1_PFC_3PH_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7s25csga225-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_PFC_3PH_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    clk_enable : in STD_LOGIC;
    G_Up_L2c : in STD_LOGIC_VECTOR ( 29 downto 0 );
    G_Up_L3c : in STD_LOGIC_VECTOR ( 29 downto 0 );
    G_Up_L1c : in STD_LOGIC_VECTOR ( 29 downto 0 );
    G_Dw_L1c : in STD_LOGIC_VECTOR ( 29 downto 0 );
    Va1 : in STD_LOGIC_VECTOR ( 29 downto 0 );
    G_Dw_L2c : in STD_LOGIC_VECTOR ( 29 downto 0 );
    Vb1 : in STD_LOGIC_VECTOR ( 29 downto 0 );
    G_Dw_L3c : in STD_LOGIC_VECTOR ( 29 downto 0 );
    Vc1 : in STD_LOGIC_VECTOR ( 29 downto 0 );
    I_sink : in STD_LOGIC_VECTOR ( 29 downto 0 );
    ce_out : out STD_LOGIC;
    Ia : out STD_LOGIC_VECTOR ( 29 downto 0 );
    Ib : out STD_LOGIC_VECTOR ( 29 downto 0 );
    V_out : out STD_LOGIC_VECTOR ( 29 downto 0 );
    Va : out STD_LOGIC_VECTOR ( 29 downto 0 );
    I_load : out STD_LOGIC_VECTOR ( 29 downto 0 );
    Vb : out STD_LOGIC_VECTOR ( 29 downto 0 );
    Ic : out STD_LOGIC_VECTOR ( 29 downto 0 );
    Vc : out STD_LOGIC_VECTOR ( 29 downto 0 )
  );

end design_1_PFC_3PH_0_0;

architecture stub of design_1_PFC_3PH_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset,clk_enable,G_Up_L2c[29:0],G_Up_L3c[29:0],G_Up_L1c[29:0],G_Dw_L1c[29:0],Va1[29:0],G_Dw_L2c[29:0],Vb1[29:0],G_Dw_L3c[29:0],Vc1[29:0],I_sink[29:0],ce_out,Ia[29:0],Ib[29:0],V_out[29:0],Va[29:0],I_load[29:0],Vb[29:0],Ic[29:0],Vc[29:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "FPGA,Vivado 2024.1";
begin
end;
