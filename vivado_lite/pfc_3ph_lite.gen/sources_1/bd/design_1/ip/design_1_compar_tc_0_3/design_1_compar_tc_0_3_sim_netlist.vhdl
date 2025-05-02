-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Fri May  2 17:32:59 2025
-- Host        : AngelPC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Angel/Desktop/hil/pfc3ph/vivado_lite/pfc_3ph_lite.gen/sources_1/bd/design_1/ip/design_1_compar_tc_0_3/design_1_compar_tc_0_3_sim_netlist.vhdl
-- Design      : design_1_compar_tc_0_3
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s25csga225-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_compar_tc_0_3_comp is
  port (
    c : out STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_compar_tc_0_3_comp : entity is "comp";
end design_1_compar_tc_0_3_comp;

architecture STRUCTURE of design_1_compar_tc_0_3_comp is
  signal c_INST_0_i_10_n_0 : STD_LOGIC;
  signal c_INST_0_i_11_n_0 : STD_LOGIC;
  signal c_INST_0_i_12_n_0 : STD_LOGIC;
  signal c_INST_0_i_13_n_0 : STD_LOGIC;
  signal c_INST_0_i_14_n_0 : STD_LOGIC;
  signal c_INST_0_i_15_n_0 : STD_LOGIC;
  signal c_INST_0_i_16_n_0 : STD_LOGIC;
  signal c_INST_0_i_17_n_0 : STD_LOGIC;
  signal c_INST_0_i_1_n_0 : STD_LOGIC;
  signal c_INST_0_i_1_n_1 : STD_LOGIC;
  signal c_INST_0_i_1_n_2 : STD_LOGIC;
  signal c_INST_0_i_1_n_3 : STD_LOGIC;
  signal c_INST_0_i_2_n_0 : STD_LOGIC;
  signal c_INST_0_i_3_n_0 : STD_LOGIC;
  signal c_INST_0_i_4_n_0 : STD_LOGIC;
  signal c_INST_0_i_5_n_0 : STD_LOGIC;
  signal c_INST_0_i_6_n_0 : STD_LOGIC;
  signal c_INST_0_i_7_n_0 : STD_LOGIC;
  signal c_INST_0_i_8_n_0 : STD_LOGIC;
  signal c_INST_0_i_9_n_0 : STD_LOGIC;
  signal c_INST_0_n_1 : STD_LOGIC;
  signal c_INST_0_n_2 : STD_LOGIC;
  signal c_INST_0_n_3 : STD_LOGIC;
  signal NLW_c_INST_0_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_c_INST_0_i_1_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of c_INST_0 : label is 11;
  attribute COMPARATOR_THRESHOLD of c_INST_0_i_1 : label is 11;
begin
c_INST_0: unisim.vcomponents.CARRY4
     port map (
      CI => c_INST_0_i_1_n_0,
      CO(3) => c,
      CO(2) => c_INST_0_n_1,
      CO(1) => c_INST_0_n_2,
      CO(0) => c_INST_0_n_3,
      CYINIT => '0',
      DI(3) => c_INST_0_i_2_n_0,
      DI(2) => c_INST_0_i_3_n_0,
      DI(1) => c_INST_0_i_4_n_0,
      DI(0) => c_INST_0_i_5_n_0,
      O(3 downto 0) => NLW_c_INST_0_O_UNCONNECTED(3 downto 0),
      S(3) => c_INST_0_i_6_n_0,
      S(2) => c_INST_0_i_7_n_0,
      S(1) => c_INST_0_i_8_n_0,
      S(0) => c_INST_0_i_9_n_0
    );
c_INST_0_i_1: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => c_INST_0_i_1_n_0,
      CO(2) => c_INST_0_i_1_n_1,
      CO(1) => c_INST_0_i_1_n_2,
      CO(0) => c_INST_0_i_1_n_3,
      CYINIT => '1',
      DI(3) => c_INST_0_i_10_n_0,
      DI(2) => c_INST_0_i_11_n_0,
      DI(1) => c_INST_0_i_12_n_0,
      DI(0) => c_INST_0_i_13_n_0,
      O(3 downto 0) => NLW_c_INST_0_i_1_O_UNCONNECTED(3 downto 0),
      S(3) => c_INST_0_i_14_n_0,
      S(2) => c_INST_0_i_15_n_0,
      S(1) => c_INST_0_i_16_n_0,
      S(0) => c_INST_0_i_17_n_0
    );
