--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.58f
--  \   \         Application: netgen
--  /   /         Filename: tri_mode_eth_mac_v5_4.vhd
-- /___/   /\     Timestamp: Fri Aug 15 15:35:26 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -w -sim -ofmt vhdl C:/Users/tang/Desktop/IPBus_ATLYS/example_designs/projects/demo_atlys/ise14/tmp/_cg/tri_mode_eth_mac_v5_4.ngc C:/Users/tang/Desktop/IPBus_ATLYS/example_designs/projects/demo_atlys/ise14/tmp/_cg/tri_mode_eth_mac_v5_4.vhd 
-- Device	: 6slx45csg324-2
-- Input file	: C:/Users/tang/Desktop/IPBus_ATLYS/example_designs/projects/demo_atlys/ise14/tmp/_cg/tri_mode_eth_mac_v5_4.ngc
-- Output file	: C:/Users/tang/Desktop/IPBus_ATLYS/example_designs/projects/demo_atlys/ise14/tmp/_cg/tri_mode_eth_mac_v5_4.vhd
-- # of Entities	: 1
-- Design Name	: tri_mode_eth_mac_v5_4
-- Xilinx	: C:\Xilinx\14.5\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------


-- synthesis translate_off
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity tri_mode_eth_mac_v5_4 is
  port (
    glbl_rstn : in STD_LOGIC := 'X'; 
    rx_axi_rstn : in STD_LOGIC := 'X'; 
    tx_axi_rstn : in STD_LOGIC := 'X'; 
    rx_axi_clk : in STD_LOGIC := 'X'; 
    tx_axi_clk : in STD_LOGIC := 'X'; 
    tx_axis_mac_tvalid : in STD_LOGIC := 'X'; 
    tx_axis_mac_tlast : in STD_LOGIC := 'X'; 
    tx_axis_mac_tuser : in STD_LOGIC := 'X'; 
    pause_req : in STD_LOGIC := 'X'; 
    gmii_rx_dv : in STD_LOGIC := 'X'; 
    gmii_rx_er : in STD_LOGIC := 'X'; 
    rx_reset_out : out STD_LOGIC; 
    rx_axis_mac_tvalid : out STD_LOGIC; 
    rx_axis_mac_tlast : out STD_LOGIC; 
    rx_axis_mac_tuser : out STD_LOGIC; 
    rx_statistics_valid : out STD_LOGIC; 
    tx_reset_out : out STD_LOGIC; 
    tx_axis_mac_tready : out STD_LOGIC; 
    tx_statistics_valid : out STD_LOGIC; 
    speed_is_100 : out STD_LOGIC; 
    speed_is_10_100 : out STD_LOGIC; 
    gmii_tx_en : out STD_LOGIC; 
    gmii_tx_er : out STD_LOGIC; 
    tx_axis_mac_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    tx_ifg_delay : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    pause_val : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
    gmii_rxd : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    rx_mac_config_vector : in STD_LOGIC_VECTOR ( 79 downto 0 ); 
    tx_mac_config_vector : in STD_LOGIC_VECTOR ( 79 downto 0 ); 
    rx_axis_mac_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    rx_statistics_vector : out STD_LOGIC_VECTOR ( 27 downto 0 ); 
    tx_statistics_vector : out STD_LOGIC_VECTOR ( 31 downto 0 ); 
    gmii_txd : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end tri_mode_eth_mac_v5_4;

architecture STRUCTURE of tri_mode_eth_mac_v5_4 is
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_resync_promiscuous_mode_data_in : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_sync_rx_enable_data_in : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_sync_tx_enable_data_in : STD_LOGIC; 
  signal NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_rxstatsaddressmatch : STD_LOGIC; 
  signal NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_PAUSE_VECTOR_0 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_NUMBER_OF_BYTES_231 : STD_LOGIC; 
  signal NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_mac_tvalid_261 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_mac_tlast_262 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_mac_tuser_263 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VALID_264 : STD_LOGIC; 
  signal NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4 : STD_LOGIC; 
  signal NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_mac_tready_reg : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_GMII_TX_EN_TO_PHY_267 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_GMII_TX_ER_TO_PHY_268 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal NlwRenamedSig_OI_N1 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R2_271 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R1_272 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R3_273 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R3_PWR_20_o_MUX_31_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R2_275 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R1_276 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R3_277 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R3_PWR_20_o_MUX_31_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_TX_RST_ASYNCH : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_RX_RST_ASYNCH : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_CONTROL_FRAME_281 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_ADD_CONTROL_FRAME_282 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_BAD_FRAME_INT_283 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GOOD_FRAME_INT_284 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA_VALID_FINAL_285 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_DATA_VALID_EARLY : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_specialpauseaddressmatch_303 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_pauseaddressmatch_304 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_broadcastaddressmatch_305 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_rx_filtered_data_valid_306 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_RX_GEN_RX_ER_REG1_307 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_RX_GEN_RX_DV_REG1_308 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_ACK_OUT_317 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_TX_VLAN_ENABLE_OUT : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_TX_UNDERRUN_OUT : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_TX_DATA_VALID_OUT : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_VALID_INT_321 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_BAD_FRAME_INT_322 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_GOOD_FRAME_INT_323 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_GMII_TX_EN : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_TX_END_OF_TX : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_TX_ACK_IN : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_underrun_351 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_valid_352 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_Mmux_tx_data_7_tx_mac_tdata_7_mux_62_OUT11 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd9_362 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd3_In_363 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd6_In : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd7_In_365 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_n0273_inv : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_early_deassert_two_byte_tx_OR_36_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_next_tx_state_3_ignore_packet_OR_46_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_3_tx_state_3_OR_35_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_force_burst2_370 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_force_burst1_371 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_force_assert_372 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_early_deassert_373 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_early_underrun_374 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_ignore_packet_375 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_two_byte_tx_376 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_next_tx_state_3_PWR_23_o_equal_72_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_next_tx_state_3_GND_24_o_equal_70_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_next_tx_state_3_GND_24_o_equal_69_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_next_tx_state_3_GND_24_o_equal_68_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_next_tx_state_3_tx_enable_reg_AND_28_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_next_tx_state_3_GND_24_o_equal_27_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd2_383 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd3_384 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd6_385 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd8_386 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd1_387 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd10_388 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd4_389 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd7_390 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd5_391 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tlast_reg_392 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_force_end_393 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_no_burst_394 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_7_tx_mac_tdata_7_mux_62_OUT_0_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_7_tx_mac_tdata_7_mux_62_OUT_1_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_7_tx_mac_tdata_7_mux_62_OUT_2_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_7_tx_mac_tdata_7_mux_62_OUT_3_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_7_tx_mac_tdata_7_mux_62_OUT_4_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_7_tx_mac_tdata_7_mux_62_OUT_5_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_7_tx_mac_tdata_7_mux_62_OUT_6_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_7_tx_mac_tdata_7_mux_62_OUT_7_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_Reset_OR_DriverANDClockEnable : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_CRC_MODE_INV_77_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_INT_CRS_413 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_INT_TX_EN_DELAY : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_INT_IFG_DEL_EN_415 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_INT_VLAN_ENABLE_416 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_INT_ENABLE_417 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_INT_JUMBO_ENABLE_418 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_INT_CRC_MODE_419 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_FCS_GND_36_o_MUX_360_o11 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n0961_inv11 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n07892 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_REG_TX_CONTROL_GND_36_o_MUX_507_o11 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n07981 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT_cst1 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Msub_GND_36_o_GND_36_o_sub_12_OUT_7_0_xor_7_11 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_IFG_COUNT_7_GND_36_o_mux_33_OUT51_427 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIFG_TX_FAIL_DELAY_AND_167_o1_428 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n0985_inv1 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcompar_FRAME_COUNT_14_FRAME_MAX_14_equal_51_o_lut_4_Q_445 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcompar_FRAME_COUNT_14_FRAME_MAX_14_equal_51_o_cy_3_Q_446 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcompar_FRAME_COUNT_14_FRAME_MAX_14_equal_51_o_lut_3_Q_447 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcompar_FRAME_COUNT_14_FRAME_MAX_14_equal_51_o_cy_2_Q_448 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcompar_FRAME_COUNT_14_FRAME_MAX_14_equal_51_o_lut_2_Q_449 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcompar_FRAME_COUNT_14_FRAME_MAX_14_equal_51_o_cy_1_Q_450 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcompar_FRAME_COUNT_14_FRAME_MAX_14_equal_51_o_lut_1_Q_451 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcompar_FRAME_COUNT_14_FRAME_MAX_14_equal_51_o_cy_0_Q_452 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcompar_FRAME_COUNT_14_FRAME_MAX_14_equal_51_o_lut_0_Q_453 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n1183_inv : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_CRC_COUNT1 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_CRC_COUNT : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_PRE_COUNT2 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_PRE_COUNT1 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_PRE_COUNT : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Reset_OR_DriverANDClockEnable25 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Reset_OR_DriverANDClockEnable17 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Reset_OR_DriverANDClockEnable13 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0_7_GND_36_o_mux_59_OUT_7_1_478 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0_7_GND_36_o_mux_59_OUT_6_1_479 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0_7_GND_36_o_mux_59_OUT_4_1_480 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0_7_GND_36_o_mux_59_OUT_2_1_481 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0_7_GND_36_o_mux_59_OUT_0_1_482 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_GND_36_o_GND_36_o_sub_12_OUT_3_1_483 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n1164_inv : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n1071_inv : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n0977_inv_486 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n0961_inv_487 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n0921_inv_488 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n0836_inv : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Reset_OR_DriverANDClockEnable : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n1177_inv : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT_14_FRAME_MAX_14_equal_51_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_TX_BROADCAST : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIFG_TX_FAIL_DELAY_AND_167_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_GND_36_o_GND_36_o_sub_12_OUT_2_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_GND_36_o_GND_36_o_sub_12_OUT_4_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_GND_36_o_GND_36_o_sub_12_OUT_5_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_GND_36_o_GND_36_o_sub_12_OUT_6_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_GND_36_o_GND_36_o_sub_12_OUT_7_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0_7_GND_36_o_mux_59_OUT_1_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0_7_GND_36_o_mux_59_OUT_3_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0_7_GND_36_o_mux_59_OUT_5_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_CRC_MODE_526 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_REG_DATA_VALID_527 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STOP_MAX_PKT_528 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_REG_SCSH_529 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_REG_TX_VLAN_530 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_REG_TX_CONTROL_531 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DST_ADDR_BYTE5_MATCH_532 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DST_ADDR_MULTI_MATCH_533 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DST_ADDR_BYTE4_MATCH_534 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DST_ADDR_BYTE3_MATCH_535 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DST_ADDR_BYTE2_MATCH_536 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DST_ADDR_BYTE1_MATCH_537 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DST_ADDR_BYTE0_MATCH_538 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_TX_SUCCESS_539 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_TX_UNDERRUN2_540 : STD_LOGIC; 
  signal NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_REG_STATUS_VALID : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_TX_STATUS_VALID_542 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CR178124_FIX_543 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PAD_PIPE_544 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_COMPUTE_545 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_546 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PAD_547 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_TRANSMIT_548 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_REG_PREAMBLE_549 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_550 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_COF_SEEN_551 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MAX_PKT_LEN_REACHED_552 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIN_PKT_LEN_REACHED_553 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_REG_PREAMBLE_DONE_554 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CLIENT_FRAME_DONE_555 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIFG_556 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_TX_OK_557 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_BAD_558 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_GOOD_559 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_SCSH_560 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FCS_561 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_COF_562 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CFL_563 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_TX_DA_564 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_TX_565 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PRE_566 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CDS_567 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IDL_568 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_ENABLE_569 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DEL_EN_585 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_VLAN_EN_586 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_JUMBO_EN_587 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_REG_SCSH_GND_36_o_MUX_511_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_REG_TX_VLAN_GND_36_o_MUX_509_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_REG_TX_CONTROL_GND_36_o_MUX_507_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DST_ADDR_MULTI_MATCH_GND_36_o_MUX_502_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DST_ADDR_BYTE4_MATCH_GND_36_o_MUX_500_o_600 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DST_ADDR_BYTE3_MATCH_GND_36_o_MUX_498_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DST_ADDR_BYTE2_MATCH_GND_36_o_MUX_496_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DST_ADDR_BYTE1_MATCH_GND_36_o_MUX_494_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DST_ADDR_BYTE0_MATCH_GND_36_o_MUX_492_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_REG_STATUS_VALID_GND_36_o_MUX_476_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_TX_STATUS_VALID_GND_36_o_MUX_471_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CR178124_FIX_GND_36_o_MUX_469_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PAD_PIPE_GND_36_o_MUX_467_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_COMPUTE_GND_36_o_MUX_451_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_GND_36_o_MUX_417_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PAD_GND_36_o_MUX_415_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_TRANSMIT_GND_36_o_MUX_413_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_REG_PREAMBLE_GND_36_o_MUX_411_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_GND_36_o_MUX_409_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT_7_GND_36_o_mux_33_OUT_0_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT_7_GND_36_o_mux_33_OUT_1_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT_7_GND_36_o_mux_33_OUT_2_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT_7_GND_36_o_mux_33_OUT_3_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT_7_GND_36_o_mux_33_OUT_4_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT_7_GND_36_o_mux_33_OUT_5_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT_7_GND_36_o_mux_33_OUT_6_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT_7_GND_36_o_mux_33_OUT_7_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_REG_PREAMBLE_DONE_GND_36_o_MUX_386_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIFG_GND_36_o_MUX_380_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CFL_GND_36_o_MUX_352_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_TX_DA_GND_36_o_MUX_348_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_ENABLE_GND_36_o_MUX_321_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT_0_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT_1_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT_2_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT_3_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT_4_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT_5_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT_6_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT_7_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT_8_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT_9_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT_10_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT_11_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT_12_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT_13_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT_14_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DEL_EN_GND_36_o_MUX_317_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_VLAN_EN_GND_36_o_MUX_313_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_JUMBO_EN_GND_36_o_MUX_311_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_CRC_MODE_GND_36_o_MUX_309_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_MAX_2_679 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_MAX_3_680 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_MAX_4_681 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_13_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_0_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_1_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_3_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_4_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_5_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_2_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_12_bdd6 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_14_bdd6 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_23_bdd2 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_0_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_1_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_2_Q_770 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_3_Q_771 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_4_Q_772 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_5_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_6_Q_774 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_7_Q_775 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_8_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_9_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_10_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_11_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_12_Q_780 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_13_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_14_Q_782 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_15_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_16_Q_784 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_17_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_18_Q_786 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_19_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_20_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_21_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_22_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_23_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_24_Q_792 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_25_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_26_Q_794 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_27_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_28_Q_796 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_29_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_30_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_31_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_sync_rx_enable_data_sync1 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_sync_rx_duplex_data_sync1 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_sync_tx_enable_data_sync1 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_sync_tx_duplex_data_sync1 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_ENABLE_REG_828 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_UNDERRUN_INT_829 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_sync_tx_duplex_data_sync2 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_sync_tx_enable_data_sync2 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_COUNT_SET_832 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_STATUS_INT_833 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_ENABLE_REG_834 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_sync_rx_duplex_data_sync2 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_sync_rx_enable_data_sync2 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_REQ_TO_TX_837 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_sync_good_rx_data_in : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_CONTROL_COMPLETE : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_PAUSE_REQ_LOCAL : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_BAD_FRAME_COMB : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_GOOD_FRAME_COMB : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_GND_27_o_DATA_7_equal_8_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n00811 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_Mcount_DATA_COUNT_val : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0127_inv : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0123_inv1 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0100_inv : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_BAD_OPCODE_INT_915 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_REQ_INT_916 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_Mux_26_o11_925 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mcount_DATA_COUNT_val : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0187_inv_930 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_STATE_COUNT_FSM_FFd2_931 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_STATE_COUNT_FSM_FFd1_In_932 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_STATE_COUNT_FSM_FFd2_In : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0163_inv : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT_0_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT_1_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT_2_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT_3_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT_4_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT_5_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT_6_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT_7_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT_4_GND_28_o_Mux_26_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0147 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0141_945 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_END_OF_TX_INV_38_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_ACK_COMB : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_REQ_INT_953 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_MUX_CONTROL_954 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_END_OF_TX_HELD_955 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_END_OF_TX_REG_956 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_AVAIL_CONTROL_957 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_ACK_INT_966 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_AVAIL_IN_REG_967 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_STATE_COUNT_FSM_FFd1_968 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_GOOD_FRAME_IN1_GOOD_FRAME_IN3_OR_81_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_GOOD_FRAME_IN1_1034 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_GOOD_FRAME_IN3_1035 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_GOOD_FRAME_IN2_1036 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mmux_COUNT_SET_GND_31_o_MUX_238_o12_1037 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT15 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT14 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT13 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT12 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT11 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT10 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT9 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT8 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT7 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT6 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT5 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT4 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT3 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT2 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT1 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_n0068_inv_1085 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_QUANTA5 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_QUANTA4 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_QUANTA3 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_QUANTA2 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_QUANTA1 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_QUANTA : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_sync_good_rx_data_sync1 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_GOOD_FRAME_IN_TX_REG_1093 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_COUNT_SET_REG_1100 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_sync_good_rx_data_sync2 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mcount_counter_xor_5_11 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Result_2_1 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Result_1_1 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Result_0_1 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mcount_load_count_val : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mcount_counter_val : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_n0287_inv : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_sync_update_data_sync1 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_resync_promiscuous_mode_data_sync1 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Reset_OR_DriverANDClockEnable : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter_5_GND_49_o_equal_14_o1 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_2_PWR_51_o_LessThan_17_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_pipe_2_PWR_51_o_LessThan_20_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_2_pause_addr_7_wide_mux_27_OUT_0_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_2_pause_addr_7_wide_mux_27_OUT_1_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_2_pause_addr_7_wide_mux_27_OUT_2_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_2_pause_addr_7_wide_mux_27_OUT_3_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_2_pause_addr_7_wide_mux_27_OUT_4_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_2_pause_addr_7_wide_mux_27_OUT_5_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_2_pause_addr_7_wide_mux_27_OUT_6_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_2_pause_addr_7_wide_mux_27_OUT_7_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_broadcast_byte_match_rx_data_7_MUX_920_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_specialpauseaddressmatch_int_1163 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_pauseaddressmatch_int_1164 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_broadcastaddressmatch_int_1165 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_address_match_1166 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_special_pause_match_1167 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_pause_match_1168 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_broadcast_match_1169 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_promiscuous_mode_sample_1170 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_update_pause_ad_sync_reg_1171 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_wr_1172 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_rx_data_valid_reg1_1176 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_rx_data_valid_srl16_reg2_1177 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_rx_data_valid_srl16_reg1_1178 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_special_pause_match_reg_1179 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_pause_match_reg_1180 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_broadcast_byte_match_1181 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_rx_data_valid_reg2_1182 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_resync_promiscuous_mode_data_sync2 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_rx_data_valid_srl16 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_sync_update_data_sync2 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_special_pause_match_comb : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_pause_match_reg_rx_data_7_MUX_940_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_state_FSM_FFd2_1204 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_state_FSM_FFd2_In : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_state_1_next_rx_state_1_OR_9_o_0 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_next_rx_state_1_rx_enable_AND_7_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_state_FSM_FFd1_1210 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_state_1_GND_23_o_equal_28_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_31_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_30_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_29_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_28_Q_1247 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_27_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_26_Q_1249 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_25_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_24_Q_1251 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_23_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_22_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_21_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_20_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_19_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_18_Q_1257 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_17_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_16_Q_1259 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_15_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_14_Q_1261 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_13_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_12_Q_1263 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_11_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_10_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_9_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_8_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_7_Q_1268 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_6_Q_1269 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_5_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_4_Q_1271 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_3_Q_1272 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_2_Q_1273 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_1_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_0_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_23_bdd2 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_14_bdd6 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_12_bdd6 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Reset_OR_DriverANDClockEnable1 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GND_41_o_RX_DV_REG6_AND_324_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_PWR_43_o_RX_ERR_REG6_AND_322_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_SUCCESS_FRAME_FAILURE_MUX_864_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GND_41_o_FRAME_SUCCESS_MUX_863_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_PRE_IFG_FLAG : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_PRE_FALSE_CARR_FLAG : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_VALIDATE_REQUIRED_1302 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA_VALID_EARLY_INT_1303 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MATCH_FRAME_INT_1304 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FALSE_CARR_FLAG_1305 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_IFG_FLAG_1306 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_EXTENSION_FLAG_1307 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_SFD_FLAG_1308 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MAX_FRAME_ENABLE_HELD_1309 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_PAUSE_LT_CHECK_HELD_1310 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_LT_CHECK_HELD_1311 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_CRC_MODE_HELD_1312 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_VLAN_ENABLE_HELD_1313 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_JUMBO_FRAMES_HELD_1314 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_ENABLE_REG_1315 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_ERR_REG7_1332 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_ERR_REG6_1333 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_ERR_REG1_1334 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_DV_REG7_1335 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_DV_REG6_1336 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_DV_REG3_1337 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_DV_REG1_1338 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_BAD_FRAME_1339 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_GOOD_FRAME_1340 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_LENGTH_TYPE_ERR_1341 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_OUT_OF_BOUNDS_ERR_1342 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_CRC_ERR_1343 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_STATISTICS_VALID_1344 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_MULTICAST_FRAME_1353 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_VLAN_FRAME_1354 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_TYPE_PACKET_1355 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_CRC_COMPUTE_1356 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_VALID_1357 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_MATCH_1358 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_PADDED_FRAME_1359 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_EXT_FIELD_1389 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_CRC_FIELD_1390 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_DAT_FIELD_1391 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_LEN_FIELD_1392 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_SRC_ADDRESS_FIELD_1393 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_DEST_ADDRESS_FIELD_1394 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_PREAMBLE_1395 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_END_FCS_1396 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_END_DATA_1397 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_ERR_REG5 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_DV_REG5 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_DV_REG2 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_BROADCASTADDRESSMATCH_DELAY : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT_0_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT_1_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT_2_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT_3_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT_4_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT_5_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT_6_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT_7_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT_8_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT_9_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT_10_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT_11_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT_12_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT_13_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT_14_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_RX_DV_REG6_RX_ERR_REG6_OR_193_o_1431 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_GND_44_o_FIELD_CONTROL_0_MUX_679_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_PWR_46_o_FIELD_CONTROL_5_MUX_680_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_RX_ERR_REG5_END_EXT_AND_333_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_CRC_FIELD_END_DATA_OR_200_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_FIELD_CONTROL_1_GND_44_o_MUX_684_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_FIELD_CONTROL_2_GND_44_o_MUX_683_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_FIELD_CONTROL_3_GND_44_o_MUX_682_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_FIELD_CONTROL_4_GND_44_o_MUX_681_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_RX_DV_REG6_DAT_FIELD_AND_353_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_RX_DV_REG6_LEN_FIELD_AND_350_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_RX_DV_REG6_DEST_ADDRESS_FIELD_AND_344_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_END_EXT_1443 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_FIELD_LT_CHECK_DISABLE_AND_371_o1 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_9_Q_1460 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_8_Q_1461 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_7_Q_1462 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_6_Q_1463 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_5_Q_1464 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_4_Q_1465 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_3_Q_1466 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_2_Q_1467 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_1_Q_1468 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_0_Q_1469 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_lut_0_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result_10_1 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result_9_1 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result_8_1 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result_7_1 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result_6_1 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result_5_1 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result_4_1 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result_3_1 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result_2_1 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result_1_1 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result_0_1 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_n0405_inv : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_val : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_n0388_inv : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_n0369_inv11 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Reset_OR_DriverANDClockEnable4_1501 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_n0477_inv1 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Reset_OR_DriverANDClockEnable : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_10_LENGTH_TYPE_10_equal_8_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_GND_45_o_RXD_7_equal_9_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_VLAN_MATCH_1_GND_45_o_MUX_812_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE_15_PWR_47_o_mux_2_OUT_0_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE_15_PWR_47_o_mux_2_OUT_1_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE_15_PWR_47_o_mux_2_OUT_2_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE_15_PWR_47_o_mux_2_OUT_3_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE_15_PWR_47_o_mux_2_OUT_4_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE_15_PWR_47_o_mux_2_OUT_5_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE_15_PWR_47_o_mux_2_OUT_6_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE_15_PWR_47_o_mux_2_OUT_7_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE_15_PWR_47_o_mux_2_OUT_8_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE_15_PWR_47_o_mux_2_OUT_9_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE_15_PWR_47_o_mux_2_OUT_10_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_SFD_FLAG_DATA_NO_FCS_OR_227_o_1518 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_SFD_FLAG_CRC_COMPUTE_OR_212_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_RX_DV_REG_FRAME_COUNTER_14_AND_404_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_GND_45_o_CONTROL_MATCH_AND_415_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_FIELD_LT_CHECK_DISABLE_AND_375_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_FIELD_LT_CHECK_DISABLE_AND_371_o_1523 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_PWR_47_o_RXD_7_equal_15_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_FIELD_FIELD_COUNTER_1_AND_376_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_NO_FCS_DATA_WITH_FCS_MUX_776_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_VLAN_ENABLE_PWR_47_o_AND_411_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_CONTROL_FRAME_INT_1539 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_MULTICAST_MATCH_1540 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_ADD_CONTROL_ENABLE_1541 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_RX_DV_REG_1555 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_ADD_CONTROL_FRAME_INT_1556 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_CONTROL_MATCH_1557 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_NO_FCS_1558 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_WITH_FCS_1559 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_ONE_1560 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_ZERO_1561 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LESS_THAN_256_1562 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_n0165_inv : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_Reset_OR_DriverANDClockEnable : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_END_OF_FRAME_SFD_FLAG_AND_419_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_FCS_ERR_EXTENSION_FIELD_OR_255_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_FCS_ERR_CRC_ENGINE_ERR_OR_265_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_FRAME_LEN_ERR_END_OF_DATA_OR_241_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_MIN_LENGTH_MATCH_EXCEEDED_MIN_LEN_OR_235_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_GND_46_o_FRAME_COUNTER_7_equal_1_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_n0139_1571 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_MAX_LENGTH_ERR_1572 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_INHIBIT_FRAME_1573 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_FCS_ERR_1574 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_CRC_ENGINE_ERR_1575 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_FRAME_LEN_ERR_1576 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_EXCEEDED_MIN_LEN_1577 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_MIN_LENGTH_MATCH_1578 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_TX_ER_REG1_1579 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_TX_EN_REG1_1580 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_GMII_TX_ER_TO_PHY_GND_39_o_MUX_577_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_GMII_TX_EN_TO_PHY_GND_39_o_MUX_575_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_TX_ER_REG1_GND_39_o_MUX_561_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_TX_EN_REG1_GND_39_o_MUX_559_o : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_next_tx_state_3_ignore_packet_OR_46_o1_1593 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_next_tx_state_3_ignore_packet_OR_46_o2_1594 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_next_tx_state_3_ignore_packet_OR_46_o3_1595 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_next_tx_state_3_ignore_packet_OR_46_o4_1596 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_REG_TX_CONTROL_GND_36_o_MUX_507_o111_1607 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_REG_TX_CONTROL_GND_36_o_MUX_507_o112_1608 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal N42 : STD_LOGIC; 
  signal N44 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal N48 : STD_LOGIC; 
  signal N50 : STD_LOGIC; 
  signal N52 : STD_LOGIC; 
  signal N54 : STD_LOGIC; 
  signal N56 : STD_LOGIC; 
  signal N58 : STD_LOGIC; 
  signal N60 : STD_LOGIC; 
  signal N62 : STD_LOGIC; 
  signal N64 : STD_LOGIC; 
  signal N66 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_Mmux_CALC_23_CALC_23_mux_3_OUT5 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_Mmux_CALC_23_CALC_23_mux_3_OUT51_1630 : STD_LOGIC; 
  signal N68 : STD_LOGIC; 
  signal N70 : STD_LOGIC; 
  signal N72 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_Mmux_CALC_23_CALC_23_mux_3_OUT28 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_Mmux_CALC_23_CALC_23_mux_3_OUT281_1635 : STD_LOGIC; 
  signal N76 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_GND_27_o_DATA_7_equal_8_o_7_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_GND_27_o_DATA_7_equal_8_o_7_1_1638 : STD_LOGIC; 
  signal N80 : STD_LOGIC; 
  signal N82 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n01471_1641 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_STATE_COUNT_FSM_FFd2_In1_1642 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_STATE_COUNT_FSM_FFd2_In2_1643 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT10 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT101_1645 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT102_1646 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT103_1647 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT7 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT71_1649 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT14 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT141_1651 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT12 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT121_1653 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT3 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT31_1655 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT32_1656 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT5 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT51_1658 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT52_1659 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT53_1660 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT16 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT161_1662 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT162_1663 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT163_1664 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT19 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT191_1666 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT192_1667 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT193_1668 : STD_LOGIC; 
  signal N86 : STD_LOGIC; 
  signal N88 : STD_LOGIC; 
  signal N90 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mmux_COUNT_SET_GND_31_o_MUX_238_o1 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mmux_COUNT_SET_GND_31_o_MUX_238_o11_1673 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT_15_GND_31_o_equal_8_o_15_Q : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT_15_GND_31_o_equal_8_o_15_1_1675 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT7 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT71_1677 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT6 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT61_1679 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT5 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT51_1681 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT4 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT41_1683 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT3 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT31_1685 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT2 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT21_1687 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT1 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT11_1689 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_special_pause_match_comb8 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_special_pause_match_comb81_1691 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_pause_match_reg_rx_data_7_MUX_940_o8 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_pause_match_reg_rx_data_7_MUX_940_o81_1693 : STD_LOGIC; 
  signal N92 : STD_LOGIC; 
  signal N94 : STD_LOGIC; 
  signal N96 : STD_LOGIC; 
  signal N98 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_Mmux_CALC_23_CALC_23_mux_3_OUT28 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_Mmux_CALC_23_CALC_23_mux_3_OUT281_1699 : STD_LOGIC; 
  signal N100 : STD_LOGIC; 
  signal N102 : STD_LOGIC; 
  signal N104 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_Mmux_CALC_23_CALC_23_mux_3_OUT5 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_Mmux_CALC_23_CALC_23_mux_3_OUT51_1704 : STD_LOGIC; 
  signal N108 : STD_LOGIC; 
  signal N110 : STD_LOGIC; 
  signal N112 : STD_LOGIC; 
  signal N114 : STD_LOGIC; 
  signal N116 : STD_LOGIC; 
  signal N118 : STD_LOGIC; 
  signal N120 : STD_LOGIC; 
  signal N122 : STD_LOGIC; 
  signal N124 : STD_LOGIC; 
  signal N126 : STD_LOGIC; 
  signal N128 : STD_LOGIC; 
  signal N130 : STD_LOGIC; 
  signal N132 : STD_LOGIC; 
  signal N134 : STD_LOGIC; 
  signal N136 : STD_LOGIC; 
  signal N138 : STD_LOGIC; 
  signal N148 : STD_LOGIC; 
  signal N150 : STD_LOGIC; 
  signal N152 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_10_LENGTH_TYPE_10_equal_8_o11 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_10_LENGTH_TYPE_10_equal_8_o111_1725 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_10_LENGTH_TYPE_10_equal_8_o112_1726 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_10_LENGTH_TYPE_10_equal_8_o113_1727 : STD_LOGIC; 
  signal N154 : STD_LOGIC; 
  signal N156 : STD_LOGIC; 
  signal N158 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_n0165_inv11_1731 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_n0165_inv12_1732 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_n0165_inv13_1733 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_n0165_inv14_1734 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_FRAME_LEN_ERR_END_OF_DATA_OR_241_o1_1735 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_FRAME_LEN_ERR_END_OF_DATA_OR_241_o2_1736 : STD_LOGIC; 
  signal N160 : STD_LOGIC; 
  signal N162 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_force_burst2_glue_set_1739 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_force_assert_glue_set_1740 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_force_burst1_glue_set_1741 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_early_deassert_glue_set_1742 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_early_underrun_glue_set_1743 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_valid_glue_set_1744 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_ignore_packet_glue_set_1745 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tlast_reg_glue_set : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_underrun_glue_set : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_MAX_2_glue_rst_1748 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_MAX_3_glue_rst_1749 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_MAX_4_glue_set_1750 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_13_glue_set_1751 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_12_glue_set_1752 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_11_glue_set_1753 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_10_glue_set_1754 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_9_glue_set_1755 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_8_glue_set_1756 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_7_glue_set_1757 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_6_glue_set_1758 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_5_glue_set_1759 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_4_glue_set_1760 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_3_glue_set_1761 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_2_glue_set_1762 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_1_glue_set_1763 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_0_glue_set_1764 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_PAUSE_VECTOR_0_glue_set_1765 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_REQ_INT_glue_set_1766 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_BAD_OPCODE_INT_glue_set_1767 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT_0_glue_rst_1768 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT_4_glue_rst_1769 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT_1_glue_rst_1770 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_REQ_INT_glue_set_1771 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_MUX_CONTROL_glue_ce_1772 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_END_OF_TX_HELD_glue_set_1773 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_STATUS_INT_glue_set_1774 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_pause_match_glue_set_1775 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_special_pause_match_glue_set_1776 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_broadcast_match_glue_set_1777 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_rxstatsaddressmatch_glue_set_1778 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_address_match_glue_set_1779 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_VALIDATE_REQUIRED_glue_set_1780 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA_VALID_EARLY_INT_glue_set_1781 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_EXT_FIELD_glue_set_1782 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_PREAMBLE_glue_set_1783 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_MAX_LENGTH_ERR_glue_set_1784 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_13_rt_1785 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_12_rt_1786 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_11_rt_1787 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_10_rt_1788 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_9_rt_1789 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_8_rt_1790 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_7_rt_1791 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_6_rt_1792 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_5_rt_1793 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_4_rt_1794 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_3_rt_1795 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_2_rt_1796 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_1_rt_1797 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_13_rt_1798 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_12_rt_1799 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_11_rt_1800 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_10_rt_1801 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_9_rt_1802 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_8_rt_1803 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_7_rt_1804 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_6_rt_1805 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_5_rt_1806 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_4_rt_1807 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_3_rt_1808 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_2_rt_1809 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_1_rt_1810 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_9_rt_1811 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_8_rt_1812 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_7_rt_1813 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_6_rt_1814 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_5_rt_1815 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_4_rt_1816 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_3_rt_1817 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_2_rt_1818 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_1_rt_1819 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_xor_14_rt_1820 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_xor_14_rt_1821 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_xor_10_rt_1822 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STOP_MAX_PKT_rstpot_1823 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_COF_SEEN_rstpot_1824 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIN_PKT_LEN_REACHED_rstpot_1825 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DST_ADDR_BYTE5_MATCH_rstpot_1826 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_TX_SUCCESS_rstpot_1827 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_TX_UNDERRUN2_rstpot_1828 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MAX_PKT_LEN_REACHED_rstpot : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CLIENT_FRAME_DONE_rstpot_1830 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIFG_rstpot_1831 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_TX_OK_rstpot_1832 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_GOOD_rstpot_1833 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_SCSH_rstpot_1834 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_BAD_rstpot_1835 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FCS_rstpot_1836 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_COF_rstpot_1837 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CFL_rstpot_1838 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_TX_DA_rstpot_1839 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_TX_rstpot_1840 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PRE_rstpot_1841 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CDS_rstpot_1842 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IDL_rstpot_1843 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_two_byte_tx_rstpot_1844 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_COUNT_SET_rstpot_1845 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_promiscuous_mode_sample_rstpot_1846 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MATCH_FRAME_INT_rstpot_1847 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_TYPE_PACKET_rstpot_1848 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_END_FRAME_1849 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_BAD_FRAME_rstpot : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_GOOD_FRAME_rstpot : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd1_rstpot_1852 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_no_burst_rstpot_1853 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_update_pause_ad_sync_reg_rstpot_1854 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_rx_filtered_data_valid_rstpot_1855 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_state_FSM_FFd1_rstpot_1856 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_mac_tvalid_rstpot : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_mac_tlast_rstpot : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_force_end_rstpot_1859 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT_2_rstpot : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_MUX_CONTROL_rstpot_1861 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR_2_rstpot1_1862 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_ENABLE_REG_rstpot1_1863 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_ENABLE_REG_rstpot1_1864 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA_VALID_FINAL_rstpot1_1865 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_END_DATA_rstpot1_1866 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_SRC_ADDRESS_FIELD_rstpot1_1867 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_END_FCS_rstpot1_1868 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_MATCH_rstpot1_1869 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_CONTROL_FRAME_INT_rstpot1_1870 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_ADD_CONTROL_ENABLE_rstpot1_1871 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_MULTICAST_MATCH_rstpot1_1872 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_WITH_FCS_rstpot1_1873 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_PADDED_FRAME_rstpot1_1874 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_LENGTH_TYPE_ERR_rstpot1_1875 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_STATISTICS_VALID_rstpot1_1876 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_BAD_FRAME_rstpot1_1877 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_GOOD_FRAME_rstpot1_1878 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_CRC_ENGINE_ERR_rstpot1_1879 : STD_LOGIC; 
  signal N164 : STD_LOGIC; 
  signal N165 : STD_LOGIC; 
  signal N169 : STD_LOGIC; 
  signal N171 : STD_LOGIC; 
  signal N173 : STD_LOGIC; 
  signal N178 : STD_LOGIC; 
  signal N179 : STD_LOGIC; 
  signal N181 : STD_LOGIC; 
  signal N183 : STD_LOGIC; 
  signal N185 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MAX_PKT_LEN_REACHED_rstpot_lut_1890 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT_14_FRAME_MAX_14_equal_51_o_l1 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MAX_PKT_LEN_REACHED_rstpot_lut1_1892 : STD_LOGIC; 
  signal N189 : STD_LOGIC; 
  signal N199 : STD_LOGIC; 
  signal N202 : STD_LOGIC; 
  signal N206 : STD_LOGIC; 
  signal N212 : STD_LOGIC; 
  signal N214 : STD_LOGIC; 
  signal N215 : STD_LOGIC; 
  signal N216 : STD_LOGIC; 
  signal N217 : STD_LOGIC; 
  signal N218 : STD_LOGIC; 
  signal N220 : STD_LOGIC; 
  signal N224 : STD_LOGIC; 
  signal N226 : STD_LOGIC; 
  signal N228 : STD_LOGIC; 
  signal N230 : STD_LOGIC; 
  signal N232 : STD_LOGIC; 
  signal N234 : STD_LOGIC; 
  signal N236 : STD_LOGIC; 
  signal N238 : STD_LOGIC; 
  signal N240 : STD_LOGIC; 
  signal N242 : STD_LOGIC; 
  signal N243 : STD_LOGIC; 
  signal N244 : STD_LOGIC; 
  signal N245 : STD_LOGIC; 
  signal N246 : STD_LOGIC; 
  signal N247 : STD_LOGIC; 
  signal N248 : STD_LOGIC; 
  signal N249 : STD_LOGIC; 
  signal N250 : STD_LOGIC; 
  signal N251 : STD_LOGIC; 
  signal N252 : STD_LOGIC; 
  signal N253 : STD_LOGIC; 
  signal N254 : STD_LOGIC; 
  signal N255 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mshreg_DATA_7_1927 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mshreg_PREAMBLE_PIPE_13_1928 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_131_1929 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mshreg_STATISTICS_VECTOR_22_1930 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mshreg_DATA_6_1931 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mshreg_DATA_5_1932 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mshreg_DATA_2_1933 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mshreg_DATA_4_1934 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mshreg_DATA_3_1935 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mshreg_DATA_1_1936 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mshreg_DATA_0_1937 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4_shift1_1938 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4_shift2_1939 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4_shift3_1940 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4_shift4_1941 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4_shift5_1942 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4_shift6_1943 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4_shift7_1944 : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_1311_1945 : STD_LOGIC; 
  signal NLW_U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_delay_rx_data_valid_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_byte_wide_ram_7_header_field_dist_ram_SPO_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_byte_wide_ram_6_header_field_dist_ram_SPO_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_byte_wide_ram_5_header_field_dist_ram_SPO_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_byte_wide_ram_4_header_field_dist_ram_SPO_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_byte_wide_ram_3_header_field_dist_ram_SPO_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_byte_wide_ram_2_header_field_dist_ram_SPO_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_byte_wide_ram_1_header_field_dist_ram_SPO_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_byte_wide_ram_0_header_field_dist_ram_SPO_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mshreg_DATA_7_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mshreg_PREAMBLE_PIPE_13_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mshreg_STATISTICS_VECTOR_22_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mshreg_DATA_6_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mshreg_DATA_5_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mshreg_DATA_2_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mshreg_DATA_4_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mshreg_DATA_3_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mshreg_DATA_1_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mshreg_DATA_0_Q15_UNCONNECTED : STD_LOGIC; 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_mac_tdata : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR : STD_LOGIC_VECTOR ( 23 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_GMII_TXD_TO_PHY : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG1 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_RX_GEN_RXD_REG1 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_TX_DATA_OUT : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_INT : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_GMII_TXD : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_hold : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy : STD_LOGIC_VECTOR ( 13 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Result : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_2 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_1 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_DELAY_HELD : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DEL_MASKED : STD_LOGIC_VECTOR ( 7 downto 2 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1 : STD_LOGIC_VECTOR ( 13 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_COUNT : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PRE_COUNT : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0 : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_LEN : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_TRANSMIT_PIPE : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_4 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DELAY : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_INT : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_Result : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0105 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_COUNT : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_OPCODE_EARLY : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Result : STD_LOGIC_VECTOR ( 4 downto 2 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_CONTROL : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD : STD_LOGIC_VECTOR ( 47 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_VALUE_HELD : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_QUANTA : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Result : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_special_pause_addr_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_pipe : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_wr_data : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_expected_pause_data : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_next_rx_state : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_fsmfake0 : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_data_reg : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MAX_FRAME_LENGTH_HELD : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG6 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_STATISTICS_LENGTH : STD_LOGIC_VECTOR ( 13 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_FIELD_CONTROL : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG5 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy : STD_LOGIC_VECTOR ( 13 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_14_0_Q : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_VLAN_MATCH : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_TXD_REG1 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
begin
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_resync_promiscuous_mode_data_in <= rx_mac_config_vector(11);
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_sync_rx_enable_data_in <= rx_mac_config_vector(5);
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_sync_tx_enable_data_in <= tx_mac_config_vector(5);
  rx_axis_mac_tdata(7) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_mac_tdata(7);
  rx_axis_mac_tdata(6) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_mac_tdata(6);
  rx_axis_mac_tdata(5) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_mac_tdata(5);
  rx_axis_mac_tdata(4) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_mac_tdata(4);
  rx_axis_mac_tdata(3) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_mac_tdata(3);
  rx_axis_mac_tdata(2) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_mac_tdata(2);
  rx_axis_mac_tdata(1) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_mac_tdata(1);
  rx_axis_mac_tdata(0) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_mac_tdata(0);
  rx_statistics_vector(27) <= NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_rxstatsaddressmatch;
  rx_statistics_vector(26) <= NlwRenamedSig_OI_N1;
  rx_statistics_vector(25) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR(23);
  rx_statistics_vector(22) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR(22);
  rx_statistics_vector(21) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR(21);
  rx_statistics_vector(20) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR(20);
  rx_statistics_vector(19) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR(19);
  rx_statistics_vector(18) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR(18);
  rx_statistics_vector(17) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR(17);
  rx_statistics_vector(16) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR(16);
  rx_statistics_vector(15) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR(15);
  rx_statistics_vector(14) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR(14);
  rx_statistics_vector(13) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR(13);
  rx_statistics_vector(12) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR(12);
  rx_statistics_vector(11) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR(11);
  rx_statistics_vector(10) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR(10);
  rx_statistics_vector(9) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR(9);
  rx_statistics_vector(8) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR(8);
  rx_statistics_vector(7) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR(7);
  rx_statistics_vector(6) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR(6);
  rx_statistics_vector(5) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR(5);
  rx_statistics_vector(4) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR(4);
  rx_statistics_vector(3) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR(3);
  rx_statistics_vector(2) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR(2);
  rx_statistics_vector(1) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR(1);
  rx_statistics_vector(0) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR(0);
  tx_statistics_vector(31) <= NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_PAUSE_VECTOR_0;
  tx_statistics_vector(30) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_NUMBER_OF_BYTES_231;
  tx_statistics_vector(29) <= NlwRenamedSig_OI_N1;
  tx_statistics_vector(28) <= NlwRenamedSig_OI_N1;
  tx_statistics_vector(27) <= NlwRenamedSig_OI_N1;
  tx_statistics_vector(26) <= NlwRenamedSig_OI_N1;
  tx_statistics_vector(25) <= NlwRenamedSig_OI_N1;
  tx_statistics_vector(24) <= NlwRenamedSig_OI_N1;
  tx_statistics_vector(23) <= NlwRenamedSig_OI_N1;
  tx_statistics_vector(22) <= NlwRenamedSig_OI_N1;
  tx_statistics_vector(21) <= NlwRenamedSig_OI_N1;
  tx_statistics_vector(20) <= NlwRenamedSig_OI_N1;
  tx_statistics_vector(19) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR(19);
  tx_statistics_vector(18) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR(18);
  tx_statistics_vector(17) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR(17);
  tx_statistics_vector(16) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR(16);
  tx_statistics_vector(15) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR(15);
  tx_statistics_vector(14) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR(14);
  tx_statistics_vector(13) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR(13);
  tx_statistics_vector(12) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR(12);
  tx_statistics_vector(11) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR(11);
  tx_statistics_vector(10) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR(10);
  tx_statistics_vector(9) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR(9);
  tx_statistics_vector(8) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR(8);
  tx_statistics_vector(7) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR(7);
  tx_statistics_vector(6) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR(6);
  tx_statistics_vector(5) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR(5);
  tx_statistics_vector(4) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR(4);
  tx_statistics_vector(3) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR(3);
  tx_statistics_vector(2) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR(2);
  tx_statistics_vector(1) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR(1);
  tx_statistics_vector(0) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR(0);
  gmii_txd(7) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_GMII_TXD_TO_PHY(7);
  gmii_txd(6) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_GMII_TXD_TO_PHY(6);
  gmii_txd(5) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_GMII_TXD_TO_PHY(5);
  gmii_txd(4) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_GMII_TXD_TO_PHY(4);
  gmii_txd(3) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_GMII_TXD_TO_PHY(3);
  gmii_txd(2) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_GMII_TXD_TO_PHY(2);
  gmii_txd(1) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_GMII_TXD_TO_PHY(1);
  gmii_txd(0) <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_GMII_TXD_TO_PHY(0);
  rx_reset_out <= NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4;
  rx_axis_mac_tvalid <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_mac_tvalid_261;
  rx_axis_mac_tlast <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_mac_tlast_262;
  rx_axis_mac_tuser <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_mac_tuser_263;
  rx_statistics_valid <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VALID_264;
  tx_reset_out <= NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4;
  tx_axis_mac_tready <= NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_mac_tready_reg;
  tx_statistics_valid <= NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_REG_STATUS_VALID;
  speed_is_100 <= NlwRenamedSig_OI_N1;
  speed_is_10_100 <= NlwRenamedSig_OI_N1;
  gmii_tx_en <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_GMII_TX_EN_TO_PHY_267;
  gmii_tx_er <= U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_GMII_TX_ER_TO_PHY_268;
  XST_VCC : VCC
    port map (
      P => N0
    );
  XST_GND : GND
    port map (
      G => NlwRenamedSig_OI_N1
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R1 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => rx_axi_clk,
      D => NlwRenamedSig_OI_N1,
      PRE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_RX_RST_ASYNCH,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R1_272
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R2 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R1_272,
      PRE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_RX_RST_ASYNCH,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R2_271
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R1 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => tx_axi_clk,
      D => NlwRenamedSig_OI_N1,
      PRE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_TX_RST_ASYNCH,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R1_276
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R2 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R1_276,
      PRE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_TX_RST_ASYNCH,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R2_275
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd2 : FDR
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_next_tx_state_3_GND_24_o_equal_70_o,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd2_383
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd4 : FDR
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_next_tx_state_3_PWR_23_o_equal_72_o,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd4_389
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd5 : FDR
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_next_tx_state_3_GND_24_o_equal_69_o,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd5_391
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd3 : FDR
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd3_In_363,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd3_384
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd6 : FDR
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd6_In,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd6_385
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd7 : FDR
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd7_In_365,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd7_390
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd9 : FDR
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_next_tx_state_3_GND_24_o_equal_27_o,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd9_362
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd10 : FDS
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_next_tx_state_3_tx_enable_reg_AND_28_o,
      S => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd10_388
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd8 : FDR
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_next_tx_state_3_GND_24_o_equal_68_o,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd8_386
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_7 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_n0273_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_7_tx_mac_tdata_7_mux_62_OUT_7_Q,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data(7)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_6 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_n0273_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_7_tx_mac_tdata_7_mux_62_OUT_6_Q,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data(6)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_5 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_n0273_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_7_tx_mac_tdata_7_mux_62_OUT_5_Q,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_4 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_n0273_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_7_tx_mac_tdata_7_mux_62_OUT_4_Q,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_3 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_n0273_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_7_tx_mac_tdata_7_mux_62_OUT_3_Q,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_2 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_n0273_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_7_tx_mac_tdata_7_mux_62_OUT_2_Q,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_1 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_n0273_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_7_tx_mac_tdata_7_mux_62_OUT_1_Q,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_0 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_n0273_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_7_tx_mac_tdata_7_mux_62_OUT_0_Q,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_hold_7 : FDRE
    port map (
      C => tx_axi_clk,
      CE => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_mac_tready_reg,
      D => tx_axis_mac_tdata(7),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_hold(7)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_hold_6 : FDRE
    port map (
      C => tx_axi_clk,
      CE => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_mac_tready_reg,
      D => tx_axis_mac_tdata(6),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_hold(6)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_hold_5 : FDRE
    port map (
      C => tx_axi_clk,
      CE => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_mac_tready_reg,
      D => tx_axis_mac_tdata(5),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_hold(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_hold_4 : FDRE
    port map (
      C => tx_axi_clk,
      CE => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_mac_tready_reg,
      D => tx_axis_mac_tdata(4),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_hold(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_hold_3 : FDRE
    port map (
      C => tx_axi_clk,
      CE => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_mac_tready_reg,
      D => tx_axis_mac_tdata(3),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_hold(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_hold_2 : FDRE
    port map (
      C => tx_axi_clk,
      CE => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_mac_tready_reg,
      D => tx_axis_mac_tdata(2),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_hold(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_hold_1 : FDRE
    port map (
      C => tx_axi_clk,
      CE => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_mac_tready_reg,
      D => tx_axis_mac_tdata(1),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_hold(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_hold_0 : FDRE
    port map (
      C => tx_axi_clk,
      CE => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_mac_tready_reg,
      D => tx_axis_mac_tdata(0),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_hold(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_mac_tready_reg : FDR
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_next_tx_state_3_ignore_packet_OR_46_o,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_mac_tready_reg
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_BYTECNTSRL : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => N0,
      A1 => N0,
      A2 => N0,
      A3 => NlwRenamedSig_OI_N1,
      CE => N0,
      CLK => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_GMII_TX_EN,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_INT_TX_EN_DELAY
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_INT_CRS : FD
    port map (
      C => tx_axi_clk,
      D => NlwRenamedSig_OI_N1,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_INT_CRS_413
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_NUMBER_OF_BYTES : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_INT_TX_EN_DELAY,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_Reset_OR_DriverANDClockEnable,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_NUMBER_OF_BYTES_231
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_INT_IFG_DEL_EN : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => tx_mac_config_vector(8),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_INT_IFG_DEL_EN_415
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_INT_ENABLE : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => tx_mac_config_vector(1),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_INT_ENABLE_417
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_INT_JUMBO_ENABLE : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => tx_mac_config_vector(4),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_INT_JUMBO_ENABLE_418
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_INT_VLAN_ENABLE : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_TX_VLAN_ENABLE_OUT,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_INT_VLAN_ENABLE_416
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_INT_CRC_MODE : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_CRC_MODE_INV_77_o,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_INT_CRC_MODE_419
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_xor_14_Q : XORCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy(13),
      LI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_xor_14_rt_1820,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Result(14)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_xor_13_Q : XORCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy(12),
      LI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_13_rt_1785,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Result(13)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_13_Q : MUXCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy(12),
      DI => NlwRenamedSig_OI_N1,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_13_rt_1785,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy(13)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_xor_12_Q : XORCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy(11),
      LI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_12_rt_1786,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Result(12)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_12_Q : MUXCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy(11),
      DI => NlwRenamedSig_OI_N1,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_12_rt_1786,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy(12)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_xor_11_Q : XORCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy(10),
      LI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_11_rt_1787,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Result(11)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_11_Q : MUXCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy(10),
      DI => NlwRenamedSig_OI_N1,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_11_rt_1787,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy(11)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_xor_10_Q : XORCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy(9),
      LI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_10_rt_1788,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Result(10)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_10_Q : MUXCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy(9),
      DI => NlwRenamedSig_OI_N1,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_10_rt_1788,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy(10)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_xor_9_Q : XORCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy(8),
      LI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_9_rt_1789,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Result(9)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_9_Q : MUXCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy(8),
      DI => NlwRenamedSig_OI_N1,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_9_rt_1789,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy(9)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_xor_8_Q : XORCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy(7),
      LI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_8_rt_1790,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Result(8)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_8_Q : MUXCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy(7),
      DI => NlwRenamedSig_OI_N1,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_8_rt_1790,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy(8)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_xor_7_Q : XORCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy(6),
      LI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_7_rt_1791,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Result(7)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_7_Q : MUXCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy(6),
      DI => NlwRenamedSig_OI_N1,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_7_rt_1791,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy(7)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_xor_6_Q : XORCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy(5),
      LI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_6_rt_1792,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Result(6)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_6_Q : MUXCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy(5),
      DI => NlwRenamedSig_OI_N1,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_6_rt_1792,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy(6)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_xor_5_Q : XORCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy(4),
      LI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_5_rt_1793,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Result(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_5_Q : MUXCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy(4),
      DI => NlwRenamedSig_OI_N1,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_5_rt_1793,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_xor_4_Q : XORCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy(3),
      LI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_4_rt_1794,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Result(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_4_Q : MUXCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy(3),
      DI => NlwRenamedSig_OI_N1,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_4_rt_1794,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_xor_3_Q : XORCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy(2),
      LI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_3_rt_1795,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Result(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_3_Q : MUXCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy(2),
      DI => NlwRenamedSig_OI_N1,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_3_rt_1795,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_xor_2_Q : XORCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy(1),
      LI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_2_rt_1796,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Result(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_2_Q : MUXCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy(1),
      DI => NlwRenamedSig_OI_N1,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_2_rt_1796,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_xor_1_Q : XORCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy(0),
      LI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_1_rt_1797,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Result(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_1_Q : MUXCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy(0),
      DI => NlwRenamedSig_OI_N1,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_1_rt_1797,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_xor_0_Q : XORCY
    port map (
      CI => NlwRenamedSig_OI_N1,
      LI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_lut(0),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Result(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_0_Q : MUXCY
    port map (
      CI => NlwRenamedSig_OI_N1,
      DI => N0,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_lut(0),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcompar_FRAME_COUNT_14_FRAME_MAX_14_equal_51_o_cy_4_Q : MUXCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcompar_FRAME_COUNT_14_FRAME_MAX_14_equal_51_o_cy_3_Q_446,
      DI => NlwRenamedSig_OI_N1,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcompar_FRAME_COUNT_14_FRAME_MAX_14_equal_51_o_lut_4_Q_445,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT_14_FRAME_MAX_14_equal_51_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcompar_FRAME_COUNT_14_FRAME_MAX_14_equal_51_o_lut_4_Q : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(12),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH(12),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(13),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH(13),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(14),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH(14),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcompar_FRAME_COUNT_14_FRAME_MAX_14_equal_51_o_lut_4_Q_445
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcompar_FRAME_COUNT_14_FRAME_MAX_14_equal_51_o_cy_3_Q : MUXCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcompar_FRAME_COUNT_14_FRAME_MAX_14_equal_51_o_cy_2_Q_448,
      DI => NlwRenamedSig_OI_N1,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcompar_FRAME_COUNT_14_FRAME_MAX_14_equal_51_o_lut_3_Q_447,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcompar_FRAME_COUNT_14_FRAME_MAX_14_equal_51_o_cy_3_Q_446
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcompar_FRAME_COUNT_14_FRAME_MAX_14_equal_51_o_lut_3_Q : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(9),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH(9),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(10),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH(10),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(11),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH(11),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcompar_FRAME_COUNT_14_FRAME_MAX_14_equal_51_o_lut_3_Q_447
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcompar_FRAME_COUNT_14_FRAME_MAX_14_equal_51_o_cy_2_Q : MUXCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcompar_FRAME_COUNT_14_FRAME_MAX_14_equal_51_o_cy_1_Q_450,
      DI => NlwRenamedSig_OI_N1,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcompar_FRAME_COUNT_14_FRAME_MAX_14_equal_51_o_lut_2_Q_449,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcompar_FRAME_COUNT_14_FRAME_MAX_14_equal_51_o_cy_2_Q_448
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcompar_FRAME_COUNT_14_FRAME_MAX_14_equal_51_o_lut_2_Q : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(6),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH(6),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(7),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH(7),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(8),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH(8),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcompar_FRAME_COUNT_14_FRAME_MAX_14_equal_51_o_lut_2_Q_449
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcompar_FRAME_COUNT_14_FRAME_MAX_14_equal_51_o_cy_1_Q : MUXCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcompar_FRAME_COUNT_14_FRAME_MAX_14_equal_51_o_cy_0_Q_452,
      DI => NlwRenamedSig_OI_N1,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcompar_FRAME_COUNT_14_FRAME_MAX_14_equal_51_o_lut_1_Q_451,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcompar_FRAME_COUNT_14_FRAME_MAX_14_equal_51_o_cy_1_Q_450
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcompar_FRAME_COUNT_14_FRAME_MAX_14_equal_51_o_lut_1_Q : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(3),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_MAX_3_680,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(4),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_MAX_4_681,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(5),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH(5),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcompar_FRAME_COUNT_14_FRAME_MAX_14_equal_51_o_lut_1_Q_451
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcompar_FRAME_COUNT_14_FRAME_MAX_14_equal_51_o_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => NlwRenamedSig_OI_N1,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcompar_FRAME_COUNT_14_FRAME_MAX_14_equal_51_o_lut_0_Q_453,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcompar_FRAME_COUNT_14_FRAME_MAX_14_equal_51_o_cy_0_Q_452
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcompar_FRAME_COUNT_14_FRAME_MAX_14_equal_51_o_lut_0_Q : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH(0),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(1),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH(1),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(2),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_MAX_2_679,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcompar_FRAME_COUNT_14_FRAME_MAX_14_equal_51_o_lut_0_Q_453
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n1183_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Result(6),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT_cst1,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(6)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT_14 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n1183_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Result(14),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT_cst1,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(14)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT_13 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n1183_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Result(13),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT_cst1,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(13)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT_11 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n1183_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Result(11),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT_cst1,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(11)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT_10 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n1183_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Result(10),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT_cst1,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(10)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT_12 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n1183_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Result(12),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT_cst1,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(12)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT_9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n1183_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Result(9),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT_cst1,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(9)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT_8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n1183_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Result(8),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT_cst1,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(8)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n1183_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Result(5),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT_cst1,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n1183_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Result(7),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT_cst1,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(7)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n1183_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Result(4),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT_cst1,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n1183_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Result(3),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT_cst1,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n1183_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Result(1),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT_cst1,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n1183_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Result(0),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT_cst1,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_COUNT_1 : FDSE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_CRC_COUNT1,
      S => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_COUNT(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_COUNT_0 : FDSE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_CRC_COUNT,
      S => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_COUNT(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PRE_COUNT_2 : FDSE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_PRE_COUNT2,
      S => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PRE_COUNT(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PRE_COUNT_1 : FDSE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_PRE_COUNT1,
      S => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PRE_COUNT(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PRE_COUNT_0 : FDSE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_PRE_COUNT,
      S => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PRE_COUNT(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_4_7 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(7),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_4(7)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_4_6 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(6),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_4(6)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_4_5 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(5),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_4(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_4_4 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(4),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_4(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_4_3 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(3),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_4(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_4_2 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(2),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_4(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_4_1 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(1),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_4(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_4_0 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(0),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_4(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3_7 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_2(7),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Reset_OR_DriverANDClockEnable25,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(7)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3_6 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_2(6),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Reset_OR_DriverANDClockEnable25,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(6)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3_5 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_2(5),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Reset_OR_DriverANDClockEnable25,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3_4 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_2(4),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Reset_OR_DriverANDClockEnable25,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3_3 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_2(3),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Reset_OR_DriverANDClockEnable25,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3_2 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_2(2),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Reset_OR_DriverANDClockEnable25,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3_1 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_2(1),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Reset_OR_DriverANDClockEnable25,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3_0 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_2(0),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Reset_OR_DriverANDClockEnable25,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_2_7 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_1(7),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Reset_OR_DriverANDClockEnable17,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_2(7)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_2_6 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_1(6),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Reset_OR_DriverANDClockEnable17,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_2(6)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_2_5 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_1(5),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Reset_OR_DriverANDClockEnable17,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_2(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_2_4 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_1(4),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Reset_OR_DriverANDClockEnable17,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_2(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_2_3 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_1(3),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Reset_OR_DriverANDClockEnable17,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_2(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_2_2 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_1(2),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Reset_OR_DriverANDClockEnable17,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_2(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_2_1 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_1(1),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Reset_OR_DriverANDClockEnable17,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_2(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_2_0 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_1(0),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Reset_OR_DriverANDClockEnable17,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_2(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_LEN_15 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_13_Q,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0(7),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_LEN(15)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_LEN_14 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_13_Q,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0(6),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_LEN(14)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_LEN_13 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_13_Q,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0(5),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_LEN(13)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_LEN_12 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_13_Q,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0(4),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_LEN(12)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_LEN_11 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_13_Q,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0(3),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_LEN(11)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_LEN_10 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_13_Q,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0(2),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_LEN(10)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_LEN_9 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_13_Q,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0(1),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_LEN(9)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_LEN_8 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_13_Q,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0(0),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_LEN(8)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_LEN_7 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_13_Q,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_1(7),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_LEN(7)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_LEN_6 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_13_Q,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_1(6),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_LEN(6)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_LEN_5 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_13_Q,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_1(5),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_LEN(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_LEN_4 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_13_Q,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_1(4),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_LEN(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_LEN_3 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_13_Q,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_1(3),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_LEN(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_LEN_2 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_13_Q,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_1(2),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_LEN(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_LEN_1 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_13_Q,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_1(1),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_LEN(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_LEN_0 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_13_Q,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_1(0),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_LEN(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR_19 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_REG_TX_VLAN_530,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR(19)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR_18 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1(13),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR(18)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR_17 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1(12),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR(17)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR_16 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1(11),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR(16)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR_15 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1(10),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR(15)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR_14 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1(9),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR(14)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR_13 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1(8),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR(13)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR_12 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1(7),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR(12)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR_11 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1(6),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR(11)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR_10 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1(5),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR(10)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR_9 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1(4),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR(9)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR_8 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1(3),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR(8)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR_7 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1(2),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR(7)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR_6 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1(1),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR(6)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR_5 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1(0),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR_4 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_REG_TX_CONTROL_531,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR_3 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_TX_UNDERRUN2_540,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR_1 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_TX_BROADCAST,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR_0 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_TX_SUCCESS_539,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_1_7 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0_7_GND_36_o_mux_59_OUT_7_1_478,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_1(7)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_1_6 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0_7_GND_36_o_mux_59_OUT_6_1_479,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_1(6)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_1_5 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0_7_GND_36_o_mux_59_OUT_5_Q,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Reset_OR_DriverANDClockEnable13,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_1(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_1_4 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0_7_GND_36_o_mux_59_OUT_4_1_480,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_1(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_1_3 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0_7_GND_36_o_mux_59_OUT_3_Q,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Reset_OR_DriverANDClockEnable13,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_1(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_1_2 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0_7_GND_36_o_mux_59_OUT_2_1_481,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_1(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_1_1 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0_7_GND_36_o_mux_59_OUT_1_Q,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Reset_OR_DriverANDClockEnable13,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_1(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_1_0 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0_7_GND_36_o_mux_59_OUT_0_1_482,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_1(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_14 : FDE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n0836_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT_14_Q,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH(14)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_13 : FDE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n0836_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT_13_Q,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH(13)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_12 : FDE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n0836_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT_12_Q,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH(12)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_11 : FDE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n0836_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT_11_Q,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH(11)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_10 : FDE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n0836_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT_10_Q,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH(10)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_9 : FDE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n0836_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT_9_Q,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH(9)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_8 : FDE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n0836_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT_8_Q,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH(8)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_7 : FDE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n0836_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT_7_Q,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH(7)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_6 : FDE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n0836_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT_6_Q,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH(6)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_5 : FDE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n0836_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT_5_Q,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_4 : FDE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n0836_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT_4_Q,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_3 : FDE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n0836_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT_3_Q,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_2 : FDE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n0836_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT_2_Q,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_1 : FDE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n0836_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT_1_Q,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_0 : FDE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n0836_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT_0_Q,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DEL_MASKED_7 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_GND_36_o_GND_36_o_sub_12_OUT_7_Q,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Reset_OR_DriverANDClockEnable,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DEL_MASKED(7)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DEL_MASKED_6 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_GND_36_o_GND_36_o_sub_12_OUT_6_Q,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Reset_OR_DriverANDClockEnable,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DEL_MASKED(6)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DEL_MASKED_5 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_GND_36_o_GND_36_o_sub_12_OUT_5_Q,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Reset_OR_DriverANDClockEnable,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DEL_MASKED(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DEL_MASKED_4 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_GND_36_o_GND_36_o_sub_12_OUT_4_Q,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Reset_OR_DriverANDClockEnable,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DEL_MASKED(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DEL_MASKED_3 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_GND_36_o_GND_36_o_sub_12_OUT_3_1_483,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DEL_MASKED(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DEL_MASKED_2 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_GND_36_o_GND_36_o_sub_12_OUT_2_Q,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Reset_OR_DriverANDClockEnable,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DEL_MASKED(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_TRANSMIT_PIPE_1 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_TRANSMIT_PIPE(0),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_TRANSMIT_PIPE(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_TRANSMIT_PIPE_0 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_TRANSMIT_548,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_TRANSMIT_PIPE(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_5 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_4_Q,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_5_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_4 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_3_Q,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_4_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_3 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_2_Q,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_3_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_2 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_1_Q,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_2_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_1 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_0_Q,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_1_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_0 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_550,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_0_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_DELAY_HELD_1 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DELAY(1),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Reset_OR_DriverANDClockEnable,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_DELAY_HELD(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_DELAY_HELD_0 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DELAY(0),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Reset_OR_DriverANDClockEnable,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_DELAY_HELD(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0_14 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n07981,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(14),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0(14)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0_13 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n07981,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(13),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0(13)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0_12 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n07981,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(12),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0(12)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0_11 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n07981,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(11),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0(11)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0_10 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n07981,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(10),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0(10)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0_9 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n07981,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(9),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0(9)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0_8 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n07981,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(8),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0(8)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0_7 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n07981,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(7),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0(7)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0_6 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n07981,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(6),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0(6)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0_5 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n07981,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(5),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0_4 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n07981,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(4),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0_3 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n07981,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(3),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0_2 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n07981,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(2),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0_1 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n07981,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(1),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0_0 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n07981,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(0),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT_7 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n1177_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT_7_GND_36_o_mux_33_OUT_7_Q,
      R => NlwRenamedSig_OI_N1,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT(7)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT_6 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n1177_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT_7_GND_36_o_mux_33_OUT_6_Q,
      R => NlwRenamedSig_OI_N1,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT(6)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT_5 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n1177_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT_7_GND_36_o_mux_33_OUT_5_Q,
      R => NlwRenamedSig_OI_N1,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT_4 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n1177_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT_7_GND_36_o_mux_33_OUT_4_Q,
      R => NlwRenamedSig_OI_N1,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT_3 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n1177_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT_7_GND_36_o_mux_33_OUT_3_Q,
      R => NlwRenamedSig_OI_N1,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT_2 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n1177_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT_7_GND_36_o_mux_33_OUT_2_Q,
      R => NlwRenamedSig_OI_N1,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT_1 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n1177_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT_7_GND_36_o_mux_33_OUT_1_Q,
      R => NlwRenamedSig_OI_N1,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT_0 : FDSE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n1177_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT_7_GND_36_o_mux_33_OUT_0_Q,
      S => NlwRenamedSig_OI_N1,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0_7 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_TX_DATA_OUT(7),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0(7)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0_6 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_TX_DATA_OUT(6),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0(6)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0_5 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_TX_DATA_OUT(5),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0_4 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_TX_DATA_OUT(4),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0_3 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_TX_DATA_OUT(3),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0_2 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_TX_DATA_OUT(2),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0_1 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_TX_DATA_OUT(1),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0_0 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_TX_DATA_OUT(0),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DELAY_7 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PRE_566,
      D => tx_ifg_delay(7),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DELAY(7)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DELAY_6 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PRE_566,
      D => tx_ifg_delay(6),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DELAY(6)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DELAY_5 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PRE_566,
      D => tx_ifg_delay(5),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DELAY(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DELAY_4 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PRE_566,
      D => tx_ifg_delay(4),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DELAY(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DELAY_3 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PRE_566,
      D => tx_ifg_delay(3),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DELAY(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DELAY_2 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PRE_566,
      D => tx_ifg_delay(2),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DELAY(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DELAY_1 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PRE_566,
      D => tx_ifg_delay(1),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DELAY(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DELAY_0 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PRE_566,
      D => tx_ifg_delay(0),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DELAY(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_31 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_31_Q,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_2_Q,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(31)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_30 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_30_Q,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_2_Q,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(30)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_29 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_29_Q,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_2_Q,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(29)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_28 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_28_Q_796,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_2_Q,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(28)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_27 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_27_Q,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_2_Q,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(27)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_26 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_26_Q_794,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_2_Q,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(26)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_25 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_25_Q,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_2_Q,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(25)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_24 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_24_Q_792,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_2_Q,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(24)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_23_Q,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_2_Q,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(23)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_22 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_22_Q,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_2_Q,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(22)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_21 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_21_Q,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_2_Q,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(21)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_20 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_20_Q,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_2_Q,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(20)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_19 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_19_Q,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_2_Q,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(19)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_18 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_18_Q_786,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_2_Q,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(18)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_17 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_17_Q,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_2_Q,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(17)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_16 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_16_Q_784,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_2_Q,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(16)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_15 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_15_Q,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_2_Q,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(15)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_14 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_14_Q_782,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_2_Q,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(14)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_13 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_13_Q,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_2_Q,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(13)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_12 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_12_Q_780,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_2_Q,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(12)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_11 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_11_Q,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_2_Q,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(11)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_10 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_10_Q,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_2_Q,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(10)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_9 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_9_Q,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_2_Q,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(9)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_8 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_8_Q,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_2_Q,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(8)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_7 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_7_Q_775,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_2_Q,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(7)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_6 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_6_Q_774,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_2_Q,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(6)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_5 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_5_Q,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_2_Q,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_4 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_4_Q_772,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_2_Q,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_3 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_3_Q_771,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_2_Q,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_2 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_2_Q_770,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_2_Q,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_1 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_1_Q,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_2_Q,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_0 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_0_Q,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_2_Q,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_sync_rx_enable_data_sync : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_sync_rx_enable_data_in,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_sync_rx_enable_data_sync1
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_sync_rx_enable_data_sync_reg : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_sync_rx_enable_data_sync1,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_sync_rx_enable_data_sync2
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_sync_rx_duplex_data_sync : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      D => NlwRenamedSig_OI_N1,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_sync_rx_duplex_data_sync1
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_sync_rx_duplex_data_sync_reg : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_sync_rx_duplex_data_sync1,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_sync_rx_duplex_data_sync2
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_sync_tx_enable_data_sync : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_sync_tx_enable_data_in,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_sync_tx_enable_data_sync1
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_sync_tx_enable_data_sync_reg : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_sync_tx_enable_data_sync1,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_sync_tx_enable_data_sync2
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_sync_tx_duplex_data_sync : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => tx_axi_clk,
      D => NlwRenamedSig_OI_N1,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_sync_tx_duplex_data_sync1
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_sync_tx_duplex_data_sync_reg : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_sync_tx_duplex_data_sync1,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_sync_tx_duplex_data_sync2
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_BAD_FRAME_INT : FDRE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_BAD_FRAME_COMB,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_BAD_FRAME_INT_322
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_GOOD_FRAME_INT : FDRE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_GOOD_FRAME_COMB,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_GOOD_FRAME_INT_323
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_UNDERRUN_INT : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_underrun_351,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_UNDERRUN_INT_829
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_VALID_INT : FDRE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA_VALID_FINAL_285,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_VALID_INT_321
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_INT_7 : FDRE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA(7),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_INT(7)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_INT_6 : FDRE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA(6),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_INT(6)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_INT_5 : FDRE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA(5),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_INT(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_INT_4 : FDRE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA(4),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_INT(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_INT_3 : FDRE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA(3),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_INT(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_INT_2 : FDRE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA(2),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_INT(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_INT_1 : FDRE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA(1),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_INT(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_INT_0 : FDRE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA(0),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_INT(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_INT_7 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data(7),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_INT(7)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_INT_6 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data(6),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_INT(6)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_INT_5 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data(5),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_INT(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_INT_4 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data(4),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_INT(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_INT_3 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data(3),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_INT(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_INT_2 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data(2),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_INT(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_INT_1 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data(1),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_INT(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_INT_0 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data(0),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_INT(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_COUNT_0 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0127_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_Result(0),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_Mcount_DATA_COUNT_val,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_COUNT(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_COUNT_4 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0127_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_Result(4),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_Mcount_DATA_COUNT_val,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_COUNT(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_COUNT_3 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0127_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_Result(3),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_Mcount_DATA_COUNT_val,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_COUNT(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_COUNT_1 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0127_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_Result(1),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_Mcount_DATA_COUNT_val,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_COUNT(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_COUNT_2 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0127_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_Result(2),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_Mcount_DATA_COUNT_val,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_COUNT(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE_15 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0123_inv1,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0105(0),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_Mcount_DATA_COUNT_val,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE(15)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE_14 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0123_inv1,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0105(1),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_Mcount_DATA_COUNT_val,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE(14)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE_13 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0123_inv1,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0105(2),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_Mcount_DATA_COUNT_val,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE(13)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE_12 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0123_inv1,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0105(3),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_Mcount_DATA_COUNT_val,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE(12)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE_11 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0123_inv1,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0105(4),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_Mcount_DATA_COUNT_val,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE(11)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE_10 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0123_inv1,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0105(5),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_Mcount_DATA_COUNT_val,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE(10)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE_9 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0123_inv1,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0105(6),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_Mcount_DATA_COUNT_val,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE(9)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE_8 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0123_inv1,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0105(7),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_Mcount_DATA_COUNT_val,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE(8)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE_7 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0123_inv1,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0105(8),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_Mcount_DATA_COUNT_val,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE(7)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE_6 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0123_inv1,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0105(9),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_Mcount_DATA_COUNT_val,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE(6)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE_5 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0123_inv1,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0105(10),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_Mcount_DATA_COUNT_val,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE_4 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0123_inv1,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0105(11),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_Mcount_DATA_COUNT_val,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE_3 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0123_inv1,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0105(12),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_Mcount_DATA_COUNT_val,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE_2 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0123_inv1,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0105(13),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_Mcount_DATA_COUNT_val,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE_1 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0123_inv1,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0105(14),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_Mcount_DATA_COUNT_val,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE_0 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0123_inv1,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0105(15),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_Mcount_DATA_COUNT_val,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_OPCODE_EARLY_7 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0100_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA(7),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_OPCODE_EARLY(7)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_OPCODE_EARLY_6 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0100_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA(6),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_OPCODE_EARLY(6)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_OPCODE_EARLY_5 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0100_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA(5),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_OPCODE_EARLY(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_OPCODE_EARLY_4 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0100_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA(4),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_OPCODE_EARLY(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_OPCODE_EARLY_3 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0100_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA(3),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_OPCODE_EARLY(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_OPCODE_EARLY_2 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0100_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA(2),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_OPCODE_EARLY(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_OPCODE_EARLY_1 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0100_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA(1),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_OPCODE_EARLY(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_OPCODE_EARLY_0 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0100_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA(0),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_OPCODE_EARLY(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_MUX_ACK_OUT : MUXF5
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_TX_ACK_IN,
      I1 => NlwRenamedSig_OI_N1,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_MUX_CONTROL_954,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_ACK_COMB
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT_3 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0187_inv_930,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Result(3),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mcount_DATA_COUNT_val,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT_2 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0187_inv_930,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Result(2),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mcount_DATA_COUNT_val,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_STATE_COUNT_FSM_FFd1 : FDR
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_STATE_COUNT_FSM_FFd1_In_932,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_STATE_COUNT_FSM_FFd1_968
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_STATE_COUNT_FSM_FFd2 : FDR
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_STATE_COUNT_FSM_FFd2_In,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_STATE_COUNT_FSM_FFd2_931
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_CONTROL_7 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT_7_Q,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_CONTROL(7)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_CONTROL_6 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT_6_Q,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_CONTROL(6)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_CONTROL_5 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT_5_Q,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_CONTROL(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_CONTROL_4 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT_4_Q,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_CONTROL(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_CONTROL_3 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT_3_Q,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_CONTROL(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_CONTROL_2 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT_2_Q,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_CONTROL(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_CONTROL_1 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT_1_Q,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_CONTROL(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_CONTROL_0 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT_0_Q,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_CONTROL(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_AVAIL_CONTROL : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT_4_GND_28_o_Mux_26_o,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_AVAIL_CONTROL_957
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_ACK_OUT : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_ACK_COMB,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_ACK_OUT_317
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_END_OF_TX_REG : FDSE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_END_OF_TX_INV_38_o,
      S => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_END_OF_TX_REG_956
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_ACK_INT : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_TX_ACK_IN,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_ACK_INT_966
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_AVAIL_IN_REG : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_valid_352,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_AVAIL_IN_REG_967
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_VALUE_HELD_15 : FDRE
    port map (
      C => tx_axi_clk,
      CE => pause_req,
      D => pause_val(15),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_VALUE_HELD(15)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_VALUE_HELD_14 : FDRE
    port map (
      C => tx_axi_clk,
      CE => pause_req,
      D => pause_val(14),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_VALUE_HELD(14)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_VALUE_HELD_13 : FDRE
    port map (
      C => tx_axi_clk,
      CE => pause_req,
      D => pause_val(13),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_VALUE_HELD(13)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_VALUE_HELD_12 : FDRE
    port map (
      C => tx_axi_clk,
      CE => pause_req,
      D => pause_val(12),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_VALUE_HELD(12)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_VALUE_HELD_11 : FDRE
    port map (
      C => tx_axi_clk,
      CE => pause_req,
      D => pause_val(11),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_VALUE_HELD(11)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_VALUE_HELD_10 : FDRE
    port map (
      C => tx_axi_clk,
      CE => pause_req,
      D => pause_val(10),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_VALUE_HELD(10)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_VALUE_HELD_9 : FDRE
    port map (
      C => tx_axi_clk,
      CE => pause_req,
      D => pause_val(9),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_VALUE_HELD(9)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_VALUE_HELD_8 : FDRE
    port map (
      C => tx_axi_clk,
      CE => pause_req,
      D => pause_val(8),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_VALUE_HELD(8)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_VALUE_HELD_7 : FDRE
    port map (
      C => tx_axi_clk,
      CE => pause_req,
      D => pause_val(7),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_VALUE_HELD(7)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_VALUE_HELD_6 : FDRE
    port map (
      C => tx_axi_clk,
      CE => pause_req,
      D => pause_val(6),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_VALUE_HELD(6)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_VALUE_HELD_5 : FDRE
    port map (
      C => tx_axi_clk,
      CE => pause_req,
      D => pause_val(5),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_VALUE_HELD(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_VALUE_HELD_4 : FDRE
    port map (
      C => tx_axi_clk,
      CE => pause_req,
      D => pause_val(4),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_VALUE_HELD(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_VALUE_HELD_3 : FDRE
    port map (
      C => tx_axi_clk,
      CE => pause_req,
      D => pause_val(3),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_VALUE_HELD(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_VALUE_HELD_2 : FDRE
    port map (
      C => tx_axi_clk,
      CE => pause_req,
      D => pause_val(2),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_VALUE_HELD(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_VALUE_HELD_1 : FDRE
    port map (
      C => tx_axi_clk,
      CE => pause_req,
      D => pause_val(1),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_VALUE_HELD(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_VALUE_HELD_0 : FDRE
    port map (
      C => tx_axi_clk,
      CE => pause_req,
      D => pause_val(0),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_VALUE_HELD(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD_47 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0163_inv,
      D => tx_mac_config_vector(79),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(47)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD_46 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0163_inv,
      D => tx_mac_config_vector(78),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(46)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD_45 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0163_inv,
      D => tx_mac_config_vector(77),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(45)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD_44 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0163_inv,
      D => tx_mac_config_vector(76),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(44)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD_43 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0163_inv,
      D => tx_mac_config_vector(75),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(43)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD_42 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0163_inv,
      D => tx_mac_config_vector(74),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(42)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD_41 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0163_inv,
      D => tx_mac_config_vector(73),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(41)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD_40 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0163_inv,
      D => tx_mac_config_vector(72),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(40)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD_39 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0163_inv,
      D => tx_mac_config_vector(71),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(39)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD_38 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0163_inv,
      D => tx_mac_config_vector(70),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(38)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD_37 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0163_inv,
      D => tx_mac_config_vector(69),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(37)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD_36 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0163_inv,
      D => tx_mac_config_vector(68),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(36)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD_35 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0163_inv,
      D => tx_mac_config_vector(67),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(35)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD_34 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0163_inv,
      D => tx_mac_config_vector(66),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(34)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD_33 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0163_inv,
      D => tx_mac_config_vector(65),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(33)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD_32 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0163_inv,
      D => tx_mac_config_vector(64),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(32)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD_31 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0163_inv,
      D => tx_mac_config_vector(63),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(31)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD_30 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0163_inv,
      D => tx_mac_config_vector(62),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(30)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD_29 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0163_inv,
      D => tx_mac_config_vector(61),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(29)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD_28 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0163_inv,
      D => tx_mac_config_vector(60),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(28)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD_27 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0163_inv,
      D => tx_mac_config_vector(59),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(27)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD_26 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0163_inv,
      D => tx_mac_config_vector(58),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(26)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD_25 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0163_inv,
      D => tx_mac_config_vector(57),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(25)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD_24 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0163_inv,
      D => tx_mac_config_vector(56),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(24)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD_23 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0163_inv,
      D => tx_mac_config_vector(55),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(23)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD_22 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0163_inv,
      D => tx_mac_config_vector(54),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(22)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD_21 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0163_inv,
      D => tx_mac_config_vector(53),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(21)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD_20 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0163_inv,
      D => tx_mac_config_vector(52),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(20)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD_19 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0163_inv,
      D => tx_mac_config_vector(51),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(19)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD_18 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0163_inv,
      D => tx_mac_config_vector(50),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(18)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD_17 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0163_inv,
      D => tx_mac_config_vector(49),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(17)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD_16 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0163_inv,
      D => tx_mac_config_vector(48),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(16)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD_15 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0163_inv,
      D => tx_mac_config_vector(47),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(15)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD_14 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0163_inv,
      D => tx_mac_config_vector(46),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(14)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD_13 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0163_inv,
      D => tx_mac_config_vector(45),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(13)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD_12 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0163_inv,
      D => tx_mac_config_vector(44),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(12)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD_11 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0163_inv,
      D => tx_mac_config_vector(43),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(11)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD_10 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0163_inv,
      D => tx_mac_config_vector(42),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(10)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD_9 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0163_inv,
      D => tx_mac_config_vector(41),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(9)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD_8 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0163_inv,
      D => tx_mac_config_vector(40),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(8)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD_7 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0163_inv,
      D => tx_mac_config_vector(39),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(7)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD_6 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0163_inv,
      D => tx_mac_config_vector(38),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(6)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD_5 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0163_inv,
      D => tx_mac_config_vector(37),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD_4 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0163_inv,
      D => tx_mac_config_vector(36),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD_3 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0163_inv,
      D => tx_mac_config_vector(35),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD_2 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0163_inv,
      D => tx_mac_config_vector(34),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD_1 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0163_inv,
      D => tx_mac_config_vector(33),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD_0 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0163_inv,
      D => tx_mac_config_vector(32),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_GOOD_FRAME_IN3 : FDRE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_GOOD_FRAME_IN2_1036,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_GOOD_FRAME_IN3_1035
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_GOOD_FRAME_IN2 : FDRE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_GOOD_FRAME_IN1_1034,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_GOOD_FRAME_IN2_1036
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_REQ_TO_TX : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GOOD_FRAME_INT_284,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_PAUSE_REQ_LOCAL,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_REQ_TO_TX_837
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_GOOD_FRAME_TO_TX : FDRE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_GOOD_FRAME_IN1_GOOD_FRAME_IN3_OR_81_o,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_sync_good_rx_data_in
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_GOOD_FRAME_IN1 : FDRE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GOOD_FRAME_INT_284,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_GOOD_FRAME_IN1_1034
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX_15 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GOOD_FRAME_INT_284,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE(15),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX(15)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX_14 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GOOD_FRAME_INT_284,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE(14),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX(14)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX_13 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GOOD_FRAME_INT_284,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE(13),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX(13)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX_12 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GOOD_FRAME_INT_284,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE(12),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX(12)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX_11 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GOOD_FRAME_INT_284,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE(11),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX(11)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX_10 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GOOD_FRAME_INT_284,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE(10),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX(10)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX_9 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GOOD_FRAME_INT_284,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE(9),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX(9)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX_8 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GOOD_FRAME_INT_284,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE(8),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX(8)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX_7 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GOOD_FRAME_INT_284,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE(7),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX(7)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX_6 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GOOD_FRAME_INT_284,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE(6),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX(6)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX_5 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GOOD_FRAME_INT_284,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE(5),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX_4 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GOOD_FRAME_INT_284,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE(4),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX_3 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GOOD_FRAME_INT_284,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE(3),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX_2 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GOOD_FRAME_INT_284,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE(2),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX_1 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GOOD_FRAME_INT_284,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE(1),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX_0 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GOOD_FRAME_INT_284,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE(0),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_QUANTA_5 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_QUANTA5,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_QUANTA(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_QUANTA_4 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_QUANTA4,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_QUANTA(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_QUANTA_3 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_QUANTA3,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_QUANTA(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_QUANTA_2 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_QUANTA2,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_QUANTA(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_QUANTA_1 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_QUANTA1,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_QUANTA(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_QUANTA_0 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_QUANTA,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_QUANTA(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT_15 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_n0068_inv_1085,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT15,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT(15)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT_14 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_n0068_inv_1085,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT14,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT(14)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT_13 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_n0068_inv_1085,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT13,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT(13)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT_12 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_n0068_inv_1085,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT12,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT(12)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT_11 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_n0068_inv_1085,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT11,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT(11)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT_10 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_n0068_inv_1085,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT10,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT(10)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT_9 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_n0068_inv_1085,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT9,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT(9)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT_8 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_n0068_inv_1085,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT8,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT(8)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT_7 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_n0068_inv_1085,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT7,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT(7)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT_6 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_n0068_inv_1085,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT6,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT(6)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT_5 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_n0068_inv_1085,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT5,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT_4 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_n0068_inv_1085,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT4,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT_3 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_n0068_inv_1085,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT3,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT_2 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_n0068_inv_1085,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT2,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT_1 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_n0068_inv_1085,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT1,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT_0 : FDRE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_n0068_inv_1085,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_xor_15_Q : XORCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy(14),
      LI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut(15),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT15
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_xor_14_Q : XORCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy(13),
      LI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut(14),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT14
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy_14_Q : MUXCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy(13),
      DI => N0,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut(14),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy(14)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_xor_13_Q : XORCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy(12),
      LI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut(13),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT13
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy_13_Q : MUXCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy(12),
      DI => N0,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut(13),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy(13)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_xor_12_Q : XORCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy(11),
      LI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut(12),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT12
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy_12_Q : MUXCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy(11),
      DI => N0,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut(12),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy(12)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_xor_11_Q : XORCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy(10),
      LI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut(11),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT11
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy_11_Q : MUXCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy(10),
      DI => N0,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut(11),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy(11)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_xor_10_Q : XORCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy(9),
      LI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut(10),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT10
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy_10_Q : MUXCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy(9),
      DI => N0,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut(10),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy(10)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_xor_9_Q : XORCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy(8),
      LI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut(9),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT9
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy_9_Q : MUXCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy(8),
      DI => N0,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut(9),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy(9)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_xor_8_Q : XORCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy(7),
      LI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut(8),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT8
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy_8_Q : MUXCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy(7),
      DI => N0,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut(8),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy(8)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_xor_7_Q : XORCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy(6),
      LI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut(7),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT7
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy_7_Q : MUXCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy(6),
      DI => N0,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut(7),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy(7)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_xor_6_Q : XORCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy(5),
      LI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut(6),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT6
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy_6_Q : MUXCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy(5),
      DI => N0,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut(6),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy(6)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_xor_5_Q : XORCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy(4),
      LI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut(5),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT5
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy_5_Q : MUXCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy(4),
      DI => N0,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut(5),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_xor_4_Q : XORCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy(3),
      LI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut(4),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT4
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy_4_Q : MUXCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy(3),
      DI => N0,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut(4),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_xor_3_Q : XORCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy(2),
      LI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut(3),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT3
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy_3_Q : MUXCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy(2),
      DI => N0,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut(3),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_xor_2_Q : XORCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy(1),
      LI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut(2),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT2
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy_2_Q : MUXCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy(1),
      DI => N0,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut(2),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_xor_1_Q : XORCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy(0),
      LI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut(1),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT1
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy_1_Q : MUXCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy(0),
      DI => N0,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut(1),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_xor_0_Q : XORCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mmux_COUNT_SET_GND_31_o_MUX_238_o12_1037,
      LI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut(0),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy_0_Q : MUXCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mmux_COUNT_SET_GND_31_o_MUX_238_o12_1037,
      DI => N0,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut(0),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_cy(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_sync_good_rx_data_sync : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_sync_good_rx_data_in,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_sync_good_rx_data_sync1
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_sync_good_rx_data_sync_reg : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_sync_good_rx_data_sync1,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_sync_good_rx_data_sync2
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_COUNT_SET_REG : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_COUNT_SET_832,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_COUNT_SET_REG_1100
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_GOOD_FRAME_IN_TX_REG : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_sync_good_rx_data_sync2,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_GOOD_FRAME_IN_TX_REG_1093
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_RX_GEN_RX_DV_REG1 : FDR
    port map (
      C => rx_axi_clk,
      D => gmii_rx_dv,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_RX_GEN_RX_DV_REG1_308
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_RX_GEN_RXD_REG1_7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      D => gmii_rxd(7),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_RX_GEN_RXD_REG1(7)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_RX_GEN_RXD_REG1_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      D => gmii_rxd(6),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_RX_GEN_RXD_REG1(6)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_RX_GEN_RXD_REG1_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      D => gmii_rxd(5),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_RX_GEN_RXD_REG1(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_RX_GEN_RXD_REG1_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      D => gmii_rxd(4),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_RX_GEN_RXD_REG1(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_RX_GEN_RXD_REG1_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      D => gmii_rxd(3),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_RX_GEN_RXD_REG1(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_RX_GEN_RXD_REG1_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      D => gmii_rxd(2),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_RX_GEN_RXD_REG1(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_RX_GEN_RXD_REG1_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      D => gmii_rxd(1),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_RX_GEN_RXD_REG1(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_RX_GEN_RXD_REG1_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      D => gmii_rxd(0),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_RX_GEN_RXD_REG1(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_RX_GEN_RX_ER_REG1 : FDR
    port map (
      C => rx_axi_clk,
      D => gmii_rx_er,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_RX_GEN_RX_ER_REG1_307
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_special_pause_address_7_LUT3_special_pause_inst : LUT3
    generic map(
      INIT => X"06"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(1),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(2),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_special_pause_addr_lut(7)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_special_pause_address_6_LUT3_special_pause_inst : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(1),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(2),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_special_pause_addr_lut(6)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_special_pause_address_5_LUT3_special_pause_inst : LUT3
    generic map(
      INIT => X"00"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(1),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(2),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_special_pause_addr_lut(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_special_pause_address_4_LUT3_special_pause_inst : LUT3
    generic map(
      INIT => X"00"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(1),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(2),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_special_pause_addr_lut(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_special_pause_address_3_LUT3_special_pause_inst : LUT3
    generic map(
      INIT => X"00"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(1),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(2),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_special_pause_addr_lut(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_special_pause_address_2_LUT3_special_pause_inst : LUT3
    generic map(
      INIT => X"00"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(1),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(2),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_special_pause_addr_lut(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_special_pause_address_1_LUT3_special_pause_inst : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(1),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(2),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_special_pause_addr_lut(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_special_pause_address_0_LUT3_special_pause_inst : LUT3
    generic map(
      INIT => X"21"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(1),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(2),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_special_pause_addr_lut(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_delay_rx_data_valid : SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => N0,
      A1 => NlwRenamedSig_OI_N1,
      A2 => N0,
      A3 => NlwRenamedSig_OI_N1,
      CE => N0,
      CLK => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_DATA_VALID_EARLY,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_rx_data_valid_srl16,
      Q15 => NLW_U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_delay_rx_data_valid_Q15_UNCONNECTED
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_byte_wide_ram_7_header_field_dist_ram : RAM64X1D
    generic map(
      INIT => X"0000000000000000"
    )
    port map (
      A0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_pipe(0),
      A1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_pipe(1),
      A2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_pipe(2),
      A3 => NlwRenamedSig_OI_N1,
      A4 => NlwRenamedSig_OI_N1,
      A5 => NlwRenamedSig_OI_N1,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_wr_data(7),
      DPRA0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(0),
      DPRA1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(1),
      DPRA2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(2),
      DPRA3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(3),
      DPRA4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(4),
      DPRA5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(5),
      WCLK => rx_axi_clk,
      WE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_wr_1172,
      SPO => NLW_U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_byte_wide_ram_7_header_field_dist_ram_SPO_UNCONNECTED,
      DPO => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_expected_pause_data(7)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_byte_wide_ram_6_header_field_dist_ram : RAM64X1D
    generic map(
      INIT => X"0000000000000000"
    )
    port map (
      A0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_pipe(0),
      A1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_pipe(1),
      A2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_pipe(2),
      A3 => NlwRenamedSig_OI_N1,
      A4 => NlwRenamedSig_OI_N1,
      A5 => NlwRenamedSig_OI_N1,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_wr_data(6),
      DPRA0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(0),
      DPRA1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(1),
      DPRA2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(2),
      DPRA3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(3),
      DPRA4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(4),
      DPRA5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(5),
      WCLK => rx_axi_clk,
      WE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_wr_1172,
      SPO => NLW_U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_byte_wide_ram_6_header_field_dist_ram_SPO_UNCONNECTED,
      DPO => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_expected_pause_data(6)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_byte_wide_ram_5_header_field_dist_ram : RAM64X1D
    generic map(
      INIT => X"0000000000000000"
    )
    port map (
      A0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_pipe(0),
      A1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_pipe(1),
      A2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_pipe(2),
      A3 => NlwRenamedSig_OI_N1,
      A4 => NlwRenamedSig_OI_N1,
      A5 => NlwRenamedSig_OI_N1,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_wr_data(5),
      DPRA0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(0),
      DPRA1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(1),
      DPRA2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(2),
      DPRA3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(3),
      DPRA4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(4),
      DPRA5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(5),
      WCLK => rx_axi_clk,
      WE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_wr_1172,
      SPO => NLW_U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_byte_wide_ram_5_header_field_dist_ram_SPO_UNCONNECTED,
      DPO => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_expected_pause_data(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_byte_wide_ram_4_header_field_dist_ram : RAM64X1D
    generic map(
      INIT => X"0000000000000000"
    )
    port map (
      A0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_pipe(0),
      A1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_pipe(1),
      A2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_pipe(2),
      A3 => NlwRenamedSig_OI_N1,
      A4 => NlwRenamedSig_OI_N1,
      A5 => NlwRenamedSig_OI_N1,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_wr_data(4),
      DPRA0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(0),
      DPRA1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(1),
      DPRA2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(2),
      DPRA3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(3),
      DPRA4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(4),
      DPRA5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(5),
      WCLK => rx_axi_clk,
      WE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_wr_1172,
      SPO => NLW_U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_byte_wide_ram_4_header_field_dist_ram_SPO_UNCONNECTED,
      DPO => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_expected_pause_data(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_byte_wide_ram_3_header_field_dist_ram : RAM64X1D
    generic map(
      INIT => X"0000000000000000"
    )
    port map (
      A0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_pipe(0),
      A1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_pipe(1),
      A2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_pipe(2),
      A3 => NlwRenamedSig_OI_N1,
      A4 => NlwRenamedSig_OI_N1,
      A5 => NlwRenamedSig_OI_N1,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_wr_data(3),
      DPRA0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(0),
      DPRA1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(1),
      DPRA2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(2),
      DPRA3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(3),
      DPRA4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(4),
      DPRA5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(5),
      WCLK => rx_axi_clk,
      WE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_wr_1172,
      SPO => NLW_U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_byte_wide_ram_3_header_field_dist_ram_SPO_UNCONNECTED,
      DPO => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_expected_pause_data(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_byte_wide_ram_2_header_field_dist_ram : RAM64X1D
    generic map(
      INIT => X"0000000000000000"
    )
    port map (
      A0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_pipe(0),
      A1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_pipe(1),
      A2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_pipe(2),
      A3 => NlwRenamedSig_OI_N1,
      A4 => NlwRenamedSig_OI_N1,
      A5 => NlwRenamedSig_OI_N1,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_wr_data(2),
      DPRA0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(0),
      DPRA1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(1),
      DPRA2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(2),
      DPRA3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(3),
      DPRA4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(4),
      DPRA5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(5),
      WCLK => rx_axi_clk,
      WE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_wr_1172,
      SPO => NLW_U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_byte_wide_ram_2_header_field_dist_ram_SPO_UNCONNECTED,
      DPO => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_expected_pause_data(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_byte_wide_ram_1_header_field_dist_ram : RAM64X1D
    generic map(
      INIT => X"0000000000000000"
    )
    port map (
      A0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_pipe(0),
      A1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_pipe(1),
      A2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_pipe(2),
      A3 => NlwRenamedSig_OI_N1,
      A4 => NlwRenamedSig_OI_N1,
      A5 => NlwRenamedSig_OI_N1,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_wr_data(1),
      DPRA0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(0),
      DPRA1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(1),
      DPRA2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(2),
      DPRA3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(3),
      DPRA4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(4),
      DPRA5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(5),
      WCLK => rx_axi_clk,
      WE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_wr_1172,
      SPO => NLW_U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_byte_wide_ram_1_header_field_dist_ram_SPO_UNCONNECTED,
      DPO => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_expected_pause_data(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_byte_wide_ram_0_header_field_dist_ram : RAM64X1D
    generic map(
      INIT => X"0000000000000000"
    )
    port map (
      A0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_pipe(0),
      A1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_pipe(1),
      A2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_pipe(2),
      A3 => NlwRenamedSig_OI_N1,
      A4 => NlwRenamedSig_OI_N1,
      A5 => NlwRenamedSig_OI_N1,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_wr_data(0),
      DPRA0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(0),
      DPRA1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(1),
      DPRA2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(2),
      DPRA3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(3),
      DPRA4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(4),
      DPRA5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(5),
      WCLK => rx_axi_clk,
      WE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_wr_1172,
      SPO => NLW_U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_byte_wide_ram_0_header_field_dist_ram_SPO_UNCONNECTED,
      DPO => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_expected_pause_data(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_2 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_2_PWR_51_o_LessThan_17_o,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Result_2_1,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mcount_load_count_val,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_0 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_2_PWR_51_o_LessThan_17_o,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Result_0_1,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mcount_load_count_val,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter_0 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_n0287_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Result(0),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mcount_counter_val,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_1 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_2_PWR_51_o_LessThan_17_o,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Result_1_1,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mcount_load_count_val,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter_5 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_n0287_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Result(5),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mcount_counter_val,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter_4 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_n0287_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Result(4),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mcount_counter_val,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter_3 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_n0287_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Result(3),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mcount_counter_val,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter_2 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_n0287_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Result(2),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mcount_counter_val,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter_1 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_n0287_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Result(1),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mcount_counter_val,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_sync_update_data_sync : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      D => NlwRenamedSig_OI_N1,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_sync_update_data_sync1
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_sync_update_data_sync_reg : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_sync_update_data_sync1,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_sync_update_data_sync2
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_resync_promiscuous_mode_data_sync : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_resync_promiscuous_mode_data_in,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_resync_promiscuous_mode_data_sync1
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_resync_promiscuous_mode_data_sync_reg : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_resync_promiscuous_mode_data_sync1,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_resync_promiscuous_mode_data_sync2
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_pauseaddressmatch : FDR
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_pauseaddressmatch_int_1164,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_pauseaddressmatch_304
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_pauseaddressmatch_int : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter_5_GND_49_o_equal_14_o1,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_pause_match_1168,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Reset_OR_DriverANDClockEnable,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_pauseaddressmatch_int_1164
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_pause_match_reg : FDR
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_pause_match_reg_rx_data_7_MUX_940_o,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_pause_match_reg_1180
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_specialpauseaddressmatch : FDR
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_specialpauseaddressmatch_int_1163,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_specialpauseaddressmatch_303
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_specialpauseaddressmatch_int : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter_5_GND_49_o_equal_14_o1,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_special_pause_match_1167,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Reset_OR_DriverANDClockEnable,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_specialpauseaddressmatch_int_1163
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_wr : FDR
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_pipe_2_PWR_51_o_LessThan_20_o,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mcount_load_count_val,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_wr_1172
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_special_pause_match_reg : FDR
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_special_pause_match_comb,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_special_pause_match_reg_1179
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_broadcastaddressmatch : FDR
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_broadcastaddressmatch_int_1165,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_broadcastaddressmatch_305
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_wr_data_7 : FD
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_2_pause_addr_7_wide_mux_27_OUT_7_Q,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_wr_data(7)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_wr_data_6 : FD
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_2_pause_addr_7_wide_mux_27_OUT_6_Q,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_wr_data(6)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_wr_data_5 : FD
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_2_pause_addr_7_wide_mux_27_OUT_5_Q,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_wr_data(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_wr_data_4 : FD
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_2_pause_addr_7_wide_mux_27_OUT_4_Q,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_wr_data(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_wr_data_3 : FD
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_2_pause_addr_7_wide_mux_27_OUT_3_Q,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_wr_data(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_wr_data_2 : FD
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_2_pause_addr_7_wide_mux_27_OUT_2_Q,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_wr_data(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_wr_data_1 : FD
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_2_pause_addr_7_wide_mux_27_OUT_1_Q,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_wr_data(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_wr_data_0 : FD
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_2_pause_addr_7_wide_mux_27_OUT_0_Q,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_wr_data(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_broadcastaddressmatch_int : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter_5_GND_49_o_equal_14_o1,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_broadcast_match_1169,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Reset_OR_DriverANDClockEnable,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_broadcastaddressmatch_int_1165
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_pipe_2 : FDR
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count(2),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mcount_load_count_val,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_pipe(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_pipe_1 : FDR
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count(1),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mcount_load_count_val,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_pipe(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_pipe_0 : FDR
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count(0),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mcount_load_count_val,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_pipe(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_rx_data_valid_srl16_reg2 : FDR
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_rx_data_valid_srl16_reg1_1178,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_rx_data_valid_srl16_reg2_1177
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_rx_data_valid_srl16_reg1 : FDR
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_rx_data_valid_srl16,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_rx_data_valid_srl16_reg1_1178
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_rx_data_valid_reg2 : FDR
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_rx_data_valid_reg1_1176,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_rx_data_valid_reg2_1182
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_rx_data_valid_reg1 : FDR
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_DATA_VALID_EARLY,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_rx_data_valid_reg1_1176
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_broadcast_byte_match : FDR
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_broadcast_byte_match_rx_data_7_MUX_920_o,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_broadcast_byte_match_1181
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_state_FSM_FFd2 : FDR
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_state_FSM_FFd2_In,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_state_FSM_FFd2_1204
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_fsmfake0_0 : FDRE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_next_rx_state(0),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_fsmfake0(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_mac_tdata_7 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_state_1_GND_23_o_equal_28_o,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_data_reg(7),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_mac_tdata(7)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_mac_tdata_6 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_state_1_GND_23_o_equal_28_o,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_data_reg(6),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_mac_tdata(6)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_mac_tdata_5 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_state_1_GND_23_o_equal_28_o,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_data_reg(5),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_mac_tdata(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_mac_tdata_4 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_state_1_GND_23_o_equal_28_o,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_data_reg(4),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_mac_tdata(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_mac_tdata_3 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_state_1_GND_23_o_equal_28_o,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_data_reg(3),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_mac_tdata(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_mac_tdata_2 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_state_1_GND_23_o_equal_28_o,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_data_reg(2),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_mac_tdata(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_mac_tdata_1 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_state_1_GND_23_o_equal_28_o,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_data_reg(1),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_mac_tdata(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_mac_tdata_0 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_state_1_GND_23_o_equal_28_o,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_data_reg(0),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_mac_tdata(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_mac_tuser : FDR
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_next_rx_state_1_rx_enable_AND_7_o,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_mac_tuser_263
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_data_reg_7 : FDE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_INT(7),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_data_reg(7)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_data_reg_6 : FDE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_INT(6),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_data_reg(6)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_data_reg_5 : FDE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_INT(5),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_data_reg(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_data_reg_4 : FDE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_INT(4),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_data_reg(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_data_reg_3 : FDE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_INT(3),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_data_reg(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_data_reg_2 : FDE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_INT(2),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_data_reg(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_data_reg_1 : FDE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_INT(1),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_data_reg(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_data_reg_0 : FDE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_INT(0),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_data_reg(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_0 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_ENABLE_REG_1315,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_0_Q,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_1 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_ENABLE_REG_1315,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_1_Q,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_2 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_ENABLE_REG_1315,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_2_Q_1273,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_3 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_ENABLE_REG_1315,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_3_Q_1272,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_4 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_ENABLE_REG_1315,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_4_Q_1271,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_5 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_ENABLE_REG_1315,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_5_Q,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_6 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_ENABLE_REG_1315,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_6_Q_1269,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(6)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_7 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_ENABLE_REG_1315,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_7_Q_1268,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(7)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_8 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_ENABLE_REG_1315,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_8_Q,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(8)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_9 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_ENABLE_REG_1315,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_9_Q,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(9)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_10 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_ENABLE_REG_1315,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_10_Q,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(10)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_11 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_ENABLE_REG_1315,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_11_Q,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(11)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_12 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_ENABLE_REG_1315,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_12_Q_1263,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(12)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_13 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_ENABLE_REG_1315,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_13_Q,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(13)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_14 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_ENABLE_REG_1315,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_14_Q_1261,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(14)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_15 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_ENABLE_REG_1315,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_15_Q,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(15)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_16 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_ENABLE_REG_1315,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_16_Q_1259,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(16)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_17 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_ENABLE_REG_1315,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_17_Q,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(17)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_18 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_ENABLE_REG_1315,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_18_Q_1257,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(18)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_19 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_ENABLE_REG_1315,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_19_Q,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(19)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_20 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_ENABLE_REG_1315,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_20_Q,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(20)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_21 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_ENABLE_REG_1315,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_21_Q,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(21)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_22 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_ENABLE_REG_1315,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_22_Q,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(22)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_ENABLE_REG_1315,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_23_Q,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(23)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_24 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_ENABLE_REG_1315,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_24_Q_1251,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(24)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_25 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_ENABLE_REG_1315,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_25_Q,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(25)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_26 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_ENABLE_REG_1315,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_26_Q_1249,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(26)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_27 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_ENABLE_REG_1315,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_27_Q,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(27)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_28 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_ENABLE_REG_1315,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_28_Q_1247,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(28)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_29 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_ENABLE_REG_1315,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_29_Q,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(29)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_30 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_ENABLE_REG_1315,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_30_Q,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(30)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_31 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_ENABLE_REG_1315,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_31_Q,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(31)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DELAY_RX_ERR : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => N0,
      A1 => NlwRenamedSig_OI_N1,
      A2 => N0,
      A3 => NlwRenamedSig_OI_N1,
      CE => N0,
      CLK => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_ERR_REG1_1334,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_ERR_REG5
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DELAY_RX_DV2 : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => NlwRenamedSig_OI_N1,
      A1 => N0,
      A2 => NlwRenamedSig_OI_N1,
      A3 => NlwRenamedSig_OI_N1,
      CE => N0,
      CLK => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_DV_REG3_1337,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_DV_REG5
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DELAY_RX_DV1 : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => N0,
      A1 => NlwRenamedSig_OI_N1,
      A2 => NlwRenamedSig_OI_N1,
      A3 => NlwRenamedSig_OI_N1,
      CE => N0,
      CLK => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_DV_REG1_1338,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_DV_REG2
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DELAY_RXD_BUS_0_DELAY_RXD : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => N0,
      A1 => NlwRenamedSig_OI_N1,
      A2 => N0,
      A3 => NlwRenamedSig_OI_N1,
      CE => N0,
      CLK => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG1(0),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG5(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DELAY_RXD_BUS_1_DELAY_RXD : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => N0,
      A1 => NlwRenamedSig_OI_N1,
      A2 => N0,
      A3 => NlwRenamedSig_OI_N1,
      CE => N0,
      CLK => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG1(1),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG5(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DELAY_RXD_BUS_2_DELAY_RXD : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => N0,
      A1 => NlwRenamedSig_OI_N1,
      A2 => N0,
      A3 => NlwRenamedSig_OI_N1,
      CE => N0,
      CLK => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG1(2),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG5(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DELAY_RXD_BUS_3_DELAY_RXD : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => N0,
      A1 => NlwRenamedSig_OI_N1,
      A2 => N0,
      A3 => NlwRenamedSig_OI_N1,
      CE => N0,
      CLK => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG1(3),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG5(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DELAY_RXD_BUS_4_DELAY_RXD : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => N0,
      A1 => NlwRenamedSig_OI_N1,
      A2 => N0,
      A3 => NlwRenamedSig_OI_N1,
      CE => N0,
      CLK => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG1(4),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG5(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DELAY_RXD_BUS_5_DELAY_RXD : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => N0,
      A1 => NlwRenamedSig_OI_N1,
      A2 => N0,
      A3 => NlwRenamedSig_OI_N1,
      CE => N0,
      CLK => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG1(5),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG5(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DELAY_RXD_BUS_6_DELAY_RXD : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => N0,
      A1 => NlwRenamedSig_OI_N1,
      A2 => N0,
      A3 => NlwRenamedSig_OI_N1,
      CE => N0,
      CLK => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG1(6),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG5(6)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DELAY_RXD_BUS_7_DELAY_RXD : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => N0,
      A1 => NlwRenamedSig_OI_N1,
      A2 => N0,
      A3 => NlwRenamedSig_OI_N1,
      CE => N0,
      CLK => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG1(7),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG5(7)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DELAY_BROADCASTADDRESSMATCH : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => N0,
      A1 => NlwRenamedSig_OI_N1,
      A2 => N0,
      A3 => NlwRenamedSig_OI_N1,
      CE => N0,
      CLK => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_broadcastaddressmatch_305,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_BROADCASTADDRESSMATCH_DELAY
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_BAD_FRAME_INT : FDRE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_SUCCESS_FRAME_FAILURE_MUX_864_o,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Reset_OR_DriverANDClockEnable1,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_BAD_FRAME_INT_283
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GOOD_FRAME_INT : FDRE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GND_41_o_FRAME_SUCCESS_MUX_863_o,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Reset_OR_DriverANDClockEnable1,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GOOD_FRAME_INT_284
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR_23 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_LENGTH_TYPE_ERR_1341,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR(23)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR_21 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_VLAN_FRAME_1354,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR(21)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR_20 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_OUT_OF_BOUNDS_ERR_1342,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR(20)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR_19 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_CONTROL_FRAME_281,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR(19)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR_18 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_STATISTICS_LENGTH(13),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR(18)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR_17 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_STATISTICS_LENGTH(12),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR(17)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR_16 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_STATISTICS_LENGTH(11),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR(16)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR_15 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_STATISTICS_LENGTH(10),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR(15)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR_14 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_STATISTICS_LENGTH(9),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR(14)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR_13 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_STATISTICS_LENGTH(8),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR(13)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR_12 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_STATISTICS_LENGTH(7),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR(12)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR_11 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_STATISTICS_LENGTH(6),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR(11)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR_10 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_STATISTICS_LENGTH(5),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR(10)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_STATISTICS_LENGTH(4),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR(9)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_STATISTICS_LENGTH(3),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR(8)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_STATISTICS_LENGTH(2),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR(7)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_STATISTICS_LENGTH(1),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR(6)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_STATISTICS_LENGTH(0),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_MULTICAST_FRAME_1353,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_BROADCASTADDRESSMATCH_DELAY,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_CRC_ERR_1343,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_BAD_FRAME_1339,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_GOOD_FRAME_1340,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VALID : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_STATISTICS_VALID_1344,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VALID_264
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_DV_REG7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_DV_REG6_1336,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_DV_REG7_1335
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_DV_REG6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_DV_REG5,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_DV_REG6_1336
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG6(7),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(7)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG6(6),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(6)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG6(5),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG6(4),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG6(3),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG6(2),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG6(1),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG6(0),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_ERR_REG7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_ERR_REG6_1333,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_ERR_REG7_1332
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG6_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG5(7),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG6(7)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG6_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG5(6),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG6(6)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG6_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG5(5),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG6(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG6_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG5(4),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG6(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG6_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG5(3),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG6(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG6_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG5(2),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG6(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG6_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG5(1),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG6(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG6_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG5(0),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG6(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_ERR_REG6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_ERR_REG5,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_ERR_REG6_1333
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_DV_REG3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_DV_REG2,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_DV_REG3_1337
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MAX_FRAME_LENGTH_HELD_14 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT_14_Q,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MAX_FRAME_LENGTH_HELD(14)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MAX_FRAME_LENGTH_HELD_13 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT_13_Q,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MAX_FRAME_LENGTH_HELD(13)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MAX_FRAME_LENGTH_HELD_12 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT_12_Q,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MAX_FRAME_LENGTH_HELD(12)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MAX_FRAME_LENGTH_HELD_11 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT_11_Q,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MAX_FRAME_LENGTH_HELD(11)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MAX_FRAME_LENGTH_HELD_10 : FDSE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT_10_Q,
      S => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MAX_FRAME_LENGTH_HELD(10)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MAX_FRAME_LENGTH_HELD_9 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT_9_Q,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MAX_FRAME_LENGTH_HELD(9)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MAX_FRAME_LENGTH_HELD_8 : FDSE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT_8_Q,
      S => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MAX_FRAME_LENGTH_HELD(8)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MAX_FRAME_LENGTH_HELD_7 : FDSE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT_7_Q,
      S => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MAX_FRAME_LENGTH_HELD(7)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MAX_FRAME_LENGTH_HELD_6 : FDSE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT_6_Q,
      S => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MAX_FRAME_LENGTH_HELD(6)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MAX_FRAME_LENGTH_HELD_5 : FDSE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT_5_Q,
      S => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MAX_FRAME_LENGTH_HELD(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MAX_FRAME_LENGTH_HELD_4 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT_4_Q,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MAX_FRAME_LENGTH_HELD(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MAX_FRAME_LENGTH_HELD_3 : FDSE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT_3_Q,
      S => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MAX_FRAME_LENGTH_HELD(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MAX_FRAME_LENGTH_HELD_2 : FDSE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT_2_Q,
      S => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MAX_FRAME_LENGTH_HELD(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MAX_FRAME_LENGTH_HELD_1 : FDSE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT_1_Q,
      S => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MAX_FRAME_LENGTH_HELD(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MAX_FRAME_LENGTH_HELD_0 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT_0_Q,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MAX_FRAME_LENGTH_HELD(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FALSE_CARR_FLAG : FDRE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_PRE_FALSE_CARR_FLAG,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FALSE_CARR_FLAG_1305
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_IFG_FLAG : FDRE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_PRE_IFG_FLAG,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_IFG_FLAG_1306
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_EXTENSION_FLAG : FDRE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GND_41_o_RX_DV_REG6_AND_324_o,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_EXTENSION_FLAG_1307
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MAX_FRAME_ENABLE_HELD : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG,
      D => rx_mac_config_vector(14),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MAX_FRAME_ENABLE_HELD_1309
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_PAUSE_LT_CHECK_HELD : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG,
      D => rx_mac_config_vector(9),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_PAUSE_LT_CHECK_HELD_1310
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_SFD_FLAG : FDRE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_PWR_43_o_RX_ERR_REG6_AND_322_o,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_SFD_FLAG_1308
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_LT_CHECK_HELD : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG,
      D => rx_mac_config_vector(8),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_LT_CHECK_HELD_1311
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_CRC_MODE_HELD : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG,
      D => rx_mac_config_vector(3),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_CRC_MODE_HELD_1312
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_VLAN_ENABLE_HELD : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG,
      D => rx_mac_config_vector(2),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_VLAN_ENABLE_HELD_1313
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_JUMBO_FRAMES_HELD : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG,
      D => rx_mac_config_vector(4),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_JUMBO_FRAMES_HELD_1314
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_ENABLE_REG : FDRE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => rx_mac_config_vector(1),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_ENABLE_REG_1315
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_ERR_REG1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_RX_GEN_RX_ER_REG1_307,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_ERR_REG1_1334
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_DV_REG1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_RX_GEN_RX_DV_REG1_308,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_DV_REG1_1338
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG1_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_RX_GEN_RXD_REG1(7),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG1(7)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG1_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_RX_GEN_RXD_REG1(6),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG1(6)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG1_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_RX_GEN_RXD_REG1(5),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG1(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG1_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_RX_GEN_RXD_REG1(4),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG1(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG1_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_RX_GEN_RXD_REG1(3),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG1(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG1_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_RX_GEN_RXD_REG1(2),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG1(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG1_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_RX_GEN_RXD_REG1(1),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG1(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG1_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_RX_GEN_RXD_REG1(0),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG1(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_FIELD_CONTROL_5 : FDRE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_FIELD_CONTROL_4_GND_44_o_MUX_681_o,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_FIELD_CONTROL(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_FIELD_CONTROL_4 : FDRE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_FIELD_CONTROL_3_GND_44_o_MUX_682_o,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_FIELD_CONTROL(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_FIELD_CONTROL_3 : FDRE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_FIELD_CONTROL_2_GND_44_o_MUX_683_o,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_FIELD_CONTROL(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_FIELD_CONTROL_2 : FDRE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_FIELD_CONTROL_1_GND_44_o_MUX_684_o,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_FIELD_CONTROL(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_FIELD_CONTROL_1 : FDRE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_GND_44_o_FIELD_CONTROL_0_MUX_679_o,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_FIELD_CONTROL(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_FIELD_CONTROL_0 : FDSE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_PWR_46_o_FIELD_CONTROL_5_MUX_680_o,
      S => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_FIELD_CONTROL(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_CRC_FIELD : FDRE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_CRC_FIELD_END_DATA_OR_200_o,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_CRC_FIELD_1390
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_DAT_FIELD : FDRE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_RX_DV_REG6_DAT_FIELD_AND_353_o,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_DAT_FIELD_1391
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_LEN_FIELD : FDRE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_RX_DV_REG6_LEN_FIELD_AND_350_o,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_LEN_FIELD_1392
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_DEST_ADDRESS_FIELD : FDRE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_RX_DV_REG6_DEST_ADDRESS_FIELD_AND_344_o,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_DEST_ADDRESS_FIELD_1394
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_END_EXT : FDRE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_RX_ERR_REG5_END_EXT_AND_333_o,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_END_EXT_1443
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_END_FRAME : FDRE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_RX_DV_REG6_RX_ERR_REG6_OR_193_o_1431,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_END_FRAME_1849
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_xor_14_Q : XORCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy(13),
      LI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_xor_14_rt_1821,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result(14)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_xor_13_Q : XORCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy(12),
      LI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_13_rt_1798,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result(13)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_13_Q : MUXCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy(12),
      DI => NlwRenamedSig_OI_N1,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_13_rt_1798,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy(13)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_xor_12_Q : XORCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy(11),
      LI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_12_rt_1799,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result(12)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_12_Q : MUXCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy(11),
      DI => NlwRenamedSig_OI_N1,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_12_rt_1799,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy(12)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_xor_11_Q : XORCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy(10),
      LI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_11_rt_1800,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result(11)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_11_Q : MUXCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy(10),
      DI => NlwRenamedSig_OI_N1,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_11_rt_1800,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy(11)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_xor_10_Q : XORCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy(9),
      LI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_10_rt_1801,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result(10)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_10_Q : MUXCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy(9),
      DI => NlwRenamedSig_OI_N1,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_10_rt_1801,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy(10)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_xor_9_Q : XORCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy(8),
      LI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_9_rt_1802,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result(9)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_9_Q : MUXCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy(8),
      DI => NlwRenamedSig_OI_N1,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_9_rt_1802,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy(9)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_xor_8_Q : XORCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy(7),
      LI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_8_rt_1803,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result(8)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_8_Q : MUXCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy(7),
      DI => NlwRenamedSig_OI_N1,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_8_rt_1803,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy(8)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_xor_7_Q : XORCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy(6),
      LI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_7_rt_1804,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result(7)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_7_Q : MUXCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy(6),
      DI => NlwRenamedSig_OI_N1,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_7_rt_1804,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy(7)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_xor_6_Q : XORCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy(5),
      LI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_6_rt_1805,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result(6)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_6_Q : MUXCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy(5),
      DI => NlwRenamedSig_OI_N1,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_6_rt_1805,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy(6)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_xor_5_Q : XORCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy(4),
      LI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_5_rt_1806,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_5_Q : MUXCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy(4),
      DI => NlwRenamedSig_OI_N1,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_5_rt_1806,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_xor_4_Q : XORCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy(3),
      LI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_4_rt_1807,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_4_Q : MUXCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy(3),
      DI => NlwRenamedSig_OI_N1,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_4_rt_1807,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_xor_3_Q : XORCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy(2),
      LI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_3_rt_1808,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_3_Q : MUXCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy(2),
      DI => NlwRenamedSig_OI_N1,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_3_rt_1808,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_xor_2_Q : XORCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy(1),
      LI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_2_rt_1809,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_2_Q : MUXCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy(1),
      DI => NlwRenamedSig_OI_N1,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_2_rt_1809,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_xor_1_Q : XORCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy(0),
      LI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_1_rt_1810,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_1_Q : MUXCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy(0),
      DI => NlwRenamedSig_OI_N1,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_1_rt_1810,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_xor_0_Q : XORCY
    port map (
      CI => NlwRenamedSig_OI_N1,
      LI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_lut(0),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_0_Q : MUXCY
    port map (
      CI => NlwRenamedSig_OI_N1,
      DI => N0,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_lut(0),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_xor_10_Q : XORCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_9_Q_1460,
      LI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_xor_10_rt_1822,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result_10_1
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_xor_9_Q : XORCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_8_Q_1461,
      LI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_9_rt_1811,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result_9_1
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_9_Q : MUXCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_8_Q_1461,
      DI => NlwRenamedSig_OI_N1,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_9_rt_1811,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_9_Q_1460
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_xor_8_Q : XORCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_7_Q_1462,
      LI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_8_rt_1812,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result_8_1
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_8_Q : MUXCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_7_Q_1462,
      DI => NlwRenamedSig_OI_N1,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_8_rt_1812,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_8_Q_1461
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_xor_7_Q : XORCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_6_Q_1463,
      LI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_7_rt_1813,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result_7_1
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_7_Q : MUXCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_6_Q_1463,
      DI => NlwRenamedSig_OI_N1,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_7_rt_1813,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_7_Q_1462
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_xor_6_Q : XORCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_5_Q_1464,
      LI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_6_rt_1814,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result_6_1
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_6_Q : MUXCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_5_Q_1464,
      DI => NlwRenamedSig_OI_N1,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_6_rt_1814,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_6_Q_1463
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_xor_5_Q : XORCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_4_Q_1465,
      LI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_5_rt_1815,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result_5_1
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_5_Q : MUXCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_4_Q_1465,
      DI => NlwRenamedSig_OI_N1,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_5_rt_1815,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_5_Q_1464
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_xor_4_Q : XORCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_3_Q_1466,
      LI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_4_rt_1816,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result_4_1
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_4_Q : MUXCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_3_Q_1466,
      DI => NlwRenamedSig_OI_N1,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_4_rt_1816,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_4_Q_1465
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_xor_3_Q : XORCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_2_Q_1467,
      LI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_3_rt_1817,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result_3_1
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_3_Q : MUXCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_2_Q_1467,
      DI => NlwRenamedSig_OI_N1,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_3_rt_1817,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_3_Q_1466
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_xor_2_Q : XORCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_1_Q_1468,
      LI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_2_rt_1818,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result_2_1
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_2_Q : MUXCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_1_Q_1468,
      DI => NlwRenamedSig_OI_N1,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_2_rt_1818,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_2_Q_1467
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_xor_1_Q : XORCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_0_Q_1469,
      LI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_1_rt_1819,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result_1_1
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_1_Q : MUXCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_0_Q_1469,
      DI => NlwRenamedSig_OI_N1,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_1_rt_1819,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_1_Q_1468
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_xor_0_Q : XORCY
    port map (
      CI => NlwRenamedSig_OI_N1,
      LI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_lut_0_Q,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result_0_1
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_0_Q : MUXCY
    port map (
      CI => NlwRenamedSig_OI_N1,
      DI => N0,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_lut_0_Q,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_0_Q_1469
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_14_0_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_n0405_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result_0_1,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_Reset_OR_DriverANDClockEnable,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_14_0_Q(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_14_0_10 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_n0405_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result_10_1,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_Reset_OR_DriverANDClockEnable,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_14_0_Q(10)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_14_0_9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_n0405_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result_9_1,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_Reset_OR_DriverANDClockEnable,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_14_0_Q(9)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_14_0_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_n0405_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result_7_1,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_Reset_OR_DriverANDClockEnable,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_14_0_Q(7)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_14_0_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_n0405_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result_6_1,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_Reset_OR_DriverANDClockEnable,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_14_0_Q(6)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_14_0_8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_n0405_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result_8_1,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_Reset_OR_DriverANDClockEnable,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_14_0_Q(8)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_14_0_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_n0405_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result_5_1,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_Reset_OR_DriverANDClockEnable,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_14_0_Q(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_14_0_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_n0405_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result_4_1,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_Reset_OR_DriverANDClockEnable,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_14_0_Q(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_14_0_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_n0405_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result_3_1,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_Reset_OR_DriverANDClockEnable,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_14_0_Q(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_14_0_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_n0405_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result_2_1,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_Reset_OR_DriverANDClockEnable,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_14_0_Q(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_14_0_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_n0405_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result_1_1,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_Reset_OR_DriverANDClockEnable,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_14_0_Q(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER_14 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_RX_DV_REG_FRAME_COUNTER_14_AND_404_o,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result(14),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_val,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(14)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER_13 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_RX_DV_REG_FRAME_COUNTER_14_AND_404_o,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result(13),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_val,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(13)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER_12 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_RX_DV_REG_FRAME_COUNTER_14_AND_404_o,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result(12),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_val,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(12)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER_11 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_RX_DV_REG_FRAME_COUNTER_14_AND_404_o,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result(11),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_val,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(11)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER_9 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_RX_DV_REG_FRAME_COUNTER_14_AND_404_o,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result(9),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_val,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(9)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER_8 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_RX_DV_REG_FRAME_COUNTER_14_AND_404_o,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result(8),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_val,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(8)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER_10 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_RX_DV_REG_FRAME_COUNTER_14_AND_404_o,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result(10),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_val,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(10)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER_7 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_RX_DV_REG_FRAME_COUNTER_14_AND_404_o,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result(7),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_val,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(7)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER_6 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_RX_DV_REG_FRAME_COUNTER_14_AND_404_o,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result(6),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_val,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(6)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER_5 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_RX_DV_REG_FRAME_COUNTER_14_AND_404_o,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result(5),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_val,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER_4 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_RX_DV_REG_FRAME_COUNTER_14_AND_404_o,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result(4),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_val,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER_2 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_RX_DV_REG_FRAME_COUNTER_14_AND_404_o,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result(2),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_val,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER_1 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_RX_DV_REG_FRAME_COUNTER_14_AND_404_o,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result(1),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_val,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER_3 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_RX_DV_REG_FRAME_COUNTER_14_AND_404_o,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result(3),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_val,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER_0 : FDRE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_RX_DV_REG_FRAME_COUNTER_14_AND_404_o,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Result(0),
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_val,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_VLAN_FRAME : FDRE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_VLAN_MATCH(1),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_VLAN_FRAME_1354
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE_10 : FDSE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_n0388_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE_15_PWR_47_o_mux_2_OUT_10_Q,
      S => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE(10)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE_9 : FDSE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_n0388_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE_15_PWR_47_o_mux_2_OUT_9_Q,
      S => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE(9)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE_8 : FDSE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_n0388_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE_15_PWR_47_o_mux_2_OUT_8_Q,
      S => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE(8)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE_7 : FDSE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_n0388_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE_15_PWR_47_o_mux_2_OUT_7_Q,
      S => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE(7)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE_6 : FDSE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_n0388_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE_15_PWR_47_o_mux_2_OUT_6_Q,
      S => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE(6)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE_5 : FDSE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_n0388_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE_15_PWR_47_o_mux_2_OUT_5_Q,
      S => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE_4 : FDSE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_n0388_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE_15_PWR_47_o_mux_2_OUT_4_Q,
      S => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE_3 : FDSE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_n0388_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE_15_PWR_47_o_mux_2_OUT_3_Q,
      S => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE_2 : FDSE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_n0388_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE_15_PWR_47_o_mux_2_OUT_2_Q,
      S => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE_1 : FDSE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_n0388_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE_15_PWR_47_o_mux_2_OUT_1_Q,
      S => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE_0 : FDSE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_n0388_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE_15_PWR_47_o_mux_2_OUT_0_Q,
      S => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_VLAN_MATCH_1 : FDRE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_VLAN_MATCH_1_GND_45_o_MUX_812_o,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_VLAN_MATCH(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_VLAN_MATCH_0 : FDRE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_VLAN_ENABLE_PWR_47_o_AND_411_o,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_VLAN_MATCH(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_ADD_CONTROL_FRAME : FDRE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_ADD_CONTROL_FRAME_INT_1556,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_ADD_CONTROL_FRAME_282
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_CONTROL_FRAME : FDRE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_CONTROL_FRAME_INT_1539,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_CONTROL_FRAME_281
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_MULTICAST_FRAME : FDRE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_MULTICAST_MATCH_1540,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_MULTICAST_FRAME_1353
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_ADD_CONTROL_FRAME_INT : FDRE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_ADD_CONTROL_ENABLE_1541,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_ADD_CONTROL_FRAME_INT_1556
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_STATISTICS_LENGTH_13 : FDE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_RX_DV_REG_FRAME_COUNTER_14_AND_404_o,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(13),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_STATISTICS_LENGTH(13)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_STATISTICS_LENGTH_12 : FDE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_RX_DV_REG_FRAME_COUNTER_14_AND_404_o,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(12),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_STATISTICS_LENGTH(12)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_STATISTICS_LENGTH_11 : FDE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_RX_DV_REG_FRAME_COUNTER_14_AND_404_o,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(11),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_STATISTICS_LENGTH(11)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_STATISTICS_LENGTH_10 : FDE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_RX_DV_REG_FRAME_COUNTER_14_AND_404_o,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(10),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_STATISTICS_LENGTH(10)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_STATISTICS_LENGTH_9 : FDE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_RX_DV_REG_FRAME_COUNTER_14_AND_404_o,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(9),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_STATISTICS_LENGTH(9)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_STATISTICS_LENGTH_8 : FDE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_RX_DV_REG_FRAME_COUNTER_14_AND_404_o,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(8),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_STATISTICS_LENGTH(8)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_STATISTICS_LENGTH_7 : FDE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_RX_DV_REG_FRAME_COUNTER_14_AND_404_o,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(7),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_STATISTICS_LENGTH(7)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_STATISTICS_LENGTH_6 : FDE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_RX_DV_REG_FRAME_COUNTER_14_AND_404_o,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(6),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_STATISTICS_LENGTH(6)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_STATISTICS_LENGTH_5 : FDE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_RX_DV_REG_FRAME_COUNTER_14_AND_404_o,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(5),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_STATISTICS_LENGTH(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_STATISTICS_LENGTH_4 : FDE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_RX_DV_REG_FRAME_COUNTER_14_AND_404_o,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(4),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_STATISTICS_LENGTH(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_STATISTICS_LENGTH_3 : FDE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_RX_DV_REG_FRAME_COUNTER_14_AND_404_o,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(3),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_STATISTICS_LENGTH(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_STATISTICS_LENGTH_2 : FDE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_RX_DV_REG_FRAME_COUNTER_14_AND_404_o,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(2),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_STATISTICS_LENGTH(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_STATISTICS_LENGTH_1 : FDE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_RX_DV_REG_FRAME_COUNTER_14_AND_404_o,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(1),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_STATISTICS_LENGTH(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_STATISTICS_LENGTH_0 : FDE
    port map (
      C => rx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_RX_DV_REG_FRAME_COUNTER_14_AND_404_o,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(0),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_STATISTICS_LENGTH(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_CRC_COMPUTE : FDRE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_SFD_FLAG_CRC_COMPUTE_OR_212_o,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_CRC_COMPUTE_1356
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_RX_DV_REG : FDRE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_DV_REG7_1335,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_RX_DV_REG_1555
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_CONTROL_MATCH : FDRE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_PWR_47_o_RXD_7_equal_15_o,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Reset_OR_DriverANDClockEnable,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_CONTROL_MATCH_1557
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_NO_FCS : FDRE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_SFD_FLAG_DATA_NO_FCS_OR_227_o_1518,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_NO_FCS_1558
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_VALID : FDRE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_NO_FCS_DATA_WITH_FCS_MUX_776_o,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_VALID_1357
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_ONE : FDRE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_FIELD_LT_CHECK_DISABLE_AND_371_o_1523,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_ONE_1560
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_ZERO : FDRE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_FIELD_LT_CHECK_DISABLE_AND_375_o,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_ZERO_1561
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LESS_THAN_256 : FDRE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_GND_45_o_RXD_7_equal_9_o,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Reset_OR_DriverANDClockEnable,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LESS_THAN_256_1562
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_OUT_OF_BOUNDS_ERR : FDRE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_MAX_LENGTH_ERR_1572,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_OUT_OF_BOUNDS_ERR_1342
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_INHIBIT_FRAME : FDSE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_END_OF_FRAME_SFD_FLAG_AND_419_o,
      S => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_INHIBIT_FRAME_1573
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_CRC_ERR : FDRE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_FCS_ERR_CRC_ENGINE_ERR_OR_265_o,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_CRC_ERR_1343
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_FCS_ERR : FDRE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_FCS_ERR_EXTENSION_FIELD_OR_255_o,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_Reset_OR_DriverANDClockEnable,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_FCS_ERR_1574
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_FRAME_LEN_ERR : FDRE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_FRAME_LEN_ERR_END_OF_DATA_OR_241_o,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_Reset_OR_DriverANDClockEnable,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_FRAME_LEN_ERR_1576
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_MIN_LENGTH_MATCH : FDRE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_GND_46_o_FRAME_COUNTER_7_equal_1_o,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_MIN_LENGTH_MATCH_1578
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_EXCEEDED_MIN_LEN : FDRE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_MIN_LENGTH_MATCH_EXCEEDED_MIN_LEN_OR_235_o,
      R => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_Reset_OR_DriverANDClockEnable,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_EXCEEDED_MIN_LEN_1577
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_GMII_TXD_TO_PHY_7 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_TXD_REG1(7),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_GMII_TXD_TO_PHY(7)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_GMII_TXD_TO_PHY_6 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_TXD_REG1(6),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_GMII_TXD_TO_PHY(6)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_GMII_TXD_TO_PHY_5 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_TXD_REG1(5),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_GMII_TXD_TO_PHY(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_GMII_TXD_TO_PHY_4 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_TXD_REG1(4),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_GMII_TXD_TO_PHY(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_GMII_TXD_TO_PHY_3 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_TXD_REG1(3),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_GMII_TXD_TO_PHY(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_GMII_TXD_TO_PHY_2 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_TXD_REG1(2),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_GMII_TXD_TO_PHY(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_GMII_TXD_TO_PHY_1 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_TXD_REG1(1),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_GMII_TXD_TO_PHY(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_GMII_TXD_TO_PHY_0 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_TXD_REG1(0),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_GMII_TXD_TO_PHY(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_TXD_REG1_7 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_GMII_TXD(7),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_TXD_REG1(7)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_TXD_REG1_6 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_GMII_TXD(6),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_TXD_REG1(6)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_TXD_REG1_5 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_GMII_TXD(5),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_TXD_REG1(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_TXD_REG1_4 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_GMII_TXD(4),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_TXD_REG1(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_TXD_REG1_3 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_GMII_TXD(3),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_TXD_REG1(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_TXD_REG1_2 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_GMII_TXD(2),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_TXD_REG1(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_TXD_REG1_1 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_GMII_TXD(1),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_TXD_REG1(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_TXD_REG1_0 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_GMII_TXD(0),
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_TXD_REG1(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_Mmux_R3_PWR_20_o_MUX_31_o11 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R2_271,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R3_273,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R3_PWR_20_o_MUX_31_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_Mmux_R3_PWR_20_o_MUX_31_o11 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R2_275,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R3_277,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R3_PWR_20_o_MUX_31_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_TX_RST_ASYNCH1 : LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      I0 => tx_axi_rstn,
      I1 => glbl_rstn,
      I2 => tx_mac_config_vector(0),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_TX_RST_ASYNCH
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_RX_RST_ASYNCH1 : LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      I0 => rx_axi_rstn,
      I1 => glbl_rstn,
      I2 => rx_mac_config_vector(0),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_RX_RST_ASYNCH
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd6_In1 : LUT6
    generic map(
      INIT => X"4444F5F4F5F4F5F4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_ACK_OUT_317,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd1_387,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd8_386,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd6_385,
      I4 => tx_axis_mac_tlast,
      I5 => tx_axis_mac_tuser,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd6_In
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd8_In1 : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd9_362,
      I1 => tx_axis_mac_tlast,
      I2 => tx_axis_mac_tuser,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_next_tx_state_3_GND_24_o_equal_68_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd9_In1 : LUT5
    generic map(
      INIT => X"00000040"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_ignore_packet_375,
      I1 => tx_axis_mac_tvalid,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd10_388,
      I3 => tx_axis_mac_tuser,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_no_burst_394,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_next_tx_state_3_GND_24_o_equal_27_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_early_deassert_two_byte_tx_OR_36_o1 : LUT6
    generic map(
      INIT => X"8888800080008000"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tlast_reg_392,
      I1 => tx_axis_mac_tvalid,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_early_deassert_373,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_3_tx_state_3_OR_35_o,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_two_byte_tx_376,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd6_385,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_early_deassert_two_byte_tx_OR_36_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd5_In1 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_ACK_OUT_317,
      I1 => tx_axis_mac_tlast,
      I2 => tx_axis_mac_tuser,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd6_385,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_next_tx_state_3_GND_24_o_equal_69_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_Mmux_tx_data_7_tx_mac_tdata_7_mux_62_OUT81 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_Mmux_tx_data_7_tx_mac_tdata_7_mux_62_OUT11,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_hold(0),
      I2 => tx_axis_mac_tdata(0),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_7_tx_mac_tdata_7_mux_62_OUT_0_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_Mmux_tx_data_7_tx_mac_tdata_7_mux_62_OUT71 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_Mmux_tx_data_7_tx_mac_tdata_7_mux_62_OUT11,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_hold(1),
      I2 => tx_axis_mac_tdata(1),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_7_tx_mac_tdata_7_mux_62_OUT_1_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_Mmux_tx_data_7_tx_mac_tdata_7_mux_62_OUT61 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_Mmux_tx_data_7_tx_mac_tdata_7_mux_62_OUT11,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_hold(2),
      I2 => tx_axis_mac_tdata(2),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_7_tx_mac_tdata_7_mux_62_OUT_2_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_Mmux_tx_data_7_tx_mac_tdata_7_mux_62_OUT51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_Mmux_tx_data_7_tx_mac_tdata_7_mux_62_OUT11,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_hold(3),
      I2 => tx_axis_mac_tdata(3),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_7_tx_mac_tdata_7_mux_62_OUT_3_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_Mmux_tx_data_7_tx_mac_tdata_7_mux_62_OUT41 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_Mmux_tx_data_7_tx_mac_tdata_7_mux_62_OUT11,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_hold(4),
      I2 => tx_axis_mac_tdata(4),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_7_tx_mac_tdata_7_mux_62_OUT_4_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_Mmux_tx_data_7_tx_mac_tdata_7_mux_62_OUT31 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_Mmux_tx_data_7_tx_mac_tdata_7_mux_62_OUT11,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_hold(5),
      I2 => tx_axis_mac_tdata(5),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_7_tx_mac_tdata_7_mux_62_OUT_5_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_Mmux_tx_data_7_tx_mac_tdata_7_mux_62_OUT21 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_Mmux_tx_data_7_tx_mac_tdata_7_mux_62_OUT11,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_hold(6),
      I2 => tx_axis_mac_tdata(6),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_7_tx_mac_tdata_7_mux_62_OUT_6_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_Mmux_tx_data_7_tx_mac_tdata_7_mux_62_OUT12 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_Mmux_tx_data_7_tx_mac_tdata_7_mux_62_OUT11,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_hold(7),
      I2 => tx_axis_mac_tdata(7),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_7_tx_mac_tdata_7_mux_62_OUT_7_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_Mmux_tx_data_7_tx_mac_tdata_7_mux_62_OUT111 : LUT5
    generic map(
      INIT => X"FFFFFFF8"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_ACK_OUT_317,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd1_387,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd2_383,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd4_389,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd10_388,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_Mmux_tx_data_7_tx_mac_tdata_7_mux_62_OUT11
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_n0273_inv1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd2_383,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_ACK_OUT_317,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd4_389,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd10_388,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_n0273_inv
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd2_In1 : LUT4
    generic map(
      INIT => X"88D8"
    )
    port map (
      I0 => tx_axis_mac_tvalid,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd7_390,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd2_383,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_ACK_OUT_317,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_next_tx_state_3_GND_24_o_equal_70_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_tx_state_3_tx_state_3_OR_35_o1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd1_387,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd8_386,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_3_tx_state_3_OR_35_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_mac_tlast_tx_mac_tready_int_AND_22_o1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => tx_axis_mac_tlast,
      I1 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_mac_tready_reg,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tlast_reg_glue_set
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_CRC_MODE_INV_77_o1 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_MUX_CONTROL_954,
      I1 => tx_mac_config_vector(3),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_CRC_MODE_INV_77_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_REG_PREAMBLE_DONE_GND_36_o_MUX_386_o11 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PRE_COUNT(0),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PRE_COUNT(1),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PRE_COUNT(2),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_REG_PREAMBLE_DONE_GND_36_o_MUX_386_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Msub_GND_36_o_GND_36_o_sub_12_OUT_7_0_xor_5_11 : LUT4
    generic map(
      INIT => X"AAA9"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DELAY(5),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DELAY(2),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DELAY(3),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DELAY(4),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_GND_36_o_GND_36_o_sub_12_OUT_5_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Msub_GND_36_o_GND_36_o_sub_12_OUT_7_0_xor_7_111 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DELAY(6),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DELAY(2),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DELAY(3),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DELAY(4),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DELAY(5),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Msub_GND_36_o_GND_36_o_sub_12_OUT_7_0_xor_7_11
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_IFG_COUNT_7_GND_36_o_mux_33_OUT61 : LUT6
    generic map(
      INIT => X"0000CCC30000AAAA"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DEL_MASKED(5),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT(5),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT(4),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_IFG_COUNT_7_GND_36_o_mux_33_OUT51_427,
      I4 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIFG_TX_FAIL_DELAY_AND_167_o,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT_7_GND_36_o_mux_33_OUT_5_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Reset_OR_DriverANDClockEnable331 : LUT4
    generic map(
      INIT => X"FF57"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DEL_EN_585,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DELAY(7),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Msub_GND_36_o_GND_36_o_sub_12_OUT_7_0_xor_7_11,
      I3 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Reset_OR_DriverANDClockEnable
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n0985_inv11 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIFG_556,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_TX_565,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CFL_563,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FCS_561,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_SCSH_560,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_COF_562,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n0985_inv1
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_IFG_COUNT_7_GND_36_o_mux_33_OUT511 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT(3),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT(2),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT(1),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT(0),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_IFG_COUNT_7_GND_36_o_mux_33_OUT51_427
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_TRANSMIT_GND_36_o_MUX_413_o11 : LUT6
    generic map(
      INIT => X"0000000000010000"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_COF_562,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_546,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PRE_566,
      I3 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_TX_565,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CFL_563,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_TRANSMIT_GND_36_o_MUX_413_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Reset_OR_DriverANDClockEnable131 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_REG_PREAMBLE_DONE_554,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_550,
      I2 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Reset_OR_DriverANDClockEnable13
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0_7_GND_36_o_mux_59_OUT_7_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_550,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0(7),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_REG_PREAMBLE_DONE_554,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0_7_GND_36_o_mux_59_OUT_7_1_478
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIFG_GND_36_o_MUX_380_o1 : LUT6
    generic map(
      INIT => X"00000000FFEC3320"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIN_PKT_LEN_REACHED_553,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_CRC_MODE_526,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CFL_563,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_COF_562,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n0961_inv11,
      I5 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIFG_GND_36_o_MUX_380_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_FCS_GND_36_o_MUX_360_o111 : LUT6
    generic map(
      INIT => X"A888A888A8880000"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_CRC_MODE_526,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_COF_562,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CFL_563,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIN_PKT_LEN_REACHED_553,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_COUNT(0),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_COUNT(1),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_FCS_GND_36_o_MUX_360_o11
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_REG_TX_VLAN_GND_36_o_MUX_509_o11 : LUT6
    generic map(
      INIT => X"0000004000000000"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_VLAN_EN_586,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_LEN(0),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_LEN(11),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_LEN(3),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_REG_TX_CONTROL_GND_36_o_MUX_507_o11,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_REG_TX_VLAN_GND_36_o_MUX_509_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_PRE_COUNT_xor_2_11 : LUT4
    generic map(
      INIT => X"A9FF"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PRE_COUNT(2),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PRE_COUNT(1),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PRE_COUNT(0),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PRE_566,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_PRE_COUNT2
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Msub_GND_36_o_GND_36_o_sub_12_OUT_7_0_xor_4_11 : LUT3
    generic map(
      INIT => X"A9"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DELAY(4),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DELAY(2),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DELAY(3),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_GND_36_o_GND_36_o_sub_12_OUT_4_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_IFG_COUNT_7_GND_36_o_mux_33_OUT31 : LUT6
    generic map(
      INIT => X"FFFFCCC3FFFFAAAA"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DEL_MASKED(2),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT(2),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT(1),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT(0),
      I4 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIFG_TX_FAIL_DELAY_AND_167_o,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT_7_GND_36_o_mux_33_OUT_2_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_CRC_COMPUTE_GND_36_o_MUX_451_o11 : LUT3
    generic map(
      INIT => X"54"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PAD_547,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_TRANSMIT_PIPE(0),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_COMPUTE_GND_36_o_MUX_451_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_TX_EN1 : LUT5
    generic map(
      INIT => X"FFFFFF54"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CR178124_FIX_543,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_546,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_TRANSMIT_PIPE(1),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_2_Q,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PAD_PIPE_544,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_GMII_TX_EN
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_GND_36_o_GND_36_o_sub_12_OUT_3_1 : LUT3
    generic map(
      INIT => X"9F"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DELAY(2),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DELAY(3),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DEL_EN_585,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_GND_36_o_GND_36_o_sub_12_OUT_3_1_483
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n1183_inv1 : LUT4
    generic map(
      INIT => X"5554"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(14),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CFL_563,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FCS_561,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_TX_565,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n1183_inv
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n0961_inv111 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_COUNT(1),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_COUNT(0),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FCS_561,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n0961_inv11
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Reset_OR_DriverANDClockEnable1611 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DST_ADDR_BYTE0_MATCH_538,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DST_ADDR_BYTE1_MATCH_537,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DST_ADDR_BYTE2_MATCH_536,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DST_ADDR_BYTE3_MATCH_535,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DST_ADDR_BYTE4_MATCH_534,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DST_ADDR_BYTE5_MATCH_532,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_TX_BROADCAST
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_REG_TX_CONTROL_GND_36_o_MUX_507_o12 : LUT5
    generic map(
      INIT => X"00400000"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_LEN(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_LEN(3),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_LEN(11),
      I3 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_REG_TX_CONTROL_GND_36_o_MUX_507_o11,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_REG_TX_CONTROL_GND_36_o_MUX_507_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIFG_TX_FAIL_DELAY_AND_167_o11 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT(7),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT(6),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT(5),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT(4),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_IFG_COUNT_7_GND_36_o_mux_33_OUT51_427,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIFG_TX_FAIL_DELAY_AND_167_o1_428
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n079811 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_REG_SCSH_529,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FCS_561,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIFG_556,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n07981
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT_cst11 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FCS_561,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_TX_565,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CFL_563,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT_cst1
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_INT_TX_STATUS_VALID_GND_36_o_MUX_471_o11 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CLIENT_FRAME_DONE_555,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IDL_568,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIFG_556,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_TX_STATUS_VALID_GND_36_o_MUX_471_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_CR178124_FIX_GND_36_o_MUX_469_o11 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_COF_SEEN_551,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MAX_PKT_LEN_REACHED_552,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_SCSH_560,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CR178124_FIX_GND_36_o_MUX_469_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_CRC_GND_36_o_MUX_417_o11 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FCS_561,
      I1 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CFL_563,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_GND_36_o_MUX_417_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_PAD_GND_36_o_MUX_415_o11 : LUT5
    generic map(
      INIT => X"00000002"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CFL_563,
      I1 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FCS_561,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_SCSH_560,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_TX_565,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PAD_GND_36_o_MUX_415_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_PREAMBLE_GND_36_o_MUX_409_o11 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PRE_566,
      I1 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_TX_565,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_GND_36_o_MUX_409_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_CRC_COUNT_xor_1_11 : LUT3
    generic map(
      INIT => X"9F"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_COUNT(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_COUNT(1),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FCS_561,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_CRC_COUNT1
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_PRE_COUNT_xor_1_11 : LUT3
    generic map(
      INIT => X"9F"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PRE_COUNT(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PRE_COUNT(1),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PRE_566,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_PRE_COUNT1
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Reset_OR_DriverANDClockEnable171 : LUT3
    generic map(
      INIT => X"F1"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_TRANSMIT_548,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_REG_PREAMBLE_549,
      I2 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Reset_OR_DriverANDClockEnable17
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0_7_GND_36_o_mux_59_OUT_6_1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0(6),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_550,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0_7_GND_36_o_mux_59_OUT_6_1_479
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0_7_GND_36_o_mux_59_OUT_2_1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0(2),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_550,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0_7_GND_36_o_mux_59_OUT_2_1_481
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0_7_GND_36_o_mux_59_OUT_0_1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_550,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0_7_GND_36_o_mux_59_OUT_0_1_482
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0_7_GND_36_o_mux_59_OUT_4_1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0(4),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_550,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0_7_GND_36_o_mux_59_OUT_4_1_480
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_CRC_COUNT_xor_0_11 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_COUNT(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FCS_561,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_CRC_COUNT
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_PRE_COUNT_xor_0_11 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PRE_COUNT(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PRE_566,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_PRE_COUNT
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_DATA_REG_OUT11 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_546,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(0),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(31),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_GMII_TXD(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_DATA_REG_OUT21 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_546,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(1),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(30),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_GMII_TXD(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_DATA_REG_OUT31 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_546,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(2),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(29),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_GMII_TXD(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_DATA_REG_OUT41 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_546,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(3),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(28),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_GMII_TXD(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_DATA_REG_OUT51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_546,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(4),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(27),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_GMII_TXD(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_DATA_REG_OUT61 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_546,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(5),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(26),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_GMII_TXD(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_DATA_REG_OUT71 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_546,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(6),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(25),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_GMII_TXD(6)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_DATA_REG_OUT81 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_546,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(7),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(24),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_GMII_TXD(7)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_REG_STATUS_VALID_GND_36_o_MUX_476_o1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_TX_STATUS_VALID_542,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_REG_STATUS_VALID_GND_36_o_MUX_476_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_DATA_REG_0_7_GND_36_o_mux_59_OUT21 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_550,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0(1),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0_7_GND_36_o_mux_59_OUT_1_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_DATA_REG_0_7_GND_36_o_mux_59_OUT41 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_550,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0(3),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0_7_GND_36_o_mux_59_OUT_3_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_DATA_REG_0_7_GND_36_o_mux_59_OUT61 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_550,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0(5),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0_7_GND_36_o_mux_59_OUT_5_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_REG_SCSH_GND_36_o_MUX_511_o11 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_SCSH_560,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_REG_SCSH_GND_36_o_MUX_511_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_DST_ADDR_MULTI_MATCH_GND_36_o_MUX_502_o11 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_4(0),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DST_ADDR_MULTI_MATCH_GND_36_o_MUX_502_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_PAD_PIPE_GND_36_o_MUX_467_o11 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PAD_547,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PAD_PIPE_GND_36_o_MUX_467_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_REG_PREAMBLE_GND_36_o_MUX_411_o11 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_550,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_REG_PREAMBLE_GND_36_o_MUX_411_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_INT_MAX_FRAME_ENABLE_GND_36_o_MUX_321_o11 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I1 => tx_mac_config_vector(14),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_ENABLE_GND_36_o_MUX_321_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_INT_IFG_DEL_EN_GND_36_o_MUX_317_o11 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_INT_IFG_DEL_EN_415,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DEL_EN_GND_36_o_MUX_317_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_INT_VLAN_EN_GND_36_o_MUX_313_o11 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_INT_VLAN_ENABLE_416,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_VLAN_EN_GND_36_o_MUX_313_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_INT_CRC_MODE_GND_36_o_MUX_309_o11 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_INT_CRC_MODE_419,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_CRC_MODE_GND_36_o_MUX_309_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT16 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tx_mac_config_vector(14),
      I1 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I2 => tx_mac_config_vector(16),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT_0_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT21 : LUT3
    generic map(
      INIT => X"EF"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I1 => tx_mac_config_vector(26),
      I2 => tx_mac_config_vector(14),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT_10_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT31 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tx_mac_config_vector(14),
      I1 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I2 => tx_mac_config_vector(27),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT_11_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT41 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tx_mac_config_vector(14),
      I1 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I2 => tx_mac_config_vector(28),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT_12_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT51 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tx_mac_config_vector(14),
      I1 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I2 => tx_mac_config_vector(29),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT_13_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT61 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tx_mac_config_vector(14),
      I1 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I2 => tx_mac_config_vector(30),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT_14_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT71 : LUT3
    generic map(
      INIT => X"EF"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I1 => tx_mac_config_vector(17),
      I2 => tx_mac_config_vector(14),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT_1_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT81 : LUT3
    generic map(
      INIT => X"EF"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I1 => tx_mac_config_vector(18),
      I2 => tx_mac_config_vector(14),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT_2_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT91 : LUT3
    generic map(
      INIT => X"EF"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I1 => tx_mac_config_vector(19),
      I2 => tx_mac_config_vector(14),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT_3_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT101 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tx_mac_config_vector(14),
      I1 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I2 => tx_mac_config_vector(20),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT_4_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT111 : LUT3
    generic map(
      INIT => X"EF"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I1 => tx_mac_config_vector(21),
      I2 => tx_mac_config_vector(14),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT_5_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT121 : LUT3
    generic map(
      INIT => X"EF"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I1 => tx_mac_config_vector(22),
      I2 => tx_mac_config_vector(14),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT_6_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT131 : LUT3
    generic map(
      INIT => X"EF"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I1 => tx_mac_config_vector(23),
      I2 => tx_mac_config_vector(14),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT_7_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT141 : LUT3
    generic map(
      INIT => X"EF"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I1 => tx_mac_config_vector(24),
      I2 => tx_mac_config_vector(14),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT_8_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT151 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tx_mac_config_vector(14),
      I1 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I2 => tx_mac_config_vector(25),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH_14_GND_36_o_mux_7_OUT_9_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_INT_JUMBO_EN_GND_36_o_MUX_311_o11 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_INT_JUMBO_ENABLE_418,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_JUMBO_EN_GND_36_o_MUX_311_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Reset_OR_DriverANDClockEnable251 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PAD_547,
      I1 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Reset_OR_DriverANDClockEnable25
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n1071_inv1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_4_Q,
      I1 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n1071_inv
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n0836_inv1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PRE_566,
      I1 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n0836_inv
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_ACK1 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_550,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PRE_COUNT(0),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PRE_COUNT(2),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PRE_COUNT(1),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_TX_ACK_IN
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_21_1 : LUT4
    generic map(
      INIT => X"6CC6"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_COMPUTE_545,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(13),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(2),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(29),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_21_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_31_1 : LUT4
    generic map(
      INIT => X"6CC6"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_COMPUTE_545,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(23),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(2),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(29),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_31_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_12_41 : LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(30),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(1),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(29),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(25),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_12_bdd6
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_14_41 : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(30),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(1),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(27),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_14_bdd6
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_20_1 : LUT4
    generic map(
      INIT => X"6CC6"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_COMPUTE_545,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(12),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(3),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(28),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_20_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_22_1 : LUT4
    generic map(
      INIT => X"6CC6"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_COMPUTE_545,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(14),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(7),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(24),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_22_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_23_21 : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(30),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(1),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(25),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_23_bdd2
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_17_1 : LUT5
    generic map(
      INIT => X"D7287D82"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_COMPUTE_545,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(2),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(6),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(9),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_12_bdd6,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_17_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_23_1 : LUT6
    generic map(
      INIT => X"D77D28827DD78228"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_COMPUTE_545,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(7),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(6),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(24),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(15),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_23_bdd2,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_23_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_29_1 : LUT6
    generic map(
      INIT => X"D77D28827DD78228"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_COMPUTE_545,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(4),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(0),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(31),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(21),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_14_bdd6,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_29_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_Mmux_CALC_23_CALC_23_mux_3_OUT13 : LUT6
    generic map(
      INIT => X"E44E4EE44EE4E44E"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_COMPUTE_545,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(0),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(30),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(1),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(24),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(7),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_0_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_Mmux_CALC_23_CALC_23_mux_3_OUT111 : LUT6
    generic map(
      INIT => X"D77D28827DD78228"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_COMPUTE_545,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(27),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(4),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(31),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(11),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(0),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_19_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_Mmux_CALC_23_CALC_23_mux_3_OUT181 : LUT6
    generic map(
      INIT => X"D77D28827DD78228"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_COMPUTE_545,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(27),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(4),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(26),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(17),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(5),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_25_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_Mmux_CALC_23_CALC_23_mux_3_OUT241 : LUT6
    generic map(
      INIT => X"D77D28827DD78228"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_COMPUTE_545,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(31),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(0),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(28),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(22),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(3),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_30_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_VLAN_ENABLE_OUT1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_MUX_CONTROL_954,
      I1 => tx_mac_config_vector(2),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_TX_VLAN_ENABLE_OUT
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_Result_3_1 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_COUNT(3),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_COUNT(0),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_COUNT(1),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_COUNT(2),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_Result(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_Result_4_1 : LUT5
    generic map(
      INIT => X"6CCCCCCC"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_COUNT(3),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_COUNT(4),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_COUNT(0),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_COUNT(1),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_COUNT(2),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_Result(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n008111 : LUT6
    generic map(
      INIT => X"0000000004000000"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_COUNT(4),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_COUNT(3),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_BAD_FRAME_INT_283,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_COUNT(2),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_COUNT(1),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GOOD_FRAME_INT_284,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n00811
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0100_inv1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_COUNT(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n00811,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0100_inv
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_Mcount_DATA_COUNT_xor_2_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_COUNT(2),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_COUNT(0),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_COUNT(1),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_Result(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_Mmux_GOOD_FRAME_OUT11 : LUT4
    generic map(
      INIT => X"AA2A"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GOOD_FRAME_INT_284,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_ADD_CONTROL_FRAME_282,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_ENABLE_REG_834,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_BAD_OPCODE_INT_915,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_GOOD_FRAME_COMB
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0127_inv1 : LUT6
    generic map(
      INIT => X"AAAAAAAAA8AAAAAA"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA_VALID_FINAL_285,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_COUNT(3),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_COUNT(0),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_COUNT(1),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_COUNT(4),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_COUNT(2),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0127_inv
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_Mmux_BAD_FRAME_OUT11 : LUT5
    generic map(
      INIT => X"FFFF2000"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GOOD_FRAME_INT_284,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_BAD_OPCODE_INT_915,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_ADD_CONTROL_FRAME_282,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_ENABLE_REG_834,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_BAD_FRAME_INT_283,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_BAD_FRAME_COMB
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_Mcount_DATA_COUNT_val1 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_BAD_FRAME_INT_283,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GOOD_FRAME_INT_284,
      I2 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_Mcount_DATA_COUNT_val
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0123_inv11 : LUT6
    generic map(
      INIT => X"EEEEEEEEEEEEEEFE"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_BAD_FRAME_INT_283,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GOOD_FRAME_INT_284,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_COUNT(4),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_COUNT(3),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_COUNT(2),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_COUNT(1),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0123_inv1
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_Mcount_DATA_COUNT_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_COUNT(1),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_COUNT(0),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_Result(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_Mmux_n010517 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_COUNT(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA(7),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE(15),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0105(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_Mmux_n010521 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_COUNT(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE(5),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA(5),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0105(10)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_Mmux_n010531 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_COUNT(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE(4),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA(4),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0105(11)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_Mmux_n010541 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_COUNT(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE(3),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA(3),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0105(12)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_Mmux_n010551 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_COUNT(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE(2),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA(2),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0105(13)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_Mmux_n010561 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_COUNT(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE(1),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA(1),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0105(14)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_Mmux_n010571 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_COUNT(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE(0),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA(0),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0105(15)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_Mmux_n010581 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_COUNT(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA(6),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE(14),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0105(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_Mmux_n010591 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_COUNT(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA(5),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE(13),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0105(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_Mmux_n0105101 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_COUNT(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA(4),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE(12),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0105(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_Mmux_n0105111 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_COUNT(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA(3),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE(11),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0105(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_Mmux_n0105121 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_COUNT(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA(2),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE(10),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0105(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_Mmux_n0105131 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_COUNT(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA(1),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE(9),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0105(6)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_Mmux_n0105141 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_COUNT(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA(0),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE(8),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0105(7)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_Mmux_n0105151 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_COUNT(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE(7),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA(7),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0105(8)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_Mmux_n0105161 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_COUNT(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_VALUE(6),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA(6),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n0105(9)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_BAD_OPCODE1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_BAD_OPCODE_INT_915,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_CONTROL_FRAME_281,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GOOD_FRAME_INT_284,
      O => rx_statistics_vector(24)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_REQ1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_ADD_CONTROL_FRAME_282,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_ENABLE_REG_834,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_REQ_INT_916,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_PAUSE_REQ_LOCAL
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mcount_DATA_COUNT_xor_4_11 : LUT5
    generic map(
      INIT => X"6CCCCCCC"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(4),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(1),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(2),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(3),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Result(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mcount_DATA_COUNT_xor_3_11 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(3),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(0),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(1),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(2),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Result(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mcount_DATA_COUNT_xor_2_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(2),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(0),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(1),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Result(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_Mux_26_o111 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(4),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(3),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(2),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(1),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_Mux_26_o11_925
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_Mux_26_o11 : LUT6
    generic map(
      INIT => X"5557555755575556"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(4),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(1),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(2),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(3),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(0),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_END_OF_TX_REG_956,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT_4_GND_28_o_Mux_26_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_AVAIL_OUT11 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_AVAIL_CONTROL_957,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_AVAIL_IN_REG_967,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_MUX_CONTROL_954,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_TX_DATA_VALID_OUT
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_UNDERRUN_OUT11 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_UNDERRUN_INT_829,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_MUX_CONTROL_954,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_TX_UNDERRUN_OUT
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_OUT11 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_MUX_CONTROL_954,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_INT(0),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_CONTROL(0),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_TX_DATA_OUT(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_OUT21 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_MUX_CONTROL_954,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_INT(1),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_CONTROL(1),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_TX_DATA_OUT(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_OUT31 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_MUX_CONTROL_954,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_INT(2),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_CONTROL(2),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_TX_DATA_OUT(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_OUT41 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_MUX_CONTROL_954,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_INT(3),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_CONTROL(3),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_TX_DATA_OUT(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_OUT51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_MUX_CONTROL_954,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_INT(4),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_CONTROL(4),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_TX_DATA_OUT(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_OUT61 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_MUX_CONTROL_954,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_INT(5),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_CONTROL(5),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_TX_DATA_OUT(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_OUT71 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_MUX_CONTROL_954,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_INT(6),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_CONTROL(6),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_TX_DATA_OUT(6)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_OUT81 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_MUX_CONTROL_954,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_INT(7),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_CONTROL(7),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_TX_DATA_OUT(7)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0163_inv1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_STATE_COUNT_FSM_FFd2_931,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_REQ_INT_953,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0163_inv
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_CONTROL_COMPLETE_1_1 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(4),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(0),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(1),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_CONTROL_COMPLETE
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_GOOD_FRAME_IN1_GOOD_FRAME_IN3_OR_81_o1 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_GOOD_FRAME_IN2_1036,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_GOOD_FRAME_IN3_1035,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_GOOD_FRAME_IN1_1034,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_GOOD_FRAME_IN1_GOOD_FRAME_IN3_OR_81_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_QUANTA_xor_3_11 : LUT6
    generic map(
      INIT => X"7F807F8000007F80"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_QUANTA(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_QUANTA(1),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_QUANTA(2),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_QUANTA(3),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_COUNT_SET_832,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_STATE_COUNT_FSM_FFd2_931,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_QUANTA3
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_QUANTA_xor_2_11 : LUT5
    generic map(
      INIT => X"78780078"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_QUANTA(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_QUANTA(1),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_QUANTA(2),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_COUNT_SET_832,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_STATE_COUNT_FSM_FFd2_931,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_QUANTA2
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_QUANTA_xor_1_11 : LUT4
    generic map(
      INIT => X"6606"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_QUANTA(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_QUANTA(1),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_COUNT_SET_832,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_STATE_COUNT_FSM_FFd2_931,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_QUANTA1
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_QUANTA_xor_0_11 : LUT3
    generic map(
      INIT => X"45"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_QUANTA(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_STATE_COUNT_FSM_FFd2_931,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_COUNT_SET_832,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_QUANTA
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mmux_COUNT_SET_GND_31_o_MUX_238_o121 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_REQ_TO_TX_837,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_GOOD_FRAME_IN_TX_REG_1093,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_sync_good_rx_data_sync2,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mmux_COUNT_SET_GND_31_o_MUX_238_o12_1037
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter_5_GND_49_o_equal_14_o11 : LUT6
    generic map(
      INIT => X"444444444444444F"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_rx_data_valid_reg2_1182,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_rx_data_valid_reg1_1176,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(5),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(4),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(3),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mcount_counter_xor_5_11,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter_5_GND_49_o_equal_14_o1
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Reset_OR_DriverANDClockEnable1 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_rx_data_valid_reg1_1176,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_rx_data_valid_reg2_1182,
      I2 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Reset_OR_DriverANDClockEnable
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mcount_counter_xor_3_11 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(3),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(0),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(1),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(2),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Result(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mcount_load_count_xor_2_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count(2),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count(0),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count(1),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Result_2_1
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mcount_counter_xor_2_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(2),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(0),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(1),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Result(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mcount_counter_xor_5_111 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(2),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(0),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(1),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mcount_counter_xor_5_11
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mcount_counter_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(1),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(0),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Result(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mcount_load_count_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count(1),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count(0),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Result_1_1
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_2_PWR_51_o_LessThan_17_o1 : LUT3
    generic map(
      INIT => X"57"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count(2),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count(0),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count(1),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_2_PWR_51_o_LessThan_17_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_pipe_2_PWR_51_o_LessThan_20_o1 : LUT3
    generic map(
      INIT => X"57"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_pipe(2),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_pipe(0),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_pipe(1),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_pipe_2_PWR_51_o_LessThan_20_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_Mmux_next_rx_state11 : LUT6
    generic map(
      INIT => X"BBBABBBABBBAB990"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_state_FSM_FFd2_1204,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_state_FSM_FFd1_1210,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_VALID_INT_321,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_fsmfake0(0),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_GOOD_FRAME_INT_323,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_BAD_FRAME_INT_322,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_next_rx_state(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_state_FSM_FFd2_In1 : LUT5
    generic map(
      INIT => X"040404AE"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_state_FSM_FFd2_1204,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_VALID_INT_321,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_state_FSM_FFd1_1210,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_BAD_FRAME_INT_322,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_GOOD_FRAME_INT_323,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_state_FSM_FFd2_In
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_state_rx_state_1_GND_23_o_equal_28_o1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_state_FSM_FFd1_1210,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_state_FSM_FFd2_1204,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_state_1_GND_23_o_equal_28_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_Mmux_CALC_23_CALC_23_mux_3_OUT241 : LUT6
    generic map(
      INIT => X"D77D28827DD78228"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_CRC_COMPUTE_1356,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(31),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(0),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(28),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(22),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(3),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_30_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_Mmux_CALC_23_CALC_23_mux_3_OUT181 : LUT6
    generic map(
      INIT => X"D77D28827DD78228"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_CRC_COMPUTE_1356,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(27),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(4),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(26),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(17),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(5),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_25_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_Mmux_CALC_23_CALC_23_mux_3_OUT111 : LUT6
    generic map(
      INIT => X"D77D28827DD78228"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_CRC_COMPUTE_1356,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(27),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(4),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(31),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(11),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(0),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_19_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_Mmux_CALC_23_CALC_23_mux_3_OUT11 : LUT6
    generic map(
      INIT => X"E44E4EE44EE4E44E"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_CRC_COMPUTE_1356,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(0),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(30),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(1),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(24),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(7),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_0_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_29_1 : LUT6
    generic map(
      INIT => X"D77D28827DD78228"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_CRC_COMPUTE_1356,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(4),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(0),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(31),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(21),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_14_bdd6,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_29_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_23_1 : LUT6
    generic map(
      INIT => X"D77D28827DD78228"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_CRC_COMPUTE_1356,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(7),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(6),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(24),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(15),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_23_bdd2,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_23_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_17_1 : LUT5
    generic map(
      INIT => X"D7287D82"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_CRC_COMPUTE_1356,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(2),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(6),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(9),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_12_bdd6,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_17_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_23_21 : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(30),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(1),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(25),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_23_bdd2
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_22_1 : LUT4
    generic map(
      INIT => X"6CC6"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_CRC_COMPUTE_1356,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(14),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(7),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(24),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_22_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_20_1 : LUT4
    generic map(
      INIT => X"6CC6"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_CRC_COMPUTE_1356,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(12),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(3),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(28),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_20_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_14_41 : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(30),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(1),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(27),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_14_bdd6
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_12_41 : LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(30),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(1),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(29),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(25),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_12_bdd6
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_31_1 : LUT4
    generic map(
      INIT => X"6CC6"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_CRC_COMPUTE_1356,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(23),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(2),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(29),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_31_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_21_1 : LUT4
    generic map(
      INIT => X"6CC6"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_CRC_COMPUTE_1356,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(13),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(2),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(29),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_21_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mmux_FRAME_SUCCESS_FRAME_FAILURE_MUX_864_o11 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_GOOD_FRAME_1340,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MATCH_FRAME_INT_1304,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_BAD_FRAME_1339,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_SUCCESS_FRAME_FAILURE_MUX_864_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mmux_GND_41_o_FRAME_SUCCESS_MUX_863_o11 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MATCH_FRAME_INT_1304,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_GOOD_FRAME_1340,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GND_41_o_FRAME_SUCCESS_MUX_863_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mmux_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT16 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => rx_mac_config_vector(14),
      I1 => rx_mac_config_vector(16),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT_0_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mmux_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT21 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => rx_mac_config_vector(26),
      I1 => rx_mac_config_vector(14),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT_10_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mmux_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT31 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => rx_mac_config_vector(14),
      I1 => rx_mac_config_vector(27),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT_11_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mmux_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT41 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => rx_mac_config_vector(14),
      I1 => rx_mac_config_vector(28),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT_12_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mmux_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT51 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => rx_mac_config_vector(14),
      I1 => rx_mac_config_vector(29),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT_13_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mmux_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT61 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => rx_mac_config_vector(14),
      I1 => rx_mac_config_vector(30),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT_14_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mmux_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT71 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => rx_mac_config_vector(17),
      I1 => rx_mac_config_vector(14),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT_1_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mmux_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT81 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => rx_mac_config_vector(18),
      I1 => rx_mac_config_vector(14),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT_2_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mmux_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT91 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => rx_mac_config_vector(19),
      I1 => rx_mac_config_vector(14),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT_3_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mmux_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT101 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => rx_mac_config_vector(14),
      I1 => rx_mac_config_vector(20),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT_4_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mmux_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT111 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => rx_mac_config_vector(21),
      I1 => rx_mac_config_vector(14),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT_5_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mmux_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT121 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => rx_mac_config_vector(22),
      I1 => rx_mac_config_vector(14),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT_6_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mmux_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT131 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => rx_mac_config_vector(23),
      I1 => rx_mac_config_vector(14),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT_7_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mmux_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT141 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => rx_mac_config_vector(24),
      I1 => rx_mac_config_vector(14),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT_8_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mmux_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT151 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => rx_mac_config_vector(14),
      I1 => rx_mac_config_vector(25),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GND_41_o_MAX_FRAME_LENGTH_14_mux_2_OUT_9_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Reset_OR_DriverANDClockEnable11 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_VALIDATE_REQUIRED_1302,
      I1 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Reset_OR_DriverANDClockEnable1
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA_VALID_EARLY1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA_VALID_EARLY_INT_1303,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_DV_REG1_1338,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_DATA_VALID_EARLY
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_SFD_FLAG_1308,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_PREAMBLE_1395,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_RX_DV_REG6_DAT_FIELD_AND_353_o1 : LUT5
    generic map(
      INIT => X"44444000"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_END_DATA_1397,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_DV_REG6_1336,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_FIELD_CONTROL(1),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_LEN_FIELD_1392,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_DAT_FIELD_1391,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_RX_DV_REG6_DAT_FIELD_AND_353_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_RX_DV_REG6_LEN_FIELD_AND_350_o1 : LUT5
    generic map(
      INIT => X"44444000"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_FIELD_CONTROL(1),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_DV_REG6_1336,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_FIELD_CONTROL(5),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_SRC_ADDRESS_FIELD_1393,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_LEN_FIELD_1392,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_RX_DV_REG6_LEN_FIELD_AND_350_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_RX_DV_REG6_DEST_ADDRESS_FIELD_AND_344_o1 : LUT6
    generic map(
      INIT => X"4444444440004040"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_FIELD_CONTROL(5),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_DV_REG6_1336,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_SFD_FLAG_1308,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_PREAMBLE_1395,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_DV_REG7_1335,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_DEST_ADDRESS_FIELD_1394,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_RX_DV_REG6_DEST_ADDRESS_FIELD_AND_344_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_Mmux_GND_44_o_FIELD_CONTROL_0_MUX_679_o11 : LUT6
    generic map(
      INIT => X"4444444444444440"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_END_FRAME_1849,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_FIELD_CONTROL(0),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_CRC_FIELD_1390,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_DEST_ADDRESS_FIELD_1394,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_LEN_FIELD_1392,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_SRC_ADDRESS_FIELD_1393,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_GND_44_o_FIELD_CONTROL_0_MUX_679_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_Mmux_PWR_46_o_FIELD_CONTROL_5_MUX_680_o11 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0001"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_LEN_FIELD_1392,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_SRC_ADDRESS_FIELD_1393,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_CRC_FIELD_1390,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_DEST_ADDRESS_FIELD_1394,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_END_FRAME_1849,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_FIELD_CONTROL(5),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_PWR_46_o_FIELD_CONTROL_5_MUX_680_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_Mmux_FIELD_CONTROL_1_GND_44_o_MUX_684_o11 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_END_FRAME_1849,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_FIELD_CONTROL(1),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_FIELD_CONTROL_1_GND_44_o_MUX_684_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_Mmux_FIELD_CONTROL_3_GND_44_o_MUX_682_o11 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_END_FRAME_1849,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_FIELD_CONTROL(3),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_FIELD_CONTROL_3_GND_44_o_MUX_682_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_Mmux_FIELD_CONTROL_4_GND_44_o_MUX_681_o11 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_END_FRAME_1849,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_FIELD_CONTROL(4),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_FIELD_CONTROL_4_GND_44_o_MUX_681_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_Mmux_FIELD_CONTROL_2_GND_44_o_MUX_683_o11 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_END_FRAME_1849,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_FIELD_CONTROL(2),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_FIELD_CONTROL_2_GND_44_o_MUX_683_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_CRC_FIELD_END_DATA_OR_200_o1 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_CRC_FIELD_1390,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_END_FCS_1396,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_END_DATA_1397,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_CRC_FIELD_END_DATA_OR_200_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Reset_OR_DriverANDClockEnable3 : LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_LEN_FIELD_1392,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_FIELD_CONTROL(0),
      I2 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Reset_OR_DriverANDClockEnable
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_PWR_47_o_RXD_7_equal_15_o_7_1 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(3),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(7),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_FIELD_LT_CHECK_DISABLE_AND_371_o1,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_PWR_47_o_RXD_7_equal_15_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_GND_45_o_CONTROL_MATCH_AND_415_o1 : LUT5
    generic map(
      INIT => X"00200000"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_CONTROL_MATCH_1557,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(7),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(3),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(0),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_FIELD_LT_CHECK_DISABLE_AND_371_o1,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_GND_45_o_CONTROL_MATCH_AND_415_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_n0477_inv11 : LUT6
    generic map(
      INIT => X"FFFFFFFF444E4444"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_DEST_ADDRESS_FIELD_1394,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_broadcastaddressmatch_305,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_END_DATA_1397,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_CRC_FIELD_1390,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_FIELD_CONTROL(0),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_END_FRAME_1849,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_n0477_inv1
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mmux_DATA_NO_FCS_DATA_WITH_FCS_MUX_776_o11 : LUT6
    generic map(
      INIT => X"8888888D88888888"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_CRC_MODE_HELD_1312,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_WITH_FCS_1559,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_EXT_FIELD_1389,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_END_FRAME_1849,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_ZERO_1561,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_NO_FCS_1558,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_NO_FCS_DATA_WITH_FCS_MUX_776_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_GND_45_o_RXD_7_equal_9_o_7_1 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(7),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(3),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(0),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_FIELD_LT_CHECK_DISABLE_AND_371_o1,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_GND_45_o_RXD_7_equal_9_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_FIELD_LT_CHECK_DISABLE_AND_371_o11 : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(1),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(6),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(4),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(5),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(2),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_FIELD_LT_CHECK_DISABLE_AND_371_o1
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_val1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_END_FRAME_1849,
      I1 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_Reset_OR_DriverANDClockEnable
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_n0405_inv1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_CRC_FIELD_1390,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_LEN_FIELD_1392,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_DAT_FIELD_1391,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_EXT_FIELD_1389,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_n0405_inv
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_RX_DV_REG_FRAME_COUNTER_14_AND_404_o1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(14),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_RX_DV_REG_1555,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_RX_DV_REG_FRAME_COUNTER_14_AND_404_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_FIELD_FIELD_COUNTER_1_AND_376_o1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_LEN_FIELD_1392,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_FIELD_CONTROL(1),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_FIELD_FIELD_COUNTER_1_AND_376_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_END_OF_FRAME_SFD_FLAG_AND_419_o1 : LUT4
    generic map(
      INIT => X"0EEE"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_END_FRAME_1849,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_INHIBIT_FRAME_1573,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_PREAMBLE_1395,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_SFD_FLAG_1308,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_END_OF_FRAME_SFD_FLAG_AND_419_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_FCS_ERR_EXTENSION_FIELD_OR_255_o1 : LUT6
    generic map(
      INIT => X"FFFFFFFF4040FF40"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_PREAMBLE_1395,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_DV_REG7_1335,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_ERR_REG7_1332,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_EXT_FIELD_1389,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_EXTENSION_FLAG_1307,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_FCS_ERR_CRC_ENGINE_ERR_OR_265_o,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_FCS_ERR_EXTENSION_FIELD_OR_255_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_FCS_ERR_CRC_ENGINE_ERR_OR_265_o1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_FCS_ERR_1574,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_CRC_ENGINE_ERR_1575,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_FCS_ERR_CRC_ENGINE_ERR_OR_265_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_MAX_LENGTH_ERR_CRC_ENGINE_ERR_OR_260_o1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_CRC_ENGINE_ERR_1575,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_FCS_ERR_1574,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_FRAME_LEN_ERR_1576,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_MAX_LENGTH_ERR_1572,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_BAD_FRAME_rstpot
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_MIN_LENGTH_MATCH_EXCEEDED_MIN_LEN_OR_235_o1 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_EXCEEDED_MIN_LEN_1577,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_MIN_LENGTH_MATCH_1578,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_DAT_FIELD_1391,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_MIN_LENGTH_MATCH_EXCEEDED_MIN_LEN_OR_235_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_END_OF_FRAME_INHIBIT_FRAME_AND_452_o1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_INHIBIT_FRAME_1573,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_END_FRAME_1849,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_GOOD_FRAME_rstpot
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_Mmux_GMII_TX_ER_TO_PHY_GND_39_o_MUX_577_o11 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_TX_ER_REG1_1579,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_GMII_TX_ER_TO_PHY_GND_39_o_MUX_577_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_Mmux_GMII_TX_EN_TO_PHY_GND_39_o_MUX_575_o11 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_TX_EN_REG1_1580,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_GMII_TX_EN_TO_PHY_GND_39_o_MUX_575_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_next_tx_state_3_ignore_packet_OR_46_o1 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_ACK_OUT_317,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd1_387,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd6_385,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd7_390,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_next_tx_state_3_ignore_packet_OR_46_o1_1593
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_next_tx_state_3_ignore_packet_OR_46_o2 : LUT6
    generic map(
      INIT => X"1111111100101010"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_early_deassert_373,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_two_byte_tx_376,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd4_389,
      I3 => tx_axis_mac_tlast,
      I4 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_mac_tready_reg,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_next_tx_state_3_ignore_packet_OR_46_o1_1593,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_next_tx_state_3_ignore_packet_OR_46_o2_1594
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_next_tx_state_3_ignore_packet_OR_46_o3 : LUT6
    generic map(
      INIT => X"A8A8A8A8A8AAA8A8"
    )
    port map (
      I0 => tx_axis_mac_tvalid,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd2_383,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd7_390,
      I3 => tx_axis_mac_tuser,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd10_388,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_no_burst_394,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_next_tx_state_3_ignore_packet_OR_46_o3_1595
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_next_tx_state_3_ignore_packet_OR_46_o4 : LUT6
    generic map(
      INIT => X"FFFFFFFF54444444"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_ACK_OUT_317,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd2_383,
      I2 => tx_axis_mac_tlast,
      I3 => tx_axis_mac_tuser,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd6_385,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_ignore_packet_375,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_next_tx_state_3_ignore_packet_OR_46_o4_1596
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_next_tx_state_3_ignore_packet_OR_46_o5 : LUT5
    generic map(
      INIT => X"FFFFEEFE"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_next_tx_state_3_ignore_packet_OR_46_o4_1596,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_next_tx_state_3_ignore_packet_OR_46_o3_1595,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd9_362,
      I3 => tx_axis_mac_tlast,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_next_tx_state_3_ignore_packet_OR_46_o2_1594,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_next_tx_state_3_ignore_packet_OR_46_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd7_In_SW0 : LUT4
    generic map(
      INIT => X"8880"
    )
    port map (
      I0 => tx_axis_mac_tlast,
      I1 => tx_axis_mac_tuser,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd8_386,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd9_362,
      O => N2
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd7_In : LUT6
    generic map(
      INIT => X"EEEEEEEEEEEEEEFE"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd5_391,
      I1 => N2,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd7_390,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_ACK_OUT_317,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_force_end_393,
      I5 => tx_axis_mac_tvalid,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd7_In_365
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd3_In_SW0 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_two_byte_tx_376,
      I1 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_mac_tready_reg,
      I2 => tx_axis_mac_tlast,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_early_deassert_373,
      O => N4
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd3_In : LUT6
    generic map(
      INIT => X"FFFF002000200020"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd7_390,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_ACK_OUT_317,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_force_end_393,
      I3 => tx_axis_mac_tvalid,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd4_389,
      I5 => N4,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd3_In_363
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd4_In_SW0 : LUT5
    generic map(
      INIT => X"00040404"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_early_deassert_373,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd4_389,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_two_byte_tx_376,
      I3 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_mac_tready_reg,
      I4 => tx_axis_mac_tlast,
      O => N6
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd4_In : LUT6
    generic map(
      INIT => X"FFFFFFFFAAAA88A8"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_ACK_OUT_317,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd1_387,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd7_390,
      I3 => tx_axis_mac_tvalid,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd6_385,
      I5 => N6,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_next_tx_state_3_PWR_23_o_equal_72_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd10_In_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_no_burst_394,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_ignore_packet_375,
      I2 => tx_axis_mac_tuser,
      O => N8
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd10_In : LUT6
    generic map(
      INIT => X"FFFFFFFFB3A2A2A2"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd10_388,
      I1 => tx_axis_mac_tvalid,
      I2 => N8,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd2_383,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_ACK_OUT_317,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd3_384,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_next_tx_state_3_tx_enable_reg_AND_28_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_mac_tready_int_tx_ack_OR_30_o_SW0 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd4_389,
      I1 => tx_axis_mac_tvalid,
      I2 => tx_axis_mac_tuser,
      O => N10
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_mac_tready_int_tx_ack_OR_30_o : LUT6
    generic map(
      INIT => X"FFFF444044404440"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd1_387,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_early_underrun_374,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_ACK_OUT_317,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_force_end_393,
      I4 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_mac_tready_reg,
      I5 => N10,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_underrun_glue_set
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_IFG_COUNT_7_GND_36_o_mux_33_OUT7_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT(5),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT(4),
      O => N16
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_IFG_COUNT_7_GND_36_o_mux_33_OUT7 : LUT6
    generic map(
      INIT => X"0000CCC30000AAAA"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DEL_MASKED(6),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT(6),
      I2 => N16,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_IFG_COUNT_7_GND_36_o_mux_33_OUT51_427,
      I4 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIFG_TX_FAIL_DELAY_AND_167_o,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT_7_GND_36_o_mux_33_OUT_6_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n0921_inv_SW0 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MAX_PKT_LEN_REACHED_552,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_TX_565,
      O => N20
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n0921_inv : LUT6
    generic map(
      INIT => X"FFFEFFEEFFFEFFFE"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_SCSH_560,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FCS_561,
      I2 => N20,
      I3 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_TX_UNDERRUN_OUT,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_TX_DATA_VALID_OUT,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n0921_inv_488
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_IFG_COUNT_7_GND_36_o_mux_33_OUT4_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT(1),
      O => N22
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_IFG_COUNT_7_GND_36_o_mux_33_OUT4 : LUT6
    generic map(
      INIT => X"0000CCC30000AAAA"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DEL_MASKED(3),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT(3),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT(2),
      I3 => N22,
      I4 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIFG_TX_FAIL_DELAY_AND_167_o,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT_7_GND_36_o_mux_33_OUT_3_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n0977_inv_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IDL_568,
      I1 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      O => N24
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n0977_inv : LUT6
    generic map(
      INIT => X"FFFFFFFFFFEA5540"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_CRC_MODE_526,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CFL_563,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIN_PKT_LEN_REACHED_553,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_COF_562,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n0961_inv11,
      I5 => N24,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n0977_inv_486
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n0961_inv_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIFG_556,
      I1 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      O => N26
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n0961_inv : LUT6
    generic map(
      INIT => X"FFFFFFFFD5C05500"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_CRC_MODE_526,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_COF_SEEN_551,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MAX_PKT_LEN_REACHED_552,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_COF_562,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n0961_inv11,
      I5 => N26,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n0961_inv_487
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_REG_TX_CONTROL_GND_36_o_MUX_507_o111 : LUT6
    generic map(
      INIT => X"0000000000010000"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_LEN(12),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_LEN(13),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_LEN(14),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_LEN(15),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_LEN(7),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_LEN(8),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_REG_TX_CONTROL_GND_36_o_MUX_507_o111_1607
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_REG_TX_CONTROL_GND_36_o_MUX_507_o112 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_LEN(10),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_LEN(9),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_LEN(4),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_LEN(5),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_LEN(6),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_LEN(1),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_REG_TX_CONTROL_GND_36_o_MUX_507_o112_1608
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_REG_TX_CONTROL_GND_36_o_MUX_507_o113 : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_LEN(2),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_REG_TX_CONTROL_GND_36_o_MUX_507_o111_1607,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_REG_TX_CONTROL_GND_36_o_MUX_507_o112_1608,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_REG_TX_CONTROL_GND_36_o_MUX_507_o11
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Msub_GND_36_o_GND_36_o_sub_12_OUT_7_0_xor_7_1_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DELAY(3),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DELAY(4),
      O => N28
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Msub_GND_36_o_GND_36_o_sub_12_OUT_7_0_xor_7_1 : LUT6
    generic map(
      INIT => X"AAAAAAAB00000001"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DELAY(7),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DELAY(6),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DELAY(5),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DELAY(2),
      I4 => N28,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Msub_GND_36_o_GND_36_o_sub_12_OUT_7_0_xor_7_11,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_GND_36_o_GND_36_o_sub_12_OUT_7_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DST_ADDR_BYTE4_MATCH_GND_36_o_MUX_500_o_SW0 : LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_TX_DA_564,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0(7),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0(6),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0(5),
      O => N30
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DST_ADDR_BYTE4_MATCH_GND_36_o_MUX_500_o : LUT6
    generic map(
      INIT => X"0000000080000000"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0(3),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0(4),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0(1),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_0(2),
      I4 => N30,
      I5 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DST_ADDR_BYTE4_MATCH_GND_36_o_MUX_500_o_600
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_DST_ADDR_BYTE3_MATCH_GND_36_o_MUX_498_o1_SW0 : LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_1(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_TX_DA_564,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_1(7),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_1(6),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_1(5),
      O => N32
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_DST_ADDR_BYTE3_MATCH_GND_36_o_MUX_498_o1 : LUT6
    generic map(
      INIT => X"4000000000000000"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_1(2),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_1(1),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_1(4),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_1(3),
      I5 => N32,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DST_ADDR_BYTE3_MATCH_GND_36_o_MUX_498_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_DST_ADDR_BYTE2_MATCH_GND_36_o_MUX_496_o1_SW0 : LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_2(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_TX_DA_564,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_2(7),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_2(6),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_2(5),
      O => N34
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_DST_ADDR_BYTE2_MATCH_GND_36_o_MUX_496_o1 : LUT6
    generic map(
      INIT => X"4000000000000000"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_2(2),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_2(1),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_2(4),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_2(3),
      I5 => N34,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DST_ADDR_BYTE2_MATCH_GND_36_o_MUX_496_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_DST_ADDR_BYTE0_MATCH_GND_36_o_MUX_492_o1_SW0 : LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_4(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_TX_DA_564,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_4(7),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_4(6),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_4(5),
      O => N36
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_DST_ADDR_BYTE0_MATCH_GND_36_o_MUX_492_o1 : LUT6
    generic map(
      INIT => X"4000000000000000"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_4(2),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_4(1),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_4(4),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_4(3),
      I5 => N36,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DST_ADDR_BYTE0_MATCH_GND_36_o_MUX_492_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_DST_ADDR_BYTE1_MATCH_GND_36_o_MUX_494_o1_SW0 : LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_TX_DA_564,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(1),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(6),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(2),
      I4 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      O => N38
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_DST_ADDR_BYTE1_MATCH_GND_36_o_MUX_494_o1 : LUT6
    generic map(
      INIT => X"0000000080000000"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(7),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(4),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(5),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(3),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(0),
      I5 => N38,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DST_ADDR_BYTE1_MATCH_GND_36_o_MUX_494_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_12_SW0 : LUT6
    generic map(
      INIT => X"9669699669969669"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(26),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(28),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(7),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(6),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(2),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(24),
      O => N40
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_12_Q : LUT6
    generic map(
      INIT => X"6996FF009669FF00"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_12_bdd6,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(5),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(3),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(4),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_COMPUTE_545,
      I5 => N40,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_12_Q_780
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_26_SW0 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(28),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(7),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(24),
      O => N42
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_26_Q : LUT6
    generic map(
      INIT => X"6996FF009669FF00"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_14_bdd6,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(4),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(3),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(18),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_COMPUTE_545,
      I5 => N42,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_26_Q_794
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_2_SW0 : LUT5
    generic map(
      INIT => X"96696996"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(26),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(31),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(7),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(6),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(24),
      O => N44
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_2_Q : LUT6
    generic map(
      INIT => X"E44E4EE44EE4E44E"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_COMPUTE_545,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(2),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_23_bdd2,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(5),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(0),
      I5 => N44,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_2_Q_770
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_4_SW0 : LUT4
    generic map(
      INIT => X"9669"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(26),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(28),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(7),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(24),
      O => N46
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_4_Q : LUT6
    generic map(
      INIT => X"D77D28827DD78228"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_COMPUTE_545,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_14_bdd6,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(5),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(3),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(4),
      I5 => N46,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_4_Q_772
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_6_SW0 : LUT5
    generic map(
      INIT => X"96696996"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(26),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(28),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(31),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(2),
      O => N48
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_6_Q : LUT6
    generic map(
      INIT => X"6996FF009669FF00"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_12_bdd6,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(5),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(3),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(6),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_COMPUTE_545,
      I5 => N48,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_6_Q_774
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_7_SW0 : LUT6
    generic map(
      INIT => X"9669699669969669"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(26),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(31),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(2),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(24),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(27),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(29),
      O => N50
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_7_Q : LUT6
    generic map(
      INIT => X"6996FF009669FF00"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(5),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(4),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(0),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(7),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_COMPUTE_545,
      I5 => N50,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_7_Q_775
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_16_SW0 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(2),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(24),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(29),
      O => N52
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_16_Q : LUT6
    generic map(
      INIT => X"6996FF009669FF00"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(3),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(28),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(7),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(8),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_COMPUTE_545,
      I5 => N52,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_16_Q_784
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_18_SW0 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(31),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(1),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(30),
      O => N54
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_18_Q : LUT6
    generic map(
      INIT => X"6996FF009669FF00"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(5),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(0),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(26),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(10),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_COMPUTE_545,
      I5 => N54,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_18_Q_786
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_24_SW0 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(31),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(6),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(25),
      O => N56
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_24_Q : LUT6
    generic map(
      INIT => X"6996FF009669FF00"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(5),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(0),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(26),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(16),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_COMPUTE_545,
      I5 => N56,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_24_Q_792
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_28_SW0 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(1),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(29),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(30),
      O => N58
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_28_Q : LUT6
    generic map(
      INIT => X"6996FF009669FF00"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(5),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(26),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(2),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(20),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_COMPUTE_545,
      I5 => N58,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_28_Q_796
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_3_SW0 : LUT5
    generic map(
      INIT => X"96696996"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(26),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(31),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(6),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(25),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(27),
      O => N60
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_3_Q : LUT6
    generic map(
      INIT => X"E44E4EE44EE4E44E"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_COMPUTE_545,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(3),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(5),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(4),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(0),
      I5 => N60,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_3_Q_771
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_14_SW0 : LUT5
    generic map(
      INIT => X"96696996"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(3),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(0),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(26),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(28),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(31),
      O => N62
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_14_Q : LUT6
    generic map(
      INIT => X"D77D28827DD78228"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_COMPUTE_545,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_14_bdd6,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(5),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(4),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(6),
      I5 => N62,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_14_Q_782
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_Mmux_CALC_23_CALC_23_mux_3_OUT2_SW0 : LUT5
    generic map(
      INIT => X"96696996"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(7),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(2),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(24),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(27),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(29),
      O => N64
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_Mmux_CALC_23_CALC_23_mux_3_OUT2 : LUT6
    generic map(
      INIT => X"D77D28827DD78228"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_COMPUTE_545,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(5),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(4),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(26),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(2),
      I5 => N64,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_10_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_Mmux_CALC_23_CALC_23_mux_3_OUT3_SW0 : LUT5
    generic map(
      INIT => X"96696996"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(7),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(6),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(24),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(25),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(27),
      O => N66
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_Mmux_CALC_23_CALC_23_mux_3_OUT3 : LUT6
    generic map(
      INIT => X"D77D28827DD78228"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_COMPUTE_545,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(4),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(3),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(28),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(3),
      I5 => N66,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_11_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_Mmux_CALC_23_CALC_23_mux_3_OUT51 : LUT6
    generic map(
      INIT => X"9669699669969669"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(6),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(5),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(25),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(27),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(26),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_Mmux_CALC_23_CALC_23_mux_3_OUT5
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_Mmux_CALC_23_CALC_23_mux_3_OUT52 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(4),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(5),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(1),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(30),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(29),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(2),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_Mmux_CALC_23_CALC_23_mux_3_OUT51_1630
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_Mmux_CALC_23_CALC_23_mux_3_OUT53 : LUT5
    generic map(
      INIT => X"69FF6900"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_Mmux_CALC_23_CALC_23_mux_3_OUT51_1630,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(31),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_Mmux_CALC_23_CALC_23_mux_3_OUT5,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_COMPUTE_545,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(5),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_13_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_Mmux_CALC_23_CALC_23_mux_3_OUT7_SW0 : LUT5
    generic map(
      INIT => X"96696996"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(28),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(31),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(2),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(27),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(29),
      O => N68
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_Mmux_CALC_23_CALC_23_mux_3_OUT7 : LUT6
    generic map(
      INIT => X"D77D28827DD78228"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_COMPUTE_545,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(4),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(3),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(0),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(7),
      I5 => N68,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_15_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_Mmux_CALC_23_CALC_23_mux_3_OUT12_SW0 : LUT4
    generic map(
      INIT => X"9669"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(6),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(24),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(25),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(30),
      O => N70
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_Mmux_CALC_23_CALC_23_mux_3_OUT12 : LUT6
    generic map(
      INIT => X"D77D28827DD78228"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_COMPUTE_545,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(0),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(31),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(7),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(1),
      I5 => N70,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_1_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_Mmux_CALC_23_CALC_23_mux_3_OUT20_SW0 : LUT5
    generic map(
      INIT => X"96696996"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(31),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(6),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(2),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(25),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(29),
      O => N72
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_Mmux_CALC_23_CALC_23_mux_3_OUT20 : LUT6
    generic map(
      INIT => X"D77D28827DD78228"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_COMPUTE_545,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(3),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(0),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(28),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(19),
      I5 => N72,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_27_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_Mmux_CALC_23_CALC_23_mux_3_OUT281 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(2),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(29),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(1),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(30),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(7),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(24),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_Mmux_CALC_23_CALC_23_mux_3_OUT28
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_Mmux_CALC_23_CALC_23_mux_3_OUT282 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(3),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(28),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(27),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(4),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(6),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(25),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_Mmux_CALC_23_CALC_23_mux_3_OUT281_1635
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_Mmux_CALC_23_CALC_23_mux_3_OUT283 : LUT6
    generic map(
      INIT => X"6996FFFF69960000"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_Mmux_CALC_23_CALC_23_mux_3_OUT281_1635,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(0),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(31),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_Mmux_CALC_23_CALC_23_mux_3_OUT28,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_COMPUTE_545,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(5),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_5_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_Mmux_CALC_23_CALC_23_mux_3_OUT31 : LUT6
    generic map(
      INIT => X"D77D28827DD78228"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_COMPUTE_545,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(4),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(3),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(28),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(0),
      I5 => N66,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_8_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_Mmux_CALC_23_CALC_23_mux_3_OUT32_SW0 : LUT5
    generic map(
      INIT => X"96696996"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(28),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(6),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(2),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(25),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(29),
      O => N76
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_Mmux_CALC_23_CALC_23_mux_3_OUT32 : LUT6
    generic map(
      INIT => X"D77D28827DD78228"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_COMPUTE_545,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(5),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DATA_REG_3(3),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(26),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC(1),
      I5 => N76,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRCGEN_CALC_23_CALC_23_mux_3_OUT_9_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_GND_27_o_DATA_7_equal_8_o_7_1 : LUT6
    generic map(
      INIT => X"0000000000010000"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_OPCODE_EARLY(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_OPCODE_EARLY(1),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_OPCODE_EARLY(2),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_OPCODE_EARLY(3),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA(0),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_OPCODE_EARLY(4),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_GND_27_o_DATA_7_equal_8_o_7_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_GND_27_o_DATA_7_equal_8_o_7_2 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_OPCODE_EARLY(6),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_OPCODE_EARLY(5),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_OPCODE_EARLY(7),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA(1),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA(2),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA(3),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_GND_27_o_DATA_7_equal_8_o_7_1_1638
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_GND_27_o_DATA_7_equal_8_o_7_3 : LUT6
    generic map(
      INIT => X"0001000000000000"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA(7),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA(6),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA(4),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA(5),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_GND_27_o_DATA_7_equal_8_o_7_1_1638,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_GND_27_o_DATA_7_equal_8_o_7_Q,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_GND_27_o_DATA_7_equal_8_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0141_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_STATUS_INT_833,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_REQ_INT_953,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_STATE_COUNT_FSM_FFd2_931,
      I3 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      O => N80
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0141 : LUT6
    generic map(
      INIT => X"0000000007070747"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_END_OF_TX_HELD_955,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_AVAIL_IN_REG_967,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_COUNT_SET_832,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_MUX_CONTROL_954,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_TX_END_OF_TX,
      I5 => N80,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0141_945
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0187_inv_SW0 : LUT4
    generic map(
      INIT => X"FDFF"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(4),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(3),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(2),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(0),
      O => N82
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0187_inv : LUT6
    generic map(
      INIT => X"8888880008080800"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_MUX_CONTROL_954,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_REQ_INT_953,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(1),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_ACK_INT_966,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_STATE_COUNT_FSM_FFd1_968,
      I5 => N82,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0187_inv_930
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n01471 : LUT5
    generic map(
      INIT => X"02000000"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(4),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(3),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(2),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(1),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(0),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n01471_1641
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n01472 : LUT6
    generic map(
      INIT => X"0000F0F0000010F0"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_ACK_INT_966,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_STATE_COUNT_FSM_FFd1_968,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_REQ_INT_953,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_MUX_CONTROL_954,
      I4 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n01471_1641,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0147
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_STATE_COUNT_FSM_FFd2_In1 : LUT5
    generic map(
      INIT => X"FFFF0010"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_STATUS_INT_833,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_MUX_CONTROL_954,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_AVAIL_IN_REG_967,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_END_OF_TX_HELD_955,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_REQ_INT_953,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_STATE_COUNT_FSM_FFd2_In1_1642
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_STATE_COUNT_FSM_FFd2_In3 : LUT5
    generic map(
      INIT => X"7474FE74"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_STATE_COUNT_FSM_FFd1_968,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_STATE_COUNT_FSM_FFd2_931,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_STATE_COUNT_FSM_FFd2_In1_1642,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_STATE_COUNT_FSM_FFd2_In2_1643,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_CONTROL_COMPLETE,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_STATE_COUNT_FSM_FFd2_In
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT101 : LUT4
    generic map(
      INIT => X"AC00"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_VALUE_HELD(3),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_VALUE_HELD(11),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(0),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_Mux_26_o11_925,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT10
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT102 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(43),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(35),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(0),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT101_1645
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT103 : LUT6
    generic map(
      INIT => X"7776676655544544"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(1),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(2),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(0),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(19),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(27),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT101_1645,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT102_1646
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT104 : LUT5
    generic map(
      INIT => X"88800800"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(2),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(1),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(0),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(3),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(11),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT103_1647
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT105 : LUT5
    generic map(
      INIT => X"FFFF5410"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(4),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(3),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT103_1647,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT102_1646,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT10,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT_3_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT71 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(18),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(34),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(42),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(26),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(1),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(0),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT7
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT72 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(2),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(10),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT71_1649
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT141 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(21),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(37),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(45),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(29),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(1),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(0),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT14
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT142 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(5),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(13),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT141_1651
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT121 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(20),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(36),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(44),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(28),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(1),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(0),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT12
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT122 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(4),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(12),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT121_1653
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT31 : LUT6
    generic map(
      INIT => X"DDA2DD8099A29980"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(3),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(1),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(40),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(2),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(24),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(8),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT3
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT32 : LUT6
    generic map(
      INIT => X"5499109954111011"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(2),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(1),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(16),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(3),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(32),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(0),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT31_1655
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT33 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_VALUE_HELD(8),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_VALUE_HELD(0),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT32_1656
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT34 : LUT6
    generic map(
      INIT => X"FFFF514051405140"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(4),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(0),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT3,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT31_1655,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_Mux_26_o11_925,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT32_1656,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT_0_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT51 : LUT4
    generic map(
      INIT => X"AC00"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_VALUE_HELD(1),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_VALUE_HELD(9),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(0),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_Mux_26_o11_925,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT5
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT52 : LUT6
    generic map(
      INIT => X"4440040004000400"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(3),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(1),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(0),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(1),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(9),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(2),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT51_1658
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT53 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(41),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(25),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(1),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT52_1659
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT54 : LUT6
    generic map(
      INIT => X"FB44EA4451444044"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(1),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(33),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(3),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(17),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT52_1659,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT53_1660
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT55 : LUT5
    generic map(
      INIT => X"FFFF5150"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(4),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(2),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT51_1658,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT53_1660,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT5,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT_1_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT161 : LUT4
    generic map(
      INIT => X"AC00"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_VALUE_HELD(6),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_VALUE_HELD(14),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(0),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_Mux_26_o11_925,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT16
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT162 : LUT6
    generic map(
      INIT => X"4440040004000400"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(3),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(1),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(0),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(6),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(14),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(2),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT161_1662
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT163 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(46),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(30),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(1),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT162_1663
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT164 : LUT6
    generic map(
      INIT => X"FB44EA4451444044"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(1),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(38),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(3),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(22),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT162_1663,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT163_1664
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT165 : LUT5
    generic map(
      INIT => X"FFFF5150"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(4),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(2),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT161_1662,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT163_1664,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT16,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT_6_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT191 : LUT4
    generic map(
      INIT => X"AC00"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_VALUE_HELD(7),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_VALUE_HELD(15),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(0),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_Mux_26_o11_925,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT19
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT192 : LUT4
    generic map(
      INIT => X"A0CF"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(47),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(39),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(3),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(0),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT191_1666
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT193 : LUT6
    generic map(
      INIT => X"54FF10FF54101010"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(3),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(0),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(7),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(2),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(15),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT191_1666,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT192_1667
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT194 : LUT5
    generic map(
      INIT => X"75226422"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(2),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(31),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(3),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_SOURCE_HELD(23),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT193_1668
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT195 : LUT5
    generic map(
      INIT => X"FFFF5410"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(4),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(1),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT193_1668,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT192_1667,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT19,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT_7_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_QUANTA_xor_4_1_SW0 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_STATE_COUNT_FSM_FFd2_931,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_COUNT_SET_832,
      O => N86
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_QUANTA_xor_4_1 : LUT6
    generic map(
      INIT => X"2888888888888888"
    )
    port map (
      I0 => N86,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_QUANTA(4),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_QUANTA(3),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_QUANTA(2),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_QUANTA(1),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_QUANTA(0),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_QUANTA4
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_QUANTA_xor_5_1_SW0 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_QUANTA(2),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_QUANTA(1),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_QUANTA(0),
      O => N88
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_QUANTA_xor_5_1 : LUT6
    generic map(
      INIT => X"88884888AAAA5AAA"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_QUANTA(5),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_STATE_COUNT_FSM_FFd2_931,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_QUANTA(4),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_QUANTA(3),
      I4 => N88,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_COUNT_SET_832,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_QUANTA5
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_n0068_inv_SW0 : LUT4
    generic map(
      INIT => X"FF7F"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_QUANTA(5),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_QUANTA(1),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_QUANTA(0),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_COUNT_SET_832,
      O => N90
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_n0068_inv : LUT6
    generic map(
      INIT => X"FFFFFFFF00008000"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_QUANTA(4),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_QUANTA(3),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_STATUS_INT_833,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_QUANTA(2),
      I4 => N90,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mmux_COUNT_SET_GND_31_o_MUX_238_o12_1037,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_n0068_inv_1085
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mmux_COUNT_SET_GND_31_o_MUX_238_o11 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX(4),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX(5),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX(6),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX(7),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX(8),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX(9),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mmux_COUNT_SET_GND_31_o_MUX_238_o1
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mmux_COUNT_SET_GND_31_o_MUX_238_o12 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX(14),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX(15),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX(1),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX(2),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX(3),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mmux_COUNT_SET_GND_31_o_MUX_238_o1,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mmux_COUNT_SET_GND_31_o_MUX_238_o11_1673
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT_15_GND_31_o_equal_8_o_15_1 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT(1),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT(0),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT(2),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT(3),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT(4),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT(5),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT_15_GND_31_o_equal_8_o_15_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT_15_GND_31_o_equal_8_o_15_2 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT(7),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT(6),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT(8),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT(9),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT(10),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT(11),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT_15_GND_31_o_equal_8_o_15_1_1675
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT71 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count(2),
      I2 => rx_mac_config_vector(46),
      I3 => rx_mac_config_vector(78),
      I4 => rx_mac_config_vector(70),
      I5 => rx_mac_config_vector(38),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT7
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT72 : LUT5
    generic map(
      INIT => X"FBEA5140"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count(2),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count(0),
      I2 => rx_mac_config_vector(62),
      I3 => rx_mac_config_vector(54),
      I4 => rx_mac_config_vector(38),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT71_1677
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT73 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count(1),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT7,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT71_1677,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_2_pause_addr_7_wide_mux_27_OUT_6_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT61 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count(2),
      I2 => rx_mac_config_vector(45),
      I3 => rx_mac_config_vector(77),
      I4 => rx_mac_config_vector(69),
      I5 => rx_mac_config_vector(37),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT6
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT62 : LUT5
    generic map(
      INIT => X"FBEA5140"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count(2),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count(0),
      I2 => rx_mac_config_vector(61),
      I3 => rx_mac_config_vector(53),
      I4 => rx_mac_config_vector(37),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT61_1679
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT63 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count(1),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT6,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT61_1679,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_2_pause_addr_7_wide_mux_27_OUT_5_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT51 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count(2),
      I2 => rx_mac_config_vector(44),
      I3 => rx_mac_config_vector(76),
      I4 => rx_mac_config_vector(68),
      I5 => rx_mac_config_vector(36),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT5
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT52 : LUT5
    generic map(
      INIT => X"FBEA5140"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count(2),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count(0),
      I2 => rx_mac_config_vector(60),
      I3 => rx_mac_config_vector(52),
      I4 => rx_mac_config_vector(36),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT51_1681
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT53 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count(1),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT5,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT51_1681,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_2_pause_addr_7_wide_mux_27_OUT_4_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT41 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count(2),
      I2 => rx_mac_config_vector(43),
      I3 => rx_mac_config_vector(75),
      I4 => rx_mac_config_vector(67),
      I5 => rx_mac_config_vector(35),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT4
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT42 : LUT5
    generic map(
      INIT => X"FBEA5140"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count(2),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count(0),
      I2 => rx_mac_config_vector(59),
      I3 => rx_mac_config_vector(51),
      I4 => rx_mac_config_vector(35),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT41_1683
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT43 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count(1),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT4,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT41_1683,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_2_pause_addr_7_wide_mux_27_OUT_3_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT31 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count(2),
      I2 => rx_mac_config_vector(42),
      I3 => rx_mac_config_vector(74),
      I4 => rx_mac_config_vector(66),
      I5 => rx_mac_config_vector(34),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT3
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT32 : LUT5
    generic map(
      INIT => X"FBEA5140"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count(2),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count(0),
      I2 => rx_mac_config_vector(58),
      I3 => rx_mac_config_vector(50),
      I4 => rx_mac_config_vector(34),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT31_1685
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT33 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count(1),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT3,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT31_1685,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_2_pause_addr_7_wide_mux_27_OUT_2_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT21 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count(2),
      I2 => rx_mac_config_vector(41),
      I3 => rx_mac_config_vector(73),
      I4 => rx_mac_config_vector(65),
      I5 => rx_mac_config_vector(33),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT2
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT22 : LUT5
    generic map(
      INIT => X"FBEA5140"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count(2),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count(0),
      I2 => rx_mac_config_vector(57),
      I3 => rx_mac_config_vector(49),
      I4 => rx_mac_config_vector(33),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT21_1687
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT23 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count(1),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT2,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT21_1687,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_2_pause_addr_7_wide_mux_27_OUT_1_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT11 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count(2),
      I2 => rx_mac_config_vector(40),
      I3 => rx_mac_config_vector(72),
      I4 => rx_mac_config_vector(64),
      I5 => rx_mac_config_vector(32),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT1
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT12 : LUT5
    generic map(
      INIT => X"FBEA5140"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count(2),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count(0),
      I2 => rx_mac_config_vector(56),
      I3 => rx_mac_config_vector(48),
      I4 => rx_mac_config_vector(32),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT11_1689
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT13 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count(1),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT1,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT11_1689,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_2_pause_addr_7_wide_mux_27_OUT_0_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_special_pause_match_comb81 : LUT6
    generic map(
      INIT => X"8040201008040201"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG1(6),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG1(7),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG1(1),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_special_pause_addr_lut(6),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_special_pause_addr_lut(7),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_special_pause_addr_lut(1),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_special_pause_match_comb8
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_special_pause_match_comb82 : LUT6
    generic map(
      INIT => X"8040201008040201"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG1(3),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG1(4),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG1(5),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_special_pause_addr_lut(3),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_special_pause_addr_lut(4),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_special_pause_addr_lut(5),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_special_pause_match_comb81_1691
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_special_pause_match_comb83 : LUT6
    generic map(
      INIT => X"8421000000000000"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG1(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG1(2),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_special_pause_addr_lut(0),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_special_pause_addr_lut(2),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_special_pause_match_comb81_1691,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_special_pause_match_comb8,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_special_pause_match_comb
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_pause_match_reg_rx_data_7_MUX_940_o81 : LUT6
    generic map(
      INIT => X"8040201008040201"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG1(6),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG1(7),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG1(1),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_expected_pause_data(6),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_expected_pause_data(7),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_expected_pause_data(1),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_pause_match_reg_rx_data_7_MUX_940_o8
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_pause_match_reg_rx_data_7_MUX_940_o82 : LUT6
    generic map(
      INIT => X"8040201008040201"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG1(3),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG1(4),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG1(5),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_expected_pause_data(3),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_expected_pause_data(4),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_expected_pause_data(5),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_pause_match_reg_rx_data_7_MUX_940_o81_1693
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_pause_match_reg_rx_data_7_MUX_940_o83 : LUT6
    generic map(
      INIT => X"8421000000000000"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG1(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG1(2),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_expected_pause_data(0),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_expected_pause_data(2),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_pause_match_reg_rx_data_7_MUX_940_o8,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_pause_match_reg_rx_data_7_MUX_940_o81_1693,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_pause_match_reg_rx_data_7_MUX_940_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_broadcast_byte_match_rx_data_7_MUX_920_o_7_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG1(5),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG1(2),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG1(0),
      O => N92
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_broadcast_byte_match_rx_data_7_MUX_920_o_7_Q : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG1(4),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG1(3),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG1(7),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG1(6),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG1(1),
      I5 => N92,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_broadcast_byte_match_rx_data_7_MUX_920_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_next_rx_state_1_rx_enable_AND_7_o1 : LUT6
    generic map(
      INIT => X"2222222220202000"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_state_FSM_FFd2_1204,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_GOOD_FRAME_INT_323,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_state_FSM_FFd1_1210,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_VALID_INT_321,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_fsmfake0(0),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_BAD_FRAME_INT_322,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_next_rx_state_1_rx_enable_AND_7_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_state_1_next_rx_state_1_OR_9_o1_SW0 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_GOOD_FRAME_INT_323,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_BAD_FRAME_INT_322,
      O => N94
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_state_1_next_rx_state_1_OR_9_o1 : LUT6
    generic map(
      INIT => X"FFFFFFFF1F7F0F0F"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_fsmfake0(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_VALID_INT_321,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_state_FSM_FFd2_1204,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_state_FSM_FFd1_1210,
      I4 => N94,
      I5 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_state_1_next_rx_state_1_OR_9_o_0
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_Mmux_CALC_23_CALC_23_mux_3_OUT32_SW0 : LUT5
    generic map(
      INIT => X"96696996"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(28),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(2),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(6),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(25),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(29),
      O => N96
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_Mmux_CALC_23_CALC_23_mux_3_OUT32 : LUT6
    generic map(
      INIT => X"D77D28827DD78228"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_CRC_COMPUTE_1356,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(5),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(3),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(26),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(1),
      I5 => N96,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_9_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_Mmux_CALC_23_CALC_23_mux_3_OUT31_SW0 : LUT5
    generic map(
      INIT => X"96696996"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(7),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(6),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(24),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(25),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(27),
      O => N98
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_Mmux_CALC_23_CALC_23_mux_3_OUT31 : LUT6
    generic map(
      INIT => X"D77D28827DD78228"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_CRC_COMPUTE_1356,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(4),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(3),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(28),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(0),
      I5 => N98,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_8_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_Mmux_CALC_23_CALC_23_mux_3_OUT281 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(2),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(29),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(1),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(30),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(7),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(24),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_Mmux_CALC_23_CALC_23_mux_3_OUT28
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_Mmux_CALC_23_CALC_23_mux_3_OUT282 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(3),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(28),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(27),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(4),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(6),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(25),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_Mmux_CALC_23_CALC_23_mux_3_OUT281_1699
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_Mmux_CALC_23_CALC_23_mux_3_OUT283 : LUT6
    generic map(
      INIT => X"6996FFFF69960000"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_Mmux_CALC_23_CALC_23_mux_3_OUT281_1699,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(0),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(31),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_Mmux_CALC_23_CALC_23_mux_3_OUT28,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_CRC_COMPUTE_1356,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(5),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_5_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_Mmux_CALC_23_CALC_23_mux_3_OUT20_SW0 : LUT5
    generic map(
      INIT => X"96696996"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(31),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(2),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(6),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(25),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(29),
      O => N100
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_Mmux_CALC_23_CALC_23_mux_3_OUT20 : LUT6
    generic map(
      INIT => X"D77D28827DD78228"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_CRC_COMPUTE_1356,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(3),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(0),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(28),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(19),
      I5 => N100,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_27_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_Mmux_CALC_23_CALC_23_mux_3_OUT12_SW0 : LUT4
    generic map(
      INIT => X"9669"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(6),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(24),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(25),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(30),
      O => N102
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_Mmux_CALC_23_CALC_23_mux_3_OUT12 : LUT6
    generic map(
      INIT => X"D77D28827DD78228"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_CRC_COMPUTE_1356,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(0),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(31),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(7),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(1),
      I5 => N102,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_1_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_Mmux_CALC_23_CALC_23_mux_3_OUT7_SW0 : LUT5
    generic map(
      INIT => X"96696996"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(28),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(31),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(2),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(27),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(29),
      O => N104
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_Mmux_CALC_23_CALC_23_mux_3_OUT7 : LUT6
    generic map(
      INIT => X"D77D28827DD78228"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_CRC_COMPUTE_1356,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(4),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(3),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(0),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(7),
      I5 => N104,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_15_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_Mmux_CALC_23_CALC_23_mux_3_OUT51 : LUT6
    generic map(
      INIT => X"9669699669969669"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(6),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(5),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(25),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(27),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(26),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_Mmux_CALC_23_CALC_23_mux_3_OUT5
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_Mmux_CALC_23_CALC_23_mux_3_OUT52 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(4),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(5),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(1),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(30),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(29),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(2),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_Mmux_CALC_23_CALC_23_mux_3_OUT51_1704
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_Mmux_CALC_23_CALC_23_mux_3_OUT53 : LUT5
    generic map(
      INIT => X"69FF6900"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_Mmux_CALC_23_CALC_23_mux_3_OUT51_1704,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(31),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_Mmux_CALC_23_CALC_23_mux_3_OUT5,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_CRC_COMPUTE_1356,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(5),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_13_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_Mmux_CALC_23_CALC_23_mux_3_OUT3 : LUT6
    generic map(
      INIT => X"D77D28827DD78228"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_CRC_COMPUTE_1356,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(4),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(3),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(28),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(3),
      I5 => N98,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_11_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_Mmux_CALC_23_CALC_23_mux_3_OUT2_SW0 : LUT5
    generic map(
      INIT => X"96696996"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(2),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(7),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(24),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(27),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(29),
      O => N108
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_Mmux_CALC_23_CALC_23_mux_3_OUT2 : LUT6
    generic map(
      INIT => X"D77D28827DD78228"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_CRC_COMPUTE_1356,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(5),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(4),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(26),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(2),
      I5 => N108,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_10_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_14_SW0 : LUT5
    generic map(
      INIT => X"96696996"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(3),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(0),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(26),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(28),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(31),
      O => N110
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_14_Q : LUT6
    generic map(
      INIT => X"D77D28827DD78228"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_CRC_COMPUTE_1356,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_14_bdd6,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(5),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(4),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(6),
      I5 => N110,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_14_Q_1261
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_3_SW0 : LUT5
    generic map(
      INIT => X"96696996"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(26),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(31),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(6),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(25),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(27),
      O => N112
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_3_Q : LUT6
    generic map(
      INIT => X"E44E4EE44EE4E44E"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_CRC_COMPUTE_1356,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(3),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(5),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(4),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(0),
      I5 => N112,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_3_Q_1272
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_28_SW0 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(1),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(29),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(30),
      O => N114
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_28_Q : LUT6
    generic map(
      INIT => X"6996FF009669FF00"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(5),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(26),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(2),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(20),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_CRC_COMPUTE_1356,
      I5 => N114,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_28_Q_1247
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_24_SW0 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(31),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(6),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(25),
      O => N116
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_24_Q : LUT6
    generic map(
      INIT => X"6996FF009669FF00"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(5),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(0),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(26),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(16),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_CRC_COMPUTE_1356,
      I5 => N116,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_24_Q_1251
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_18_SW0 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(31),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(1),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(30),
      O => N118
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_18_Q : LUT6
    generic map(
      INIT => X"6996FF009669FF00"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(5),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(0),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(26),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(10),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_CRC_COMPUTE_1356,
      I5 => N118,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_18_Q_1257
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_16_SW0 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(7),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(24),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(29),
      O => N120
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_16_Q : LUT6
    generic map(
      INIT => X"6996FF009669FF00"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(3),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(28),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(2),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(8),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_CRC_COMPUTE_1356,
      I5 => N120,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_16_Q_1259
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_7_SW0 : LUT6
    generic map(
      INIT => X"9669699669969669"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(26),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(31),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(2),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(24),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(27),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(29),
      O => N122
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_7_Q : LUT6
    generic map(
      INIT => X"6996FF009669FF00"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(5),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(4),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(0),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(7),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_CRC_COMPUTE_1356,
      I5 => N122,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_7_Q_1268
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_6_SW0 : LUT5
    generic map(
      INIT => X"96696996"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(26),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(28),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(31),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(2),
      O => N124
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_6_Q : LUT6
    generic map(
      INIT => X"6996FF009669FF00"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_12_bdd6,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(5),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(3),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(6),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_CRC_COMPUTE_1356,
      I5 => N124,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_6_Q_1269
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_4_SW0 : LUT4
    generic map(
      INIT => X"9669"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(26),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(28),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(7),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(24),
      O => N126
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_4_Q : LUT6
    generic map(
      INIT => X"D77D28827DD78228"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_CRC_COMPUTE_1356,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_14_bdd6,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(5),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(3),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(4),
      I5 => N126,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_4_Q_1271
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_2_SW0 : LUT5
    generic map(
      INIT => X"96696996"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(26),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(31),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(7),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(6),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(24),
      O => N128
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_2_Q : LUT6
    generic map(
      INIT => X"E44E4EE44EE4E44E"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_CRC_COMPUTE_1356,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(2),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_23_bdd2,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(5),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(0),
      I5 => N128,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_2_Q_1273
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_26_SW0 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(28),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(7),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(24),
      O => N130
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_26_Q : LUT6
    generic map(
      INIT => X"6996FF009669FF00"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_14_bdd6,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(4),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(3),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(18),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_CRC_COMPUTE_1356,
      I5 => N130,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_26_Q_1249
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_12_SW0 : LUT6
    generic map(
      INIT => X"9669699669969669"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(26),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(28),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(2),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(7),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(6),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(24),
      O => N132
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_12_Q : LUT6
    generic map(
      INIT => X"6996FF009669FF00"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_12_bdd6,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(5),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(3),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(4),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_CRC_COMPUTE_1356,
      I5 => N132,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC_23_CALC_23_mux_3_OUT_12_Q_1263
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GND_41_o_RX_DV_REG6_AND_324_o2_SW0 : LUT5
    generic map(
      INIT => X"FFFFEFFF"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG6(4),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG6(6),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG6(2),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG6(0),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG6(5),
      O => N134
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GND_41_o_RX_DV_REG6_AND_324_o2 : LUT6
    generic map(
      INIT => X"0000004000000000"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_DV_REG6_1336,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_ERR_REG6_1333,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG6(3),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG6(7),
      I4 => N134,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG6(1),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GND_41_o_RX_DV_REG6_AND_324_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_PWR_43_o_RX_ERR_REG6_AND_322_o1_SW0 : LUT5
    generic map(
      INIT => X"F7FFFFFF"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG6(6),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG6(4),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG6(5),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG6(2),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG6(0),
      O => N136
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_PWR_43_o_RX_ERR_REG6_AND_322_o1 : LUT6
    generic map(
      INIT => X"0000000000000008"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG6(7),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_DV_REG6_1336,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_ERR_REG6_1333,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG6(3),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG6(1),
      I5 => N136,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_PWR_43_o_RX_ERR_REG6_AND_322_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_PRE_FALSE_CARR_FLAG2_SW0 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG5(6),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG5(5),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG5(4),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_DV_REG5,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG5(0),
      O => N138
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_PRE_FALSE_CARR_FLAG2 : LUT6
    generic map(
      INIT => X"0000000020000000"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_ERR_REG5,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG5(7),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG5(3),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG5(2),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG5(1),
      I5 => N138,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_PRE_FALSE_CARR_FLAG
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_PRE_IFG_FLAG1 : LUT6
    generic map(
      INIT => X"0000000000010000"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG5(7),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG5(3),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG5(2),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG5(1),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_ERR_REG5,
      I5 => N138,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_PRE_IFG_FLAG
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Reset_OR_DriverANDClockEnable4_SW0 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_END_DATA_1397,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_FIELD_CONTROL(0),
      O => N148
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Reset_OR_DriverANDClockEnable4 : LUT6
    generic map(
      INIT => X"FFFFFFFFA8FFA8AA"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_END_FRAME_1849,
      I1 => N148,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_CRC_FIELD_1390,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_DEST_ADDRESS_FIELD_1394,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_broadcastaddressmatch_305,
      I5 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Reset_OR_DriverANDClockEnable4_1501
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_SFD_FLAG_DATA_NO_FCS_OR_227_o_SW0 : LUT5
    generic map(
      INIT => X"FFFF5755"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_NO_FCS_1558,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_TYPE_PACKET_1355,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_LT_CHECK_HELD_1311,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_MATCH_1358,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_ONE_1560,
      O => N150
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_SFD_FLAG_DATA_NO_FCS_OR_227_o : LUT6
    generic map(
      INIT => X"FFFFFFFF00010101"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_END_FRAME_1849,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_ZERO_1561,
      I2 => N150,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_DAT_FIELD_1391,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_END_DATA_1397,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_SFD_FLAG_DATA_NO_FCS_OR_227_o_1518
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_FIELD_LT_CHECK_DISABLE_AND_371_o_SW0 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_LT_CHECK_HELD_1311,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LESS_THAN_256_1562,
      O => N152
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_FIELD_LT_CHECK_DISABLE_AND_371_o : LUT6
    generic map(
      INIT => X"0000004000000000"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(3),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(0),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_FIELD_FIELD_COUNTER_1_AND_376_o,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(7),
      I4 => N152,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_FIELD_LT_CHECK_DISABLE_AND_371_o1,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_FIELD_LT_CHECK_DISABLE_AND_371_o_1523
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_10_LENGTH_TYPE_10_equal_8_o111 : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE(5),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_14_0_Q(5),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE(9),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_14_0_Q(9),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE(8),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_14_0_Q(8),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_10_LENGTH_TYPE_10_equal_8_o11
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_10_LENGTH_TYPE_10_equal_8_o112 : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE(6),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_14_0_Q(6),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE(10),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_14_0_Q(10),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE(7),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_14_0_Q(7),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_10_LENGTH_TYPE_10_equal_8_o111_1725
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_10_LENGTH_TYPE_10_equal_8_o113 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_14_0_Q(0),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE(4),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_14_0_Q(4),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_10_LENGTH_TYPE_10_equal_8_o112_1726
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_10_LENGTH_TYPE_10_equal_8_o114 : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE(3),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_14_0_Q(3),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE(2),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_14_0_Q(2),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE(1),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_14_0_Q(1),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_10_LENGTH_TYPE_10_equal_8_o113_1727
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_10_LENGTH_TYPE_10_equal_8_o115 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_10_LENGTH_TYPE_10_equal_8_o112_1726,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_10_LENGTH_TYPE_10_equal_8_o113_1727,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_10_LENGTH_TYPE_10_equal_8_o11,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_10_LENGTH_TYPE_10_equal_8_o111_1725,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_10_LENGTH_TYPE_10_equal_8_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Reset_OR_DriverANDClockEnable1_SW0 : LUT4
    generic map(
      INIT => X"ECCC"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(1),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(4),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(2),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(3),
      O => N154
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_VLAN_ENABLE_PWR_47_o_AND_411_o_0_SW0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_LEN_FIELD_1392,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_VLAN_ENABLE_HELD_1313,
      O => N156
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_VLAN_ENABLE_PWR_47_o_AND_411_o_0_Q : LUT6
    generic map(
      INIT => X"4000000000000000"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(3),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_FIELD_LT_CHECK_DISABLE_AND_371_o1,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(0),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(7),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_FIELD_CONTROL(0),
      I5 => N156,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_VLAN_ENABLE_PWR_47_o_AND_411_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_n0139_SW0 : LUT6
    generic map(
      INIT => X"FFFFFFFFFF75FFBA"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MAX_FRAME_LENGTH_HELD(2),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MAX_FRAME_ENABLE_HELD_1309,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_VLAN_FRAME_1354,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_JUMBO_FRAMES_HELD_1314,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(2),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_PREAMBLE_1395,
      O => N158
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_n0165_inv11 : LUT6
    generic map(
      INIT => X"8040080420100201"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MAX_FRAME_LENGTH_HELD(14),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MAX_FRAME_LENGTH_HELD(1),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MAX_FRAME_LENGTH_HELD(13),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(14),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(13),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(1),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_n0165_inv11_1731
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_n0165_inv12 : LUT6
    generic map(
      INIT => X"8040201008040201"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MAX_FRAME_LENGTH_HELD(8),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MAX_FRAME_LENGTH_HELD(9),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MAX_FRAME_LENGTH_HELD(0),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(8),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(9),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(0),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_n0165_inv12_1732
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_n0165_inv13 : LUT6
    generic map(
      INIT => X"8040201008040201"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MAX_FRAME_LENGTH_HELD(11),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MAX_FRAME_LENGTH_HELD(12),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MAX_FRAME_LENGTH_HELD(5),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(11),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(12),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(5),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_n0165_inv13_1733
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_n0165_inv14 : LUT6
    generic map(
      INIT => X"8008400420021001"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MAX_FRAME_LENGTH_HELD(6),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MAX_FRAME_LENGTH_HELD(7),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MAX_FRAME_LENGTH_HELD(10),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(10),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(6),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(7),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_n0165_inv14_1734
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_FRAME_LEN_ERR_END_OF_DATA_OR_241_o1 : LUT6
    generic map(
      INIT => X"00B000B0BBBB00B0"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_EXCEEDED_MIN_LEN_1577,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_MIN_LENGTH_MATCH_1578,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_CONTROL_FRAME_281,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_PAUSE_LT_CHECK_HELD_1310,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_PADDED_FRAME_1359,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_LT_CHECK_HELD_1311,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_FRAME_LEN_ERR_END_OF_DATA_OR_241_o1_1735
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_FRAME_LEN_ERR_END_OF_DATA_OR_241_o2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_PADDED_FRAME_1359,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_TYPE_PACKET_1355,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_LT_CHECK_HELD_1311,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_MATCH_1358,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_FRAME_LEN_ERR_END_OF_DATA_OR_241_o2_1736
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_FRAME_LEN_ERR_END_OF_DATA_OR_241_o3 : LUT6
    generic map(
      INIT => X"FFA8FFA8FFFFFFA8"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_END_DATA_1397,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_FRAME_LEN_ERR_END_OF_DATA_OR_241_o2_1736,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_FRAME_LEN_ERR_END_OF_DATA_OR_241_o1_1735,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_FRAME_LEN_ERR_1576,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_CRC_FIELD_1390,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_EXCEEDED_MIN_LEN_1577,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_FRAME_LEN_ERR_END_OF_DATA_OR_241_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_GND_46_o_FRAME_COUNTER_7_equal_1_o_7_SW0 : LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(4),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(3),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(2),
      O => N160
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_GND_46_o_FRAME_COUNTER_7_equal_1_o_7_Q : LUT6
    generic map(
      INIT => X"0000000000000008"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(5),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(1),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(7),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(6),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(0),
      I5 => N160,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_GND_46_o_FRAME_COUNTER_7_equal_1_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_Mmux_TX_ER_REG1_GND_39_o_MUX_561_o1_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PRE_COUNT(2),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PRE_COUNT(1),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PRE_COUNT(0),
      O => N162
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_Mmux_TX_ER_REG1_GND_39_o_MUX_561_o1 : LUT6
    generic map(
      INIT => X"5055404440444044"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_TX_UNDERRUN_OUT,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_TX_565,
      I3 => N162,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_COF_562,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MAX_PKT_LEN_REACHED_552,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_TX_ER_REG1_GND_39_o_MUX_561_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_force_burst2 : FDR
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_force_burst2_glue_set_1739,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_force_burst2_370
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_force_assert : FDR
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_force_assert_glue_set_1740,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_force_assert_372
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_force_burst1 : FDR
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_force_burst1_glue_set_1741,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_force_burst1_371
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_early_deassert : FDR
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_early_deassert_glue_set_1742,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_early_deassert_373
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_early_underrun : FDR
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_early_underrun_glue_set_1743,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_early_underrun_374
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_valid : FDR
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_valid_glue_set_1744,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_valid_352
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_ignore_packet : FDR
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_ignore_packet_glue_set_1745,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_ignore_packet_375
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tlast_reg : FDR
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tlast_reg_glue_set,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tlast_reg_392
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_underrun : FDR
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_underrun_glue_set,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_underrun_351
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_MAX_2 : FDS
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_MAX_2_glue_rst_1748,
      S => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_MAX_2_679
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_MAX_3 : FDS
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_MAX_3_glue_rst_1749,
      S => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_MAX_3_680
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_MAX_4 : FDR
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_MAX_4_glue_set_1750,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_MAX_4_681
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_MAX_4_glue_set : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH(4),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n07892,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_MAX_4_glue_set_1750
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_13 : FDR
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_13_glue_set_1751,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1(13)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_12 : FDR
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_12_glue_set_1752,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1(12)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_11 : FDR
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_11_glue_set_1753,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1(11)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_10 : FDR
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_10_glue_set_1754,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1(10)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_9 : FDR
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_9_glue_set_1755,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1(9)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_8 : FDR
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_8_glue_set_1756,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1(8)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_7 : FDR
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_7_glue_set_1757,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1(7)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_6 : FDR
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_6_glue_set_1758,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1(6)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_5 : FDR
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_5_glue_set_1759,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_4 : FDR
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_4_glue_set_1760,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_3 : FDR
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_3_glue_set_1761,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_2 : FDR
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_2_glue_set_1762,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_1 : FDR
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_1_glue_set_1763,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_0 : FDR
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_0_glue_set_1764,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_PAUSE_VECTOR_0 : FDR
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_PAUSE_VECTOR_0_glue_set_1765,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_PAUSE_VECTOR_0
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_REQ_INT : FDR
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_REQ_INT_glue_set_1766,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_REQ_INT_916
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_BAD_OPCODE_INT : FDR
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_BAD_OPCODE_INT_glue_set_1767,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_BAD_OPCODE_INT_915
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT_0 : FDS
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT_0_glue_rst_1768,
      S => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT_4 : FDS
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT_4_glue_rst_1769,
      S => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT_1 : FDS
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT_1_glue_rst_1770,
      S => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_REQ_INT : FDR
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_REQ_INT_glue_set_1771,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_REQ_INT_953
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_END_OF_TX_HELD : FDR
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_END_OF_TX_HELD_glue_set_1773,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_END_OF_TX_HELD_955
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_STATUS_INT : FDR
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_STATUS_INT_glue_set_1774,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_STATUS_INT_833
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_pause_match : FDR
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_pause_match_glue_set_1775,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_pause_match_1168
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_special_pause_match : FDR
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_special_pause_match_glue_set_1776,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_special_pause_match_1167
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_broadcast_match : FDR
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_broadcast_match_glue_set_1777,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_broadcast_match_1169
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_rxstatsaddressmatch : FDR
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_rxstatsaddressmatch_glue_set_1778,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_rxstatsaddressmatch
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_address_match : FDR
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_address_match_glue_set_1779,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_address_match_1166
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_VALIDATE_REQUIRED : FDR
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_VALIDATE_REQUIRED_glue_set_1780,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_VALIDATE_REQUIRED_1302
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA_VALID_EARLY_INT : FDR
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA_VALID_EARLY_INT_glue_set_1781,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA_VALID_EARLY_INT_1303
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_EXT_FIELD : FDR
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_EXT_FIELD_glue_set_1782,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_EXT_FIELD_1389
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_PREAMBLE : FDR
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_PREAMBLE_glue_set_1783,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_PREAMBLE_1395
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_MAX_LENGTH_ERR : FDR
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_MAX_LENGTH_ERR_glue_set_1784,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_MAX_LENGTH_ERR_1572
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(13),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_13_rt_1785
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(12),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_12_rt_1786
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(11),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_11_rt_1787
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(10),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_10_rt_1788
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(9),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_9_rt_1789
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(8),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_8_rt_1790
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(7),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_7_rt_1791
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(6),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_6_rt_1792
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(5),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_5_rt_1793
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(4),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_4_rt_1794
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(3),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_3_rt_1795
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(2),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_2_rt_1796
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(1),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_cy_1_rt_1797
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(13),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_13_rt_1798
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(12),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_12_rt_1799
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(11),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_11_rt_1800
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(10),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_10_rt_1801
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(9),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_9_rt_1802
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(8),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_8_rt_1803
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(7),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_7_rt_1804
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(6),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_6_rt_1805
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(5),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_5_rt_1806
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(4),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_4_rt_1807
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(3),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_3_rt_1808
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(2),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_2_rt_1809
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(1),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_cy_1_rt_1810
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_14_0_Q(9),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_9_rt_1811
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_14_0_Q(8),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_8_rt_1812
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_14_0_Q(7),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_7_rt_1813
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_14_0_Q(6),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_6_rt_1814
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_14_0_Q(5),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_5_rt_1815
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_14_0_Q(4),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_4_rt_1816
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_14_0_Q(3),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_3_rt_1817
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_14_0_Q(2),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_2_rt_1818
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_14_0_Q(1),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_cy_1_rt_1819
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_xor_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(14),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_xor_14_rt_1820
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_xor_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(14),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_xor_14_rt_1821
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_xor_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_14_0_Q(10),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_xor_10_rt_1822
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CFL_rstpot : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CFL_563,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CFL_GND_36_o_MUX_352_o,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n0921_inv_488,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CFL_rstpot_1838
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_two_byte_tx : FDR
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_two_byte_tx_rstpot_1844,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_two_byte_tx_376
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_COUNT_SET : FDR
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_COUNT_SET_rstpot_1845,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_COUNT_SET_832
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_promiscuous_mode_sample : FDS
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_promiscuous_mode_sample_rstpot_1846,
      S => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_promiscuous_mode_sample_1170
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MATCH_FRAME_INT_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_END_FCS_1396,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MATCH_FRAME_INT_1304,
      I2 => N0,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MATCH_FRAME_INT_rstpot_1847
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MATCH_FRAME_INT : FDR
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MATCH_FRAME_INT_rstpot_1847,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MATCH_FRAME_INT_1304
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_TYPE_PACKET : FDS
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_TYPE_PACKET_rstpot_1848,
      S => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_TYPE_PACKET_1355
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd1 : FD
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd1_rstpot_1852,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd1_387
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_no_burst : FD
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_no_burst_rstpot_1853,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_no_burst_394
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_update_pause_ad_sync_reg : FD
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_update_pause_ad_sync_reg_rstpot_1854,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_update_pause_ad_sync_reg_1171
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_rx_filtered_data_valid : FD
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_rx_filtered_data_valid_rstpot_1855,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_rx_filtered_data_valid_306
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_state_FSM_FFd1 : FD
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_state_FSM_FFd1_rstpot_1856,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_state_FSM_FFd1_1210
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_mac_tvalid : FD
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_mac_tvalid_rstpot,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_mac_tvalid_261
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_mac_tlast : FD
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_mac_tlast_rstpot,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_mac_tlast_262
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_force_end : FD
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_force_end_rstpot_1859,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_force_end_393
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT_2_rstpot,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_MUX_CONTROL : FD
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_MUX_CONTROL_rstpot_1861,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_MUX_CONTROL_954
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR_2 : FD
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR_2_rstpot1_1862,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_ENABLE_REG : FD
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_ENABLE_REG_rstpot1_1863,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_ENABLE_REG_828
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_ENABLE_REG : FD
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_ENABLE_REG_rstpot1_1864,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_ENABLE_REG_834
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA_VALID_FINAL : FD
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA_VALID_FINAL_rstpot1_1865,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA_VALID_FINAL_285
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_END_DATA : FD
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_END_DATA_rstpot1_1866,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_END_DATA_1397
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_SRC_ADDRESS_FIELD : FD
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_SRC_ADDRESS_FIELD_rstpot1_1867,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_SRC_ADDRESS_FIELD_1393
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_END_FCS : FD
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_END_FCS_rstpot1_1868,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_END_FCS_1396
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_MATCH : FD
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_MATCH_rstpot1_1869,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_MATCH_1358
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_CONTROL_FRAME_INT : FD
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_CONTROL_FRAME_INT_rstpot1_1870,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_CONTROL_FRAME_INT_1539
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_ADD_CONTROL_ENABLE : FD
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_ADD_CONTROL_ENABLE_rstpot1_1871,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_ADD_CONTROL_ENABLE_1541
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_MULTICAST_MATCH : FD
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_MULTICAST_MATCH_rstpot1_1872,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_MULTICAST_MATCH_1540
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_WITH_FCS : FD
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_WITH_FCS_rstpot1_1873,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_WITH_FCS_1559
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_PADDED_FRAME : FD
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_PADDED_FRAME_rstpot1_1874,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_PADDED_FRAME_1359
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_LENGTH_TYPE_ERR : FD
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_LENGTH_TYPE_ERR_rstpot1_1875,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_LENGTH_TYPE_ERR_1341
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_STATISTICS_VALID : FD
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_STATISTICS_VALID_rstpot1_1876,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_STATISTICS_VALID_1344
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_BAD_FRAME : FD
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_BAD_FRAME_rstpot1_1877,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_BAD_FRAME_1339
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_GOOD_FRAME : FD
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_GOOD_FRAME_rstpot1_1878,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_GOOD_FRAME_1340
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_CRC_ENGINE_ERR : FD
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_CRC_ENGINE_ERR_rstpot1_1879,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_CRC_ENGINE_ERR_1575
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_RX_DV_REG6_RX_ERR_REG6_OR_193_o_SW0_SW0 : LUT6
    generic map(
      INIT => X"AAA2FFE2AAA2FFF3"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_END_FRAME_1849,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_DV_REG7_1335,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_DV_REG6_1336,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_ERR_REG6_1333,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_END_EXT_1443,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_ERR_REG7_1332,
      O => N164
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_RX_DV_REG6_RX_ERR_REG6_OR_193_o_SW0_SW1 : LUT6
    generic map(
      INIT => X"FFFF333354551011"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_END_EXT_1443,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_DV_REG7_1335,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_ERR_REG6_1333,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_ERR_REG7_1332,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_DV_REG6_1336,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_END_FRAME_1849,
      O => N165
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_MUX_CONTROL_rstpot : LUT3
    generic map(
      INIT => X"0E"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_MUX_CONTROL_glue_ce_1772,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0141_945,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_MUX_CONTROL_rstpot_1861
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_END_OF_TX1 : LUT6
    generic map(
      INIT => X"080800000A000000"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_REG_DATA_VALID_527,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_AVAIL_CONTROL_957,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_COF_SEEN_551,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_AVAIL_IN_REG_967,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_COF_562,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_MUX_CONTROL_954,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_TX_END_OF_TX
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_MAX_2_glue_rst : LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH(2),
      I1 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n07892,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_MAX_2_glue_rst_1748
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_MAX_3_glue_rst : LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_LENGTH(3),
      I1 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n07892,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_MAX_3_glue_rst_1749
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_RX_DV_REG6_RX_ERR_REG6_OR_193_o_SW0 : LUT3
    generic map(
      INIT => X"81"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG5(3),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG5(2),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG5(1),
      O => N169
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_RX_DV_REG6_RX_ERR_REG6_OR_193_o : LUT6
    generic map(
      INIT => X"00FF00FF04BF00FF"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG5(7),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_ERR_REG5,
      I2 => N165,
      I3 => N164,
      I4 => N169,
      I5 => N138,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_RX_DV_REG6_RX_ERR_REG6_OR_193_o_1431
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_PRE_FALSE_CARR_FLAG2_SW1 : LUT4
    generic map(
      INIT => X"DFFF"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG5(3),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG5(7),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG5(2),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG5(1),
      O => N171
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_RX_ERR_REG5_END_EXT_AND_333_o1 : LUT6
    generic map(
      INIT => X"4044404440444444"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_END_EXT_1443,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_EXT_FIELD_1389,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_DV_REG5,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_ERR_REG5,
      I4 => N171,
      I5 => N138,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_RX_ERR_REG5_END_EXT_AND_333_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_REG_TX_CONTROL_GND_36_o_MUX_507_o113_SW0 : LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_LEN(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_VLAN_EN_586,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_ENABLE_569,
      O => N173
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n078921 : LUT6
    generic map(
      INIT => X"0001000000000000"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_LEN(2),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_LEN(11),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_LEN(3),
      I3 => N173,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_REG_TX_CONTROL_GND_36_o_MUX_507_o111_1607,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_REG_TX_CONTROL_GND_36_o_MUX_507_o112_1608,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n07892
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_n0165_inv15_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_JUMBO_FRAMES_HELD_1314,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_PREAMBLE_1395,
      O => N178
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_n0165_inv15_SW1 : LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAABAA"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_JUMBO_FRAMES_HELD_1314,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(2),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(3),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(4),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_EXT_FIELD_1389,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_PREAMBLE_1395,
      O => N179
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_n0165_inv2 : LUT6
    generic map(
      INIT => X"FFFF7FFF80000000"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_n0165_inv13_1733,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_n0165_inv11_1731,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_n0165_inv14_1734,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_n0165_inv12_1732,
      I4 => N179,
      I5 => N178,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_n0165_inv
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IDL_rstpot : LUT6
    generic map(
      INIT => X"FFFF5050FFFFDC50"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CDS_567,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CLIENT_FRAME_DONE_555,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IDL_568,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIFG_556,
      I4 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIFG_TX_FAIL_DELAY_AND_167_o1_428,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IDL_rstpot_1843
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT_4_glue_rst : LUT4
    generic map(
      INIT => X"00CA"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(4),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Result(4),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0187_inv_930,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0147,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT_4_glue_rst_1769
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_SCSH_rstpot : LUT4
    generic map(
      INIT => X"F0E4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_TX_OK_557,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_SCSH_560,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIFG_GND_36_o_MUX_380_o,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n0977_inv_486,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_SCSH_rstpot_1834
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_mac_tlast_rstpot1 : LUT4
    generic map(
      INIT => X"00FE"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_BAD_FRAME_INT_322,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_GOOD_FRAME_INT_323,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_state_FSM_FFd1_1210,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_state_1_next_rx_state_1_OR_9_o_0,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_mac_tlast_rstpot
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_MAX_LENGTH_ERR_glue_set : LUT5
    generic map(
      INIT => X"FF03FFAA"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_MAX_LENGTH_ERR_1572,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_JUMBO_FRAMES_HELD_1314,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_PREAMBLE_1395,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_n0139_1571,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_n0165_inv,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_MAX_LENGTH_ERR_glue_set_1784
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_RXD_REG_7_INV_456_o3_SW0 : LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(24),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(7),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(31),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(0),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(30),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(1),
      O => N181
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_IFG_COUNT_7_GND_36_o_mux_33_OUT21 : LUT6
    generic map(
      INIT => X"0000C3AA0000AAAA"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_DELAY_HELD(1),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT(1),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT(0),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIFG_556,
      I4 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIFG_TX_FAIL_DELAY_AND_167_o1_428,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT_7_GND_36_o_mux_33_OUT_1_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_IFG_COUNT_7_GND_36_o_mux_33_OUT51 : LUT6
    generic map(
      INIT => X"0000CA3A0000AAAA"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DEL_MASKED(4),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT(4),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIFG_556,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_IFG_COUNT_7_GND_36_o_mux_33_OUT51_427,
      I4 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIFG_TX_FAIL_DELAY_AND_167_o1_428,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT_7_GND_36_o_mux_33_OUT_4_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_IFG_COUNT_7_GND_36_o_mux_33_OUT11 : LUT5
    generic map(
      INIT => X"FF3AFFAA"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_DELAY_HELD(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT(0),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIFG_556,
      I3 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIFG_TX_FAIL_DELAY_AND_167_o1_428,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT_7_GND_36_o_mux_33_OUT_0_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_n0165_inv15_SW2 : LUT5
    generic map(
      INIT => X"FFFF6FF6"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MAX_FRAME_LENGTH_HELD(3),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(3),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_MAX_FRAME_LENGTH_HELD(4),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(4),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_EXT_FIELD_1389,
      O => N183
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_n0139 : LUT6
    generic map(
      INIT => X"0000000040000000"
    )
    port map (
      I0 => N183,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_n0165_inv13_1733,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_n0165_inv14_1734,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_n0165_inv11_1731,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_n0165_inv12_1732,
      I5 => N158,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_n0139_1571
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n1164_inv1 : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FCS_561,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIFG_556,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_REG_SCSH_529,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0(14),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STOP_MAX_PKT_528,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n1164_inv
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_n0369_inv111 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_SFD_FLAG_1308,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_PREAMBLE_1395,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_LEN_FIELD_1392,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_FIELD_CONTROL(1),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_n0369_inv11
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_rxstatsaddressmatch_glue_set : LUT4
    generic map(
      INIT => X"BBB0"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_rx_data_valid_srl16_reg1_1178,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_rx_data_valid_srl16,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_rx_filtered_data_valid_306,
      I3 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_rxstatsaddressmatch,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_rxstatsaddressmatch_glue_set_1778
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_END_DATA_rstpot1 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_DV_REG3_1337,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_DV_REG2,
      I2 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_END_DATA_rstpot1_1866
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_END_FCS_rstpot1 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_DV_REG6_1336,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_DV_REG5,
      I2 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_END_FCS_rstpot1_1868
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_RXD_REG_7_INV_456_o5_SW0 : LUT4
    generic map(
      INIT => X"8421"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(29),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(28),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(2),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(3),
      O => N185
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIFG_TX_FAIL_DELAY_AND_167_o1 : LUT6
    generic map(
      INIT => X"FFFF0000FFFE0000"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT(7),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT(6),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT(5),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT(4),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIFG_556,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_IFG_COUNT_7_GND_36_o_mux_33_OUT51_427,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIFG_TX_FAIL_DELAY_AND_167_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mcount_DATA_COUNT_val1 : LUT6
    generic map(
      INIT => X"FFFFF0F0FFFF10F0"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_ACK_INT_966,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_STATE_COUNT_FSM_FFd1_968,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_REQ_INT_953,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_MUX_CONTROL_954,
      I4 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n01471_1641,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mcount_DATA_COUNT_val
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n1177_inv1 : LUT4
    generic map(
      INIT => X"FEFC"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIFG_556,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PRE_566,
      I2 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIFG_TX_FAIL_DELAY_AND_167_o1_428,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n1177_inv
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MAX_PKT_LEN_REACHED_rstpot_lut : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_JUMBO_EN_587,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIFG_556,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MAX_PKT_LEN_REACHED_rstpot_lut_1890
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MAX_PKT_LEN_REACHED_rstpot_cy : MUXCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT_14_FRAME_MAX_14_equal_51_o,
      DI => NlwRenamedSig_OI_N1,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MAX_PKT_LEN_REACHED_rstpot_lut_1890,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT_14_FRAME_MAX_14_equal_51_o_l1
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MAX_PKT_LEN_REACHED_rstpot_cy1 : MUXCY
    port map (
      CI => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT_14_FRAME_MAX_14_equal_51_o_l1,
      DI => N0,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MAX_PKT_LEN_REACHED_rstpot_lut1_1892,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MAX_PKT_LEN_REACHED_rstpot
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIFG_TX_FAIL_DELAY_AND_167_o11_SW0 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT(7),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT(6),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT(5),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT(4),
      O => N189
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MAX_PKT_LEN_REACHED_rstpot_lut1 : LUT6
    generic map(
      INIT => X"EFEEEEEEFFFFFFFF"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_JUMBO_EN_587,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_IFG_COUNT_7_GND_36_o_mux_33_OUT51_427,
      I3 => N189,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIFG_556,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MAX_PKT_LEN_REACHED_552,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MAX_PKT_LEN_REACHED_rstpot_lut1_1892
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R3_PWR_20_o_MUX_31_o,
      Q => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R3 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R2_271,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R3_273
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R3_PWR_20_o_MUX_31_o,
      Q => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R3 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R2_275,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R3_277
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DST_ADDR_MULTI_MATCH : FDE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n1071_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DST_ADDR_MULTI_MATCH_GND_36_o_MUX_502_o,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DST_ADDR_MULTI_MATCH_533
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_REG_STATUS_VALID : FD
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_REG_STATUS_VALID_GND_36_o_MUX_476_o,
      Q => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_REG_STATUS_VALID
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_REG_SCSH : FD
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_REG_SCSH_GND_36_o_MUX_511_o,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_REG_SCSH_529
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PAD_PIPE : FD
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PAD_PIPE_GND_36_o_MUX_467_o,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PAD_PIPE_544
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_REG_PREAMBLE : FD
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_REG_PREAMBLE_GND_36_o_MUX_411_o,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_REG_PREAMBLE_549
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_CRC_MODE : FDE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n0836_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_CRC_MODE_GND_36_o_MUX_309_o,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_CRC_MODE_526
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_REG_DATA_VALID : FD
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_TX_DA_GND_36_o_MUX_348_o,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_REG_DATA_VALID_527
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_REG_TX_VLAN : FD
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_REG_TX_VLAN_GND_36_o_MUX_509_o,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_REG_TX_VLAN_530
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_REG_TX_CONTROL : FD
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_REG_TX_CONTROL_GND_36_o_MUX_507_o,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_REG_TX_CONTROL_531
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DST_ADDR_BYTE4_MATCH : FDE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n1071_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DST_ADDR_BYTE4_MATCH_GND_36_o_MUX_500_o_600,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DST_ADDR_BYTE4_MATCH_534
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DST_ADDR_BYTE3_MATCH : FDE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n1071_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DST_ADDR_BYTE3_MATCH_GND_36_o_MUX_498_o,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DST_ADDR_BYTE3_MATCH_535
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DST_ADDR_BYTE2_MATCH : FDE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n1071_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DST_ADDR_BYTE2_MATCH_GND_36_o_MUX_496_o,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DST_ADDR_BYTE2_MATCH_536
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DST_ADDR_BYTE1_MATCH : FDE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n1071_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DST_ADDR_BYTE1_MATCH_GND_36_o_MUX_494_o,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DST_ADDR_BYTE1_MATCH_537
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DST_ADDR_BYTE0_MATCH : FDE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n1071_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DST_ADDR_BYTE0_MATCH_GND_36_o_MUX_492_o,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DST_ADDR_BYTE0_MATCH_538
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_TX_STATUS_VALID : FD
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_TX_STATUS_VALID_GND_36_o_MUX_471_o,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_TX_STATUS_VALID_542
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CR178124_FIX : FD
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CR178124_FIX_GND_36_o_MUX_469_o,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CR178124_FIX_543
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_COMPUTE : FD
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_COMPUTE_GND_36_o_MUX_451_o,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_COMPUTE_545
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC : FD
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_GND_36_o_MUX_417_o,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_546
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PAD : FD
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PAD_GND_36_o_MUX_415_o,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PAD_547
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_TRANSMIT : FD
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_TRANSMIT_GND_36_o_MUX_413_o,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_TRANSMIT_548
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE : FD
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_GND_36_o_MUX_409_o,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_550
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_REG_PREAMBLE_DONE : FD
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_REG_PREAMBLE_DONE_GND_36_o_MUX_386_o,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_REG_PREAMBLE_DONE_554
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_ENABLE : FDE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n0836_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_ENABLE_GND_36_o_MUX_321_o,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_MAX_FRAME_ENABLE_569
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DEL_EN : FDE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n0836_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DEL_EN_GND_36_o_MUX_317_o,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DEL_EN_585
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_VLAN_EN : FDE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n0836_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_VLAN_EN_GND_36_o_MUX_313_o,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_VLAN_EN_586
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_JUMBO_EN : FDE
    port map (
      C => tx_axi_clk,
      CE => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n0836_inv,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_JUMBO_EN_GND_36_o_MUX_311_o,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_JUMBO_EN_587
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_GMII_TX_ER_TO_PHY : FD
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_GMII_TX_ER_TO_PHY_GND_39_o_MUX_577_o,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_GMII_TX_ER_TO_PHY_268
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_GMII_TX_EN_TO_PHY : FD
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_GMII_TX_EN_TO_PHY_GND_39_o_MUX_575_o,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_GMII_TX_EN_TO_PHY_267
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_TX_EN_REG1 : FD
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_TX_EN_REG1_GND_39_o_MUX_559_o,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_TX_EN_REG1_1580
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_TX_ER_REG1 : FD
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_TX_ER_REG1_GND_39_o_MUX_561_o,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_TX_ER_REG1_1579
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STOP_MAX_PKT : FD
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STOP_MAX_PKT_rstpot_1823,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STOP_MAX_PKT_528
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_COF_SEEN : FD
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_COF_SEEN_rstpot_1824,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_COF_SEEN_551
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIN_PKT_LEN_REACHED : FD
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIN_PKT_LEN_REACHED_rstpot_1825,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIN_PKT_LEN_REACHED_553
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DST_ADDR_BYTE5_MATCH : FD
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DST_ADDR_BYTE5_MATCH_rstpot_1826,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DST_ADDR_BYTE5_MATCH_532
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_TX_SUCCESS : FD
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_TX_SUCCESS_rstpot_1827,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_TX_SUCCESS_539
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_TX_UNDERRUN2 : FD
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_TX_UNDERRUN2_rstpot_1828,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_TX_UNDERRUN2_540
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MAX_PKT_LEN_REACHED : FD
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MAX_PKT_LEN_REACHED_rstpot,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MAX_PKT_LEN_REACHED_552
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CLIENT_FRAME_DONE : FD
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CLIENT_FRAME_DONE_rstpot_1830,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CLIENT_FRAME_DONE_555
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIFG : FD
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIFG_rstpot_1831,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIFG_556
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_TX_OK : FD
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_TX_OK_rstpot_1832,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_TX_OK_557
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_GOOD : FD
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_GOOD_rstpot_1833,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_GOOD_559
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_SCSH : FD
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_SCSH_rstpot_1834,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_SCSH_560
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_BAD : FD
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_BAD_rstpot_1835,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_BAD_558
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FCS : FD
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FCS_rstpot_1836,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FCS_561
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_COF : FD
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_COF_rstpot_1837,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_COF_562
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CFL : FD
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CFL_rstpot_1838,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CFL_563
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_TX_DA : FD
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_TX_DA_rstpot_1839,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_TX_DA_564
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_TX : FD
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_TX_rstpot_1840,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_TX_565
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PRE : FD
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PRE_rstpot_1841,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PRE_566
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CDS : FD
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CDS_rstpot_1842,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CDS_567
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IDL : FD
    port map (
      C => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IDL_rstpot_1843,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IDL_568
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT_2_rstpot1 : LUT5
    generic map(
      INIT => X"FBEA5140"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT_cst1,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(14),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(2),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Result(2),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_CRC_MODE_526,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT_2_rstpot
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FCS_rstpot : LUT4
    generic map(
      INIT => X"5510"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_SCSH_560,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FCS_561,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_FCS_GND_36_o_MUX_360_o11,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FCS_rstpot_1836
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PRE_rstpot : LUT6
    generic map(
      INIT => X"5510101010101010"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_TX_565,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PRE_566,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IDL_568,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_TX_DATA_VALID_OUT,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_INT_ENABLE_417,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PRE_rstpot_1841
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CDS_rstpot : LUT6
    generic map(
      INIT => X"5510101010101010"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PRE_566,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CDS_567,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IDL_568,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_TX_DATA_VALID_OUT,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_INT_ENABLE_417,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CDS_rstpot_1842
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR_2_rstpot1 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DST_ADDR_MULTI_MATCH_533,
      I1 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_TX_BROADCAST,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STATUS_VECTOR_2_rstpot1_1862
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_BAD_FRAME_rstpot1 : LUT6
    generic map(
      INIT => X"4444444444444440"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_GOOD_FRAME_rstpot,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_MAX_LENGTH_ERR_1572,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_FRAME_LEN_ERR_1576,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_FCS_ERR_1574,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_CRC_ENGINE_ERR_1575,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_BAD_FRAME_rstpot1_1877
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_GOOD_FRAME_rstpot1 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_BAD_FRAME_rstpot,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_END_FRAME_1849,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_INHIBIT_FRAME_1573,
      I3 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_GOOD_FRAME_rstpot1_1878
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_force_burst1_glue_set : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_force_burst1_371,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_ACK_OUT_317,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_early_deassert_two_byte_tx_OR_36_o,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_force_burst1_glue_set_1741
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT_0_glue_rst : LUT3
    generic map(
      INIT => X"06"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0187_inv_930,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0147,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT_0_glue_rst_1768
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT_1_glue_rst : LUT4
    generic map(
      INIT => X"006A"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(1),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(0),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0187_inv_930,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_n0147,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT_1_glue_rst_1770
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DST_ADDR_BYTE5_MATCH_rstpot : LUT4
    generic map(
      INIT => X"FE02"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DST_ADDR_BYTE5_MATCH_532,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_5_Q,
      I2 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DST_ADDR_BYTE4_MATCH_GND_36_o_MUX_500_o_600,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_DST_ADDR_BYTE5_MATCH_rstpot_1826
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_BAD_rstpot : LUT4
    generic map(
      INIT => X"03AA"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_BAD_558,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIFG_556,
      I2 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n0961_inv_487,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_BAD_rstpot_1835
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_MULTICAST_MATCH_rstpot1 : LUT4
    generic map(
      INIT => X"00CA"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_MULTICAST_MATCH_1540,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(0),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_n0477_inv1,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Reset_OR_DriverANDClockEnable4_1501,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_MULTICAST_MATCH_rstpot1_1872
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_REQ_INT_glue_set : LUT6
    generic map(
      INIT => X"FF02020202020202"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_REQ_INT_916,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_BAD_FRAME_INT_283,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GOOD_FRAME_INT_284,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n00811,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_COUNT(0),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_GND_27_o_DATA_7_equal_8_o,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_REQ_INT_glue_set_1766
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_BAD_OPCODE_INT_glue_set : LUT6
    generic map(
      INIT => X"02020202FF020202"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_BAD_OPCODE_INT_915,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_BAD_FRAME_INT_283,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GOOD_FRAME_INT_284,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_n00811,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_COUNT(0),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_GND_27_o_DATA_7_equal_8_o,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_BAD_OPCODE_INT_glue_set_1767
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_CONTROL_FRAME_INT_rstpot1 : LUT6
    generic map(
      INIT => X"0C080F0A0008000A"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_CONTROL_FRAME_INT_1539,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_FIELD_FIELD_COUNTER_1_AND_376_o,
      I2 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_n0369_inv11,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_GND_45_o_CONTROL_MATCH_AND_415_o,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_CONTROL_FRAME_INT_rstpot1_1870
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_next_tx_state_3_tx_state_3_OR_22_o3_SW0 : LUT5
    generic map(
      INIT => X"FFFF88A8"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_ACK_OUT_317,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_early_deassert_373,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd2_383,
      I3 => tx_axis_mac_tvalid,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd3_384,
      O => N199
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_IFG_COUNT_7_GND_36_o_mux_33_OUT8_SW1 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT(6),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT(5),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT(4),
      O => N202
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_IFG_COUNT_7_GND_36_o_mux_33_OUT8 : LUT6
    generic map(
      INIT => X"5151511540404000"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIFG_556,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT(7),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_IFG_COUNT_7_GND_36_o_mux_33_OUT51_427,
      I4 => N202,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DEL_MASKED(7),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IFG_COUNT_7_GND_36_o_mux_33_OUT_7_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_mac_tvalid_rstpot1 : LUT6
    generic map(
      INIT => X"4440400044444444"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_state_FSM_FFd2_1204,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_fsmfake0(0),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_state_FSM_FFd1_1210,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_VALID_INT_321,
      I5 => N94,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_mac_tvalid_rstpot
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT_15_GND_31_o_equal_8_o_15_3_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT(15),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT(14),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT(13),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT(12),
      O => N206
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_STATUS_INT_glue_set : LUT6
    generic map(
      INIT => X"AA2AFF3FAA2AAA2A"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_STATUS_INT_833,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT_15_GND_31_o_equal_8_o_15_1_1675,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT_15_GND_31_o_equal_8_o_15_Q,
      I3 => N206,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_STATE_COUNT_FSM_FFd2_931,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_COUNT_SET_REG_1100,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_STATUS_INT_glue_set_1774
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_13_glue_set : LUT6
    generic map(
      INIT => X"AAFACCFCAAAACCCC"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0(13),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1(13),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0(14),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STOP_MAX_PKT_528,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n1164_inv,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n07981,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_13_glue_set_1751
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_12_glue_set : LUT6
    generic map(
      INIT => X"AAFACCFCAAAACCCC"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0(12),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1(12),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0(14),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STOP_MAX_PKT_528,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n1164_inv,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n07981,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_12_glue_set_1752
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_11_glue_set : LUT6
    generic map(
      INIT => X"AAFACCFCAAAACCCC"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0(11),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1(11),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0(14),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STOP_MAX_PKT_528,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n1164_inv,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n07981,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_11_glue_set_1753
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_10_glue_set : LUT6
    generic map(
      INIT => X"AAFACCFCAAAACCCC"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0(10),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1(10),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0(14),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STOP_MAX_PKT_528,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n1164_inv,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n07981,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_10_glue_set_1754
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_9_glue_set : LUT6
    generic map(
      INIT => X"AAFACCFCAAAACCCC"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0(9),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1(9),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0(14),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STOP_MAX_PKT_528,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n1164_inv,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n07981,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_9_glue_set_1755
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_8_glue_set : LUT6
    generic map(
      INIT => X"AAFACCFCAAAACCCC"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0(8),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1(8),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0(14),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STOP_MAX_PKT_528,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n1164_inv,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n07981,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_8_glue_set_1756
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_7_glue_set : LUT6
    generic map(
      INIT => X"AAFACCFCAAAACCCC"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0(7),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1(7),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0(14),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STOP_MAX_PKT_528,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n1164_inv,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n07981,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_7_glue_set_1757
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_6_glue_set : LUT6
    generic map(
      INIT => X"AAFACCFCAAAACCCC"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0(6),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1(6),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0(14),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STOP_MAX_PKT_528,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n1164_inv,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n07981,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_6_glue_set_1758
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_5_glue_set : LUT6
    generic map(
      INIT => X"AAFACCFCAAAACCCC"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0(5),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1(5),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0(14),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STOP_MAX_PKT_528,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n1164_inv,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n07981,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_5_glue_set_1759
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_4_glue_set : LUT6
    generic map(
      INIT => X"AAFACCFCAAAACCCC"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0(4),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1(4),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0(14),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STOP_MAX_PKT_528,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n1164_inv,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n07981,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_4_glue_set_1760
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_3_glue_set : LUT6
    generic map(
      INIT => X"AAFACCFCAAAACCCC"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0(3),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1(3),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0(14),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STOP_MAX_PKT_528,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n1164_inv,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n07981,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_3_glue_set_1761
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_2_glue_set : LUT6
    generic map(
      INIT => X"AAFACCFCAAAACCCC"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0(2),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1(2),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0(14),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STOP_MAX_PKT_528,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n1164_inv,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n07981,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_2_glue_set_1762
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_1_glue_set : LUT6
    generic map(
      INIT => X"AAFACCFCAAAACCCC"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0(1),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1(1),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0(14),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STOP_MAX_PKT_528,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n1164_inv,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n07981,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_1_glue_set_1763
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_0_glue_set : LUT6
    generic map(
      INIT => X"AAFACCFCAAAACCCC"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1(0),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_0(14),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STOP_MAX_PKT_528,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n1164_inv,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n07981,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_BYTE_COUNT_1_0_glue_set_1764
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut_0_Q : LUT5
    generic map(
      INIT => X"45557555"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_GOOD_FRAME_IN_TX_REG_1093,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_sync_good_rx_data_sync2,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_REQ_TO_TX_837,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX(0),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut_1_Q : LUT5
    generic map(
      INIT => X"45557555"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT(1),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_GOOD_FRAME_IN_TX_REG_1093,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_sync_good_rx_data_sync2,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_REQ_TO_TX_837,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX(1),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_STATE_COUNT_FSM_FFd2_In2 : LUT5
    generic map(
      INIT => X"FFFFA2AA"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_AVAIL_IN_REG_967,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_REG_DATA_VALID_527,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_COF_SEEN_551,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_COF_562,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_MUX_CONTROL_954,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_STATE_COUNT_FSM_FFd2_In2_1643
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_TX_DA_GND_36_o_MUX_348_o1 : LUT4
    generic map(
      INIT => X"5140"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_MUX_CONTROL_954,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_AVAIL_CONTROL_957,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_AVAIL_IN_REG_967,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_TX_DA_GND_36_o_MUX_348_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut_2_Q : LUT5
    generic map(
      INIT => X"45557555"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT(2),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_GOOD_FRAME_IN_TX_REG_1093,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_sync_good_rx_data_sync2,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_REQ_TO_TX_837,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX(2),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut_3_Q : LUT5
    generic map(
      INIT => X"45557555"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT(3),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_GOOD_FRAME_IN_TX_REG_1093,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_sync_good_rx_data_sync2,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_REQ_TO_TX_837,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX(3),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut_4_Q : LUT5
    generic map(
      INIT => X"45557555"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT(4),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_GOOD_FRAME_IN_TX_REG_1093,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_sync_good_rx_data_sync2,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_REQ_TO_TX_837,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX(4),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut_5_Q : LUT5
    generic map(
      INIT => X"45557555"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT(5),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_GOOD_FRAME_IN_TX_REG_1093,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_sync_good_rx_data_sync2,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_REQ_TO_TX_837,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX(5),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut_6_Q : LUT5
    generic map(
      INIT => X"45557555"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT(6),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_GOOD_FRAME_IN_TX_REG_1093,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_sync_good_rx_data_sync2,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_REQ_TO_TX_837,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX(6),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut(6)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut_7_Q : LUT5
    generic map(
      INIT => X"45557555"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT(7),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_GOOD_FRAME_IN_TX_REG_1093,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_sync_good_rx_data_sync2,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_REQ_TO_TX_837,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX(7),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut(7)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_FIELD_LT_CHECK_DISABLE_AND_375_o1 : LUT5
    generic map(
      INIT => X"20000000"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LESS_THAN_256_1562,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_LT_CHECK_HELD_1311,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_LEN_FIELD_1392,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_FIELD_CONTROL(1),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_GND_45_o_RXD_7_equal_9_o,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_FIELD_LT_CHECK_DISABLE_AND_375_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mmux_VLAN_MATCH_1_GND_45_o_MUX_812_o11 : LUT6
    generic map(
      INIT => X"F444044404440444"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_END_FRAME_1849,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_VLAN_MATCH(1),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_FIELD_CONTROL(1),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_LEN_FIELD_1392,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_VLAN_MATCH(0),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_GND_45_o_RXD_7_equal_9_o,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_VLAN_MATCH_1_GND_45_o_MUX_812_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mmux_CFL_GND_36_o_MUX_352_o11 : LUT6
    generic map(
      INIT => X"0000002000003030"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_UNDERRUN_INT_829,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MAX_PKT_LEN_REACHED_552,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_TX_565,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_MUX_CONTROL_954,
      I4 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_TX_DATA_VALID_OUT,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CFL_GND_36_o_MUX_352_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_MATCH_rstpot1 : LUT5
    generic map(
      INIT => X"11100100"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_END_FRAME_1849,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_DAT_FIELD_1391,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_MATCH_1358,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_10_LENGTH_TYPE_10_equal_8_o,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_MATCH_rstpot1_1869
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_GND_45_o_PAUSEADDRESSMATCH_AND_398_o1_SW0 : LUT5
    generic map(
      INIT => X"FFFFDDDF"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(3),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(0),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_specialpauseaddressmatch_303,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_pauseaddressmatch_304,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(7),
      O => N212
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_ADD_CONTROL_ENABLE_rstpot1 : LUT6
    generic map(
      INIT => X"0100010045440100"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_CONTROL_MATCH_1557,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_END_FRAME_1849,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_ADD_CONTROL_ENABLE_1541,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_FIELD_LT_CHECK_DISABLE_AND_371_o1,
      I5 => N212,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_ADD_CONTROL_ENABLE_rstpot1_1871
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_GOOD_rstpot : MUXF7
    port map (
      I0 => N214,
      I1 => N215,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_CRC_MODE_526,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_GOOD_rstpot_1833
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_GOOD_rstpot_F : LUT5
    generic map(
      INIT => X"40554040"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIN_PKT_LEN_REACHED_553,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CFL_563,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIFG_556,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_GOOD_559,
      O => N214
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_GOOD_rstpot_G : LUT6
    generic map(
      INIT => X"0444555504440444"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n0961_inv11,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MAX_PKT_LEN_REACHED_552,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_COF_SEEN_551,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIFG_556,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_GOOD_559,
      O => N215
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_TX_UNDERRUN2_rstpot : MUXF7
    port map (
      I0 => N216,
      I1 => N217,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_TX_UNDERRUN_OUT,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_TX_UNDERRUN2_rstpot_1828
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_TX_UNDERRUN2_rstpot_F : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_TX_UNDERRUN2_540,
      I1 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I2 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_REG_STATUS_VALID,
      O => N216
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_TX_UNDERRUN2_rstpot_G : LUT6
    generic map(
      INIT => X"1111111111111110"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I1 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_REG_STATUS_VALID,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_TX_565,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FCS_561,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PRE_566,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_TX_UNDERRUN2_540,
      O => N217
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_TX_OK_rstpot : LUT6
    generic map(
      INIT => X"0415040404040404"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_TX_OK_557,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIFG_556,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_BAD_558,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_GOOD_559,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_SCSH_560,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_TX_OK_rstpot_1832
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_EXT_FIELD_glue_set : LUT6
    generic map(
      INIT => X"0100010001000000"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FALSE_CARR_FLAG_1305,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_IFG_FLAG_1306,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_DV_REG6_1336,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_ERR_REG6_1333,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_CRC_FIELD_1390,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_EXT_FIELD_1389,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_EXT_FIELD_glue_set_1782
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_VALIDATE_REQUIRED_glue_set : LUT5
    generic map(
      INIT => X"11111000"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_BAD_FRAME_1339,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_GOOD_FRAME_1340,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_VALID_1357,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_rx_filtered_data_valid_306,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_VALIDATE_REQUIRED_1302,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_VALIDATE_REQUIRED_glue_set_1780
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_force_end_rstpot : LUT5
    generic map(
      INIT => X"888888F8"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_ACK_OUT_317,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd5_391,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_force_end_393,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd10_388,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd7_390,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_force_end_rstpot_1859
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_pause_match_glue_set : LUT4
    generic map(
      INIT => X"AA08"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_pause_match_reg_1180,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_rx_data_valid_reg1_1176,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_rx_data_valid_reg2_1182,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_pause_match_1168,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_pause_match_glue_set_1775
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_special_pause_match_glue_set : LUT4
    generic map(
      INIT => X"AA08"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_special_pause_match_reg_1179,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_rx_data_valid_reg1_1176,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_rx_data_valid_reg2_1182,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_special_pause_match_1167,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_special_pause_match_glue_set_1776
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_broadcast_match_glue_set : LUT4
    generic map(
      INIT => X"AA08"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_broadcast_byte_match_1181,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_rx_data_valid_reg1_1176,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_rx_data_valid_reg2_1182,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_broadcast_match_1169,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_broadcast_match_glue_set_1777
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_PREAMBLE_glue_set : LUT5
    generic map(
      INIT => X"0808AA08"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_DV_REG6_1336,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_ENABLE_REG_1315,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_DV_REG7_1335,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_PREAMBLE_1395,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_SFD_FLAG_1308,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_PREAMBLE_glue_set_1783
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_state_FSM_FFd1_rstpot : LUT5
    generic map(
      INIT => X"44444044"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_state_FSM_FFd2_1204,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_BAD_FRAME_INT_322,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_VALID_INT_321,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_GOOD_FRAME_INT_323,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_rx_axi_shim_rx_state_FSM_FFd1_rstpot_1856
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA_VALID_FINAL_rstpot1 : LUT4
    generic map(
      INIT => X"4440"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_VALID_1357,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_VALIDATE_REQUIRED_1302,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_rx_filtered_data_valid_306,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA_VALID_FINAL_rstpot1_1865
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_SRC_ADDRESS_FIELD_rstpot1 : LUT5
    generic map(
      INIT => X"22022000"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_DV_REG6_1336,
      I1 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_FIELD_CONTROL(5),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_DEST_ADDRESS_FIELD_1394,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_SRC_ADDRESS_FIELD_1393,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_SRC_ADDRESS_FIELD_rstpot1_1867
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_force_burst2_glue_set : LUT6
    generic map(
      INIT => X"FFFF800080008000"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tlast_reg_392,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_two_byte_tx_376,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd6_385,
      I3 => tx_axis_mac_tvalid,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_force_burst1_371,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_force_burst2_370,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_force_burst2_glue_set_1739
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_TX_rstpot_SW0 : LUT4
    generic map(
      INIT => X"FFFB"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CFL_563,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_TX_565,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_COF_562,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CDS_567,
      O => N218
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_TX_rstpot : LUT6
    generic map(
      INIT => X"0000000455555555"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PRE_566,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PRE_COUNT(2),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PRE_COUNT(0),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PRE_COUNT(1),
      I5 => N218,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_TX_rstpot_1840
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA_VALID_EARLY_INT_glue_set_SW1 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFDFFF"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG1(4),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG1(3),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG1(6),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG1(7),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG1(5),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_ERR_REG1_1334,
      O => N220
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA_VALID_EARLY_INT_glue_set : LUT6
    generic map(
      INIT => X"AAAAAAAA00000800"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_DV_REG1_1338,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG1(0),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG1(1),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG1(2),
      I4 => N220,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA_VALID_EARLY_INT_1303,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA_VALID_EARLY_INT_glue_set_1781
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_TX_SUCCESS_rstpot : LUT5
    generic map(
      INIT => X"10551010"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PRE_566,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_TX_SUCCESS_539,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_TX_UNDERRUN2_540,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_TX_OK_557,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_TX_SUCCESS_rstpot_1827
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_PAUSE_VECTOR_0_glue_set : LUT5
    generic map(
      INIT => X"55551000"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_REG_STATUS_VALID,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(0),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(1),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(4),
      I4 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_PAUSE_VECTOR_0,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_PAUSE_VECTOR_0_glue_set_1765
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STOP_MAX_PKT_rstpot : LUT4
    generic map(
      INIT => X"5510"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PRE_566,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STOP_MAX_PKT_528,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MAX_PKT_LEN_REACHED_552,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_STOP_MAX_PKT_rstpot_1823
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_COF_SEEN_rstpot : LUT5
    generic map(
      INIT => X"55550100"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IDL_568,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PRE_566,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_COF_SEEN_551,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_COF_562,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_COF_SEEN_rstpot_1824
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIN_PKT_LEN_REACHED_rstpot : LUT4
    generic map(
      INIT => X"5510"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PRE_566,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIN_PKT_LEN_REACHED_553,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(6),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIN_PKT_LEN_REACHED_rstpot_1825
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_WITH_FCS_rstpot1 : LUT6
    generic map(
      INIT => X"0555044404440444"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_WITH_FCS_1559,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_END_FCS_1396,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_CRC_FIELD_1390,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_PREAMBLE_1395,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_SFD_FLAG_1308,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_WITH_FCS_rstpot1_1873
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd1_rstpot : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tx_axis_mac_tvalid,
      I1 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd2_383,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd1_rstpot_1852
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_no_burst_rstpot : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd3_384,
      I1 => tx_axis_mac_tvalid,
      I2 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_no_burst_rstpot_1853
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_rx_filtered_data_valid_rstpot : LUT4
    generic map(
      INIT => X"4440"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_rx_data_valid_srl16_reg2_1177,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_address_match_1166,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_promiscuous_mode_sample_1170,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_rx_filtered_data_valid_rstpot_1855
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_ENABLE_REG_rstpot1 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_sync_tx_enable_data_sync2,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_sync_tx_duplex_data_sync2,
      I2 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_ENABLE_REG_rstpot1_1863
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_ENABLE_REG_rstpot1 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_sync_rx_enable_data_sync2,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_sync_rx_duplex_data_sync2,
      I2 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_ENABLE_REG_rstpot1_1864
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_LENGTH_TYPE_ERR_rstpot1 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_FRAME_LEN_ERR_1576,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_TYPE_PACKET_1355,
      I2 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_LENGTH_TYPE_ERR_rstpot1_1875
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_STATISTICS_VALID_rstpot1 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_END_FRAME_1849,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_INHIBIT_FRAME_1573,
      I2 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_STATISTICS_VALID_rstpot1_1876
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_COF_rstpot_SW0 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_SCSH_560,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_COF_562,
      O => N224
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_COF_rstpot : LUT6
    generic map(
      INIT => X"1000100010005555"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CFL_563,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MAX_PKT_LEN_REACHED_552,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_TX_565,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FCS_561,
      I5 => N224,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_COF_rstpot_1837
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_TYPE_PACKET_rstpot_SW1 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(4),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(5),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(1),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(2),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(6),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(7),
      O => N226
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_TYPE_PACKET_rstpot : LUT6
    generic map(
      INIT => X"FFFFFF3FEAEAEA2A"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_TYPE_PACKET_1355,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_FIELD_CONTROL(0),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_LEN_FIELD_1392,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(3),
      I4 => N226,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RECLOCK_RX_CONFIG,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_TYPE_PACKET_rstpot_1848
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_force_assert_glue_set : LUT6
    generic map(
      INIT => X"66F644F4FFFFFFFF"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_force_burst1_371,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_force_burst2_370,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_force_assert_372,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_valid_352,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_ACK_OUT_317,
      I5 => N228,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_force_assert_glue_set_1740
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_early_deassert_glue_set_SW0 : LUT4
    generic map(
      INIT => X"EFFF"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd4_389,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd10_388,
      I2 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_mac_tready_reg,
      I3 => tx_axis_mac_tlast,
      O => N230
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_early_deassert_glue_set : LUT6
    generic map(
      INIT => X"00202020FFFF2020"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_valid_352,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_two_byte_tx_376,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_early_deassert_373,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd2_383,
      I4 => tx_axis_mac_tvalid,
      I5 => N230,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_early_deassert_glue_set_1742
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_early_underrun_glue_set_SW0 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd4_389,
      I1 => tx_axis_mac_tuser,
      O => N232
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_early_underrun_glue_set : LUT6
    generic map(
      INIT => X"0010001055550010"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd10_388,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd1_387,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_early_underrun_374,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_ACK_OUT_317,
      I4 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_mac_tready_reg,
      I5 => N232,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_early_underrun_glue_set_1743
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_END_OF_TX_HELD_glue_set : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_AVAIL_IN_REG_967,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_END_OF_TX_HELD_955,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_TX_END_OF_TX,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_END_OF_TX_HELD_glue_set_1773
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_CRC_ENGINE_ERR_rstpot1_SW0 : LUT5
    generic map(
      INIT => X"84210000"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(25),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(27),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(6),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(4),
      I4 => N185,
      O => N234
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_CRC_ENGINE_ERR_rstpot1 : LUT6
    generic map(
      INIT => X"2222022022222222"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_CRC_FIELD_1390,
      I1 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(5),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FCS_CHECK_CALC(26),
      I4 => N181,
      I5 => N234,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_CHECKER_CRC_ENGINE_ERR_rstpot1_1879
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_COUNT_SET_rstpot_SW0 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX(10),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX(11),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX(12),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX(13),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mmux_COUNT_SET_GND_31_o_MUX_238_o11_1673,
      O => N236
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_COUNT_SET_rstpot : LUT6
    generic map(
      INIT => X"22F2222222022222"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_COUNT_SET_832,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_STATUS_INT_833,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_REQ_TO_TX_837,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_GOOD_FRAME_IN_TX_REG_1093,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_sync_good_rx_data_sync2,
      I5 => N236,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_COUNT_SET_rstpot_1845
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut_8_Q : LUT5
    generic map(
      INIT => X"45557555"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT(8),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_GOOD_FRAME_IN_TX_REG_1093,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_sync_good_rx_data_sync2,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_REQ_TO_TX_837,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX(8),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut(8)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut_9_Q : LUT5
    generic map(
      INIT => X"45557555"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT(9),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_GOOD_FRAME_IN_TX_REG_1093,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_sync_good_rx_data_sync2,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_REQ_TO_TX_837,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX(9),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut(9)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut_10_Q : LUT5
    generic map(
      INIT => X"45557555"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT(10),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_GOOD_FRAME_IN_TX_REG_1093,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_sync_good_rx_data_sync2,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_REQ_TO_TX_837,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX(10),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut(10)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut_11_Q : LUT5
    generic map(
      INIT => X"45557555"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT(11),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_GOOD_FRAME_IN_TX_REG_1093,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_sync_good_rx_data_sync2,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_REQ_TO_TX_837,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX(11),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut(11)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut_12_Q : LUT5
    generic map(
      INIT => X"45557555"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT(12),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_GOOD_FRAME_IN_TX_REG_1093,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_sync_good_rx_data_sync2,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_REQ_TO_TX_837,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX(12),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut(12)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut_13_Q : LUT5
    generic map(
      INIT => X"45557555"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT(13),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_GOOD_FRAME_IN_TX_REG_1093,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_sync_good_rx_data_sync2,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_REQ_TO_TX_837,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX(13),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut(13)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut_14_Q : LUT5
    generic map(
      INIT => X"45557555"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT(14),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_GOOD_FRAME_IN_TX_REG_1093,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_sync_good_rx_data_sync2,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_REQ_TO_TX_837,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX(14),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut(14)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_Reset_OR_DriverANDClockEnable1 : LUT6
    generic map(
      INIT => X"FFFFFFFF10101011"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_2_Q,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PAD_PIPE_544,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CR178124_FIX_543,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_546,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_TRANSMIT_PIPE(1),
      I5 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_Reset_OR_DriverANDClockEnable
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mcount_load_count_val1 : LUT5
    generic map(
      INIT => X"FFFF0770"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA_VALID_EARLY_INT_1303,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_DV_REG1_1338,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_sync_update_data_sync2,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_update_pause_ad_sync_reg_1171,
      I4 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mcount_load_count_val
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mcount_counter_val1 : LUT4
    generic map(
      INIT => X"FF2A"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_rx_data_valid_reg1_1176,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA_VALID_EARLY_INT_1303,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_DV_REG1_1338,
      I3 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mcount_counter_val
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_val1 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_SFD_FLAG_1308,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_PREAMBLE_1395,
      I2 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_val
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_n0388_inv1 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_LEN_FIELD_1392,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_SFD_FLAG_1308,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_PREAMBLE_1395,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_n0388_inv
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut_15_Q : LUT5
    generic map(
      INIT => X"45557555"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_COUNT(15),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_GOOD_FRAME_IN_TX_REG_1093,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_sync_good_rx_data_sync2,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_REQ_TO_TX_837,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_PAUSE_VALUE_TO_TX(15),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_Mcount_PAUSE_COUNT_lut(15)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Msub_GND_36_o_GND_36_o_sub_12_OUT_7_0_xor_6_11 : LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DELAY(6),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DELAY(5),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DELAY(2),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DELAY(3),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DELAY(4),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_GND_36_o_GND_36_o_sub_12_OUT_6_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_TX_DA_rstpot : LUT6
    generic map(
      INIT => X"5551151144400400"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_TX_565,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_MUX_CONTROL_954,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_AVAIL_IN_REG_967,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_AVAIL_CONTROL_957,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_TX_DA_564,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_TX_DA_rstpot_1839
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_END_OF_TX_INV_38_o1 : LUT6
    generic map(
      INIT => X"FFFFFFFF777FF7FF"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_REG_DATA_VALID_527,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_COF_562,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_MUX_CONTROL_954,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_AVAIL_IN_REG_967,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_AVAIL_CONTROL_957,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_COF_SEEN_551,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_END_OF_TX_INV_38_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mcount_counter_xor_5_12 : LUT6
    generic map(
      INIT => X"6CCCCCCCCCCCCCCC"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(2),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(5),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(0),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(1),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(4),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(3),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Result(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mcount_counter_xor_4_11 : LUT5
    generic map(
      INIT => X"6CCCCCCC"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(2),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(4),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(0),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(1),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(3),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Result(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mmux_LENGTH_TYPE_15_PWR_47_o_mux_2_OUT17 : LUT5
    generic map(
      INIT => X"FF8FF888"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_PREAMBLE_1395,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_SFD_FLAG_1308,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_FIELD_CONTROL(1),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(0),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE(0),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE_15_PWR_47_o_mux_2_OUT_0_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mmux_LENGTH_TYPE_15_PWR_47_o_mux_2_OUT21 : LUT5
    generic map(
      INIT => X"FF8FF888"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_PREAMBLE_1395,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_SFD_FLAG_1308,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_FIELD_CONTROL(0),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(2),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE(10),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE_15_PWR_47_o_mux_2_OUT_10_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mmux_LENGTH_TYPE_15_PWR_47_o_mux_2_OUT81 : LUT5
    generic map(
      INIT => X"FF8FF888"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_PREAMBLE_1395,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_SFD_FLAG_1308,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_FIELD_CONTROL(1),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(1),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE(1),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE_15_PWR_47_o_mux_2_OUT_1_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mmux_LENGTH_TYPE_15_PWR_47_o_mux_2_OUT91 : LUT5
    generic map(
      INIT => X"FF8FF888"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_PREAMBLE_1395,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_SFD_FLAG_1308,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_FIELD_CONTROL(1),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(2),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE(2),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE_15_PWR_47_o_mux_2_OUT_2_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mmux_LENGTH_TYPE_15_PWR_47_o_mux_2_OUT101 : LUT5
    generic map(
      INIT => X"FF8FF888"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_PREAMBLE_1395,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_SFD_FLAG_1308,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_FIELD_CONTROL(1),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(3),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE(3),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE_15_PWR_47_o_mux_2_OUT_3_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mmux_LENGTH_TYPE_15_PWR_47_o_mux_2_OUT111 : LUT5
    generic map(
      INIT => X"FF8FF888"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_PREAMBLE_1395,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_SFD_FLAG_1308,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_FIELD_CONTROL(1),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(4),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE(4),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE_15_PWR_47_o_mux_2_OUT_4_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mmux_LENGTH_TYPE_15_PWR_47_o_mux_2_OUT121 : LUT5
    generic map(
      INIT => X"FF8FF888"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_PREAMBLE_1395,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_SFD_FLAG_1308,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_FIELD_CONTROL(1),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(5),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE(5),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE_15_PWR_47_o_mux_2_OUT_5_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mmux_LENGTH_TYPE_15_PWR_47_o_mux_2_OUT131 : LUT5
    generic map(
      INIT => X"FF8FF888"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_PREAMBLE_1395,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_SFD_FLAG_1308,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_FIELD_CONTROL(1),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(6),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE(6),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE_15_PWR_47_o_mux_2_OUT_6_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mmux_LENGTH_TYPE_15_PWR_47_o_mux_2_OUT141 : LUT5
    generic map(
      INIT => X"FF8FF888"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_PREAMBLE_1395,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_SFD_FLAG_1308,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_FIELD_CONTROL(1),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(7),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE(7),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE_15_PWR_47_o_mux_2_OUT_7_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mmux_LENGTH_TYPE_15_PWR_47_o_mux_2_OUT151 : LUT5
    generic map(
      INIT => X"FF8FF888"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_PREAMBLE_1395,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_SFD_FLAG_1308,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_FIELD_CONTROL(0),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(0),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE(8),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE_15_PWR_47_o_mux_2_OUT_8_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mmux_LENGTH_TYPE_15_PWR_47_o_mux_2_OUT161 : LUT5
    generic map(
      INIT => X"FF8FF888"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_PREAMBLE_1395,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_SFD_FLAG_1308,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_FIELD_CONTROL(0),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(1),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE(9),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LENGTH_TYPE_15_PWR_47_o_mux_2_OUT_9_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_SFD_FLAG_CRC_COMPUTE_OR_212_o1 : LUT5
    generic map(
      INIT => X"888888F8"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_PREAMBLE_1395,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_SFD_FLAG_1308,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_CRC_COMPUTE_1356,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_END_DATA_1397,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_END_FRAME_1849,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_SFD_FLAG_CRC_COMPUTE_OR_212_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_Mmux_TX_EN_REG1_GND_39_o_MUX_559_o11 : LUT6
    generic map(
      INIT => X"5555555555551110"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CR178124_FIX_543,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CRC_546,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_TRANSMIT_PIPE(1),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_2_Q,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PAD_PIPE_544,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_GMII_MII_TX_GEN_TX_EN_REG1_GND_39_o_MUX_559_o
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_two_byte_tx_rstpot : LUT4
    generic map(
      INIT => X"ABA8"
    )
    port map (
      I0 => tx_axis_mac_tlast,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd1_387,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd8_386,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_two_byte_tx_376,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_two_byte_tx_rstpot_1844
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_promiscuous_mode_sample_rstpot : LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_promiscuous_mode_sample_1170,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_rx_data_valid_reg1_1176,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_rx_data_valid_reg2_1182,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_resync_promiscuous_mode_data_sync2,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_promiscuous_mode_sample_rstpot_1846
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_REQ_INT_glue_set : LUT6
    generic map(
      INIT => X"DFDFDFDFDF000000"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(4),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(0),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(1),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_ENABLE_REG_828,
      I4 => pause_req,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_REQ_INT_953,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_REQ_INT_glue_set_1771
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_update_pause_ad_sync_reg_rstpot : LUT4
    generic map(
      INIT => X"EA2A"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_sync_update_data_sync2,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA_VALID_EARLY_INT_1303,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_DV_REG1_1338,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_update_pause_ad_sync_reg_1171,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_update_pause_ad_sync_reg_rstpot_1854
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_n0287_inv1 : LUT6
    generic map(
      INIT => X"8888888808888888"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA_VALID_EARLY_INT_1303,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_DV_REG1_1338,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(5),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(4),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(3),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mcount_counter_xor_5_11,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_n0287_inv
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CLIENT_FRAME_DONE_rstpot : LUT5
    generic map(
      INIT => X"FFFF44F4"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PRE_566,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CLIENT_FRAME_DONE_555,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n0985_inv1,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_TX_DATA_VALID_OUT,
      I4 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CLIENT_FRAME_DONE_rstpot_1830
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_PAUSE_VECTOR_1_1 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_ADD_CONTROL_FRAME_282,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_ENABLE_REG_834,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_PAUSE_REQ_INT_916,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_GOOD_FRAME_INT_284,
      O => rx_statistics_vector(23)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_STATE_COUNT_FSM_FFd1_In_SW1 : LUT6
    generic map(
      INIT => X"F0F030F0FAFA32FA"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_AVAIL_IN_REG_967,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(4),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_MUX_CONTROL_954,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(1),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(0),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_TX_END_OF_TX,
      O => N238
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_STATE_COUNT_FSM_FFd1_In : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_STATE_COUNT_FSM_FFd1_968,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_ACK_INT_966,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_STATE_COUNT_FSM_FFd2_931,
      I3 => N238,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_STATE_COUNT_FSM_FFd1_In_932
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_PADDED_FRAME_rstpot1_SW1 : LUT4
    generic map(
      INIT => X"FEFA"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(6),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(5),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(7),
      I3 => N154,
      O => N240
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_PADDED_FRAME_rstpot1 : LUT6
    generic map(
      INIT => X"0444044454440444"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_RX_RESET_I_R4,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_PADDED_FRAME_1359,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_LEN_FIELD_1392,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RX_SM_FIELD_CONTROL(1),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_LESS_THAN_256_1562,
      I5 => N240,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_PADDED_FRAME_rstpot1_1874
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_ignore_packet_glue_set : LUT6
    generic map(
      INIT => X"082A080808080808"
    )
    port map (
      I0 => tx_axis_mac_tvalid,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_ignore_packet_375,
      I2 => tx_axis_mac_tlast,
      I3 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_mac_tready_reg,
      I4 => tx_axis_mac_tuser,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd10_388,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_ignore_packet_glue_set_1745
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_force_assert_glue_set_SW0 : LUT4
    generic map(
      INIT => X"DFFF"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_early_deassert_373,
      I1 => tx_axis_mac_tlast,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd2_383,
      I3 => tx_axis_mac_tvalid,
      O => N228
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_MUX_CONTROL_glue_ce : LUT6
    generic map(
      INIT => X"FFFFFFEEFFFFAFAE"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_PAUSE_STATUS_INT_833,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_REQ_INT_953,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_AVAIL_IN_REG_967,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_COUNT_SET_832,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_MUX_CONTROL_954,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_INT_TX_END_OF_TX,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_MUX_CONTROL_glue_ce_1772
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_lut_0_INV_0 : INV
    port map (
      I => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_FRAME_COUNT(0),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mcount_FRAME_COUNT_lut(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_lut_0_INV_0 : INV
    port map (
      I => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_FRAME_COUNTER(0),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_FRAME_COUNTER_lut(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_lut_0_INV_0 : INV
    port map (
      I => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_COUNTER_14_0_Q(0),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_Mcount_DATA_COUNTER_14_0_lut_0_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Msub_GND_36_o_GND_36_o_sub_12_OUT_7_0_xor_2_11_INV_0 : INV
    port map (
      I => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_IFG_DELAY(2),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_GND_36_o_GND_36_o_sub_12_OUT_2_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_Mcount_DATA_COUNT_xor_0_11_INV_0 : INV
    port map (
      I => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_DATA_COUNT(0),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_RX_Result(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mcount_counter_xor_0_11_INV_0 : INV
    port map (
      I => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(0),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Result(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mcount_load_count_xor_0_11_INV_0 : INV
    port map (
      I => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count(0),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Result_0_1
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT83 : MUXF7
    port map (
      I0 => N242,
      I1 => N243,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count(2),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count_2_pause_addr_7_wide_mux_27_OUT_7_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT83_F : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count(0),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count(1),
      I2 => rx_mac_config_vector(47),
      I3 => rx_mac_config_vector(63),
      I4 => rx_mac_config_vector(55),
      I5 => rx_mac_config_vector(39),
      O => N242
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mmux_load_count_2_pause_addr_7_wide_mux_27_OUT83_G : LUT5
    generic map(
      INIT => X"FBEA5140"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count(1),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_load_count(0),
      I2 => rx_mac_config_vector(79),
      I3 => rx_mac_config_vector(71),
      I4 => rx_mac_config_vector(39),
      O => N243
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_address_match_glue_set : MUXF7
    port map (
      I0 => N244,
      I1 => N245,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_Mcount_counter_xor_5_11,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_address_match_glue_set_1779
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_address_match_glue_set_F : LUT6
    generic map(
      INIT => X"FF00FFFF01000101"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(5),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(4),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_counter(3),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_rx_data_valid_reg2_1182,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_rx_data_valid_reg1_1176,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_address_match_1166,
      O => N244
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_address_match_glue_set_G : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_address_match_1166,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_rx_data_valid_reg1_1176,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_addr_filter_top_address_filter_inst_rx_data_valid_reg2_1182,
      O => N245
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_valid_glue_set : MUXF7
    port map (
      I0 => N246,
      I1 => N247,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd10_388,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_valid_glue_set_1744
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_valid_glue_set_F : LUT5
    generic map(
      INIT => X"FFFF0444"
    )
    port map (
      I0 => N199,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_valid_352,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_two_byte_tx_376,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_state_FSM_FFd4_389,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_force_assert_372,
      O => N246
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_tx_data_valid_glue_set_G : LUT5
    generic map(
      INIT => X"FFFF0010"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_ignore_packet_375,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_no_burst_394,
      I2 => tx_axis_mac_tvalid,
      I3 => tx_axis_mac_tuser,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_G_AXI_SHIM_tx_axi_shim_force_assert_372,
      O => N247
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT74 : MUXF7
    port map (
      I0 => N248,
      I1 => N249,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(4),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT_2_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT74_F : LUT5
    generic map(
      INIT => X"64202020"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(3),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(2),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT7,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(1),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT71_1649,
      O => N248
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT74_G : LUT6
    generic map(
      INIT => X"0101000101000000"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(1),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(3),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(2),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(0),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_VALUE_HELD(2),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_VALUE_HELD(10),
      O => N249
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT144 : MUXF7
    port map (
      I0 => N250,
      I1 => N251,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(4),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT_5_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT144_F : LUT5
    generic map(
      INIT => X"64202020"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(3),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(2),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT14,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(1),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT141_1651,
      O => N250
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT144_G : LUT6
    generic map(
      INIT => X"0101000101000000"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(1),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(3),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(2),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(0),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_VALUE_HELD(5),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_VALUE_HELD(13),
      O => N251
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT124 : MUXF7
    port map (
      I0 => N252,
      I1 => N253,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(4),
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT_4_Q
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT124_F : LUT5
    generic map(
      INIT => X"64202020"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(3),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(2),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT12,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(1),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT121_1653,
      O => N252
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_Mmux_DATA_COUNT_4_GND_28_o_wide_mux_25_OUT124_G : LUT6
    generic map(
      INIT => X"0101000101000000"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(1),
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(3),
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(2),
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_DATA_COUNT(0),
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_VALUE_HELD(4),
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_FLOW_TX_PAUSE_VALUE_HELD(12),
      O => N253
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIFG_rstpot : MUXF7
    port map (
      I0 => N254,
      I1 => N255,
      S => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_INT_CRC_MODE_526,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIFG_rstpot_1831
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIFG_rstpot_F : LUT6
    generic map(
      INIT => X"5444555554445444"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_COF_562,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_CFL_563,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIN_PKT_LEN_REACHED_553,
      I4 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IDL_568,
      I5 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIFG_556,
      O => N254
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIFG_rstpot_G : LUT4
    generic map(
      INIT => X"5510"
    )
    port map (
      I0 => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_IDL_568,
      I2 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_MIFG_556,
      I3 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_n0961_inv11,
      O => N255
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mshreg_DATA_7 : SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => NlwRenamedSig_OI_N1,
      A1 => NlwRenamedSig_OI_N1,
      A2 => NlwRenamedSig_OI_N1,
      A3 => NlwRenamedSig_OI_N1,
      CE => N0,
      CLK => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(7),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mshreg_DATA_7_1927,
      Q15 => NLW_U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mshreg_DATA_7_Q15_UNCONNECTED
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA_7 : FDE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mshreg_DATA_7_1927,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA(7)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mshreg_PREAMBLE_PIPE_13 : SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => N0,
      A1 => NlwRenamedSig_OI_N1,
      A2 => N0,
      A3 => NlwRenamedSig_OI_N1,
      CE => N0,
      CLK => tx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_5_Q,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mshreg_PREAMBLE_PIPE_13_1928,
      Q15 => NLW_U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mshreg_PREAMBLE_PIPE_13_Q15_UNCONNECTED
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_131 : FDE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_Mshreg_PREAMBLE_PIPE_13_1928,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_131_1929
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mshreg_STATISTICS_VECTOR_22 : SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => NlwRenamedSig_OI_N1,
      A1 => NlwRenamedSig_OI_N1,
      A2 => NlwRenamedSig_OI_N1,
      A3 => NlwRenamedSig_OI_N1,
      CE => N0,
      CLK => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_FRAME_DECODER_DATA_WITH_FCS_1559,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mshreg_STATISTICS_VECTOR_22_1930,
      Q15 => NLW_U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mshreg_STATISTICS_VECTOR_22_Q15_UNCONNECTED
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR_22 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mshreg_STATISTICS_VECTOR_22_1930,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_STATISTICS_VECTOR(22)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mshreg_DATA_6 : SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => NlwRenamedSig_OI_N1,
      A1 => NlwRenamedSig_OI_N1,
      A2 => NlwRenamedSig_OI_N1,
      A3 => NlwRenamedSig_OI_N1,
      CE => N0,
      CLK => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(6),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mshreg_DATA_6_1931,
      Q15 => NLW_U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mshreg_DATA_6_Q15_UNCONNECTED
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA_6 : FDE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mshreg_DATA_6_1931,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA(6)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mshreg_DATA_5 : SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => NlwRenamedSig_OI_N1,
      A1 => NlwRenamedSig_OI_N1,
      A2 => NlwRenamedSig_OI_N1,
      A3 => NlwRenamedSig_OI_N1,
      CE => N0,
      CLK => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(5),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mshreg_DATA_5_1932,
      Q15 => NLW_U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mshreg_DATA_5_Q15_UNCONNECTED
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA_5 : FDE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mshreg_DATA_5_1932,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA(5)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mshreg_DATA_2 : SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => NlwRenamedSig_OI_N1,
      A1 => NlwRenamedSig_OI_N1,
      A2 => NlwRenamedSig_OI_N1,
      A3 => NlwRenamedSig_OI_N1,
      CE => N0,
      CLK => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(2),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mshreg_DATA_2_1933,
      Q15 => NLW_U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mshreg_DATA_2_Q15_UNCONNECTED
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA_2 : FDE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mshreg_DATA_2_1933,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA(2)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mshreg_DATA_4 : SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => NlwRenamedSig_OI_N1,
      A1 => NlwRenamedSig_OI_N1,
      A2 => NlwRenamedSig_OI_N1,
      A3 => NlwRenamedSig_OI_N1,
      CE => N0,
      CLK => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(4),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mshreg_DATA_4_1934,
      Q15 => NLW_U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mshreg_DATA_4_Q15_UNCONNECTED
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA_4 : FDE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mshreg_DATA_4_1934,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA(4)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mshreg_DATA_3 : SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => NlwRenamedSig_OI_N1,
      A1 => NlwRenamedSig_OI_N1,
      A2 => NlwRenamedSig_OI_N1,
      A3 => NlwRenamedSig_OI_N1,
      CE => N0,
      CLK => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(3),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mshreg_DATA_3_1935,
      Q15 => NLW_U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mshreg_DATA_3_Q15_UNCONNECTED
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA_3 : FDE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mshreg_DATA_3_1935,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA(3)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mshreg_DATA_1 : SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => NlwRenamedSig_OI_N1,
      A1 => NlwRenamedSig_OI_N1,
      A2 => NlwRenamedSig_OI_N1,
      A3 => NlwRenamedSig_OI_N1,
      CE => N0,
      CLK => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(1),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mshreg_DATA_1_1936,
      Q15 => NLW_U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mshreg_DATA_1_Q15_UNCONNECTED
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA_1 : FDE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mshreg_DATA_1_1936,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA(1)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mshreg_DATA_0 : SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => NlwRenamedSig_OI_N1,
      A1 => NlwRenamedSig_OI_N1,
      A2 => NlwRenamedSig_OI_N1,
      A3 => NlwRenamedSig_OI_N1,
      CE => N0,
      CLK => rx_axi_clk,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_RXD_REG7(0),
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mshreg_DATA_0_1937,
      Q15 => NLW_U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mshreg_DATA_0_Q15_UNCONNECTED
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA_0 : FDE
    port map (
      C => rx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_Mshreg_DATA_0_1937,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_RXGEN_DATA(0)
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4_shift1 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => N0,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4_shift1_1938
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4_shift2 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4_shift1_1938,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4_shift2_1939
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4_shift3 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4_shift2_1939,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4_shift3_1940
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4_shift4 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4_shift3_1940,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4_shift4_1941
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4_shift5 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4_shift4_1941,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4_shift5_1942
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4_shift6 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4_shift5_1942,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4_shift6_1943
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4_shift7 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4_shift6_1943,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4_shift7_1944
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_1311 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_131_1929,
      I1 => U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4_shift7_1944,
      O => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_1311_1945
    );
  U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_13 : FDRE
    port map (
      C => tx_axi_clk,
      CE => N0,
      D => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_1311_1945,
      R => NlwRenamedSig_OI_U0_trimac_top_TRI_SPEED_TRIMAC_INST_SYNC_TX_RESET_I_R4,
      Q => U0_trimac_top_TRI_SPEED_TRIMAC_INST_TXGEN_TX_SM1_PREAMBLE_PIPE_13_Q
    );

end STRUCTURE;

-- synthesis translate_on
