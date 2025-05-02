-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Fri May  2 20:56:28 2025
-- Host        : AngelPC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Angel/Desktop/hil/pfc3ph/vivado_lite/pfc_3ph_lite.gen/sources_1/bd/design_1/ip/design_1_MCP_DRIVER_0_0/design_1_MCP_DRIVER_0_0_stub.vhdl
-- Design      : design_1_MCP_DRIVER_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7s25csga225-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_MCP_DRIVER_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    clk_enable : in STD_LOGIC;
    v1_1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    v1_2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    v2_1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    v2_2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    v3_2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    v3_1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    v4_1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    v4_2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ce_out : out STD_LOGIC;
    SDI : out STD_LOGIC;
    SCK : out STD_LOGIC;
    nCS1 : out STD_LOGIC;
    nCS2 : out STD_LOGIC;
    nCS3 : out STD_LOGIC;
    nCS4 : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_MCP_DRIVER_0_0 : entity is "design_1_MCP_DRIVER_0_0,SPI_DAC,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1_MCP_DRIVER_0_0 : entity is "design_1_MCP_DRIVER_0_0,SPI_DAC,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=MCP_DRIVER,x_ipVersion=1.0,x_ipCoreRevision=22,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_MCP_DRIVER_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_MCP_DRIVER_0_0 : entity is "package_project";
end design_1_MCP_DRIVER_0_0;

architecture stub of design_1_MCP_DRIVER_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "clk,rst,clk_enable,v1_1[15:0],v1_2[15:0],v2_1[15:0],v2_2[15:0],v3_2[15:0],v3_1[15:0],v4_1[15:0],v4_2[15:0],ce_out,SDI,SCK,nCS1,nCS2,nCS3,nCS4";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_MODE of rst : signal is "slave";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "SPI_DAC,Vivado 2024.2";
begin
end;