c_INST_0_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => a(6),
      I1 => b(6),
      I2 => b(7),
      I3 => a(7),
      O => c_INST_0_i_10_n_0
    );
c_INST_0_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => a(4),
      I1 => b(4),
      I2 => b(5),
      I3 => a(5),
      O => c_INST_0_i_11_n_0
    );
c_INST_0_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => a(2),
      I1 => b(2),
      I2 => b(3),
      I3 => a(3),
      O => c_INST_0_i_12_n_0
    );
c_INST_0_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => a(0),
      I1 => b(0),
      I2 => b(1),
      I3 => a(1),
      O => c_INST_0_i_13_n_0
    );
c_INST_0_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => a(6),
      I1 => b(6),
      I2 => a(7),
      I3 => b(7),
      O => c_INST_0_i_14_n_0
    );
c_INST_0_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => a(4),
      I1 => b(4),
      I2 => a(5),
      I3 => b(5),
      O => c_INST_0_i_15_n_0
    );
c_INST_0_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => a(2),
      I1 => b(2),
      I2 => a(3),
      I3 => b(3),
      O => c_INST_0_i_16_n_0
    );
c_INST_0_i_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => a(0),
      I1 => b(0),
      I2 => a(1),
      I3 => b(1),
      O => c_INST_0_i_17_n_0
    );
c_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => a(14),
      I1 => b(14),
      I2 => b(15),
      I3 => a(15),
      O => c_INST_0_i_2_n_0
    );
c_INST_0_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => a(12),
      I1 => b(12),
      I2 => b(13),
      I3 => a(13),
      O => c_INST_0_i_3_n_0
    );
c_INST_0_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => a(10),
      I1 => b(10),
      I2 => b(11),
      I3 => a(11),
      O => c_INST_0_i_4_n_0
    );
c_INST_0_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => a(8),
      I1 => b(8),
      I2 => b(9),
      I3 => a(9),
      O => c_INST_0_i_5_n_0
    );
c_INST_0_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => a(14),
      I1 => b(14),
      I2 => a(15),
      I3 => b(15),
      O => c_INST_0_i_6_n_0
    );
c_INST_0_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => a(12),
      I1 => b(12),
      I2 => a(13),
      I3 => b(13),
      O => c_INST_0_i_7_n_0
    );
c_INST_0_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => a(10),
      I1 => b(10),
      I2 => a(11),
      I3 => b(11),
      O => c_INST_0_i_8_n_0
    );
c_INST_0_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => a(8),
      I1 => b(8),
      I2 => a(9),
      I3 => b(9),
      O => c_INST_0_i_9_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_compar_tc_0_3_compar is
  port (
    a : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b : in STD_LOGIC_VECTOR ( 15 downto 0 );
    c : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_compar_tc_0_3_compar : entity is "compar";
end design_1_compar_tc_0_3_compar;

architecture STRUCTURE of design_1_compar_tc_0_3_compar is
begin
u_comp: entity work.design_1_compar_tc_0_3_comp
     port map (
      a(15 downto 0) => a(15 downto 0),
      b(15 downto 0) => b(15 downto 0),
      c => c
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_compar_tc_0_3 is
  port (
    a : in STD_LOGIC_VECTOR ( 15 downto 0 );
    b : in STD_LOGIC_VECTOR ( 15 downto 0 );
    c : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_compar_tc_0_3 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_compar_tc_0_3 : entity is "design_1_compar_tc_0_3,compar,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_compar_tc_0_3 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_compar_tc_0_3 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_compar_tc_0_3 : entity is "compar,Vivado 2024.2";
end design_1_compar_tc_0_3;

architecture STRUCTURE of design_1_compar_tc_0_3 is
begin
inst: entity work.design_1_compar_tc_0_3_compar
     port map (
      a(15 downto 0) => a(15 downto 0),
      b(15 downto 0) => b(15 downto 0),
      c => c
    );
end STRUCTURE;
