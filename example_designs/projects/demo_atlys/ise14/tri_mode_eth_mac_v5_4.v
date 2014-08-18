////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.58f
//  \   \         Application: netgen
//  /   /         Filename: tri_mode_eth_mac_v5_4.v
// /___/   /\     Timestamp: Fri Aug 15 15:35:27 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog C:/Users/tang/Desktop/IPBus_ATLYS/example_designs/projects/demo_atlys/ise14/tmp/_cg/tri_mode_eth_mac_v5_4.ngc C:/Users/tang/Desktop/IPBus_ATLYS/example_designs/projects/demo_atlys/ise14/tmp/_cg/tri_mode_eth_mac_v5_4.v 
// Device	: 6slx45csg324-2
// Input file	: C:/Users/tang/Desktop/IPBus_ATLYS/example_designs/projects/demo_atlys/ise14/tmp/_cg/tri_mode_eth_mac_v5_4.ngc
// Output file	: C:/Users/tang/Desktop/IPBus_ATLYS/example_designs/projects/demo_atlys/ise14/tmp/_cg/tri_mode_eth_mac_v5_4.v
// # of Modules	: 1
// Design Name	: tri_mode_eth_mac_v5_4
// Xilinx        : C:\Xilinx\14.5\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module tri_mode_eth_mac_v5_4 (
  glbl_rstn, rx_axi_rstn, tx_axi_rstn, rx_axi_clk, tx_axi_clk, tx_axis_mac_tvalid, tx_axis_mac_tlast, tx_axis_mac_tuser, pause_req, gmii_rx_dv, 
gmii_rx_er, rx_reset_out, rx_axis_mac_tvalid, rx_axis_mac_tlast, rx_axis_mac_tuser, rx_statistics_valid, tx_reset_out, tx_axis_mac_tready, 
tx_statistics_valid, speed_is_100, speed_is_10_100, gmii_tx_en, gmii_tx_er, tx_axis_mac_tdata, tx_ifg_delay, pause_val, gmii_rxd, rx_mac_config_vector
, tx_mac_config_vector, rx_axis_mac_tdata, rx_statistics_vector, tx_statistics_vector, gmii_txd
)/* synthesis syn_black_box syn_noprune=1 */;
  input glbl_rstn;
  input rx_axi_rstn;
  input tx_axi_rstn;
  input rx_axi_clk;
  input tx_axi_clk;
  input tx_axis_mac_tvalid;
  input tx_axis_mac_tlast;
  input tx_axis_mac_tuser;
  input pause_req;
  input gmii_rx_dv;
  input gmii_rx_er;
  output rx_reset_out;
  output rx_axis_mac_tvalid;
  output rx_axis_mac_tlast;
  output rx_axis_mac_tuser;
  output rx_statistics_valid;
  output tx_reset_out;
  output tx_axis_mac_tready;
  output tx_statistics_valid;
  output speed_is_100;
  output speed_is_10_100;
  output gmii_tx_en;
  output gmii_tx_er;
  input [7 : 0] tx_axis_mac_tdata;
  input [7 : 0] tx_ifg_delay;
  input [15 : 0] pause_val;
  input [7 : 0] gmii_rxd;
  input [79 : 0] rx_mac_config_vector;
  input [79 : 0] tx_mac_config_vector;
  output [7 : 0] rx_axis_mac_tdata;
  output [27 : 0] rx_statistics_vector;
  output [31 : 0] tx_statistics_vector;
  output [7 : 0] gmii_txd;
  
  // synthesis translate_off
  
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/resync_promiscuous_mode/data_in ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/sync_rx_enable/data_in ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/sync_tx_enable/data_in ;
  wire \NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/rxstatsaddressmatch ;
  wire \NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/PAUSE_VECTOR_0 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/NUMBER_OF_BYTES_231 ;
  wire \NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_mac_tvalid_261 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_mac_tlast_262 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_mac_tuser_263 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VALID_264 ;
  wire \NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ;
  wire \NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_mac_tready_reg ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/GMII_TX_EN_TO_PHY_267 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/GMII_TX_ER_TO_PHY_268 ;
  wire N0;
  wire NlwRenamedSig_OI_N1;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R2_271 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R1_272 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R3_273 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R3_PWR_20_o_MUX_31_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R2_275 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R1_276 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R3_277 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R3_PWR_20_o_MUX_31_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_TX_RST_ASYNCH ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_RX_RST_ASYNCH ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/CONTROL_FRAME_281 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/ADD_CONTROL_FRAME_282 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/BAD_FRAME_INT_283 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GOOD_FRAME_INT_284 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA_VALID_FINAL_285 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/DATA_VALID_EARLY ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/specialpauseaddressmatch_303 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/pauseaddressmatch_304 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/broadcastaddressmatch_305 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/rx_filtered_data_valid_306 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_RX_GEN/RX_ER_REG1_307 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_RX_GEN/RX_DV_REG1_308 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/ACK_OUT_317 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_TX_VLAN_ENABLE_OUT ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_TX_UNDERRUN_OUT ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_TX_DATA_VALID_OUT ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_DATA_VALID_INT_321 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_BAD_FRAME_INT_322 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_GOOD_FRAME_INT_323 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_GMII_TX_EN ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_TX_END_OF_TX ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_TX_ACK_IN ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_underrun_351 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data_valid_352 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/Mmux_tx_data[7]_tx_mac_tdata[7]_mux_62_OUT11 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd9_362 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd3-In_363 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd6-In ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd7-In_365 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/_n0273_inv ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/early_deassert_two_byte_tx_OR_36_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/next_tx_state[3]_ignore_packet_OR_46_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state[3]_tx_state[3]_OR_35_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/force_burst2_370 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/force_burst1_371 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/force_assert_372 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/early_deassert_373 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/early_underrun_374 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/ignore_packet_375 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/two_byte_tx_376 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/next_tx_state[3]_PWR_23_o_equal_72_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/next_tx_state[3]_GND_24_o_equal_70_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/next_tx_state[3]_GND_24_o_equal_69_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/next_tx_state[3]_GND_24_o_equal_68_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/next_tx_state[3]_tx_enable_reg_AND_28_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/next_tx_state[3]_GND_24_o_equal_27_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd2_383 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd3_384 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd6_385 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd8_386 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd1_387 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd10_388 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd4_389 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd7_390 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd5_391 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tlast_reg_392 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/force_end_393 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/no_burst_394 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data[7]_tx_mac_tdata[7]_mux_62_OUT<0> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data[7]_tx_mac_tdata[7]_mux_62_OUT<1> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data[7]_tx_mac_tdata[7]_mux_62_OUT<2> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data[7]_tx_mac_tdata[7]_mux_62_OUT<3> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data[7]_tx_mac_tdata[7]_mux_62_OUT<4> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data[7]_tx_mac_tdata[7]_mux_62_OUT<5> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data[7]_tx_mac_tdata[7]_mux_62_OUT<6> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data[7]_tx_mac_tdata[7]_mux_62_OUT<7> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/Reset_OR_DriverANDClockEnable ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/CRC_MODE_INV_77_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/INT_CRS_413 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/INT_TX_EN_DELAY ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/INT_IFG_DEL_EN_415 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/INT_VLAN_ENABLE_416 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/INT_ENABLE_417 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/INT_JUMBO_ENABLE_418 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/INT_CRC_MODE_419 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_FCS_GND_36_o_MUX_360_o11 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n0961_inv11 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n07892 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_REG_TX_CONTROL_GND_36_o_MUX_507_o11 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n07981 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT_cst1 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Msub_GND_36_o_GND_36_o_sub_12_OUT<7:0>_xor<7>11 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_IFG_COUNT[7]_GND_36_o_mux_33_OUT51_427 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIFG_TX_FAIL_DELAY_AND_167_o1_428 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n0985_inv1 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcompar_FRAME_COUNT[14]_FRAME_MAX[14]_equal_51_o_lut<4>_445 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcompar_FRAME_COUNT[14]_FRAME_MAX[14]_equal_51_o_cy<3>_446 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcompar_FRAME_COUNT[14]_FRAME_MAX[14]_equal_51_o_lut<3>_447 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcompar_FRAME_COUNT[14]_FRAME_MAX[14]_equal_51_o_cy<2>_448 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcompar_FRAME_COUNT[14]_FRAME_MAX[14]_equal_51_o_lut<2>_449 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcompar_FRAME_COUNT[14]_FRAME_MAX[14]_equal_51_o_cy<1>_450 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcompar_FRAME_COUNT[14]_FRAME_MAX[14]_equal_51_o_lut<1>_451 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcompar_FRAME_COUNT[14]_FRAME_MAX[14]_equal_51_o_cy<0>_452 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcompar_FRAME_COUNT[14]_FRAME_MAX[14]_equal_51_o_lut<0>_453 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n1183_inv ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_CRC_COUNT1 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_CRC_COUNT ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_PRE_COUNT2 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_PRE_COUNT1 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_PRE_COUNT ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Reset_OR_DriverANDClockEnable25 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Reset_OR_DriverANDClockEnable17 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Reset_OR_DriverANDClockEnable13 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG[0][7]_GND_36_o_mux_59_OUT<7>1_478 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG[0][7]_GND_36_o_mux_59_OUT<6>1_479 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG[0][7]_GND_36_o_mux_59_OUT<4>1_480 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG[0][7]_GND_36_o_mux_59_OUT<2>1_481 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG[0][7]_GND_36_o_mux_59_OUT<0>1_482 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/GND_36_o_GND_36_o_sub_12_OUT<3>1_483 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n1164_inv ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n1071_inv ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n0977_inv_486 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n0961_inv_487 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n0921_inv_488 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n0836_inv ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Reset_OR_DriverANDClockEnable ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n1177_inv ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT[14]_FRAME_MAX[14]_equal_51_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_TX_BROADCAST ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIFG_TX_FAIL_DELAY_AND_167_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/GND_36_o_GND_36_o_sub_12_OUT[2] ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/GND_36_o_GND_36_o_sub_12_OUT[4] ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/GND_36_o_GND_36_o_sub_12_OUT[5] ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/GND_36_o_GND_36_o_sub_12_OUT[6] ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/GND_36_o_GND_36_o_sub_12_OUT[7] ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG[0][7]_GND_36_o_mux_59_OUT<1> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG[0][7]_GND_36_o_mux_59_OUT<3> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG[0][7]_GND_36_o_mux_59_OUT<5> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_CRC_MODE_526 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/REG_DATA_VALID_527 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STOP_MAX_PKT_528 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/REG_SCSH_529 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/REG_TX_VLAN_530 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/REG_TX_CONTROL_531 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DST_ADDR_BYTE5_MATCH_532 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DST_ADDR_MULTI_MATCH_533 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DST_ADDR_BYTE4_MATCH_534 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DST_ADDR_BYTE3_MATCH_535 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DST_ADDR_BYTE2_MATCH_536 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DST_ADDR_BYTE1_MATCH_537 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DST_ADDR_BYTE0_MATCH_538 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_TX_SUCCESS_539 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_TX_UNDERRUN2_540 ;
  wire \NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/REG_STATUS_VALID ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_TX_STATUS_VALID_542 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CR178124_FIX_543 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PAD_PIPE_544 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_COMPUTE_545 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_546 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PAD_547 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/TRANSMIT_548 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/REG_PREAMBLE_549 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_550 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/COF_SEEN_551 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MAX_PKT_LEN_REACHED_552 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIN_PKT_LEN_REACHED_553 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/REG_PREAMBLE_DONE_554 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CLIENT_FRAME_DONE_555 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIFG_556 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/TX_OK_557 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_BAD_558 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_GOOD_559 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/SCSH_560 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FCS_561 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/COF_562 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CFL_563 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_TX_DA_564 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/TX_565 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PRE_566 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CDS_567 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IDL_568 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_ENABLE_569 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DEL_EN_585 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_VLAN_EN_586 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_JUMBO_EN_587 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/REG_SCSH_GND_36_o_MUX_511_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/REG_TX_VLAN_GND_36_o_MUX_509_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/REG_TX_CONTROL_GND_36_o_MUX_507_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DST_ADDR_MULTI_MATCH_GND_36_o_MUX_502_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DST_ADDR_BYTE4_MATCH_GND_36_o_MUX_500_o_600 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DST_ADDR_BYTE3_MATCH_GND_36_o_MUX_498_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DST_ADDR_BYTE2_MATCH_GND_36_o_MUX_496_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DST_ADDR_BYTE1_MATCH_GND_36_o_MUX_494_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DST_ADDR_BYTE0_MATCH_GND_36_o_MUX_492_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/REG_STATUS_VALID_GND_36_o_MUX_476_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_TX_STATUS_VALID_GND_36_o_MUX_471_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CR178124_FIX_GND_36_o_MUX_469_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PAD_PIPE_GND_36_o_MUX_467_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_COMPUTE_GND_36_o_MUX_451_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_GND_36_o_MUX_417_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PAD_GND_36_o_MUX_415_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/TRANSMIT_GND_36_o_MUX_413_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/REG_PREAMBLE_GND_36_o_MUX_411_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_GND_36_o_MUX_409_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT[7]_GND_36_o_mux_33_OUT<0> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT[7]_GND_36_o_mux_33_OUT<1> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT[7]_GND_36_o_mux_33_OUT<2> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT[7]_GND_36_o_mux_33_OUT<3> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT[7]_GND_36_o_mux_33_OUT<4> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT[7]_GND_36_o_mux_33_OUT<5> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT[7]_GND_36_o_mux_33_OUT<6> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT[7]_GND_36_o_mux_33_OUT<7> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/REG_PREAMBLE_DONE_GND_36_o_MUX_386_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIFG_GND_36_o_MUX_380_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CFL_GND_36_o_MUX_352_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_TX_DA_GND_36_o_MUX_348_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_ENABLE_GND_36_o_MUX_321_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT<0> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT<1> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT<2> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT<3> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT<4> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT<5> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT<6> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT<7> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT<8> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT<9> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT<10> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT<11> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT<12> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT<13> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT<14> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DEL_EN_GND_36_o_MUX_317_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_VLAN_EN_GND_36_o_MUX_313_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_JUMBO_EN_GND_36_o_MUX_311_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_CRC_MODE_GND_36_o_MUX_309_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_MAX_2_679 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_MAX_3_680 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_MAX_4_681 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[13] ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[0] ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[1] ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[3] ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[4] ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[5] ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[2] ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<12>_bdd6 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<14>_bdd6 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<23>_bdd2 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<0> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<1> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<2>_770 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<3>_771 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<4>_772 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<5> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<6>_774 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<7>_775 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<8> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<9> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<10> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<11> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<12>_780 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<13> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<14>_782 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<15> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<16>_784 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<17> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<18>_786 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<19> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<20> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<21> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<22> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<23> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<24>_792 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<25> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<26>_794 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<27> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<28>_796 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<29> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<30> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<31> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/sync_rx_enable/data_sync1 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/sync_rx_duplex/data_sync1 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/sync_tx_enable/data_sync1 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/sync_tx_duplex/data_sync1 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_ENABLE_REG_828 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_UNDERRUN_INT_829 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/sync_tx_duplex/data_sync2 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/sync_tx_enable/data_sync2 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/COUNT_SET_832 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_STATUS_INT_833 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_ENABLE_REG_834 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/sync_rx_duplex/data_sync2 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/sync_rx_enable/data_sync2 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_REQ_TO_TX_837 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/sync_good_rx/data_in ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/CONTROL_COMPLETE ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/PAUSE_REQ_LOCAL ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_BAD_FRAME_COMB ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_GOOD_FRAME_COMB ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/GND_27_o_DATA[7]_equal_8_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n00811 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/Mcount_DATA_COUNT_val ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0127_inv ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0123_inv1 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0100_inv ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/BAD_OPCODE_INT_915 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_REQ_INT_916 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_Mux_26_o11_925 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mcount_DATA_COUNT_val ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0187_inv_930 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/STATE_COUNT_FSM_FFd2_931 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/STATE_COUNT_FSM_FFd1-In_932 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/STATE_COUNT_FSM_FFd2-In ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0163_inv ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT<0> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT<1> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT<2> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT<3> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT<4> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT<5> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT<6> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT<7> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT[4]_GND_28_o_Mux_26_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0147 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0141_945 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/END_OF_TX_INV_38_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/ACK_COMB ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_REQ_INT_953 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/MUX_CONTROL_954 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/END_OF_TX_HELD_955 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/END_OF_TX_REG_956 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_AVAIL_CONTROL_957 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/ACK_INT_966 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_AVAIL_IN_REG_967 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/STATE_COUNT_FSM_FFd1_968 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/GOOD_FRAME_IN1_GOOD_FRAME_IN3_OR_81_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/GOOD_FRAME_IN1_1034 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/GOOD_FRAME_IN3_1035 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/GOOD_FRAME_IN2_1036 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mmux_COUNT_SET_GND_31_o_MUX_238_o12_1037 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT15 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT14 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT13 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT12 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT11 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT10 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT9 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT8 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT7 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT6 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT5 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT4 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT3 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT2 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT1 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/_n0068_inv_1085 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_QUANTA5 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_QUANTA4 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_QUANTA3 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_QUANTA2 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_QUANTA1 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_QUANTA ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/sync_good_rx/data_sync1 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/GOOD_FRAME_IN_TX_REG_1093 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/COUNT_SET_REG_1100 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/sync_good_rx/data_sync2 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mcount_counter_xor<5>11 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Result<2>1 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Result<1>1 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Result<0>1 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mcount_load_count_val ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mcount_counter_val ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/_n0287_inv ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/sync_update/data_sync1 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/resync_promiscuous_mode/data_sync1 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Reset_OR_DriverANDClockEnable ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter[5]_GND_49_o_equal_14_o1 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count[2]_PWR_51_o_LessThan_17_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count_pipe[2]_PWR_51_o_LessThan_20_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count[2]_pause_addr[7]_wide_mux_27_OUT<0> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count[2]_pause_addr[7]_wide_mux_27_OUT<1> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count[2]_pause_addr[7]_wide_mux_27_OUT<2> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count[2]_pause_addr[7]_wide_mux_27_OUT<3> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count[2]_pause_addr[7]_wide_mux_27_OUT<4> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count[2]_pause_addr[7]_wide_mux_27_OUT<5> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count[2]_pause_addr[7]_wide_mux_27_OUT<6> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count[2]_pause_addr[7]_wide_mux_27_OUT<7> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/broadcast_byte_match_rx_data[7]_MUX_920_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/specialpauseaddressmatch_int_1163 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/pauseaddressmatch_int_1164 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/broadcastaddressmatch_int_1165 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/address_match_1166 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/special_pause_match_1167 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/pause_match_1168 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/broadcast_match_1169 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/promiscuous_mode_sample_1170 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/update_pause_ad_sync_reg_1171 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_wr_1172 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/rx_data_valid_reg1_1176 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/rx_data_valid_srl16_reg2_1177 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/rx_data_valid_srl16_reg1_1178 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/special_pause_match_reg_1179 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/pause_match_reg_1180 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/broadcast_byte_match_1181 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/rx_data_valid_reg2_1182 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/resync_promiscuous_mode/data_sync2 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/rx_data_valid_srl16 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/sync_update/data_sync2 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/special_pause_match_comb ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/pause_match_reg_rx_data[7]_MUX_940_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_state_FSM_FFd2_1204 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_state_FSM_FFd2-In ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_state[1]_next_rx_state[1]_OR_9_o_0 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/next_rx_state[1]_rx_enable_AND_7_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_state_FSM_FFd1_1210 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_state[1]_GND_23_o_equal_28_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<31> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<30> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<29> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<28>_1247 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<27> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<26>_1249 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<25> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<24>_1251 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<23> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<22> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<21> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<20> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<19> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<18>_1257 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<17> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<16>_1259 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<15> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<14>_1261 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<13> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<12>_1263 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<11> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<10> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<9> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<8> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<7>_1268 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<6>_1269 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<5> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<4>_1271 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<3>_1272 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<2>_1273 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<1> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<0> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<23>_bdd2 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<14>_bdd6 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<12>_bdd6 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Reset_OR_DriverANDClockEnable1 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GND_41_o_RX_DV_REG6_AND_324_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/PWR_43_o_RX_ERR_REG6_AND_322_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_SUCCESS_FRAME_FAILURE_MUX_864_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GND_41_o_FRAME_SUCCESS_MUX_863_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/PRE_IFG_FLAG ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/PRE_FALSE_CARR_FLAG ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/VALIDATE_REQUIRED_1302 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA_VALID_EARLY_INT_1303 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MATCH_FRAME_INT_1304 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FALSE_CARR_FLAG_1305 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/IFG_FLAG_1306 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/EXTENSION_FLAG_1307 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/SFD_FLAG_1308 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MAX_FRAME_ENABLE_HELD_1309 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/PAUSE_LT_CHECK_HELD_1310 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/LT_CHECK_HELD_1311 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/CRC_MODE_HELD_1312 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/VLAN_ENABLE_HELD_1313 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/JUMBO_FRAMES_HELD_1314 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/ENABLE_REG_1315 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_ERR_REG7_1332 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_ERR_REG6_1333 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_ERR_REG1_1334 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_DV_REG7_1335 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_DV_REG6_1336 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_DV_REG3_1337 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_DV_REG1_1338 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/BAD_FRAME_1339 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/GOOD_FRAME_1340 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/LENGTH_TYPE_ERR_1341 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/OUT_OF_BOUNDS_ERR_1342 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/CRC_ERR_1343 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/STATISTICS_VALID_1344 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/MULTICAST_FRAME_1353 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/VLAN_FRAME_1354 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/TYPE_PACKET_1355 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/CRC_COMPUTE_1356 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_VALID_1357 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_MATCH_1358 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/PADDED_FRAME_1359 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/EXT_FIELD_1389 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/CRC_FIELD_1390 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/DAT_FIELD_1391 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/LEN_FIELD_1392 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/SRC_ADDRESS_FIELD_1393 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/DEST_ADDRESS_FIELD_1394 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/PREAMBLE_1395 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/END_FCS_1396 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/END_DATA_1397 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_ERR_REG5 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_DV_REG5 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_DV_REG2 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/BROADCASTADDRESSMATCH_DELAY ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT<0> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT<1> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT<2> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT<3> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT<4> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT<5> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT<6> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT<7> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT<8> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT<9> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT<10> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT<11> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT<12> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT<13> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT<14> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/RX_DV_REG6_RX_ERR_REG6_OR_193_o_1431 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/GND_44_o_FIELD_CONTROL[0]_MUX_679_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/PWR_46_o_FIELD_CONTROL[5]_MUX_680_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/RX_ERR_REG5_END_EXT_AND_333_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/CRC_FIELD_END_DATA_OR_200_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/FIELD_CONTROL[1]_GND_44_o_MUX_684_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/FIELD_CONTROL[2]_GND_44_o_MUX_683_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/FIELD_CONTROL[3]_GND_44_o_MUX_682_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/FIELD_CONTROL[4]_GND_44_o_MUX_681_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/RX_DV_REG6_DAT_FIELD_AND_353_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/RX_DV_REG6_LEN_FIELD_AND_350_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/RX_DV_REG6_DEST_ADDRESS_FIELD_AND_344_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/END_EXT_1443 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_FIELD_LT_CHECK_DISABLE_AND_371_o1 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<9>_1460 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<8>_1461 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<7>_1462 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<6>_1463 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<5>_1464 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<4>_1465 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<3>_1466 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<2>_1467 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<1>_1468 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<0>_1469 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_lut<0> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result<10>1 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result<9>1 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result<8>1 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result<7>1 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result<6>1 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result<5>1 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result<4>1 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result<3>1 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result<2>1 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result<1>1 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result<0>1 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/_n0405_inv ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_val ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/_n0388_inv ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/_n0369_inv11 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Reset_OR_DriverANDClockEnable4_1501 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/_n0477_inv1 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Reset_OR_DriverANDClockEnable ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER[10]_LENGTH_TYPE[10]_equal_8_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/GND_45_o_RXD[7]_equal_9_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/VLAN_MATCH[1]_GND_45_o_MUX_812_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE[15]_PWR_47_o_mux_2_OUT<0> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE[15]_PWR_47_o_mux_2_OUT<1> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE[15]_PWR_47_o_mux_2_OUT<2> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE[15]_PWR_47_o_mux_2_OUT<3> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE[15]_PWR_47_o_mux_2_OUT<4> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE[15]_PWR_47_o_mux_2_OUT<5> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE[15]_PWR_47_o_mux_2_OUT<6> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE[15]_PWR_47_o_mux_2_OUT<7> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE[15]_PWR_47_o_mux_2_OUT<8> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE[15]_PWR_47_o_mux_2_OUT<9> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE[15]_PWR_47_o_mux_2_OUT<10> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/SFD_FLAG_DATA_NO_FCS_OR_227_o_1518 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/SFD_FLAG_CRC_COMPUTE_OR_212_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/RX_DV_REG_FRAME_COUNTER[14]_AND_404_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/GND_45_o_CONTROL_MATCH_AND_415_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_FIELD_LT_CHECK_DISABLE_AND_375_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_FIELD_LT_CHECK_DISABLE_AND_371_o_1523 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/PWR_47_o_RXD[7]_equal_15_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_FIELD_FIELD_COUNTER[1]_AND_376_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_NO_FCS_DATA_WITH_FCS_MUX_776_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/VLAN_ENABLE_PWR_47_o_AND_411_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/CONTROL_FRAME_INT_1539 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/MULTICAST_MATCH_1540 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/ADD_CONTROL_ENABLE_1541 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/RX_DV_REG_1555 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/ADD_CONTROL_FRAME_INT_1556 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/CONTROL_MATCH_1557 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_NO_FCS_1558 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_WITH_FCS_1559 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_ONE_1560 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_ZERO_1561 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LESS_THAN_256_1562 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/_n0165_inv ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/Reset_OR_DriverANDClockEnable ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/END_OF_FRAME_SFD_FLAG_AND_419_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/FCS_ERR_EXTENSION_FIELD_OR_255_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/FCS_ERR_CRC_ENGINE_ERR_OR_265_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/FRAME_LEN_ERR_END_OF_DATA_OR_241_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/MIN_LENGTH_MATCH_EXCEEDED_MIN_LEN_OR_235_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/GND_46_o_FRAME_COUNTER[7]_equal_1_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/_n0139_1571 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/MAX_LENGTH_ERR_1572 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/INHIBIT_FRAME_1573 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/FCS_ERR_1574 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/CRC_ENGINE_ERR_1575 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/FRAME_LEN_ERR_1576 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/EXCEEDED_MIN_LEN_1577 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/MIN_LENGTH_MATCH_1578 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/TX_ER_REG1_1579 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/TX_EN_REG1_1580 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/GMII_TX_ER_TO_PHY_GND_39_o_MUX_577_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/GMII_TX_EN_TO_PHY_GND_39_o_MUX_575_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/TX_ER_REG1_GND_39_o_MUX_561_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/TX_EN_REG1_GND_39_o_MUX_559_o ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/next_tx_state[3]_ignore_packet_OR_46_o1_1593 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/next_tx_state[3]_ignore_packet_OR_46_o2_1594 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/next_tx_state[3]_ignore_packet_OR_46_o3_1595 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/next_tx_state[3]_ignore_packet_OR_46_o4_1596 ;
  wire N2;
  wire N4;
  wire N6;
  wire N8;
  wire N10;
  wire N16;
  wire N20;
  wire N22;
  wire N24;
  wire N26;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_REG_TX_CONTROL_GND_36_o_MUX_507_o111_1607 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_REG_TX_CONTROL_GND_36_o_MUX_507_o112_1608 ;
  wire N28;
  wire N30;
  wire N32;
  wire N34;
  wire N36;
  wire N38;
  wire N40;
  wire N42;
  wire N44;
  wire N46;
  wire N48;
  wire N50;
  wire N52;
  wire N54;
  wire N56;
  wire N58;
  wire N60;
  wire N62;
  wire N64;
  wire N66;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/Mmux_CALC[23]_CALC[23]_mux_3_OUT5 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/Mmux_CALC[23]_CALC[23]_mux_3_OUT51_1630 ;
  wire N68;
  wire N70;
  wire N72;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/Mmux_CALC[23]_CALC[23]_mux_3_OUT28 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/Mmux_CALC[23]_CALC[23]_mux_3_OUT281_1635 ;
  wire N76;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/GND_27_o_DATA[7]_equal_8_o<7> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/GND_27_o_DATA[7]_equal_8_o<7>1_1638 ;
  wire N80;
  wire N82;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n01471_1641 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/STATE_COUNT_FSM_FFd2-In1_1642 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/STATE_COUNT_FSM_FFd2-In2_1643 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT10 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT101_1645 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT102_1646 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT103_1647 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT7 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT71_1649 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT14 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT141_1651 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT12 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT121_1653 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT3 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT31_1655 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT32_1656 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT5 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT51_1658 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT52_1659 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT53_1660 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT16 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT161_1662 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT162_1663 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT163_1664 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT19 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT191_1666 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT192_1667 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT193_1668 ;
  wire N86;
  wire N88;
  wire N90;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mmux_COUNT_SET_GND_31_o_MUX_238_o1 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mmux_COUNT_SET_GND_31_o_MUX_238_o11_1673 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT[15]_GND_31_o_equal_8_o<15> ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT[15]_GND_31_o_equal_8_o<15>1_1675 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT7 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT71_1677 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT6 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT61_1679 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT5 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT51_1681 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT4 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT41_1683 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT3 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT31_1685 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT2 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT21_1687 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT1 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT11_1689 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/special_pause_match_comb8 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/special_pause_match_comb81_1691 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/pause_match_reg_rx_data[7]_MUX_940_o8 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/pause_match_reg_rx_data[7]_MUX_940_o81_1693 ;
  wire N92;
  wire N94;
  wire N96;
  wire N98;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/Mmux_CALC[23]_CALC[23]_mux_3_OUT28 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/Mmux_CALC[23]_CALC[23]_mux_3_OUT281_1699 ;
  wire N100;
  wire N102;
  wire N104;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/Mmux_CALC[23]_CALC[23]_mux_3_OUT5 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/Mmux_CALC[23]_CALC[23]_mux_3_OUT51_1704 ;
  wire N108;
  wire N110;
  wire N112;
  wire N114;
  wire N116;
  wire N118;
  wire N120;
  wire N122;
  wire N124;
  wire N126;
  wire N128;
  wire N130;
  wire N132;
  wire N134;
  wire N136;
  wire N138;
  wire N148;
  wire N150;
  wire N152;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER[10]_LENGTH_TYPE[10]_equal_8_o11 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER[10]_LENGTH_TYPE[10]_equal_8_o111_1725 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER[10]_LENGTH_TYPE[10]_equal_8_o112_1726 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER[10]_LENGTH_TYPE[10]_equal_8_o113_1727 ;
  wire N154;
  wire N156;
  wire N158;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/_n0165_inv11_1731 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/_n0165_inv12_1732 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/_n0165_inv13_1733 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/_n0165_inv14_1734 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/FRAME_LEN_ERR_END_OF_DATA_OR_241_o1_1735 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/FRAME_LEN_ERR_END_OF_DATA_OR_241_o2_1736 ;
  wire N160;
  wire N162;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/force_burst2_glue_set_1739 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/force_assert_glue_set_1740 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/force_burst1_glue_set_1741 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/early_deassert_glue_set_1742 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/early_underrun_glue_set_1743 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data_valid_glue_set_1744 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/ignore_packet_glue_set_1745 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tlast_reg_glue_set ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_underrun_glue_set ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_MAX_2_glue_rst_1748 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_MAX_3_glue_rst_1749 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_MAX_4_glue_set_1750 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_13_glue_set_1751 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_12_glue_set_1752 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_11_glue_set_1753 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_10_glue_set_1754 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_9_glue_set_1755 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_8_glue_set_1756 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_7_glue_set_1757 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_6_glue_set_1758 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_5_glue_set_1759 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_4_glue_set_1760 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_3_glue_set_1761 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_2_glue_set_1762 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_1_glue_set_1763 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_0_glue_set_1764 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/PAUSE_VECTOR_0_glue_set_1765 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_REQ_INT_glue_set_1766 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/BAD_OPCODE_INT_glue_set_1767 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT_0_glue_rst_1768 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT_4_glue_rst_1769 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT_1_glue_rst_1770 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_REQ_INT_glue_set_1771 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/MUX_CONTROL_glue_ce_1772 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/END_OF_TX_HELD_glue_set_1773 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_STATUS_INT_glue_set_1774 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/pause_match_glue_set_1775 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/special_pause_match_glue_set_1776 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/broadcast_match_glue_set_1777 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/rxstatsaddressmatch_glue_set_1778 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/address_match_glue_set_1779 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/VALIDATE_REQUIRED_glue_set_1780 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA_VALID_EARLY_INT_glue_set_1781 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/EXT_FIELD_glue_set_1782 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/PREAMBLE_glue_set_1783 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/MAX_LENGTH_ERR_glue_set_1784 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<13>_rt_1785 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<12>_rt_1786 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<11>_rt_1787 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<10>_rt_1788 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<9>_rt_1789 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<8>_rt_1790 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<7>_rt_1791 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<6>_rt_1792 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<5>_rt_1793 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<4>_rt_1794 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<3>_rt_1795 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<2>_rt_1796 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<1>_rt_1797 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<13>_rt_1798 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<12>_rt_1799 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<11>_rt_1800 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<10>_rt_1801 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<9>_rt_1802 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<8>_rt_1803 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<7>_rt_1804 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<6>_rt_1805 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<5>_rt_1806 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<4>_rt_1807 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<3>_rt_1808 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<2>_rt_1809 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<1>_rt_1810 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<9>_rt_1811 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<8>_rt_1812 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<7>_rt_1813 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<6>_rt_1814 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<5>_rt_1815 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<4>_rt_1816 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<3>_rt_1817 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<2>_rt_1818 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<1>_rt_1819 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_xor<14>_rt_1820 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_xor<14>_rt_1821 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_xor<10>_rt_1822 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STOP_MAX_PKT_rstpot_1823 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/COF_SEEN_rstpot_1824 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIN_PKT_LEN_REACHED_rstpot_1825 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DST_ADDR_BYTE5_MATCH_rstpot_1826 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_TX_SUCCESS_rstpot_1827 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_TX_UNDERRUN2_rstpot_1828 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MAX_PKT_LEN_REACHED_rstpot ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CLIENT_FRAME_DONE_rstpot_1830 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIFG_rstpot_1831 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/TX_OK_rstpot_1832 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_GOOD_rstpot_1833 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/SCSH_rstpot_1834 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_BAD_rstpot_1835 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FCS_rstpot_1836 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/COF_rstpot_1837 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CFL_rstpot_1838 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_TX_DA_rstpot_1839 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/TX_rstpot_1840 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PRE_rstpot_1841 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CDS_rstpot_1842 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IDL_rstpot_1843 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/two_byte_tx_rstpot_1844 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/COUNT_SET_rstpot_1845 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/promiscuous_mode_sample_rstpot_1846 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MATCH_FRAME_INT_rstpot_1847 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/TYPE_PACKET_rstpot_1848 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/END_FRAME_1849 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/BAD_FRAME_rstpot ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/GOOD_FRAME_rstpot ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd1_rstpot_1852 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/no_burst_rstpot_1853 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/update_pause_ad_sync_reg_rstpot_1854 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/rx_filtered_data_valid_rstpot_1855 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_state_FSM_FFd1_rstpot_1856 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_mac_tvalid_rstpot ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_mac_tlast_rstpot ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/force_end_rstpot_1859 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT_2_rstpot ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/MUX_CONTROL_rstpot_1861 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR_2_rstpot1_1862 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_ENABLE_REG_rstpot1_1863 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_ENABLE_REG_rstpot1_1864 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA_VALID_FINAL_rstpot1_1865 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/END_DATA_rstpot1_1866 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/SRC_ADDRESS_FIELD_rstpot1_1867 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/END_FCS_rstpot1_1868 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_MATCH_rstpot1_1869 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/CONTROL_FRAME_INT_rstpot1_1870 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/ADD_CONTROL_ENABLE_rstpot1_1871 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/MULTICAST_MATCH_rstpot1_1872 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_WITH_FCS_rstpot1_1873 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/PADDED_FRAME_rstpot1_1874 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/LENGTH_TYPE_ERR_rstpot1_1875 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/STATISTICS_VALID_rstpot1_1876 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/BAD_FRAME_rstpot1_1877 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/GOOD_FRAME_rstpot1_1878 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/CRC_ENGINE_ERR_rstpot1_1879 ;
  wire N164;
  wire N165;
  wire N169;
  wire N171;
  wire N173;
  wire N178;
  wire N179;
  wire N181;
  wire N183;
  wire N185;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MAX_PKT_LEN_REACHED_rstpot_lut_1890 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT[14]_FRAME_MAX[14]_equal_51_o_l1 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MAX_PKT_LEN_REACHED_rstpot_lut1_1892 ;
  wire N189;
  wire N199;
  wire N202;
  wire N206;
  wire N212;
  wire N214;
  wire N215;
  wire N216;
  wire N217;
  wire N218;
  wire N220;
  wire N224;
  wire N226;
  wire N228;
  wire N230;
  wire N232;
  wire N234;
  wire N236;
  wire N238;
  wire N240;
  wire N242;
  wire N243;
  wire N244;
  wire N245;
  wire N246;
  wire N247;
  wire N248;
  wire N249;
  wire N250;
  wire N251;
  wire N252;
  wire N253;
  wire N254;
  wire N255;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mshreg_DATA_7_1927 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mshreg_PREAMBLE_PIPE_13_1928 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE_131_1929 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mshreg_STATISTICS_VECTOR_22_1930 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mshreg_DATA_6_1931 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mshreg_DATA_5_1932 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mshreg_DATA_2_1933 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mshreg_DATA_4_1934 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mshreg_DATA_3_1935 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mshreg_DATA_1_1936 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mshreg_DATA_0_1937 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4_shift1_1938 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4_shift2_1939 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4_shift3_1940 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4_shift4_1941 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4_shift5_1942 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4_shift6_1943 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4_shift7_1944 ;
  wire \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE_1311_1945 ;
  wire \NLW_U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/delay_rx_data_valid_Q15_UNCONNECTED ;
  wire \NLW_U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/byte_wide_ram[7].header_field_dist_ram_SPO_UNCONNECTED ;
  wire \NLW_U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/byte_wide_ram[6].header_field_dist_ram_SPO_UNCONNECTED ;
  wire \NLW_U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/byte_wide_ram[5].header_field_dist_ram_SPO_UNCONNECTED ;
  wire \NLW_U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/byte_wide_ram[4].header_field_dist_ram_SPO_UNCONNECTED ;
  wire \NLW_U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/byte_wide_ram[3].header_field_dist_ram_SPO_UNCONNECTED ;
  wire \NLW_U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/byte_wide_ram[2].header_field_dist_ram_SPO_UNCONNECTED ;
  wire \NLW_U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/byte_wide_ram[1].header_field_dist_ram_SPO_UNCONNECTED ;
  wire \NLW_U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/byte_wide_ram[0].header_field_dist_ram_SPO_UNCONNECTED ;
  wire \NLW_U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mshreg_DATA_7_Q15_UNCONNECTED ;
  wire \NLW_U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mshreg_PREAMBLE_PIPE_13_Q15_UNCONNECTED ;
  wire \NLW_U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mshreg_STATISTICS_VECTOR_22_Q15_UNCONNECTED ;
  wire \NLW_U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mshreg_DATA_6_Q15_UNCONNECTED ;
  wire \NLW_U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mshreg_DATA_5_Q15_UNCONNECTED ;
  wire \NLW_U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mshreg_DATA_2_Q15_UNCONNECTED ;
  wire \NLW_U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mshreg_DATA_4_Q15_UNCONNECTED ;
  wire \NLW_U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mshreg_DATA_3_Q15_UNCONNECTED ;
  wire \NLW_U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mshreg_DATA_1_Q15_UNCONNECTED ;
  wire \NLW_U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mshreg_DATA_0_Q15_UNCONNECTED ;
  wire [7 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_mac_tdata ;
  wire [23 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR ;
  wire [19 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR ;
  wire [7 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/GMII_TXD_TO_PHY ;
  wire [7 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA ;
  wire [7 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG1 ;
  wire [7 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_RX_GEN/RXD_REG1 ;
  wire [7 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_TX_DATA_OUT ;
  wire [7 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_DATA_INT ;
  wire [7 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_GMII_TXD ;
  wire [7 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data ;
  wire [7 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data_hold ;
  wire [13 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy ;
  wire [0 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_lut ;
  wire [14 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Result ;
  wire [14 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT ;
  wire [7 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT ;
  wire [14 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH ;
  wire [31 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC ;
  wire [7 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 ;
  wire [7 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_2 ;
  wire [7 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_1 ;
  wire [1 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_DELAY_HELD ;
  wire [7 : 2] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DEL_MASKED ;
  wire [13 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1 ;
  wire [1 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_COUNT ;
  wire [2 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PRE_COUNT ;
  wire [14 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0 ;
  wire [15 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/LEN ;
  wire [1 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/TRANSMIT_PIPE ;
  wire [7 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_4 ;
  wire [7 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DELAY ;
  wire [7 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_0 ;
  wire [15 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX ;
  wire [7 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_DATA_INT ;
  wire [15 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE ;
  wire [4 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/Result ;
  wire [15 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0105 ;
  wire [4 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/DATA_COUNT ;
  wire [7 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_OPCODE_EARLY ;
  wire [4 : 2] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Result ;
  wire [4 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT ;
  wire [7 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_CONTROL ;
  wire [47 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD ;
  wire [15 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_VALUE_HELD ;
  wire [15 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut ;
  wire [14 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy ;
  wire [5 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_QUANTA ;
  wire [15 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT ;
  wire [5 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter ;
  wire [2 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count ;
  wire [5 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Result ;
  wire [7 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/special_pause_addr_lut ;
  wire [2 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count_pipe ;
  wire [7 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_wr_data ;
  wire [7 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/expected_pause_data ;
  wire [0 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/next_rx_state ;
  wire [0 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/fsmfake0 ;
  wire [7 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_data_reg ;
  wire [31 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC ;
  wire [14 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MAX_FRAME_LENGTH_HELD ;
  wire [7 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 ;
  wire [7 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG6 ;
  wire [14 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER ;
  wire [13 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/STATISTICS_LENGTH ;
  wire [5 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/FIELD_CONTROL ;
  wire [7 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG5 ;
  wire [13 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy ;
  wire [0 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_lut ;
  wire [14 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result ;
  wire [10 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER<14:0> ;
  wire [10 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE ;
  wire [1 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/VLAN_MATCH ;
  wire [7 : 0] \U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/TXD_REG1 ;
  assign
    \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/resync_promiscuous_mode/data_in  = rx_mac_config_vector[11],
    \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/sync_rx_enable/data_in  = rx_mac_config_vector[5],
    \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/sync_tx_enable/data_in  = tx_mac_config_vector[5],
    rx_axis_mac_tdata[7] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_mac_tdata [7],
    rx_axis_mac_tdata[6] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_mac_tdata [6],
    rx_axis_mac_tdata[5] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_mac_tdata [5],
    rx_axis_mac_tdata[4] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_mac_tdata [4],
    rx_axis_mac_tdata[3] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_mac_tdata [3],
    rx_axis_mac_tdata[2] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_mac_tdata [2],
    rx_axis_mac_tdata[1] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_mac_tdata [1],
    rx_axis_mac_tdata[0] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_mac_tdata [0],
    rx_statistics_vector[27] = \NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/rxstatsaddressmatch ,
    rx_statistics_vector[26] = NlwRenamedSig_OI_N1,
    rx_statistics_vector[25] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR [23],
    rx_statistics_vector[22] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR [22],
    rx_statistics_vector[21] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR [21],
    rx_statistics_vector[20] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR [20],
    rx_statistics_vector[19] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR [19],
    rx_statistics_vector[18] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR [18],
    rx_statistics_vector[17] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR [17],
    rx_statistics_vector[16] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR [16],
    rx_statistics_vector[15] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR [15],
    rx_statistics_vector[14] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR [14],
    rx_statistics_vector[13] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR [13],
    rx_statistics_vector[12] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR [12],
    rx_statistics_vector[11] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR [11],
    rx_statistics_vector[10] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR [10],
    rx_statistics_vector[9] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR [9],
    rx_statistics_vector[8] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR [8],
    rx_statistics_vector[7] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR [7],
    rx_statistics_vector[6] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR [6],
    rx_statistics_vector[5] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR [5],
    rx_statistics_vector[4] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR [4],
    rx_statistics_vector[3] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR [3],
    rx_statistics_vector[2] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR [2],
    rx_statistics_vector[1] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR [1],
    rx_statistics_vector[0] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR [0],
    tx_statistics_vector[31] = \NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/PAUSE_VECTOR_0 ,
    tx_statistics_vector[30] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/NUMBER_OF_BYTES_231 ,
    tx_statistics_vector[29] = NlwRenamedSig_OI_N1,
    tx_statistics_vector[28] = NlwRenamedSig_OI_N1,
    tx_statistics_vector[27] = NlwRenamedSig_OI_N1,
    tx_statistics_vector[26] = NlwRenamedSig_OI_N1,
    tx_statistics_vector[25] = NlwRenamedSig_OI_N1,
    tx_statistics_vector[24] = NlwRenamedSig_OI_N1,
    tx_statistics_vector[23] = NlwRenamedSig_OI_N1,
    tx_statistics_vector[22] = NlwRenamedSig_OI_N1,
    tx_statistics_vector[21] = NlwRenamedSig_OI_N1,
    tx_statistics_vector[20] = NlwRenamedSig_OI_N1,
    tx_statistics_vector[19] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR [19],
    tx_statistics_vector[18] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR [18],
    tx_statistics_vector[17] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR [17],
    tx_statistics_vector[16] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR [16],
    tx_statistics_vector[15] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR [15],
    tx_statistics_vector[14] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR [14],
    tx_statistics_vector[13] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR [13],
    tx_statistics_vector[12] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR [12],
    tx_statistics_vector[11] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR [11],
    tx_statistics_vector[10] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR [10],
    tx_statistics_vector[9] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR [9],
    tx_statistics_vector[8] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR [8],
    tx_statistics_vector[7] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR [7],
    tx_statistics_vector[6] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR [6],
    tx_statistics_vector[5] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR [5],
    tx_statistics_vector[4] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR [4],
    tx_statistics_vector[3] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR [3],
    tx_statistics_vector[2] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR [2],
    tx_statistics_vector[1] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR [1],
    tx_statistics_vector[0] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR [0],
    gmii_txd[7] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/GMII_TXD_TO_PHY [7],
    gmii_txd[6] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/GMII_TXD_TO_PHY [6],
    gmii_txd[5] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/GMII_TXD_TO_PHY [5],
    gmii_txd[4] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/GMII_TXD_TO_PHY [4],
    gmii_txd[3] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/GMII_TXD_TO_PHY [3],
    gmii_txd[2] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/GMII_TXD_TO_PHY [2],
    gmii_txd[1] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/GMII_TXD_TO_PHY [1],
    gmii_txd[0] = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/GMII_TXD_TO_PHY [0],
    rx_reset_out = \NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ,
    rx_axis_mac_tvalid = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_mac_tvalid_261 ,
    rx_axis_mac_tlast = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_mac_tlast_262 ,
    rx_axis_mac_tuser = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_mac_tuser_263 ,
    rx_statistics_valid = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VALID_264 ,
    tx_reset_out = \NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ,
    tx_axis_mac_tready = \NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_mac_tready_reg ,
    tx_statistics_valid = \NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/REG_STATUS_VALID ,
    speed_is_100 = NlwRenamedSig_OI_N1,
    speed_is_10_100 = NlwRenamedSig_OI_N1,
    gmii_tx_en = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/GMII_TX_EN_TO_PHY_267 ,
    gmii_tx_er = \U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/GMII_TX_ER_TO_PHY_268 ;
  VCC   XST_VCC (
    .P(N0)
  );
  GND   XST_GND (
    .G(NlwRenamedSig_OI_N1)
  );
  FDP #(
    .INIT ( 1'b1 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R1  (
    .C(rx_axi_clk),
    .D(NlwRenamedSig_OI_N1),
    .PRE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_RX_RST_ASYNCH ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R1_272 )
  );
  FDP #(
    .INIT ( 1'b1 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R2  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R1_272 ),
    .PRE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_RX_RST_ASYNCH ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R2_271 )
  );
  FDP #(
    .INIT ( 1'b1 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R1  (
    .C(tx_axi_clk),
    .D(NlwRenamedSig_OI_N1),
    .PRE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_TX_RST_ASYNCH ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R1_276 )
  );
  FDP #(
    .INIT ( 1'b1 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R2  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R1_276 ),
    .PRE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_TX_RST_ASYNCH ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R2_275 )
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd2  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/next_tx_state[3]_GND_24_o_equal_70_o ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd2_383 )
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd4  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/next_tx_state[3]_PWR_23_o_equal_72_o ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd4_389 )
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd5  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/next_tx_state[3]_GND_24_o_equal_69_o ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd5_391 )
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd3  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd3-In_363 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd3_384 )
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd6  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd6-In ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd6_385 )
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd7  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd7-In_365 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd7_390 )
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd9  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/next_tx_state[3]_GND_24_o_equal_27_o ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd9_362 )
  );
  FDS   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd10  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/next_tx_state[3]_tx_enable_reg_AND_28_o ),
    .S(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd10_388 )
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd8  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/next_tx_state[3]_GND_24_o_equal_68_o ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd8_386 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data_7  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/_n0273_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data[7]_tx_mac_tdata[7]_mux_62_OUT<7> ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data [7])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data_6  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/_n0273_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data[7]_tx_mac_tdata[7]_mux_62_OUT<6> ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data [6])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data_5  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/_n0273_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data[7]_tx_mac_tdata[7]_mux_62_OUT<5> ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data [5])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data_4  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/_n0273_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data[7]_tx_mac_tdata[7]_mux_62_OUT<4> ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data [4])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data_3  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/_n0273_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data[7]_tx_mac_tdata[7]_mux_62_OUT<3> ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data [3])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data_2  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/_n0273_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data[7]_tx_mac_tdata[7]_mux_62_OUT<2> ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data [2])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data_1  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/_n0273_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data[7]_tx_mac_tdata[7]_mux_62_OUT<1> ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data [1])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data_0  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/_n0273_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data[7]_tx_mac_tdata[7]_mux_62_OUT<0> ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data [0])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data_hold_7  (
    .C(tx_axi_clk),
    .CE(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_mac_tready_reg ),
    .D(tx_axis_mac_tdata[7]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data_hold [7])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data_hold_6  (
    .C(tx_axi_clk),
    .CE(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_mac_tready_reg ),
    .D(tx_axis_mac_tdata[6]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data_hold [6])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data_hold_5  (
    .C(tx_axi_clk),
    .CE(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_mac_tready_reg ),
    .D(tx_axis_mac_tdata[5]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data_hold [5])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data_hold_4  (
    .C(tx_axi_clk),
    .CE(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_mac_tready_reg ),
    .D(tx_axis_mac_tdata[4]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data_hold [4])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data_hold_3  (
    .C(tx_axi_clk),
    .CE(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_mac_tready_reg ),
    .D(tx_axis_mac_tdata[3]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data_hold [3])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data_hold_2  (
    .C(tx_axi_clk),
    .CE(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_mac_tready_reg ),
    .D(tx_axis_mac_tdata[2]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data_hold [2])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data_hold_1  (
    .C(tx_axi_clk),
    .CE(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_mac_tready_reg ),
    .D(tx_axis_mac_tdata[1]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data_hold [1])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data_hold_0  (
    .C(tx_axi_clk),
    .CE(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_mac_tready_reg ),
    .D(tx_axis_mac_tdata[0]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data_hold [0])
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_mac_tready_reg  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/next_tx_state[3]_ignore_packet_OR_46_o ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_mac_tready_reg )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/BYTECNTSRL  (
    .A0(N0),
    .A1(N0),
    .A2(N0),
    .A3(NlwRenamedSig_OI_N1),
    .CE(N0),
    .CLK(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_GMII_TX_EN ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/INT_TX_EN_DELAY )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/INT_CRS  (
    .C(tx_axi_clk),
    .D(NlwRenamedSig_OI_N1),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/INT_CRS_413 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/NUMBER_OF_BYTES  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/INT_TX_EN_DELAY ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/Reset_OR_DriverANDClockEnable ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/NUMBER_OF_BYTES_231 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/INT_IFG_DEL_EN  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(tx_mac_config_vector[8]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/INT_IFG_DEL_EN_415 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/INT_ENABLE  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(tx_mac_config_vector[1]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/INT_ENABLE_417 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/INT_JUMBO_ENABLE  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(tx_mac_config_vector[4]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/INT_JUMBO_ENABLE_418 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/INT_VLAN_ENABLE  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_TX_VLAN_ENABLE_OUT ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/INT_VLAN_ENABLE_416 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/INT_CRC_MODE  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/CRC_MODE_INV_77_o ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/INT_CRC_MODE_419 )
  );
  XORCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_xor<14>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy [13]),
    .LI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_xor<14>_rt_1820 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Result [14])
  );
  XORCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_xor<13>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy [12]),
    .LI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<13>_rt_1785 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Result [13])
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<13>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy [12]),
    .DI(NlwRenamedSig_OI_N1),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<13>_rt_1785 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy [13])
  );
  XORCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_xor<12>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy [11]),
    .LI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<12>_rt_1786 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Result [12])
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<12>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy [11]),
    .DI(NlwRenamedSig_OI_N1),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<12>_rt_1786 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy [12])
  );
  XORCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_xor<11>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy [10]),
    .LI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<11>_rt_1787 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Result [11])
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<11>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy [10]),
    .DI(NlwRenamedSig_OI_N1),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<11>_rt_1787 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy [11])
  );
  XORCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_xor<10>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy [9]),
    .LI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<10>_rt_1788 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Result [10])
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<10>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy [9]),
    .DI(NlwRenamedSig_OI_N1),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<10>_rt_1788 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy [10])
  );
  XORCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_xor<9>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy [8]),
    .LI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<9>_rt_1789 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Result [9])
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<9>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy [8]),
    .DI(NlwRenamedSig_OI_N1),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<9>_rt_1789 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy [9])
  );
  XORCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_xor<8>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy [7]),
    .LI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<8>_rt_1790 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Result [8])
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<8>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy [7]),
    .DI(NlwRenamedSig_OI_N1),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<8>_rt_1790 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy [8])
  );
  XORCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_xor<7>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy [6]),
    .LI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<7>_rt_1791 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Result [7])
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<7>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy [6]),
    .DI(NlwRenamedSig_OI_N1),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<7>_rt_1791 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy [7])
  );
  XORCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_xor<6>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy [5]),
    .LI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<6>_rt_1792 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Result [6])
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<6>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy [5]),
    .DI(NlwRenamedSig_OI_N1),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<6>_rt_1792 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy [6])
  );
  XORCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_xor<5>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy [4]),
    .LI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<5>_rt_1793 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Result [5])
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<5>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy [4]),
    .DI(NlwRenamedSig_OI_N1),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<5>_rt_1793 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy [5])
  );
  XORCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_xor<4>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy [3]),
    .LI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<4>_rt_1794 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Result [4])
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<4>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy [3]),
    .DI(NlwRenamedSig_OI_N1),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<4>_rt_1794 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy [4])
  );
  XORCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_xor<3>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy [2]),
    .LI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<3>_rt_1795 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Result [3])
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<3>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy [2]),
    .DI(NlwRenamedSig_OI_N1),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<3>_rt_1795 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy [3])
  );
  XORCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_xor<2>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy [1]),
    .LI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<2>_rt_1796 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Result [2])
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<2>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy [1]),
    .DI(NlwRenamedSig_OI_N1),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<2>_rt_1796 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy [2])
  );
  XORCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_xor<1>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy [0]),
    .LI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<1>_rt_1797 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Result [1])
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<1>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy [0]),
    .DI(NlwRenamedSig_OI_N1),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<1>_rt_1797 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy [1])
  );
  XORCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_xor<0>  (
    .CI(NlwRenamedSig_OI_N1),
    .LI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_lut [0]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Result [0])
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<0>  (
    .CI(NlwRenamedSig_OI_N1),
    .DI(N0),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_lut [0]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy [0])
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcompar_FRAME_COUNT[14]_FRAME_MAX[14]_equal_51_o_cy<4>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcompar_FRAME_COUNT[14]_FRAME_MAX[14]_equal_51_o_cy<3>_446 ),
    .DI(NlwRenamedSig_OI_N1),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcompar_FRAME_COUNT[14]_FRAME_MAX[14]_equal_51_o_lut<4>_445 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT[14]_FRAME_MAX[14]_equal_51_o )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcompar_FRAME_COUNT[14]_FRAME_MAX[14]_equal_51_o_lut<4>  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [12]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH [12]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [13]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH [13]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [14]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH [14]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcompar_FRAME_COUNT[14]_FRAME_MAX[14]_equal_51_o_lut<4>_445 )
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcompar_FRAME_COUNT[14]_FRAME_MAX[14]_equal_51_o_cy<3>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcompar_FRAME_COUNT[14]_FRAME_MAX[14]_equal_51_o_cy<2>_448 ),
    .DI(NlwRenamedSig_OI_N1),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcompar_FRAME_COUNT[14]_FRAME_MAX[14]_equal_51_o_lut<3>_447 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcompar_FRAME_COUNT[14]_FRAME_MAX[14]_equal_51_o_cy<3>_446 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcompar_FRAME_COUNT[14]_FRAME_MAX[14]_equal_51_o_lut<3>  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [9]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH [9]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [10]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH [10]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [11]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH [11]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcompar_FRAME_COUNT[14]_FRAME_MAX[14]_equal_51_o_lut<3>_447 )
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcompar_FRAME_COUNT[14]_FRAME_MAX[14]_equal_51_o_cy<2>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcompar_FRAME_COUNT[14]_FRAME_MAX[14]_equal_51_o_cy<1>_450 ),
    .DI(NlwRenamedSig_OI_N1),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcompar_FRAME_COUNT[14]_FRAME_MAX[14]_equal_51_o_lut<2>_449 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcompar_FRAME_COUNT[14]_FRAME_MAX[14]_equal_51_o_cy<2>_448 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcompar_FRAME_COUNT[14]_FRAME_MAX[14]_equal_51_o_lut<2>  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [6]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH [6]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [7]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH [7]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [8]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH [8]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcompar_FRAME_COUNT[14]_FRAME_MAX[14]_equal_51_o_lut<2>_449 )
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcompar_FRAME_COUNT[14]_FRAME_MAX[14]_equal_51_o_cy<1>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcompar_FRAME_COUNT[14]_FRAME_MAX[14]_equal_51_o_cy<0>_452 ),
    .DI(NlwRenamedSig_OI_N1),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcompar_FRAME_COUNT[14]_FRAME_MAX[14]_equal_51_o_lut<1>_451 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcompar_FRAME_COUNT[14]_FRAME_MAX[14]_equal_51_o_cy<1>_450 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcompar_FRAME_COUNT[14]_FRAME_MAX[14]_equal_51_o_lut<1>  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [3]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_MAX_3_680 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [4]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_MAX_4_681 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [5]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH [5]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcompar_FRAME_COUNT[14]_FRAME_MAX[14]_equal_51_o_lut<1>_451 )
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcompar_FRAME_COUNT[14]_FRAME_MAX[14]_equal_51_o_cy<0>  (
    .CI(N0),
    .DI(NlwRenamedSig_OI_N1),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcompar_FRAME_COUNT[14]_FRAME_MAX[14]_equal_51_o_lut<0>_453 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcompar_FRAME_COUNT[14]_FRAME_MAX[14]_equal_51_o_cy<0>_452 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcompar_FRAME_COUNT[14]_FRAME_MAX[14]_equal_51_o_lut<0>  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH [0]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [1]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH [1]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [2]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_MAX_2_679 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcompar_FRAME_COUNT[14]_FRAME_MAX[14]_equal_51_o_lut<0>_453 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT_6  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n1183_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Result [6]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT_cst1 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [6])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT_14  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n1183_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Result [14]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT_cst1 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [14])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT_13  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n1183_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Result [13]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT_cst1 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [13])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT_11  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n1183_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Result [11]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT_cst1 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [11])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT_10  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n1183_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Result [10]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT_cst1 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [10])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT_12  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n1183_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Result [12]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT_cst1 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [12])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT_9  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n1183_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Result [9]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT_cst1 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [9])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT_8  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n1183_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Result [8]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT_cst1 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [8])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT_5  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n1183_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Result [5]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT_cst1 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [5])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT_7  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n1183_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Result [7]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT_cst1 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [7])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT_4  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n1183_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Result [4]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT_cst1 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [4])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT_3  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n1183_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Result [3]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT_cst1 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT_1  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n1183_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Result [1]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT_cst1 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT_0  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n1183_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Result [0]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT_cst1 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [0])
  );
  FDSE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_COUNT_1  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_CRC_COUNT1 ),
    .S(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_COUNT [1])
  );
  FDSE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_COUNT_0  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_CRC_COUNT ),
    .S(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_COUNT [0])
  );
  FDSE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PRE_COUNT_2  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_PRE_COUNT2 ),
    .S(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PRE_COUNT [2])
  );
  FDSE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PRE_COUNT_1  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_PRE_COUNT1 ),
    .S(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PRE_COUNT [1])
  );
  FDSE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PRE_COUNT_0  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_PRE_COUNT ),
    .S(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PRE_COUNT [0])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_4_7  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [7]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_4 [7])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_4_6  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [6]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_4 [6])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_4_5  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [5]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_4 [5])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_4_4  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [4]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_4 [4])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_4_3  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [3]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_4 [3])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_4_2  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [2]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_4 [2])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_4_1  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [1]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_4 [1])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_4_0  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [0]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_4 [0])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3_7  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_2 [7]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Reset_OR_DriverANDClockEnable25 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [7])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3_6  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_2 [6]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Reset_OR_DriverANDClockEnable25 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [6])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3_5  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_2 [5]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Reset_OR_DriverANDClockEnable25 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [5])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3_4  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_2 [4]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Reset_OR_DriverANDClockEnable25 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [4])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3_3  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_2 [3]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Reset_OR_DriverANDClockEnable25 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [3])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3_2  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_2 [2]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Reset_OR_DriverANDClockEnable25 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [2])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3_1  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_2 [1]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Reset_OR_DriverANDClockEnable25 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [1])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3_0  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_2 [0]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Reset_OR_DriverANDClockEnable25 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [0])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_2_7  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_1 [7]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Reset_OR_DriverANDClockEnable17 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_2 [7])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_2_6  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_1 [6]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Reset_OR_DriverANDClockEnable17 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_2 [6])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_2_5  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_1 [5]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Reset_OR_DriverANDClockEnable17 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_2 [5])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_2_4  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_1 [4]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Reset_OR_DriverANDClockEnable17 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_2 [4])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_2_3  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_1 [3]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Reset_OR_DriverANDClockEnable17 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_2 [3])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_2_2  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_1 [2]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Reset_OR_DriverANDClockEnable17 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_2 [2])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_2_1  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_1 [1]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Reset_OR_DriverANDClockEnable17 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_2 [1])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_2_0  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_1 [0]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Reset_OR_DriverANDClockEnable17 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_2 [0])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/LEN_15  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[13] ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_0 [7]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/LEN [15])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/LEN_14  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[13] ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_0 [6]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/LEN [14])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/LEN_13  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[13] ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_0 [5]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/LEN [13])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/LEN_12  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[13] ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_0 [4]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/LEN [12])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/LEN_11  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[13] ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_0 [3]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/LEN [11])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/LEN_10  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[13] ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_0 [2]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/LEN [10])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/LEN_9  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[13] ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_0 [1]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/LEN [9])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/LEN_8  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[13] ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_0 [0]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/LEN [8])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/LEN_7  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[13] ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_1 [7]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/LEN [7])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/LEN_6  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[13] ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_1 [6]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/LEN [6])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/LEN_5  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[13] ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_1 [5]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/LEN [5])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/LEN_4  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[13] ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_1 [4]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/LEN [4])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/LEN_3  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[13] ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_1 [3]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/LEN [3])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/LEN_2  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[13] ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_1 [2]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/LEN [2])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/LEN_1  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[13] ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_1 [1]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/LEN [1])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/LEN_0  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[13] ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_1 [0]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/LEN [0])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR_19  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/REG_TX_VLAN_530 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR [19])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR_18  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1 [13]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR [18])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR_17  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1 [12]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR [17])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR_16  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1 [11]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR [16])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR_15  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1 [10]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR [15])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR_14  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1 [9]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR [14])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR_13  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1 [8]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR [13])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR_12  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1 [7]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR [12])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR_11  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1 [6]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR [11])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR_10  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1 [5]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR [10])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR_9  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1 [4]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR [9])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR_8  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1 [3]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR [8])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR_7  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1 [2]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR [7])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR_6  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1 [1]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR [6])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR_5  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1 [0]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR [5])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR_4  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/REG_TX_CONTROL_531 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR [4])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR_3  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_TX_UNDERRUN2_540 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR [3])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR_1  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_TX_BROADCAST ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR [1])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR_0  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_TX_SUCCESS_539 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR [0])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_1_7  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG[0][7]_GND_36_o_mux_59_OUT<7>1_478 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_1 [7])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_1_6  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG[0][7]_GND_36_o_mux_59_OUT<6>1_479 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_1 [6])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_1_5  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG[0][7]_GND_36_o_mux_59_OUT<5> ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Reset_OR_DriverANDClockEnable13 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_1 [5])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_1_4  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG[0][7]_GND_36_o_mux_59_OUT<4>1_480 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_1 [4])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_1_3  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG[0][7]_GND_36_o_mux_59_OUT<3> ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Reset_OR_DriverANDClockEnable13 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_1 [3])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_1_2  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG[0][7]_GND_36_o_mux_59_OUT<2>1_481 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_1 [2])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_1_1  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG[0][7]_GND_36_o_mux_59_OUT<1> ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Reset_OR_DriverANDClockEnable13 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_1 [1])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_1_0  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG[0][7]_GND_36_o_mux_59_OUT<0>1_482 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_1 [0])
  );
  FDE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH_14  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n0836_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT<14> ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH [14])
  );
  FDE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH_13  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n0836_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT<13> ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH [13])
  );
  FDE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH_12  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n0836_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT<12> ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH [12])
  );
  FDE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH_11  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n0836_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT<11> ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH [11])
  );
  FDE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH_10  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n0836_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT<10> ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH [10])
  );
  FDE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH_9  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n0836_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT<9> ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH [9])
  );
  FDE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH_8  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n0836_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT<8> ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH [8])
  );
  FDE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH_7  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n0836_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT<7> ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH [7])
  );
  FDE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH_6  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n0836_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT<6> ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH [6])
  );
  FDE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH_5  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n0836_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT<5> ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH [5])
  );
  FDE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH_4  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n0836_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT<4> ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH [4])
  );
  FDE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH_3  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n0836_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT<3> ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH [3])
  );
  FDE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH_2  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n0836_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT<2> ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH [2])
  );
  FDE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH_1  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n0836_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT<1> ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH [1])
  );
  FDE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH_0  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n0836_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT<0> ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH [0])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DEL_MASKED_7  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/GND_36_o_GND_36_o_sub_12_OUT[7] ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Reset_OR_DriverANDClockEnable ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DEL_MASKED [7])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DEL_MASKED_6  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/GND_36_o_GND_36_o_sub_12_OUT[6] ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Reset_OR_DriverANDClockEnable ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DEL_MASKED [6])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DEL_MASKED_5  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/GND_36_o_GND_36_o_sub_12_OUT[5] ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Reset_OR_DriverANDClockEnable ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DEL_MASKED [5])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DEL_MASKED_4  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/GND_36_o_GND_36_o_sub_12_OUT[4] ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Reset_OR_DriverANDClockEnable ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DEL_MASKED [4])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DEL_MASKED_3  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/GND_36_o_GND_36_o_sub_12_OUT<3>1_483 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DEL_MASKED [3])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DEL_MASKED_2  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/GND_36_o_GND_36_o_sub_12_OUT[2] ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Reset_OR_DriverANDClockEnable ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DEL_MASKED [2])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/TRANSMIT_PIPE_1  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/TRANSMIT_PIPE [0]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/TRANSMIT_PIPE [1])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/TRANSMIT_PIPE_0  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/TRANSMIT_548 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/TRANSMIT_PIPE [0])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE_5  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[4] ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[5] )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE_4  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[3] ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[4] )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE_3  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[2] ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[3] )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE_2  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[1] ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[2] )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE_1  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[0] ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[1] )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE_0  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_550 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[0] )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_DELAY_HELD_1  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DELAY [1]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Reset_OR_DriverANDClockEnable ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_DELAY_HELD [1])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_DELAY_HELD_0  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DELAY [0]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Reset_OR_DriverANDClockEnable ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_DELAY_HELD [0])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0_14  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n07981 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [14]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0 [14])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0_13  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n07981 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [13]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0 [13])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0_12  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n07981 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [12]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0 [12])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0_11  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n07981 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [11]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0 [11])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0_10  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n07981 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [10]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0 [10])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0_9  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n07981 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [9]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0 [9])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0_8  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n07981 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [8]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0 [8])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0_7  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n07981 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [7]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0 [7])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0_6  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n07981 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [6]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0 [6])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0_5  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n07981 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [5]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0 [5])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0_4  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n07981 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [4]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0 [4])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0_3  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n07981 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [3]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0 [3])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0_2  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n07981 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [2]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0 [2])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0_1  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n07981 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [1]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0 [1])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0_0  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n07981 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [0]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0 [0])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT_7  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n1177_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT[7]_GND_36_o_mux_33_OUT<7> ),
    .R(NlwRenamedSig_OI_N1),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT [7])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT_6  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n1177_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT[7]_GND_36_o_mux_33_OUT<6> ),
    .R(NlwRenamedSig_OI_N1),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT [6])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT_5  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n1177_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT[7]_GND_36_o_mux_33_OUT<5> ),
    .R(NlwRenamedSig_OI_N1),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT [5])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT_4  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n1177_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT[7]_GND_36_o_mux_33_OUT<4> ),
    .R(NlwRenamedSig_OI_N1),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT [4])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT_3  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n1177_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT[7]_GND_36_o_mux_33_OUT<3> ),
    .R(NlwRenamedSig_OI_N1),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT [3])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT_2  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n1177_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT[7]_GND_36_o_mux_33_OUT<2> ),
    .R(NlwRenamedSig_OI_N1),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT [2])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT_1  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n1177_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT[7]_GND_36_o_mux_33_OUT<1> ),
    .R(NlwRenamedSig_OI_N1),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT [1])
  );
  FDSE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT_0  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n1177_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT[7]_GND_36_o_mux_33_OUT<0> ),
    .S(NlwRenamedSig_OI_N1),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT [0])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_0_7  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_TX_DATA_OUT [7]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_0 [7])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_0_6  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_TX_DATA_OUT [6]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_0 [6])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_0_5  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_TX_DATA_OUT [5]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_0 [5])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_0_4  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_TX_DATA_OUT [4]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_0 [4])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_0_3  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_TX_DATA_OUT [3]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_0 [3])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_0_2  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_TX_DATA_OUT [2]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_0 [2])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_0_1  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_TX_DATA_OUT [1]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_0 [1])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_0_0  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_TX_DATA_OUT [0]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_0 [0])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DELAY_7  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PRE_566 ),
    .D(tx_ifg_delay[7]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DELAY [7])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DELAY_6  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PRE_566 ),
    .D(tx_ifg_delay[6]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DELAY [6])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DELAY_5  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PRE_566 ),
    .D(tx_ifg_delay[5]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DELAY [5])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DELAY_4  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PRE_566 ),
    .D(tx_ifg_delay[4]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DELAY [4])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DELAY_3  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PRE_566 ),
    .D(tx_ifg_delay[3]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DELAY [3])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DELAY_2  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PRE_566 ),
    .D(tx_ifg_delay[2]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DELAY [2])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DELAY_1  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PRE_566 ),
    .D(tx_ifg_delay[1]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DELAY [1])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DELAY_0  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PRE_566 ),
    .D(tx_ifg_delay[0]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DELAY [0])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC_31  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<31> ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[2] ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [31])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC_30  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<30> ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[2] ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [30])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC_29  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<29> ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[2] ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [29])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC_28  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<28>_796 ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[2] ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [28])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC_27  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<27> ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[2] ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [27])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC_26  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<26>_794 ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[2] ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [26])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC_25  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<25> ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[2] ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [25])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC_24  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<24>_792 ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[2] ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [24])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC_23  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<23> ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[2] ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [23])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC_22  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<22> ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[2] ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [22])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC_21  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<21> ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[2] ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [21])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC_20  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<20> ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[2] ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [20])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC_19  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<19> ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[2] ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [19])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC_18  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<18>_786 ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[2] ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [18])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC_17  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<17> ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[2] ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [17])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC_16  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<16>_784 ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[2] ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [16])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC_15  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<15> ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[2] ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [15])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC_14  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<14>_782 ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[2] ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [14])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC_13  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<13> ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[2] ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [13])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC_12  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<12>_780 ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[2] ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [12])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC_11  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<11> ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[2] ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [11])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC_10  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<10> ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[2] ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [10])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC_9  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<9> ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[2] ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [9])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC_8  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<8> ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[2] ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [8])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC_7  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<7>_775 ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[2] ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [7])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC_6  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<6>_774 ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[2] ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [6])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC_5  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<5> ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[2] ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [5])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC_4  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<4>_772 ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[2] ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [4])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC_3  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<3>_771 ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[2] ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [3])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC_2  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<2>_770 ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[2] ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [2])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC_1  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<1> ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[2] ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [1])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC_0  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<0> ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[2] ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/sync_rx_enable/data_sync  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/sync_rx_enable/data_in ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/sync_rx_enable/data_sync1 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/sync_rx_enable/data_sync_reg  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/sync_rx_enable/data_sync1 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/sync_rx_enable/data_sync2 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/sync_rx_duplex/data_sync  (
    .C(rx_axi_clk),
    .D(NlwRenamedSig_OI_N1),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/sync_rx_duplex/data_sync1 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/sync_rx_duplex/data_sync_reg  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/sync_rx_duplex/data_sync1 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/sync_rx_duplex/data_sync2 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/sync_tx_enable/data_sync  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/sync_tx_enable/data_in ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/sync_tx_enable/data_sync1 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/sync_tx_enable/data_sync_reg  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/sync_tx_enable/data_sync1 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/sync_tx_enable/data_sync2 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/sync_tx_duplex/data_sync  (
    .C(tx_axi_clk),
    .D(NlwRenamedSig_OI_N1),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/sync_tx_duplex/data_sync1 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/sync_tx_duplex/data_sync_reg  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/sync_tx_duplex/data_sync1 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/sync_tx_duplex/data_sync2 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_BAD_FRAME_INT  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_BAD_FRAME_COMB ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_BAD_FRAME_INT_322 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_GOOD_FRAME_INT  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_GOOD_FRAME_COMB ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_GOOD_FRAME_INT_323 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_UNDERRUN_INT  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_underrun_351 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_UNDERRUN_INT_829 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_DATA_VALID_INT  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA_VALID_FINAL_285 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_DATA_VALID_INT_321 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_DATA_INT_7  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA [7]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_DATA_INT [7])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_DATA_INT_6  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA [6]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_DATA_INT [6])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_DATA_INT_5  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA [5]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_DATA_INT [5])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_DATA_INT_4  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA [4]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_DATA_INT [4])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_DATA_INT_3  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA [3]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_DATA_INT [3])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_DATA_INT_2  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA [2]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_DATA_INT [2])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_DATA_INT_1  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA [1]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_DATA_INT [1])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_DATA_INT_0  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA [0]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_DATA_INT [0])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_DATA_INT_7  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data [7]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_DATA_INT [7])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_DATA_INT_6  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data [6]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_DATA_INT [6])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_DATA_INT_5  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data [5]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_DATA_INT [5])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_DATA_INT_4  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data [4]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_DATA_INT [4])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_DATA_INT_3  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data [3]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_DATA_INT [3])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_DATA_INT_2  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data [2]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_DATA_INT [2])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_DATA_INT_1  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data [1]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_DATA_INT [1])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_DATA_INT_0  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data [0]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_DATA_INT [0])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/DATA_COUNT_0  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0127_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/Result [0]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/Mcount_DATA_COUNT_val ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/DATA_COUNT [0])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/DATA_COUNT_4  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0127_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/Result [4]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/Mcount_DATA_COUNT_val ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/DATA_COUNT [4])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/DATA_COUNT_3  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0127_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/Result [3]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/Mcount_DATA_COUNT_val ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/DATA_COUNT [3])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/DATA_COUNT_1  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0127_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/Result [1]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/Mcount_DATA_COUNT_val ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/DATA_COUNT [1])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/DATA_COUNT_2  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0127_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/Result [2]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/Mcount_DATA_COUNT_val ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/DATA_COUNT [2])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE_15  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0123_inv1 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0105 [0]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/Mcount_DATA_COUNT_val ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE [15])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE_14  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0123_inv1 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0105 [1]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/Mcount_DATA_COUNT_val ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE [14])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE_13  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0123_inv1 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0105 [2]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/Mcount_DATA_COUNT_val ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE [13])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE_12  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0123_inv1 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0105 [3]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/Mcount_DATA_COUNT_val ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE [12])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE_11  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0123_inv1 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0105 [4]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/Mcount_DATA_COUNT_val ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE [11])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE_10  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0123_inv1 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0105 [5]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/Mcount_DATA_COUNT_val ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE [10])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE_9  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0123_inv1 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0105 [6]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/Mcount_DATA_COUNT_val ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE [9])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE_8  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0123_inv1 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0105 [7]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/Mcount_DATA_COUNT_val ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE [8])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE_7  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0123_inv1 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0105 [8]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/Mcount_DATA_COUNT_val ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE [7])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE_6  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0123_inv1 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0105 [9]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/Mcount_DATA_COUNT_val ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE [6])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE_5  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0123_inv1 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0105 [10]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/Mcount_DATA_COUNT_val ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE [5])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE_4  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0123_inv1 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0105 [11]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/Mcount_DATA_COUNT_val ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE [4])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE_3  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0123_inv1 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0105 [12]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/Mcount_DATA_COUNT_val ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE [3])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE_2  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0123_inv1 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0105 [13]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/Mcount_DATA_COUNT_val ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE [2])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE_1  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0123_inv1 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0105 [14]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/Mcount_DATA_COUNT_val ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE [1])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE_0  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0123_inv1 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0105 [15]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/Mcount_DATA_COUNT_val ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE [0])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_OPCODE_EARLY_7  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0100_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA [7]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_OPCODE_EARLY [7])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_OPCODE_EARLY_6  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0100_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA [6]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_OPCODE_EARLY [6])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_OPCODE_EARLY_5  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0100_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA [5]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_OPCODE_EARLY [5])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_OPCODE_EARLY_4  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0100_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA [4]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_OPCODE_EARLY [4])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_OPCODE_EARLY_3  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0100_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA [3]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_OPCODE_EARLY [3])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_OPCODE_EARLY_2  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0100_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA [2]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_OPCODE_EARLY [2])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_OPCODE_EARLY_1  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0100_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA [1]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_OPCODE_EARLY [1])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_OPCODE_EARLY_0  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0100_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA [0]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_OPCODE_EARLY [0])
  );
  MUXF5   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/MUX_ACK_OUT  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_TX_ACK_IN ),
    .I1(NlwRenamedSig_OI_N1),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/MUX_CONTROL_954 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/ACK_COMB )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT_3  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0187_inv_930 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Result [3]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mcount_DATA_COUNT_val ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [3])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT_2  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0187_inv_930 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Result [2]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mcount_DATA_COUNT_val ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [2])
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/STATE_COUNT_FSM_FFd1  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/STATE_COUNT_FSM_FFd1-In_932 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/STATE_COUNT_FSM_FFd1_968 )
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/STATE_COUNT_FSM_FFd2  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/STATE_COUNT_FSM_FFd2-In ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/STATE_COUNT_FSM_FFd2_931 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_CONTROL_7  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT<7> ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_CONTROL [7])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_CONTROL_6  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT<6> ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_CONTROL [6])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_CONTROL_5  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT<5> ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_CONTROL [5])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_CONTROL_4  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT<4> ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_CONTROL [4])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_CONTROL_3  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT<3> ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_CONTROL [3])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_CONTROL_2  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT<2> ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_CONTROL [2])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_CONTROL_1  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT<1> ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_CONTROL [1])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_CONTROL_0  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT<0> ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_CONTROL [0])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_AVAIL_CONTROL  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT[4]_GND_28_o_Mux_26_o ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_AVAIL_CONTROL_957 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/ACK_OUT  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/ACK_COMB ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/ACK_OUT_317 )
  );
  FDSE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/END_OF_TX_REG  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/END_OF_TX_INV_38_o ),
    .S(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/END_OF_TX_REG_956 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/ACK_INT  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_TX_ACK_IN ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/ACK_INT_966 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_AVAIL_IN_REG  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data_valid_352 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_AVAIL_IN_REG_967 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_VALUE_HELD_15  (
    .C(tx_axi_clk),
    .CE(pause_req),
    .D(pause_val[15]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_VALUE_HELD [15])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_VALUE_HELD_14  (
    .C(tx_axi_clk),
    .CE(pause_req),
    .D(pause_val[14]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_VALUE_HELD [14])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_VALUE_HELD_13  (
    .C(tx_axi_clk),
    .CE(pause_req),
    .D(pause_val[13]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_VALUE_HELD [13])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_VALUE_HELD_12  (
    .C(tx_axi_clk),
    .CE(pause_req),
    .D(pause_val[12]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_VALUE_HELD [12])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_VALUE_HELD_11  (
    .C(tx_axi_clk),
    .CE(pause_req),
    .D(pause_val[11]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_VALUE_HELD [11])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_VALUE_HELD_10  (
    .C(tx_axi_clk),
    .CE(pause_req),
    .D(pause_val[10]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_VALUE_HELD [10])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_VALUE_HELD_9  (
    .C(tx_axi_clk),
    .CE(pause_req),
    .D(pause_val[9]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_VALUE_HELD [9])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_VALUE_HELD_8  (
    .C(tx_axi_clk),
    .CE(pause_req),
    .D(pause_val[8]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_VALUE_HELD [8])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_VALUE_HELD_7  (
    .C(tx_axi_clk),
    .CE(pause_req),
    .D(pause_val[7]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_VALUE_HELD [7])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_VALUE_HELD_6  (
    .C(tx_axi_clk),
    .CE(pause_req),
    .D(pause_val[6]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_VALUE_HELD [6])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_VALUE_HELD_5  (
    .C(tx_axi_clk),
    .CE(pause_req),
    .D(pause_val[5]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_VALUE_HELD [5])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_VALUE_HELD_4  (
    .C(tx_axi_clk),
    .CE(pause_req),
    .D(pause_val[4]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_VALUE_HELD [4])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_VALUE_HELD_3  (
    .C(tx_axi_clk),
    .CE(pause_req),
    .D(pause_val[3]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_VALUE_HELD [3])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_VALUE_HELD_2  (
    .C(tx_axi_clk),
    .CE(pause_req),
    .D(pause_val[2]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_VALUE_HELD [2])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_VALUE_HELD_1  (
    .C(tx_axi_clk),
    .CE(pause_req),
    .D(pause_val[1]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_VALUE_HELD [1])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_VALUE_HELD_0  (
    .C(tx_axi_clk),
    .CE(pause_req),
    .D(pause_val[0]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_VALUE_HELD [0])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD_47  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0163_inv ),
    .D(tx_mac_config_vector[79]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [47])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD_46  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0163_inv ),
    .D(tx_mac_config_vector[78]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [46])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD_45  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0163_inv ),
    .D(tx_mac_config_vector[77]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [45])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD_44  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0163_inv ),
    .D(tx_mac_config_vector[76]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [44])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD_43  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0163_inv ),
    .D(tx_mac_config_vector[75]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [43])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD_42  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0163_inv ),
    .D(tx_mac_config_vector[74]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [42])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD_41  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0163_inv ),
    .D(tx_mac_config_vector[73]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [41])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD_40  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0163_inv ),
    .D(tx_mac_config_vector[72]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [40])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD_39  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0163_inv ),
    .D(tx_mac_config_vector[71]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [39])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD_38  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0163_inv ),
    .D(tx_mac_config_vector[70]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [38])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD_37  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0163_inv ),
    .D(tx_mac_config_vector[69]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [37])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD_36  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0163_inv ),
    .D(tx_mac_config_vector[68]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [36])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD_35  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0163_inv ),
    .D(tx_mac_config_vector[67]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [35])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD_34  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0163_inv ),
    .D(tx_mac_config_vector[66]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [34])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD_33  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0163_inv ),
    .D(tx_mac_config_vector[65]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [33])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD_32  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0163_inv ),
    .D(tx_mac_config_vector[64]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [32])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD_31  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0163_inv ),
    .D(tx_mac_config_vector[63]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [31])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD_30  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0163_inv ),
    .D(tx_mac_config_vector[62]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [30])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD_29  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0163_inv ),
    .D(tx_mac_config_vector[61]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [29])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD_28  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0163_inv ),
    .D(tx_mac_config_vector[60]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [28])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD_27  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0163_inv ),
    .D(tx_mac_config_vector[59]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [27])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD_26  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0163_inv ),
    .D(tx_mac_config_vector[58]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [26])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD_25  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0163_inv ),
    .D(tx_mac_config_vector[57]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [25])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD_24  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0163_inv ),
    .D(tx_mac_config_vector[56]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [24])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD_23  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0163_inv ),
    .D(tx_mac_config_vector[55]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [23])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD_22  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0163_inv ),
    .D(tx_mac_config_vector[54]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [22])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD_21  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0163_inv ),
    .D(tx_mac_config_vector[53]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [21])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD_20  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0163_inv ),
    .D(tx_mac_config_vector[52]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [20])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD_19  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0163_inv ),
    .D(tx_mac_config_vector[51]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [19])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD_18  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0163_inv ),
    .D(tx_mac_config_vector[50]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [18])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD_17  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0163_inv ),
    .D(tx_mac_config_vector[49]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [17])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD_16  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0163_inv ),
    .D(tx_mac_config_vector[48]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [16])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD_15  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0163_inv ),
    .D(tx_mac_config_vector[47]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [15])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD_14  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0163_inv ),
    .D(tx_mac_config_vector[46]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [14])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD_13  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0163_inv ),
    .D(tx_mac_config_vector[45]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [13])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD_12  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0163_inv ),
    .D(tx_mac_config_vector[44]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [12])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD_11  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0163_inv ),
    .D(tx_mac_config_vector[43]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [11])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD_10  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0163_inv ),
    .D(tx_mac_config_vector[42]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [10])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD_9  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0163_inv ),
    .D(tx_mac_config_vector[41]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [9])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD_8  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0163_inv ),
    .D(tx_mac_config_vector[40]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [8])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD_7  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0163_inv ),
    .D(tx_mac_config_vector[39]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [7])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD_6  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0163_inv ),
    .D(tx_mac_config_vector[38]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [6])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD_5  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0163_inv ),
    .D(tx_mac_config_vector[37]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [5])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD_4  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0163_inv ),
    .D(tx_mac_config_vector[36]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [4])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD_3  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0163_inv ),
    .D(tx_mac_config_vector[35]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [3])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD_2  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0163_inv ),
    .D(tx_mac_config_vector[34]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [2])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD_1  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0163_inv ),
    .D(tx_mac_config_vector[33]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [1])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD_0  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0163_inv ),
    .D(tx_mac_config_vector[32]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [0])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/GOOD_FRAME_IN3  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/GOOD_FRAME_IN2_1036 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/GOOD_FRAME_IN3_1035 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/GOOD_FRAME_IN2  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/GOOD_FRAME_IN1_1034 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/GOOD_FRAME_IN2_1036 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_REQ_TO_TX  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GOOD_FRAME_INT_284 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/PAUSE_REQ_LOCAL ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_REQ_TO_TX_837 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/GOOD_FRAME_TO_TX  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/GOOD_FRAME_IN1_GOOD_FRAME_IN3_OR_81_o ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/sync_good_rx/data_in )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/GOOD_FRAME_IN1  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GOOD_FRAME_INT_284 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/GOOD_FRAME_IN1_1034 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX_15  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GOOD_FRAME_INT_284 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE [15]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX [15])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX_14  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GOOD_FRAME_INT_284 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE [14]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX [14])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX_13  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GOOD_FRAME_INT_284 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE [13]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX [13])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX_12  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GOOD_FRAME_INT_284 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE [12]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX [12])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX_11  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GOOD_FRAME_INT_284 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE [11]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX [11])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX_10  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GOOD_FRAME_INT_284 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE [10]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX [10])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX_9  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GOOD_FRAME_INT_284 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE [9]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX [9])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX_8  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GOOD_FRAME_INT_284 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE [8]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX [8])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX_7  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GOOD_FRAME_INT_284 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE [7]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX [7])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX_6  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GOOD_FRAME_INT_284 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE [6]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX [6])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX_5  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GOOD_FRAME_INT_284 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE [5]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX [5])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX_4  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GOOD_FRAME_INT_284 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE [4]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX [4])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX_3  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GOOD_FRAME_INT_284 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE [3]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX [3])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX_2  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GOOD_FRAME_INT_284 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE [2]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX [2])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX_1  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GOOD_FRAME_INT_284 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE [1]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX [1])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX_0  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GOOD_FRAME_INT_284 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE [0]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX [0])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_QUANTA_5  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_QUANTA5 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_QUANTA [5])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_QUANTA_4  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_QUANTA4 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_QUANTA [4])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_QUANTA_3  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_QUANTA3 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_QUANTA [3])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_QUANTA_2  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_QUANTA2 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_QUANTA [2])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_QUANTA_1  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_QUANTA1 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_QUANTA [1])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_QUANTA_0  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_QUANTA ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_QUANTA [0])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT_15  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/_n0068_inv_1085 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT15 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT [15])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT_14  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/_n0068_inv_1085 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT14 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT [14])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT_13  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/_n0068_inv_1085 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT13 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT [13])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT_12  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/_n0068_inv_1085 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT12 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT [12])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT_11  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/_n0068_inv_1085 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT11 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT [11])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT_10  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/_n0068_inv_1085 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT10 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT [10])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT_9  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/_n0068_inv_1085 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT9 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT [9])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT_8  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/_n0068_inv_1085 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT8 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT [8])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT_7  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/_n0068_inv_1085 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT7 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT [7])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT_6  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/_n0068_inv_1085 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT6 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT [6])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT_5  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/_n0068_inv_1085 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT5 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT [5])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT_4  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/_n0068_inv_1085 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT4 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT [4])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT_3  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/_n0068_inv_1085 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT3 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT [3])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT_2  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/_n0068_inv_1085 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT2 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT [2])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT_1  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/_n0068_inv_1085 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT1 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT [1])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT_0  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/_n0068_inv_1085 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT [0])
  );
  XORCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_xor<15>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy [14]),
    .LI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut [15]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT15 )
  );
  XORCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_xor<14>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy [13]),
    .LI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut [14]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT14 )
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy<14>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy [13]),
    .DI(N0),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut [14]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy [14])
  );
  XORCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_xor<13>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy [12]),
    .LI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut [13]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT13 )
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy<13>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy [12]),
    .DI(N0),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut [13]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy [13])
  );
  XORCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_xor<12>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy [11]),
    .LI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut [12]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT12 )
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy<12>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy [11]),
    .DI(N0),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut [12]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy [12])
  );
  XORCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_xor<11>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy [10]),
    .LI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut [11]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT11 )
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy<11>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy [10]),
    .DI(N0),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut [11]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy [11])
  );
  XORCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_xor<10>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy [9]),
    .LI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut [10]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT10 )
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy<10>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy [9]),
    .DI(N0),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut [10]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy [10])
  );
  XORCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_xor<9>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy [8]),
    .LI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut [9]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT9 )
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy<9>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy [8]),
    .DI(N0),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut [9]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy [9])
  );
  XORCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_xor<8>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy [7]),
    .LI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut [8]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT8 )
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy<8>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy [7]),
    .DI(N0),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut [8]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy [8])
  );
  XORCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_xor<7>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy [6]),
    .LI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut [7]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT7 )
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy<7>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy [6]),
    .DI(N0),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut [7]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy [7])
  );
  XORCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_xor<6>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy [5]),
    .LI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut [6]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT6 )
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy<6>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy [5]),
    .DI(N0),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut [6]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy [6])
  );
  XORCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_xor<5>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy [4]),
    .LI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut [5]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT5 )
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy<5>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy [4]),
    .DI(N0),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut [5]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy [5])
  );
  XORCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_xor<4>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy [3]),
    .LI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut [4]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT4 )
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy<4>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy [3]),
    .DI(N0),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut [4]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy [4])
  );
  XORCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_xor<3>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy [2]),
    .LI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut [3]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT3 )
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy<3>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy [2]),
    .DI(N0),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut [3]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy [3])
  );
  XORCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_xor<2>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy [1]),
    .LI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut [2]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT2 )
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy<2>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy [1]),
    .DI(N0),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut [2]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy [2])
  );
  XORCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_xor<1>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy [0]),
    .LI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut [1]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT1 )
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy<1>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy [0]),
    .DI(N0),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut [1]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy [1])
  );
  XORCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_xor<0>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mmux_COUNT_SET_GND_31_o_MUX_238_o12_1037 ),
    .LI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut [0]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT )
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy<0>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mmux_COUNT_SET_GND_31_o_MUX_238_o12_1037 ),
    .DI(N0),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut [0]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_cy [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/sync_good_rx/data_sync  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/sync_good_rx/data_in ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/sync_good_rx/data_sync1 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/sync_good_rx/data_sync_reg  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/sync_good_rx/data_sync1 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/sync_good_rx/data_sync2 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/COUNT_SET_REG  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/COUNT_SET_832 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/COUNT_SET_REG_1100 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/GOOD_FRAME_IN_TX_REG  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/sync_good_rx/data_sync2 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/GOOD_FRAME_IN_TX_REG_1093 )
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_RX_GEN/RX_DV_REG1  (
    .C(rx_axi_clk),
    .D(gmii_rx_dv),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_RX_GEN/RX_DV_REG1_308 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_RX_GEN/RXD_REG1_7  (
    .C(rx_axi_clk),
    .D(gmii_rxd[7]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_RX_GEN/RXD_REG1 [7])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_RX_GEN/RXD_REG1_6  (
    .C(rx_axi_clk),
    .D(gmii_rxd[6]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_RX_GEN/RXD_REG1 [6])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_RX_GEN/RXD_REG1_5  (
    .C(rx_axi_clk),
    .D(gmii_rxd[5]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_RX_GEN/RXD_REG1 [5])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_RX_GEN/RXD_REG1_4  (
    .C(rx_axi_clk),
    .D(gmii_rxd[4]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_RX_GEN/RXD_REG1 [4])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_RX_GEN/RXD_REG1_3  (
    .C(rx_axi_clk),
    .D(gmii_rxd[3]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_RX_GEN/RXD_REG1 [3])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_RX_GEN/RXD_REG1_2  (
    .C(rx_axi_clk),
    .D(gmii_rxd[2]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_RX_GEN/RXD_REG1 [2])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_RX_GEN/RXD_REG1_1  (
    .C(rx_axi_clk),
    .D(gmii_rxd[1]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_RX_GEN/RXD_REG1 [1])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_RX_GEN/RXD_REG1_0  (
    .C(rx_axi_clk),
    .D(gmii_rxd[0]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_RX_GEN/RXD_REG1 [0])
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_RX_GEN/RX_ER_REG1  (
    .C(rx_axi_clk),
    .D(gmii_rx_er),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_RX_GEN/RX_ER_REG1_307 )
  );
  LUT3 #(
    .INIT ( 8'h06 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/special_pause_address[7].LUT3_special_pause_inst  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [1]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [2]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/special_pause_addr_lut [7])
  );
  LUT3 #(
    .INIT ( 8'h04 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/special_pause_address[6].LUT3_special_pause_inst  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [1]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [2]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/special_pause_addr_lut [6])
  );
  LUT3 #(
    .INIT ( 8'h00 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/special_pause_address[5].LUT3_special_pause_inst  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [1]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [2]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/special_pause_addr_lut [5])
  );
  LUT3 #(
    .INIT ( 8'h00 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/special_pause_address[4].LUT3_special_pause_inst  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [1]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [2]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/special_pause_addr_lut [4])
  );
  LUT3 #(
    .INIT ( 8'h00 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/special_pause_address[3].LUT3_special_pause_inst  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [1]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [2]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/special_pause_addr_lut [3])
  );
  LUT3 #(
    .INIT ( 8'h00 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/special_pause_address[2].LUT3_special_pause_inst  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [1]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [2]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/special_pause_addr_lut [2])
  );
  LUT3 #(
    .INIT ( 8'h04 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/special_pause_address[1].LUT3_special_pause_inst  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [1]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [2]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/special_pause_addr_lut [1])
  );
  LUT3 #(
    .INIT ( 8'h21 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/special_pause_address[0].LUT3_special_pause_inst  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [1]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [2]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/special_pause_addr_lut [0])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/delay_rx_data_valid  (
    .A0(N0),
    .A1(NlwRenamedSig_OI_N1),
    .A2(N0),
    .A3(NlwRenamedSig_OI_N1),
    .CE(N0),
    .CLK(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/DATA_VALID_EARLY ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/rx_data_valid_srl16 ),
    .Q15(\NLW_U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/delay_rx_data_valid_Q15_UNCONNECTED )
  );
  RAM64X1D #(
    .INIT ( 64'h0000000000000000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/byte_wide_ram[7].header_field_dist_ram  (
    .A0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count_pipe [0]),
    .A1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count_pipe [1]),
    .A2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count_pipe [2]),
    .A3(NlwRenamedSig_OI_N1),
    .A4(NlwRenamedSig_OI_N1),
    .A5(NlwRenamedSig_OI_N1),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_wr_data [7]),
    .DPRA0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [0]),
    .DPRA1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [1]),
    .DPRA2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [2]),
    .DPRA3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [3]),
    .DPRA4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [4]),
    .DPRA5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [5]),
    .WCLK(rx_axi_clk),
    .WE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_wr_1172 ),
    .SPO(\NLW_U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/byte_wide_ram[7].header_field_dist_ram_SPO_UNCONNECTED ),
    .DPO(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/expected_pause_data [7])
  );
  RAM64X1D #(
    .INIT ( 64'h0000000000000000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/byte_wide_ram[6].header_field_dist_ram  (
    .A0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count_pipe [0]),
    .A1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count_pipe [1]),
    .A2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count_pipe [2]),
    .A3(NlwRenamedSig_OI_N1),
    .A4(NlwRenamedSig_OI_N1),
    .A5(NlwRenamedSig_OI_N1),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_wr_data [6]),
    .DPRA0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [0]),
    .DPRA1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [1]),
    .DPRA2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [2]),
    .DPRA3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [3]),
    .DPRA4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [4]),
    .DPRA5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [5]),
    .WCLK(rx_axi_clk),
    .WE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_wr_1172 ),
    .SPO(\NLW_U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/byte_wide_ram[6].header_field_dist_ram_SPO_UNCONNECTED ),
    .DPO(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/expected_pause_data [6])
  );
  RAM64X1D #(
    .INIT ( 64'h0000000000000000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/byte_wide_ram[5].header_field_dist_ram  (
    .A0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count_pipe [0]),
    .A1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count_pipe [1]),
    .A2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count_pipe [2]),
    .A3(NlwRenamedSig_OI_N1),
    .A4(NlwRenamedSig_OI_N1),
    .A5(NlwRenamedSig_OI_N1),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_wr_data [5]),
    .DPRA0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [0]),
    .DPRA1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [1]),
    .DPRA2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [2]),
    .DPRA3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [3]),
    .DPRA4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [4]),
    .DPRA5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [5]),
    .WCLK(rx_axi_clk),
    .WE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_wr_1172 ),
    .SPO(\NLW_U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/byte_wide_ram[5].header_field_dist_ram_SPO_UNCONNECTED ),
    .DPO(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/expected_pause_data [5])
  );
  RAM64X1D #(
    .INIT ( 64'h0000000000000000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/byte_wide_ram[4].header_field_dist_ram  (
    .A0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count_pipe [0]),
    .A1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count_pipe [1]),
    .A2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count_pipe [2]),
    .A3(NlwRenamedSig_OI_N1),
    .A4(NlwRenamedSig_OI_N1),
    .A5(NlwRenamedSig_OI_N1),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_wr_data [4]),
    .DPRA0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [0]),
    .DPRA1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [1]),
    .DPRA2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [2]),
    .DPRA3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [3]),
    .DPRA4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [4]),
    .DPRA5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [5]),
    .WCLK(rx_axi_clk),
    .WE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_wr_1172 ),
    .SPO(\NLW_U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/byte_wide_ram[4].header_field_dist_ram_SPO_UNCONNECTED ),
    .DPO(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/expected_pause_data [4])
  );
  RAM64X1D #(
    .INIT ( 64'h0000000000000000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/byte_wide_ram[3].header_field_dist_ram  (
    .A0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count_pipe [0]),
    .A1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count_pipe [1]),
    .A2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count_pipe [2]),
    .A3(NlwRenamedSig_OI_N1),
    .A4(NlwRenamedSig_OI_N1),
    .A5(NlwRenamedSig_OI_N1),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_wr_data [3]),
    .DPRA0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [0]),
    .DPRA1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [1]),
    .DPRA2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [2]),
    .DPRA3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [3]),
    .DPRA4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [4]),
    .DPRA5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [5]),
    .WCLK(rx_axi_clk),
    .WE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_wr_1172 ),
    .SPO(\NLW_U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/byte_wide_ram[3].header_field_dist_ram_SPO_UNCONNECTED ),
    .DPO(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/expected_pause_data [3])
  );
  RAM64X1D #(
    .INIT ( 64'h0000000000000000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/byte_wide_ram[2].header_field_dist_ram  (
    .A0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count_pipe [0]),
    .A1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count_pipe [1]),
    .A2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count_pipe [2]),
    .A3(NlwRenamedSig_OI_N1),
    .A4(NlwRenamedSig_OI_N1),
    .A5(NlwRenamedSig_OI_N1),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_wr_data [2]),
    .DPRA0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [0]),
    .DPRA1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [1]),
    .DPRA2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [2]),
    .DPRA3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [3]),
    .DPRA4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [4]),
    .DPRA5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [5]),
    .WCLK(rx_axi_clk),
    .WE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_wr_1172 ),
    .SPO(\NLW_U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/byte_wide_ram[2].header_field_dist_ram_SPO_UNCONNECTED ),
    .DPO(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/expected_pause_data [2])
  );
  RAM64X1D #(
    .INIT ( 64'h0000000000000000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/byte_wide_ram[1].header_field_dist_ram  (
    .A0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count_pipe [0]),
    .A1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count_pipe [1]),
    .A2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count_pipe [2]),
    .A3(NlwRenamedSig_OI_N1),
    .A4(NlwRenamedSig_OI_N1),
    .A5(NlwRenamedSig_OI_N1),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_wr_data [1]),
    .DPRA0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [0]),
    .DPRA1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [1]),
    .DPRA2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [2]),
    .DPRA3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [3]),
    .DPRA4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [4]),
    .DPRA5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [5]),
    .WCLK(rx_axi_clk),
    .WE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_wr_1172 ),
    .SPO(\NLW_U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/byte_wide_ram[1].header_field_dist_ram_SPO_UNCONNECTED ),
    .DPO(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/expected_pause_data [1])
  );
  RAM64X1D #(
    .INIT ( 64'h0000000000000000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/byte_wide_ram[0].header_field_dist_ram  (
    .A0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count_pipe [0]),
    .A1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count_pipe [1]),
    .A2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count_pipe [2]),
    .A3(NlwRenamedSig_OI_N1),
    .A4(NlwRenamedSig_OI_N1),
    .A5(NlwRenamedSig_OI_N1),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_wr_data [0]),
    .DPRA0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [0]),
    .DPRA1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [1]),
    .DPRA2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [2]),
    .DPRA3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [3]),
    .DPRA4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [4]),
    .DPRA5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [5]),
    .WCLK(rx_axi_clk),
    .WE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_wr_1172 ),
    .SPO(\NLW_U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/byte_wide_ram[0].header_field_dist_ram_SPO_UNCONNECTED ),
    .DPO(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/expected_pause_data [0])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count_2  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count[2]_PWR_51_o_LessThan_17_o ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Result<2>1 ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mcount_load_count_val ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count [2])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count_0  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count[2]_PWR_51_o_LessThan_17_o ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Result<0>1 ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mcount_load_count_val ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count [0])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter_0  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/_n0287_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Result [0]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mcount_counter_val ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [0])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count_1  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count[2]_PWR_51_o_LessThan_17_o ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Result<1>1 ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mcount_load_count_val ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count [1])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter_5  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/_n0287_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Result [5]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mcount_counter_val ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [5])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter_4  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/_n0287_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Result [4]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mcount_counter_val ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [4])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter_3  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/_n0287_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Result [3]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mcount_counter_val ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [3])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter_2  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/_n0287_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Result [2]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mcount_counter_val ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [2])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter_1  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/_n0287_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Result [1]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mcount_counter_val ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/sync_update/data_sync  (
    .C(rx_axi_clk),
    .D(NlwRenamedSig_OI_N1),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/sync_update/data_sync1 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/sync_update/data_sync_reg  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/sync_update/data_sync1 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/sync_update/data_sync2 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/resync_promiscuous_mode/data_sync  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/resync_promiscuous_mode/data_in ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/resync_promiscuous_mode/data_sync1 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/resync_promiscuous_mode/data_sync_reg  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/resync_promiscuous_mode/data_sync1 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/resync_promiscuous_mode/data_sync2 )
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/pauseaddressmatch  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/pauseaddressmatch_int_1164 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/pauseaddressmatch_304 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/pauseaddressmatch_int  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter[5]_GND_49_o_equal_14_o1 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/pause_match_1168 ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Reset_OR_DriverANDClockEnable ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/pauseaddressmatch_int_1164 )
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/pause_match_reg  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/pause_match_reg_rx_data[7]_MUX_940_o ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/pause_match_reg_1180 )
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/specialpauseaddressmatch  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/specialpauseaddressmatch_int_1163 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/specialpauseaddressmatch_303 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/specialpauseaddressmatch_int  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter[5]_GND_49_o_equal_14_o1 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/special_pause_match_1167 ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Reset_OR_DriverANDClockEnable ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/specialpauseaddressmatch_int_1163 )
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_wr  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count_pipe[2]_PWR_51_o_LessThan_20_o ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mcount_load_count_val ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_wr_1172 )
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/special_pause_match_reg  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/special_pause_match_comb ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/special_pause_match_reg_1179 )
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/broadcastaddressmatch  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/broadcastaddressmatch_int_1165 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/broadcastaddressmatch_305 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_wr_data_7  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count[2]_pause_addr[7]_wide_mux_27_OUT<7> ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_wr_data [7])
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_wr_data_6  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count[2]_pause_addr[7]_wide_mux_27_OUT<6> ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_wr_data [6])
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_wr_data_5  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count[2]_pause_addr[7]_wide_mux_27_OUT<5> ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_wr_data [5])
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_wr_data_4  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count[2]_pause_addr[7]_wide_mux_27_OUT<4> ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_wr_data [4])
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_wr_data_3  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count[2]_pause_addr[7]_wide_mux_27_OUT<3> ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_wr_data [3])
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_wr_data_2  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count[2]_pause_addr[7]_wide_mux_27_OUT<2> ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_wr_data [2])
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_wr_data_1  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count[2]_pause_addr[7]_wide_mux_27_OUT<1> ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_wr_data [1])
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_wr_data_0  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count[2]_pause_addr[7]_wide_mux_27_OUT<0> ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_wr_data [0])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/broadcastaddressmatch_int  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter[5]_GND_49_o_equal_14_o1 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/broadcast_match_1169 ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Reset_OR_DriverANDClockEnable ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/broadcastaddressmatch_int_1165 )
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count_pipe_2  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count [2]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mcount_load_count_val ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count_pipe [2])
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count_pipe_1  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count [1]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mcount_load_count_val ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count_pipe [1])
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count_pipe_0  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count [0]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mcount_load_count_val ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count_pipe [0])
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/rx_data_valid_srl16_reg2  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/rx_data_valid_srl16_reg1_1178 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/rx_data_valid_srl16_reg2_1177 )
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/rx_data_valid_srl16_reg1  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/rx_data_valid_srl16 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/rx_data_valid_srl16_reg1_1178 )
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/rx_data_valid_reg2  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/rx_data_valid_reg1_1176 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/rx_data_valid_reg2_1182 )
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/rx_data_valid_reg1  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/DATA_VALID_EARLY ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/rx_data_valid_reg1_1176 )
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/broadcast_byte_match  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/broadcast_byte_match_rx_data[7]_MUX_920_o ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/broadcast_byte_match_1181 )
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_state_FSM_FFd2  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_state_FSM_FFd2-In ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_state_FSM_FFd2_1204 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/fsmfake0_0  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/next_rx_state [0]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/fsmfake0 [0])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_mac_tdata_7  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_state[1]_GND_23_o_equal_28_o ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_data_reg [7]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_mac_tdata [7])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_mac_tdata_6  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_state[1]_GND_23_o_equal_28_o ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_data_reg [6]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_mac_tdata [6])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_mac_tdata_5  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_state[1]_GND_23_o_equal_28_o ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_data_reg [5]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_mac_tdata [5])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_mac_tdata_4  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_state[1]_GND_23_o_equal_28_o ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_data_reg [4]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_mac_tdata [4])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_mac_tdata_3  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_state[1]_GND_23_o_equal_28_o ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_data_reg [3]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_mac_tdata [3])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_mac_tdata_2  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_state[1]_GND_23_o_equal_28_o ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_data_reg [2]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_mac_tdata [2])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_mac_tdata_1  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_state[1]_GND_23_o_equal_28_o ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_data_reg [1]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_mac_tdata [1])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_mac_tdata_0  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_state[1]_GND_23_o_equal_28_o ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_data_reg [0]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_mac_tdata [0])
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_mac_tuser  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/next_rx_state[1]_rx_enable_AND_7_o ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_mac_tuser_263 )
  );
  FDE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_data_reg_7  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_DATA_INT [7]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_data_reg [7])
  );
  FDE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_data_reg_6  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_DATA_INT [6]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_data_reg [6])
  );
  FDE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_data_reg_5  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_DATA_INT [5]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_data_reg [5])
  );
  FDE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_data_reg_4  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_DATA_INT [4]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_data_reg [4])
  );
  FDE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_data_reg_3  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_DATA_INT [3]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_data_reg [3])
  );
  FDE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_data_reg_2  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_DATA_INT [2]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_data_reg [2])
  );
  FDE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_data_reg_1  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_DATA_INT [1]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_data_reg [1])
  );
  FDE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_data_reg_0  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_DATA_INT [0]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_data_reg [0])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC_0  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/ENABLE_REG_1315 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<0> ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [0])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC_1  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/ENABLE_REG_1315 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<1> ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [1])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC_2  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/ENABLE_REG_1315 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<2>_1273 ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [2])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC_3  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/ENABLE_REG_1315 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<3>_1272 ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [3])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC_4  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/ENABLE_REG_1315 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<4>_1271 ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [4])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC_5  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/ENABLE_REG_1315 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<5> ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [5])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC_6  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/ENABLE_REG_1315 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<6>_1269 ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [6])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC_7  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/ENABLE_REG_1315 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<7>_1268 ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [7])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC_8  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/ENABLE_REG_1315 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<8> ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [8])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC_9  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/ENABLE_REG_1315 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<9> ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [9])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC_10  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/ENABLE_REG_1315 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<10> ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [10])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC_11  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/ENABLE_REG_1315 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<11> ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [11])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC_12  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/ENABLE_REG_1315 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<12>_1263 ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [12])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC_13  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/ENABLE_REG_1315 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<13> ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [13])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC_14  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/ENABLE_REG_1315 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<14>_1261 ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [14])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC_15  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/ENABLE_REG_1315 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<15> ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [15])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC_16  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/ENABLE_REG_1315 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<16>_1259 ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [16])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC_17  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/ENABLE_REG_1315 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<17> ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [17])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC_18  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/ENABLE_REG_1315 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<18>_1257 ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [18])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC_19  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/ENABLE_REG_1315 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<19> ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [19])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC_20  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/ENABLE_REG_1315 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<20> ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [20])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC_21  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/ENABLE_REG_1315 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<21> ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [21])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC_22  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/ENABLE_REG_1315 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<22> ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [22])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC_23  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/ENABLE_REG_1315 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<23> ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [23])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC_24  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/ENABLE_REG_1315 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<24>_1251 ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [24])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC_25  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/ENABLE_REG_1315 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<25> ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [25])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC_26  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/ENABLE_REG_1315 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<26>_1249 ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [26])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC_27  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/ENABLE_REG_1315 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<27> ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [27])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC_28  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/ENABLE_REG_1315 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<28>_1247 ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [28])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC_29  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/ENABLE_REG_1315 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<29> ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [29])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC_30  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/ENABLE_REG_1315 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<30> ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [30])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC_31  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/ENABLE_REG_1315 ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<31> ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [31])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DELAY_RX_ERR  (
    .A0(N0),
    .A1(NlwRenamedSig_OI_N1),
    .A2(N0),
    .A3(NlwRenamedSig_OI_N1),
    .CE(N0),
    .CLK(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_ERR_REG1_1334 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_ERR_REG5 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DELAY_RX_DV2  (
    .A0(NlwRenamedSig_OI_N1),
    .A1(N0),
    .A2(NlwRenamedSig_OI_N1),
    .A3(NlwRenamedSig_OI_N1),
    .CE(N0),
    .CLK(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_DV_REG3_1337 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_DV_REG5 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DELAY_RX_DV1  (
    .A0(N0),
    .A1(NlwRenamedSig_OI_N1),
    .A2(NlwRenamedSig_OI_N1),
    .A3(NlwRenamedSig_OI_N1),
    .CE(N0),
    .CLK(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_DV_REG1_1338 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_DV_REG2 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DELAY_RXD_BUS[0].DELAY_RXD  (
    .A0(N0),
    .A1(NlwRenamedSig_OI_N1),
    .A2(N0),
    .A3(NlwRenamedSig_OI_N1),
    .CE(N0),
    .CLK(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG1 [0]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG5 [0])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DELAY_RXD_BUS[1].DELAY_RXD  (
    .A0(N0),
    .A1(NlwRenamedSig_OI_N1),
    .A2(N0),
    .A3(NlwRenamedSig_OI_N1),
    .CE(N0),
    .CLK(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG1 [1]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG5 [1])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DELAY_RXD_BUS[2].DELAY_RXD  (
    .A0(N0),
    .A1(NlwRenamedSig_OI_N1),
    .A2(N0),
    .A3(NlwRenamedSig_OI_N1),
    .CE(N0),
    .CLK(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG1 [2]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG5 [2])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DELAY_RXD_BUS[3].DELAY_RXD  (
    .A0(N0),
    .A1(NlwRenamedSig_OI_N1),
    .A2(N0),
    .A3(NlwRenamedSig_OI_N1),
    .CE(N0),
    .CLK(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG1 [3]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG5 [3])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DELAY_RXD_BUS[4].DELAY_RXD  (
    .A0(N0),
    .A1(NlwRenamedSig_OI_N1),
    .A2(N0),
    .A3(NlwRenamedSig_OI_N1),
    .CE(N0),
    .CLK(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG1 [4]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG5 [4])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DELAY_RXD_BUS[5].DELAY_RXD  (
    .A0(N0),
    .A1(NlwRenamedSig_OI_N1),
    .A2(N0),
    .A3(NlwRenamedSig_OI_N1),
    .CE(N0),
    .CLK(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG1 [5]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG5 [5])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DELAY_RXD_BUS[6].DELAY_RXD  (
    .A0(N0),
    .A1(NlwRenamedSig_OI_N1),
    .A2(N0),
    .A3(NlwRenamedSig_OI_N1),
    .CE(N0),
    .CLK(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG1 [6]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG5 [6])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DELAY_RXD_BUS[7].DELAY_RXD  (
    .A0(N0),
    .A1(NlwRenamedSig_OI_N1),
    .A2(N0),
    .A3(NlwRenamedSig_OI_N1),
    .CE(N0),
    .CLK(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG1 [7]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG5 [7])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DELAY_BROADCASTADDRESSMATCH  (
    .A0(N0),
    .A1(NlwRenamedSig_OI_N1),
    .A2(N0),
    .A3(NlwRenamedSig_OI_N1),
    .CE(N0),
    .CLK(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/broadcastaddressmatch_305 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/BROADCASTADDRESSMATCH_DELAY )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/BAD_FRAME_INT  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_SUCCESS_FRAME_FAILURE_MUX_864_o ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Reset_OR_DriverANDClockEnable1 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/BAD_FRAME_INT_283 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GOOD_FRAME_INT  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GND_41_o_FRAME_SUCCESS_MUX_863_o ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Reset_OR_DriverANDClockEnable1 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GOOD_FRAME_INT_284 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR_23  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/LENGTH_TYPE_ERR_1341 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR [23])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR_21  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/VLAN_FRAME_1354 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR [21])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR_20  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/OUT_OF_BOUNDS_ERR_1342 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR [20])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR_19  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/CONTROL_FRAME_281 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR [19])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR_18  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/STATISTICS_LENGTH [13]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR [18])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR_17  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/STATISTICS_LENGTH [12]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR [17])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR_16  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/STATISTICS_LENGTH [11]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR [16])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR_15  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/STATISTICS_LENGTH [10]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR [15])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR_14  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/STATISTICS_LENGTH [9]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR [14])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR_13  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/STATISTICS_LENGTH [8]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR [13])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR_12  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/STATISTICS_LENGTH [7]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR [12])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR_11  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/STATISTICS_LENGTH [6]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR [11])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR_10  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/STATISTICS_LENGTH [5]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR [10])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR_9  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/STATISTICS_LENGTH [4]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR [9])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR_8  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/STATISTICS_LENGTH [3]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR [8])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR_7  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/STATISTICS_LENGTH [2]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR [7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR_6  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/STATISTICS_LENGTH [1]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR [6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR_5  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/STATISTICS_LENGTH [0]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR_4  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/MULTICAST_FRAME_1353 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR_3  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/BROADCASTADDRESSMATCH_DELAY ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR_2  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/CRC_ERR_1343 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR_1  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/BAD_FRAME_1339 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR_0  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/GOOD_FRAME_1340 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VALID  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/STATISTICS_VALID_1344 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VALID_264 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_DV_REG7  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_DV_REG6_1336 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_DV_REG7_1335 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_DV_REG6  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_DV_REG5 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_DV_REG6_1336 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7_7  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG6 [7]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7_6  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG6 [6]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7_5  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG6 [5]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7_4  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG6 [4]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7_3  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG6 [3]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7_2  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG6 [2]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7_1  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG6 [1]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7_0  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG6 [0]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_ERR_REG7  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_ERR_REG6_1333 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_ERR_REG7_1332 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG6_7  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG5 [7]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG6 [7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG6_6  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG5 [6]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG6 [6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG6_5  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG5 [5]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG6 [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG6_4  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG5 [4]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG6 [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG6_3  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG5 [3]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG6 [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG6_2  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG5 [2]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG6 [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG6_1  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG5 [1]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG6 [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG6_0  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG5 [0]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG6 [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_ERR_REG6  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_ERR_REG5 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_ERR_REG6_1333 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_DV_REG3  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_DV_REG2 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_DV_REG3_1337 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MAX_FRAME_LENGTH_HELD_14  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT<14> ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MAX_FRAME_LENGTH_HELD [14])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MAX_FRAME_LENGTH_HELD_13  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT<13> ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MAX_FRAME_LENGTH_HELD [13])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MAX_FRAME_LENGTH_HELD_12  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT<12> ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MAX_FRAME_LENGTH_HELD [12])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MAX_FRAME_LENGTH_HELD_11  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT<11> ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MAX_FRAME_LENGTH_HELD [11])
  );
  FDSE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MAX_FRAME_LENGTH_HELD_10  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT<10> ),
    .S(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MAX_FRAME_LENGTH_HELD [10])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MAX_FRAME_LENGTH_HELD_9  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT<9> ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MAX_FRAME_LENGTH_HELD [9])
  );
  FDSE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MAX_FRAME_LENGTH_HELD_8  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT<8> ),
    .S(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MAX_FRAME_LENGTH_HELD [8])
  );
  FDSE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MAX_FRAME_LENGTH_HELD_7  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT<7> ),
    .S(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MAX_FRAME_LENGTH_HELD [7])
  );
  FDSE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MAX_FRAME_LENGTH_HELD_6  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT<6> ),
    .S(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MAX_FRAME_LENGTH_HELD [6])
  );
  FDSE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MAX_FRAME_LENGTH_HELD_5  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT<5> ),
    .S(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MAX_FRAME_LENGTH_HELD [5])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MAX_FRAME_LENGTH_HELD_4  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT<4> ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MAX_FRAME_LENGTH_HELD [4])
  );
  FDSE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MAX_FRAME_LENGTH_HELD_3  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT<3> ),
    .S(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MAX_FRAME_LENGTH_HELD [3])
  );
  FDSE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MAX_FRAME_LENGTH_HELD_2  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT<2> ),
    .S(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MAX_FRAME_LENGTH_HELD [2])
  );
  FDSE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MAX_FRAME_LENGTH_HELD_1  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT<1> ),
    .S(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MAX_FRAME_LENGTH_HELD [1])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MAX_FRAME_LENGTH_HELD_0  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT<0> ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MAX_FRAME_LENGTH_HELD [0])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FALSE_CARR_FLAG  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/PRE_FALSE_CARR_FLAG ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FALSE_CARR_FLAG_1305 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/IFG_FLAG  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/PRE_IFG_FLAG ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/IFG_FLAG_1306 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/EXTENSION_FLAG  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GND_41_o_RX_DV_REG6_AND_324_o ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/EXTENSION_FLAG_1307 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MAX_FRAME_ENABLE_HELD  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG ),
    .D(rx_mac_config_vector[14]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MAX_FRAME_ENABLE_HELD_1309 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/PAUSE_LT_CHECK_HELD  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG ),
    .D(rx_mac_config_vector[9]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/PAUSE_LT_CHECK_HELD_1310 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/SFD_FLAG  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/PWR_43_o_RX_ERR_REG6_AND_322_o ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/SFD_FLAG_1308 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/LT_CHECK_HELD  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG ),
    .D(rx_mac_config_vector[8]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/LT_CHECK_HELD_1311 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/CRC_MODE_HELD  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG ),
    .D(rx_mac_config_vector[3]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/CRC_MODE_HELD_1312 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/VLAN_ENABLE_HELD  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG ),
    .D(rx_mac_config_vector[2]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/VLAN_ENABLE_HELD_1313 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/JUMBO_FRAMES_HELD  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG ),
    .D(rx_mac_config_vector[4]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/JUMBO_FRAMES_HELD_1314 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/ENABLE_REG  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(rx_mac_config_vector[1]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/ENABLE_REG_1315 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_ERR_REG1  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_RX_GEN/RX_ER_REG1_307 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_ERR_REG1_1334 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_DV_REG1  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_RX_GEN/RX_DV_REG1_308 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_DV_REG1_1338 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG1_7  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_RX_GEN/RXD_REG1 [7]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG1 [7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG1_6  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_RX_GEN/RXD_REG1 [6]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG1 [6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG1_5  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_RX_GEN/RXD_REG1 [5]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG1 [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG1_4  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_RX_GEN/RXD_REG1 [4]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG1 [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG1_3  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_RX_GEN/RXD_REG1 [3]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG1 [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG1_2  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_RX_GEN/RXD_REG1 [2]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG1 [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG1_1  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_RX_GEN/RXD_REG1 [1]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG1 [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG1_0  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_RX_GEN/RXD_REG1 [0]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG1 [0])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/FIELD_CONTROL_5  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/FIELD_CONTROL[4]_GND_44_o_MUX_681_o ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/FIELD_CONTROL [5])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/FIELD_CONTROL_4  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/FIELD_CONTROL[3]_GND_44_o_MUX_682_o ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/FIELD_CONTROL [4])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/FIELD_CONTROL_3  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/FIELD_CONTROL[2]_GND_44_o_MUX_683_o ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/FIELD_CONTROL [3])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/FIELD_CONTROL_2  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/FIELD_CONTROL[1]_GND_44_o_MUX_684_o ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/FIELD_CONTROL [2])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/FIELD_CONTROL_1  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/GND_44_o_FIELD_CONTROL[0]_MUX_679_o ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/FIELD_CONTROL [1])
  );
  FDSE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/FIELD_CONTROL_0  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/PWR_46_o_FIELD_CONTROL[5]_MUX_680_o ),
    .S(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/FIELD_CONTROL [0])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/CRC_FIELD  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/CRC_FIELD_END_DATA_OR_200_o ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/CRC_FIELD_1390 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/DAT_FIELD  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/RX_DV_REG6_DAT_FIELD_AND_353_o ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/DAT_FIELD_1391 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/LEN_FIELD  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/RX_DV_REG6_LEN_FIELD_AND_350_o ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/LEN_FIELD_1392 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/DEST_ADDRESS_FIELD  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/RX_DV_REG6_DEST_ADDRESS_FIELD_AND_344_o ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/DEST_ADDRESS_FIELD_1394 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/END_EXT  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/RX_ERR_REG5_END_EXT_AND_333_o ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/END_EXT_1443 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/END_FRAME  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/RX_DV_REG6_RX_ERR_REG6_OR_193_o_1431 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/END_FRAME_1849 )
  );
  XORCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_xor<14>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy [13]),
    .LI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_xor<14>_rt_1821 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result [14])
  );
  XORCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_xor<13>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy [12]),
    .LI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<13>_rt_1798 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result [13])
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<13>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy [12]),
    .DI(NlwRenamedSig_OI_N1),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<13>_rt_1798 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy [13])
  );
  XORCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_xor<12>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy [11]),
    .LI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<12>_rt_1799 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result [12])
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<12>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy [11]),
    .DI(NlwRenamedSig_OI_N1),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<12>_rt_1799 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy [12])
  );
  XORCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_xor<11>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy [10]),
    .LI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<11>_rt_1800 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result [11])
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<11>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy [10]),
    .DI(NlwRenamedSig_OI_N1),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<11>_rt_1800 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy [11])
  );
  XORCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_xor<10>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy [9]),
    .LI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<10>_rt_1801 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result [10])
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<10>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy [9]),
    .DI(NlwRenamedSig_OI_N1),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<10>_rt_1801 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy [10])
  );
  XORCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_xor<9>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy [8]),
    .LI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<9>_rt_1802 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result [9])
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<9>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy [8]),
    .DI(NlwRenamedSig_OI_N1),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<9>_rt_1802 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy [9])
  );
  XORCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_xor<8>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy [7]),
    .LI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<8>_rt_1803 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result [8])
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<8>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy [7]),
    .DI(NlwRenamedSig_OI_N1),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<8>_rt_1803 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy [8])
  );
  XORCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_xor<7>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy [6]),
    .LI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<7>_rt_1804 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result [7])
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<7>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy [6]),
    .DI(NlwRenamedSig_OI_N1),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<7>_rt_1804 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy [7])
  );
  XORCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_xor<6>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy [5]),
    .LI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<6>_rt_1805 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result [6])
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<6>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy [5]),
    .DI(NlwRenamedSig_OI_N1),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<6>_rt_1805 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy [6])
  );
  XORCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_xor<5>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy [4]),
    .LI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<5>_rt_1806 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result [5])
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<5>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy [4]),
    .DI(NlwRenamedSig_OI_N1),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<5>_rt_1806 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy [5])
  );
  XORCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_xor<4>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy [3]),
    .LI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<4>_rt_1807 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result [4])
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<4>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy [3]),
    .DI(NlwRenamedSig_OI_N1),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<4>_rt_1807 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy [4])
  );
  XORCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_xor<3>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy [2]),
    .LI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<3>_rt_1808 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result [3])
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<3>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy [2]),
    .DI(NlwRenamedSig_OI_N1),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<3>_rt_1808 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy [3])
  );
  XORCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_xor<2>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy [1]),
    .LI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<2>_rt_1809 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result [2])
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<2>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy [1]),
    .DI(NlwRenamedSig_OI_N1),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<2>_rt_1809 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy [2])
  );
  XORCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_xor<1>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy [0]),
    .LI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<1>_rt_1810 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result [1])
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<1>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy [0]),
    .DI(NlwRenamedSig_OI_N1),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<1>_rt_1810 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy [1])
  );
  XORCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_xor<0>  (
    .CI(NlwRenamedSig_OI_N1),
    .LI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_lut [0]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result [0])
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<0>  (
    .CI(NlwRenamedSig_OI_N1),
    .DI(N0),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_lut [0]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy [0])
  );
  XORCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_xor<10>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<9>_1460 ),
    .LI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_xor<10>_rt_1822 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result<10>1 )
  );
  XORCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_xor<9>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<8>_1461 ),
    .LI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<9>_rt_1811 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result<9>1 )
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<9>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<8>_1461 ),
    .DI(NlwRenamedSig_OI_N1),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<9>_rt_1811 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<9>_1460 )
  );
  XORCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_xor<8>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<7>_1462 ),
    .LI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<8>_rt_1812 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result<8>1 )
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<8>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<7>_1462 ),
    .DI(NlwRenamedSig_OI_N1),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<8>_rt_1812 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<8>_1461 )
  );
  XORCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_xor<7>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<6>_1463 ),
    .LI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<7>_rt_1813 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result<7>1 )
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<7>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<6>_1463 ),
    .DI(NlwRenamedSig_OI_N1),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<7>_rt_1813 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<7>_1462 )
  );
  XORCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_xor<6>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<5>_1464 ),
    .LI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<6>_rt_1814 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result<6>1 )
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<6>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<5>_1464 ),
    .DI(NlwRenamedSig_OI_N1),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<6>_rt_1814 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<6>_1463 )
  );
  XORCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_xor<5>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<4>_1465 ),
    .LI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<5>_rt_1815 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result<5>1 )
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<5>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<4>_1465 ),
    .DI(NlwRenamedSig_OI_N1),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<5>_rt_1815 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<5>_1464 )
  );
  XORCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_xor<4>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<3>_1466 ),
    .LI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<4>_rt_1816 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result<4>1 )
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<4>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<3>_1466 ),
    .DI(NlwRenamedSig_OI_N1),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<4>_rt_1816 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<4>_1465 )
  );
  XORCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_xor<3>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<2>_1467 ),
    .LI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<3>_rt_1817 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result<3>1 )
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<3>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<2>_1467 ),
    .DI(NlwRenamedSig_OI_N1),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<3>_rt_1817 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<3>_1466 )
  );
  XORCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_xor<2>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<1>_1468 ),
    .LI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<2>_rt_1818 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result<2>1 )
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<2>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<1>_1468 ),
    .DI(NlwRenamedSig_OI_N1),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<2>_rt_1818 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<2>_1467 )
  );
  XORCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_xor<1>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<0>_1469 ),
    .LI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<1>_rt_1819 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result<1>1 )
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<1>  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<0>_1469 ),
    .DI(NlwRenamedSig_OI_N1),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<1>_rt_1819 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<1>_1468 )
  );
  XORCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_xor<0>  (
    .CI(NlwRenamedSig_OI_N1),
    .LI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_lut<0> ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result<0>1 )
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<0>  (
    .CI(NlwRenamedSig_OI_N1),
    .DI(N0),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_lut<0> ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<0>_1469 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER<14:0>_0  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/_n0405_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result<0>1 ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/Reset_OR_DriverANDClockEnable ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER<14:0> [0])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER<14:0>_10  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/_n0405_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result<10>1 ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/Reset_OR_DriverANDClockEnable ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER<14:0> [10])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER<14:0>_9  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/_n0405_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result<9>1 ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/Reset_OR_DriverANDClockEnable ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER<14:0> [9])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER<14:0>_7  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/_n0405_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result<7>1 ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/Reset_OR_DriverANDClockEnable ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER<14:0> [7])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER<14:0>_6  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/_n0405_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result<6>1 ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/Reset_OR_DriverANDClockEnable ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER<14:0> [6])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER<14:0>_8  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/_n0405_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result<8>1 ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/Reset_OR_DriverANDClockEnable ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER<14:0> [8])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER<14:0>_5  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/_n0405_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result<5>1 ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/Reset_OR_DriverANDClockEnable ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER<14:0> [5])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER<14:0>_4  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/_n0405_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result<4>1 ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/Reset_OR_DriverANDClockEnable ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER<14:0> [4])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER<14:0>_3  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/_n0405_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result<3>1 ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/Reset_OR_DriverANDClockEnable ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER<14:0> [3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER<14:0>_2  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/_n0405_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result<2>1 ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/Reset_OR_DriverANDClockEnable ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER<14:0> [2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER<14:0>_1  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/_n0405_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result<1>1 ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/Reset_OR_DriverANDClockEnable ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER<14:0> [1])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER_14  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/RX_DV_REG_FRAME_COUNTER[14]_AND_404_o ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result [14]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_val ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [14])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER_13  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/RX_DV_REG_FRAME_COUNTER[14]_AND_404_o ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result [13]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_val ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [13])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER_12  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/RX_DV_REG_FRAME_COUNTER[14]_AND_404_o ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result [12]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_val ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [12])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER_11  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/RX_DV_REG_FRAME_COUNTER[14]_AND_404_o ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result [11]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_val ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [11])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER_9  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/RX_DV_REG_FRAME_COUNTER[14]_AND_404_o ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result [9]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_val ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [9])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER_8  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/RX_DV_REG_FRAME_COUNTER[14]_AND_404_o ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result [8]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_val ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [8])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER_10  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/RX_DV_REG_FRAME_COUNTER[14]_AND_404_o ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result [10]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_val ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [10])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER_7  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/RX_DV_REG_FRAME_COUNTER[14]_AND_404_o ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result [7]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_val ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [7])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER_6  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/RX_DV_REG_FRAME_COUNTER[14]_AND_404_o ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result [6]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_val ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [6])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER_5  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/RX_DV_REG_FRAME_COUNTER[14]_AND_404_o ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result [5]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_val ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [5])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER_4  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/RX_DV_REG_FRAME_COUNTER[14]_AND_404_o ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result [4]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_val ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [4])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER_2  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/RX_DV_REG_FRAME_COUNTER[14]_AND_404_o ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result [2]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_val ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [2])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER_1  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/RX_DV_REG_FRAME_COUNTER[14]_AND_404_o ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result [1]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_val ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [1])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER_3  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/RX_DV_REG_FRAME_COUNTER[14]_AND_404_o ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result [3]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_val ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [3])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER_0  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/RX_DV_REG_FRAME_COUNTER[14]_AND_404_o ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Result [0]),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_val ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [0])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/VLAN_FRAME  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/VLAN_MATCH [1]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/VLAN_FRAME_1354 )
  );
  FDSE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE_10  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/_n0388_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE[15]_PWR_47_o_mux_2_OUT<10> ),
    .S(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE [10])
  );
  FDSE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE_9  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/_n0388_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE[15]_PWR_47_o_mux_2_OUT<9> ),
    .S(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE [9])
  );
  FDSE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE_8  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/_n0388_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE[15]_PWR_47_o_mux_2_OUT<8> ),
    .S(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE [8])
  );
  FDSE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE_7  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/_n0388_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE[15]_PWR_47_o_mux_2_OUT<7> ),
    .S(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE [7])
  );
  FDSE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE_6  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/_n0388_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE[15]_PWR_47_o_mux_2_OUT<6> ),
    .S(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE [6])
  );
  FDSE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE_5  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/_n0388_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE[15]_PWR_47_o_mux_2_OUT<5> ),
    .S(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE [5])
  );
  FDSE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE_4  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/_n0388_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE[15]_PWR_47_o_mux_2_OUT<4> ),
    .S(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE [4])
  );
  FDSE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE_3  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/_n0388_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE[15]_PWR_47_o_mux_2_OUT<3> ),
    .S(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE [3])
  );
  FDSE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE_2  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/_n0388_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE[15]_PWR_47_o_mux_2_OUT<2> ),
    .S(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE [2])
  );
  FDSE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE_1  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/_n0388_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE[15]_PWR_47_o_mux_2_OUT<1> ),
    .S(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE [1])
  );
  FDSE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE_0  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/_n0388_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE[15]_PWR_47_o_mux_2_OUT<0> ),
    .S(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE [0])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/VLAN_MATCH_1  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/VLAN_MATCH[1]_GND_45_o_MUX_812_o ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/VLAN_MATCH [1])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/VLAN_MATCH_0  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/VLAN_ENABLE_PWR_47_o_AND_411_o ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/VLAN_MATCH [0])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/ADD_CONTROL_FRAME  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/ADD_CONTROL_FRAME_INT_1556 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/ADD_CONTROL_FRAME_282 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/CONTROL_FRAME  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/CONTROL_FRAME_INT_1539 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/CONTROL_FRAME_281 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/MULTICAST_FRAME  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/MULTICAST_MATCH_1540 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/MULTICAST_FRAME_1353 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/ADD_CONTROL_FRAME_INT  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/ADD_CONTROL_ENABLE_1541 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/ADD_CONTROL_FRAME_INT_1556 )
  );
  FDE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/STATISTICS_LENGTH_13  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/RX_DV_REG_FRAME_COUNTER[14]_AND_404_o ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [13]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/STATISTICS_LENGTH [13])
  );
  FDE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/STATISTICS_LENGTH_12  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/RX_DV_REG_FRAME_COUNTER[14]_AND_404_o ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [12]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/STATISTICS_LENGTH [12])
  );
  FDE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/STATISTICS_LENGTH_11  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/RX_DV_REG_FRAME_COUNTER[14]_AND_404_o ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [11]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/STATISTICS_LENGTH [11])
  );
  FDE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/STATISTICS_LENGTH_10  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/RX_DV_REG_FRAME_COUNTER[14]_AND_404_o ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [10]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/STATISTICS_LENGTH [10])
  );
  FDE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/STATISTICS_LENGTH_9  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/RX_DV_REG_FRAME_COUNTER[14]_AND_404_o ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [9]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/STATISTICS_LENGTH [9])
  );
  FDE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/STATISTICS_LENGTH_8  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/RX_DV_REG_FRAME_COUNTER[14]_AND_404_o ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [8]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/STATISTICS_LENGTH [8])
  );
  FDE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/STATISTICS_LENGTH_7  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/RX_DV_REG_FRAME_COUNTER[14]_AND_404_o ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [7]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/STATISTICS_LENGTH [7])
  );
  FDE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/STATISTICS_LENGTH_6  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/RX_DV_REG_FRAME_COUNTER[14]_AND_404_o ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [6]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/STATISTICS_LENGTH [6])
  );
  FDE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/STATISTICS_LENGTH_5  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/RX_DV_REG_FRAME_COUNTER[14]_AND_404_o ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [5]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/STATISTICS_LENGTH [5])
  );
  FDE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/STATISTICS_LENGTH_4  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/RX_DV_REG_FRAME_COUNTER[14]_AND_404_o ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [4]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/STATISTICS_LENGTH [4])
  );
  FDE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/STATISTICS_LENGTH_3  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/RX_DV_REG_FRAME_COUNTER[14]_AND_404_o ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [3]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/STATISTICS_LENGTH [3])
  );
  FDE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/STATISTICS_LENGTH_2  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/RX_DV_REG_FRAME_COUNTER[14]_AND_404_o ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [2]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/STATISTICS_LENGTH [2])
  );
  FDE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/STATISTICS_LENGTH_1  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/RX_DV_REG_FRAME_COUNTER[14]_AND_404_o ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [1]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/STATISTICS_LENGTH [1])
  );
  FDE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/STATISTICS_LENGTH_0  (
    .C(rx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/RX_DV_REG_FRAME_COUNTER[14]_AND_404_o ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [0]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/STATISTICS_LENGTH [0])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/CRC_COMPUTE  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/SFD_FLAG_CRC_COMPUTE_OR_212_o ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/CRC_COMPUTE_1356 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/RX_DV_REG  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_DV_REG7_1335 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/RX_DV_REG_1555 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/CONTROL_MATCH  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/PWR_47_o_RXD[7]_equal_15_o ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Reset_OR_DriverANDClockEnable ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/CONTROL_MATCH_1557 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_NO_FCS  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/SFD_FLAG_DATA_NO_FCS_OR_227_o_1518 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_NO_FCS_1558 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_VALID  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_NO_FCS_DATA_WITH_FCS_MUX_776_o ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_VALID_1357 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_ONE  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_FIELD_LT_CHECK_DISABLE_AND_371_o_1523 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_ONE_1560 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_ZERO  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_FIELD_LT_CHECK_DISABLE_AND_375_o ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_ZERO_1561 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LESS_THAN_256  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/GND_45_o_RXD[7]_equal_9_o ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Reset_OR_DriverANDClockEnable ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LESS_THAN_256_1562 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/OUT_OF_BOUNDS_ERR  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/MAX_LENGTH_ERR_1572 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/OUT_OF_BOUNDS_ERR_1342 )
  );
  FDSE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/INHIBIT_FRAME  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/END_OF_FRAME_SFD_FLAG_AND_419_o ),
    .S(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/INHIBIT_FRAME_1573 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/CRC_ERR  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/FCS_ERR_CRC_ENGINE_ERR_OR_265_o ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/CRC_ERR_1343 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/FCS_ERR  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/FCS_ERR_EXTENSION_FIELD_OR_255_o ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/Reset_OR_DriverANDClockEnable ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/FCS_ERR_1574 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/FRAME_LEN_ERR  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/FRAME_LEN_ERR_END_OF_DATA_OR_241_o ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/Reset_OR_DriverANDClockEnable ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/FRAME_LEN_ERR_1576 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/MIN_LENGTH_MATCH  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/GND_46_o_FRAME_COUNTER[7]_equal_1_o ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/MIN_LENGTH_MATCH_1578 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/EXCEEDED_MIN_LEN  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/MIN_LENGTH_MATCH_EXCEEDED_MIN_LEN_OR_235_o ),
    .R(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/Reset_OR_DriverANDClockEnable ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/EXCEEDED_MIN_LEN_1577 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/GMII_TXD_TO_PHY_7  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/TXD_REG1 [7]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/GMII_TXD_TO_PHY [7])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/GMII_TXD_TO_PHY_6  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/TXD_REG1 [6]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/GMII_TXD_TO_PHY [6])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/GMII_TXD_TO_PHY_5  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/TXD_REG1 [5]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/GMII_TXD_TO_PHY [5])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/GMII_TXD_TO_PHY_4  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/TXD_REG1 [4]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/GMII_TXD_TO_PHY [4])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/GMII_TXD_TO_PHY_3  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/TXD_REG1 [3]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/GMII_TXD_TO_PHY [3])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/GMII_TXD_TO_PHY_2  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/TXD_REG1 [2]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/GMII_TXD_TO_PHY [2])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/GMII_TXD_TO_PHY_1  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/TXD_REG1 [1]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/GMII_TXD_TO_PHY [1])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/GMII_TXD_TO_PHY_0  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/TXD_REG1 [0]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/GMII_TXD_TO_PHY [0])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/TXD_REG1_7  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_GMII_TXD [7]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/TXD_REG1 [7])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/TXD_REG1_6  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_GMII_TXD [6]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/TXD_REG1 [6])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/TXD_REG1_5  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_GMII_TXD [5]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/TXD_REG1 [5])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/TXD_REG1_4  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_GMII_TXD [4]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/TXD_REG1 [4])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/TXD_REG1_3  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_GMII_TXD [3]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/TXD_REG1 [3])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/TXD_REG1_2  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_GMII_TXD [2]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/TXD_REG1 [2])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/TXD_REG1_1  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_GMII_TXD [1]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/TXD_REG1 [1])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/TXD_REG1_0  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_GMII_TXD [0]),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/TXD_REG1 [0])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/Mmux_R3_PWR_20_o_MUX_31_o11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R2_271 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R3_273 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R3_PWR_20_o_MUX_31_o )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/Mmux_R3_PWR_20_o_MUX_31_o11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R2_275 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R3_277 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R3_PWR_20_o_MUX_31_o )
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_TX_RST_ASYNCH1  (
    .I0(tx_axi_rstn),
    .I1(glbl_rstn),
    .I2(tx_mac_config_vector[0]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_TX_RST_ASYNCH )
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_RX_RST_ASYNCH1  (
    .I0(rx_axi_rstn),
    .I1(glbl_rstn),
    .I2(rx_mac_config_vector[0]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_RX_RST_ASYNCH )
  );
  LUT6 #(
    .INIT ( 64'h4444F5F4F5F4F5F4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd6-In1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/ACK_OUT_317 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd1_387 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd8_386 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd6_385 ),
    .I4(tx_axis_mac_tlast),
    .I5(tx_axis_mac_tuser),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd6-In )
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd8-In1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd9_362 ),
    .I1(tx_axis_mac_tlast),
    .I2(tx_axis_mac_tuser),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/next_tx_state[3]_GND_24_o_equal_68_o )
  );
  LUT5 #(
    .INIT ( 32'h00000040 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd9-In1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/ignore_packet_375 ),
    .I1(tx_axis_mac_tvalid),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd10_388 ),
    .I3(tx_axis_mac_tuser),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/no_burst_394 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/next_tx_state[3]_GND_24_o_equal_27_o )
  );
  LUT6 #(
    .INIT ( 64'h8888800080008000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/early_deassert_two_byte_tx_OR_36_o1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tlast_reg_392 ),
    .I1(tx_axis_mac_tvalid),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/early_deassert_373 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state[3]_tx_state[3]_OR_35_o ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/two_byte_tx_376 ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd6_385 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/early_deassert_two_byte_tx_OR_36_o )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd5-In1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/ACK_OUT_317 ),
    .I1(tx_axis_mac_tlast),
    .I2(tx_axis_mac_tuser),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd6_385 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/next_tx_state[3]_GND_24_o_equal_69_o )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/Mmux_tx_data[7]_tx_mac_tdata[7]_mux_62_OUT81  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/Mmux_tx_data[7]_tx_mac_tdata[7]_mux_62_OUT11 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data_hold [0]),
    .I2(tx_axis_mac_tdata[0]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data[7]_tx_mac_tdata[7]_mux_62_OUT<0> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/Mmux_tx_data[7]_tx_mac_tdata[7]_mux_62_OUT71  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/Mmux_tx_data[7]_tx_mac_tdata[7]_mux_62_OUT11 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data_hold [1]),
    .I2(tx_axis_mac_tdata[1]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data[7]_tx_mac_tdata[7]_mux_62_OUT<1> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/Mmux_tx_data[7]_tx_mac_tdata[7]_mux_62_OUT61  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/Mmux_tx_data[7]_tx_mac_tdata[7]_mux_62_OUT11 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data_hold [2]),
    .I2(tx_axis_mac_tdata[2]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data[7]_tx_mac_tdata[7]_mux_62_OUT<2> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/Mmux_tx_data[7]_tx_mac_tdata[7]_mux_62_OUT51  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/Mmux_tx_data[7]_tx_mac_tdata[7]_mux_62_OUT11 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data_hold [3]),
    .I2(tx_axis_mac_tdata[3]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data[7]_tx_mac_tdata[7]_mux_62_OUT<3> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/Mmux_tx_data[7]_tx_mac_tdata[7]_mux_62_OUT41  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/Mmux_tx_data[7]_tx_mac_tdata[7]_mux_62_OUT11 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data_hold [4]),
    .I2(tx_axis_mac_tdata[4]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data[7]_tx_mac_tdata[7]_mux_62_OUT<4> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/Mmux_tx_data[7]_tx_mac_tdata[7]_mux_62_OUT31  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/Mmux_tx_data[7]_tx_mac_tdata[7]_mux_62_OUT11 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data_hold [5]),
    .I2(tx_axis_mac_tdata[5]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data[7]_tx_mac_tdata[7]_mux_62_OUT<5> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/Mmux_tx_data[7]_tx_mac_tdata[7]_mux_62_OUT21  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/Mmux_tx_data[7]_tx_mac_tdata[7]_mux_62_OUT11 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data_hold [6]),
    .I2(tx_axis_mac_tdata[6]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data[7]_tx_mac_tdata[7]_mux_62_OUT<6> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/Mmux_tx_data[7]_tx_mac_tdata[7]_mux_62_OUT12  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/Mmux_tx_data[7]_tx_mac_tdata[7]_mux_62_OUT11 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data_hold [7]),
    .I2(tx_axis_mac_tdata[7]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data[7]_tx_mac_tdata[7]_mux_62_OUT<7> )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFF8 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/Mmux_tx_data[7]_tx_mac_tdata[7]_mux_62_OUT111  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/ACK_OUT_317 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd1_387 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd2_383 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd4_389 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd10_388 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/Mmux_tx_data[7]_tx_mac_tdata[7]_mux_62_OUT11 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/_n0273_inv1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd2_383 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/ACK_OUT_317 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd4_389 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd10_388 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/_n0273_inv )
  );
  LUT4 #(
    .INIT ( 16'h88D8 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd2-In1  (
    .I0(tx_axis_mac_tvalid),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd7_390 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd2_383 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/ACK_OUT_317 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/next_tx_state[3]_GND_24_o_equal_70_o )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_tx_state[3]_tx_state[3]_OR_35_o1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd1_387 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd8_386 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state[3]_tx_state[3]_OR_35_o )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_mac_tlast_tx_mac_tready_int_AND_22_o1  (
    .I0(tx_axis_mac_tlast),
    .I1(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_mac_tready_reg ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tlast_reg_glue_set )
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/CRC_MODE_INV_77_o1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/MUX_CONTROL_954 ),
    .I1(tx_mac_config_vector[3]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/CRC_MODE_INV_77_o )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_REG_PREAMBLE_DONE_GND_36_o_MUX_386_o11  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PRE_COUNT [0]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PRE_COUNT [1]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PRE_COUNT [2]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/REG_PREAMBLE_DONE_GND_36_o_MUX_386_o )
  );
  LUT4 #(
    .INIT ( 16'hAAA9 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Msub_GND_36_o_GND_36_o_sub_12_OUT<7:0>_xor<5>11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DELAY [5]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DELAY [2]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DELAY [3]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DELAY [4]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/GND_36_o_GND_36_o_sub_12_OUT[5] )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFFE ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Msub_GND_36_o_GND_36_o_sub_12_OUT<7:0>_xor<7>111  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DELAY [6]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DELAY [2]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DELAY [3]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DELAY [4]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DELAY [5]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Msub_GND_36_o_GND_36_o_sub_12_OUT<7:0>_xor<7>11 )
  );
  LUT6 #(
    .INIT ( 64'h0000CCC30000AAAA ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_IFG_COUNT[7]_GND_36_o_mux_33_OUT61  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DEL_MASKED [5]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT [5]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT [4]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_IFG_COUNT[7]_GND_36_o_mux_33_OUT51_427 ),
    .I4(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIFG_TX_FAIL_DELAY_AND_167_o ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT[7]_GND_36_o_mux_33_OUT<5> )
  );
  LUT4 #(
    .INIT ( 16'hFF57 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Reset_OR_DriverANDClockEnable331  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DEL_EN_585 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DELAY [7]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Msub_GND_36_o_GND_36_o_sub_12_OUT<7:0>_xor<7>11 ),
    .I3(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Reset_OR_DriverANDClockEnable )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n0985_inv11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIFG_556 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/TX_565 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CFL_563 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FCS_561 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/SCSH_560 ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/COF_562 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n0985_inv1 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_IFG_COUNT[7]_GND_36_o_mux_33_OUT511  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT [3]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT [2]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT [1]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT [0]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_IFG_COUNT[7]_GND_36_o_mux_33_OUT51_427 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000010000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_TRANSMIT_GND_36_o_MUX_413_o11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/COF_562 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_546 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PRE_566 ),
    .I3(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/TX_565 ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CFL_563 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/TRANSMIT_GND_36_o_MUX_413_o )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Reset_OR_DriverANDClockEnable131  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/REG_PREAMBLE_DONE_554 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_550 ),
    .I2(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Reset_OR_DriverANDClockEnable13 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG[0][7]_GND_36_o_mux_59_OUT<7>1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_550 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_0 [7]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/REG_PREAMBLE_DONE_554 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG[0][7]_GND_36_o_mux_59_OUT<7>1_478 )
  );
  LUT6 #(
    .INIT ( 64'h00000000FFEC3320 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIFG_GND_36_o_MUX_380_o1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIN_PKT_LEN_REACHED_553 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_CRC_MODE_526 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CFL_563 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/COF_562 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n0961_inv11 ),
    .I5(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIFG_GND_36_o_MUX_380_o )
  );
  LUT6 #(
    .INIT ( 64'hA888A888A8880000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_FCS_GND_36_o_MUX_360_o111  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_CRC_MODE_526 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/COF_562 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CFL_563 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIN_PKT_LEN_REACHED_553 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_COUNT [0]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_COUNT [1]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_FCS_GND_36_o_MUX_360_o11 )
  );
  LUT6 #(
    .INIT ( 64'h0000004000000000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_REG_TX_VLAN_GND_36_o_MUX_509_o11  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_VLAN_EN_586 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/LEN [0]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/LEN [11]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/LEN [3]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_REG_TX_CONTROL_GND_36_o_MUX_507_o11 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/REG_TX_VLAN_GND_36_o_MUX_509_o )
  );
  LUT4 #(
    .INIT ( 16'hA9FF ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_PRE_COUNT_xor<2>11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PRE_COUNT [2]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PRE_COUNT [1]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PRE_COUNT [0]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PRE_566 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_PRE_COUNT2 )
  );
  LUT3 #(
    .INIT ( 8'hA9 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Msub_GND_36_o_GND_36_o_sub_12_OUT<7:0>_xor<4>11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DELAY [4]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DELAY [2]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DELAY [3]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/GND_36_o_GND_36_o_sub_12_OUT[4] )
  );
  LUT6 #(
    .INIT ( 64'hFFFFCCC3FFFFAAAA ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_IFG_COUNT[7]_GND_36_o_mux_33_OUT31  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DEL_MASKED [2]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT [2]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT [1]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT [0]),
    .I4(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIFG_TX_FAIL_DELAY_AND_167_o ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT[7]_GND_36_o_mux_33_OUT<2> )
  );
  LUT3 #(
    .INIT ( 8'h54 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_CRC_COMPUTE_GND_36_o_MUX_451_o11  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PAD_547 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/TRANSMIT_PIPE [0]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_COMPUTE_GND_36_o_MUX_451_o )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFF54 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_TX_EN1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CR178124_FIX_543 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_546 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/TRANSMIT_PIPE [1]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[2] ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PAD_PIPE_544 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_GMII_TX_EN )
  );
  LUT3 #(
    .INIT ( 8'h9F ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/GND_36_o_GND_36_o_sub_12_OUT<3>1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DELAY [2]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DELAY [3]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DEL_EN_585 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/GND_36_o_GND_36_o_sub_12_OUT<3>1_483 )
  );
  LUT4 #(
    .INIT ( 16'h5554 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n1183_inv1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [14]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CFL_563 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FCS_561 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/TX_565 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n1183_inv )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n0961_inv111  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_COUNT [1]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_COUNT [0]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FCS_561 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n0961_inv11 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Reset_OR_DriverANDClockEnable1611  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DST_ADDR_BYTE0_MATCH_538 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DST_ADDR_BYTE1_MATCH_537 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DST_ADDR_BYTE2_MATCH_536 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DST_ADDR_BYTE3_MATCH_535 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DST_ADDR_BYTE4_MATCH_534 ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DST_ADDR_BYTE5_MATCH_532 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_TX_BROADCAST )
  );
  LUT5 #(
    .INIT ( 32'h00400000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_REG_TX_CONTROL_GND_36_o_MUX_507_o12  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/LEN [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/LEN [3]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/LEN [11]),
    .I3(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_REG_TX_CONTROL_GND_36_o_MUX_507_o11 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/REG_TX_CONTROL_GND_36_o_MUX_507_o )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFFE ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIFG_TX_FAIL_DELAY_AND_167_o11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT [7]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT [6]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT [5]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT [4]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_IFG_COUNT[7]_GND_36_o_mux_33_OUT51_427 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIFG_TX_FAIL_DELAY_AND_167_o1_428 )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n079811  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/REG_SCSH_529 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FCS_561 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIFG_556 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n07981 )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT_cst11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FCS_561 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/TX_565 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CFL_563 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT_cst1 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_INT_TX_STATUS_VALID_GND_36_o_MUX_471_o11  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CLIENT_FRAME_DONE_555 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IDL_568 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIFG_556 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_TX_STATUS_VALID_GND_36_o_MUX_471_o )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_CR178124_FIX_GND_36_o_MUX_469_o11  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/COF_SEEN_551 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MAX_PKT_LEN_REACHED_552 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/SCSH_560 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CR178124_FIX_GND_36_o_MUX_469_o )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_CRC_GND_36_o_MUX_417_o11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FCS_561 ),
    .I1(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CFL_563 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_GND_36_o_MUX_417_o )
  );
  LUT5 #(
    .INIT ( 32'h00000002 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_PAD_GND_36_o_MUX_415_o11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CFL_563 ),
    .I1(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FCS_561 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/SCSH_560 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/TX_565 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PAD_GND_36_o_MUX_415_o )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_PREAMBLE_GND_36_o_MUX_409_o11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PRE_566 ),
    .I1(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/TX_565 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_GND_36_o_MUX_409_o )
  );
  LUT3 #(
    .INIT ( 8'h9F ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_CRC_COUNT_xor<1>11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_COUNT [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_COUNT [1]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FCS_561 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_CRC_COUNT1 )
  );
  LUT3 #(
    .INIT ( 8'h9F ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_PRE_COUNT_xor<1>11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PRE_COUNT [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PRE_COUNT [1]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PRE_566 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_PRE_COUNT1 )
  );
  LUT3 #(
    .INIT ( 8'hF1 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Reset_OR_DriverANDClockEnable171  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/TRANSMIT_548 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/REG_PREAMBLE_549 ),
    .I2(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Reset_OR_DriverANDClockEnable17 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG[0][7]_GND_36_o_mux_59_OUT<6>1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_0 [6]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_550 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG[0][7]_GND_36_o_mux_59_OUT<6>1_479 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG[0][7]_GND_36_o_mux_59_OUT<2>1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_0 [2]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_550 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG[0][7]_GND_36_o_mux_59_OUT<2>1_481 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG[0][7]_GND_36_o_mux_59_OUT<0>1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_0 [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_550 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG[0][7]_GND_36_o_mux_59_OUT<0>1_482 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG[0][7]_GND_36_o_mux_59_OUT<4>1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_0 [4]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_550 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG[0][7]_GND_36_o_mux_59_OUT<4>1_480 )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_CRC_COUNT_xor<0>11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_COUNT [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FCS_561 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_CRC_COUNT )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_PRE_COUNT_xor<0>11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PRE_COUNT [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PRE_566 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_PRE_COUNT )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_DATA_REG_OUT11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_546 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [0]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [31]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_GMII_TXD [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_DATA_REG_OUT21  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_546 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [1]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [30]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_GMII_TXD [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_DATA_REG_OUT31  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_546 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [2]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [29]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_GMII_TXD [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_DATA_REG_OUT41  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_546 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [3]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [28]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_GMII_TXD [3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_DATA_REG_OUT51  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_546 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [4]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [27]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_GMII_TXD [4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_DATA_REG_OUT61  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_546 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [5]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [26]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_GMII_TXD [5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_DATA_REG_OUT71  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_546 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [6]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [25]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_GMII_TXD [6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_DATA_REG_OUT81  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_546 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [7]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [24]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_GMII_TXD [7])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/REG_STATUS_VALID_GND_36_o_MUX_476_o1  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_TX_STATUS_VALID_542 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/REG_STATUS_VALID_GND_36_o_MUX_476_o )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_DATA_REG[0][7]_GND_36_o_mux_59_OUT21  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_550 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_0 [1]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG[0][7]_GND_36_o_mux_59_OUT<1> )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_DATA_REG[0][7]_GND_36_o_mux_59_OUT41  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_550 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_0 [3]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG[0][7]_GND_36_o_mux_59_OUT<3> )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_DATA_REG[0][7]_GND_36_o_mux_59_OUT61  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_550 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_0 [5]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG[0][7]_GND_36_o_mux_59_OUT<5> )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_REG_SCSH_GND_36_o_MUX_511_o11  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/SCSH_560 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/REG_SCSH_GND_36_o_MUX_511_o )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_DST_ADDR_MULTI_MATCH_GND_36_o_MUX_502_o11  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_4 [0]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DST_ADDR_MULTI_MATCH_GND_36_o_MUX_502_o )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_PAD_PIPE_GND_36_o_MUX_467_o11  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PAD_547 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PAD_PIPE_GND_36_o_MUX_467_o )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_REG_PREAMBLE_GND_36_o_MUX_411_o11  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_550 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/REG_PREAMBLE_GND_36_o_MUX_411_o )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_INT_MAX_FRAME_ENABLE_GND_36_o_MUX_321_o11  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I1(tx_mac_config_vector[14]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_ENABLE_GND_36_o_MUX_321_o )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_INT_IFG_DEL_EN_GND_36_o_MUX_317_o11  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/INT_IFG_DEL_EN_415 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DEL_EN_GND_36_o_MUX_317_o )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_INT_VLAN_EN_GND_36_o_MUX_313_o11  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/INT_VLAN_ENABLE_416 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_VLAN_EN_GND_36_o_MUX_313_o )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_INT_CRC_MODE_GND_36_o_MUX_309_o11  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/INT_CRC_MODE_419 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_CRC_MODE_GND_36_o_MUX_309_o )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT16  (
    .I0(tx_mac_config_vector[14]),
    .I1(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I2(tx_mac_config_vector[16]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT<0> )
  );
  LUT3 #(
    .INIT ( 8'hEF ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT21  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I1(tx_mac_config_vector[26]),
    .I2(tx_mac_config_vector[14]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT<10> )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT31  (
    .I0(tx_mac_config_vector[14]),
    .I1(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I2(tx_mac_config_vector[27]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT<11> )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT41  (
    .I0(tx_mac_config_vector[14]),
    .I1(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I2(tx_mac_config_vector[28]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT<12> )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT51  (
    .I0(tx_mac_config_vector[14]),
    .I1(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I2(tx_mac_config_vector[29]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT<13> )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT61  (
    .I0(tx_mac_config_vector[14]),
    .I1(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I2(tx_mac_config_vector[30]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT<14> )
  );
  LUT3 #(
    .INIT ( 8'hEF ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT71  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I1(tx_mac_config_vector[17]),
    .I2(tx_mac_config_vector[14]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT<1> )
  );
  LUT3 #(
    .INIT ( 8'hEF ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT81  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I1(tx_mac_config_vector[18]),
    .I2(tx_mac_config_vector[14]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT<2> )
  );
  LUT3 #(
    .INIT ( 8'hEF ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT91  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I1(tx_mac_config_vector[19]),
    .I2(tx_mac_config_vector[14]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT<3> )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT101  (
    .I0(tx_mac_config_vector[14]),
    .I1(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I2(tx_mac_config_vector[20]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT<4> )
  );
  LUT3 #(
    .INIT ( 8'hEF ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT111  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I1(tx_mac_config_vector[21]),
    .I2(tx_mac_config_vector[14]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT<5> )
  );
  LUT3 #(
    .INIT ( 8'hEF ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT121  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I1(tx_mac_config_vector[22]),
    .I2(tx_mac_config_vector[14]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT<6> )
  );
  LUT3 #(
    .INIT ( 8'hEF ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT131  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I1(tx_mac_config_vector[23]),
    .I2(tx_mac_config_vector[14]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT<7> )
  );
  LUT3 #(
    .INIT ( 8'hEF ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT141  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I1(tx_mac_config_vector[24]),
    .I2(tx_mac_config_vector[14]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT<8> )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT151  (
    .I0(tx_mac_config_vector[14]),
    .I1(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I2(tx_mac_config_vector[25]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH[14]_GND_36_o_mux_7_OUT<9> )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_INT_JUMBO_EN_GND_36_o_MUX_311_o11  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/INT_JUMBO_ENABLE_418 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_JUMBO_EN_GND_36_o_MUX_311_o )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Reset_OR_DriverANDClockEnable251  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PAD_547 ),
    .I1(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Reset_OR_DriverANDClockEnable25 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n1071_inv1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[4] ),
    .I1(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n1071_inv )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n0836_inv1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PRE_566 ),
    .I1(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n0836_inv )
  );
  LUT4 #(
    .INIT ( 16'h0008 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_ACK1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_550 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PRE_COUNT [0]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PRE_COUNT [2]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PRE_COUNT [1]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_TX_ACK_IN )
  );
  LUT4 #(
    .INIT ( 16'h6CC6 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<21>1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_COMPUTE_545 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [13]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [2]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [29]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<21> )
  );
  LUT4 #(
    .INIT ( 16'h6CC6 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<31>1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_COMPUTE_545 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [23]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [2]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [29]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<31> )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<12>41  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [30]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [1]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [29]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [25]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<12>_bdd6 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<14>41  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [30]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [1]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [27]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<14>_bdd6 )
  );
  LUT4 #(
    .INIT ( 16'h6CC6 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<20>1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_COMPUTE_545 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [12]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [3]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [28]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<20> )
  );
  LUT4 #(
    .INIT ( 16'h6CC6 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<22>1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_COMPUTE_545 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [14]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [7]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [24]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<22> )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<23>21  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [30]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [1]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [25]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<23>_bdd2 )
  );
  LUT5 #(
    .INIT ( 32'hD7287D82 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<17>1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_COMPUTE_545 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [2]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [6]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [9]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<12>_bdd6 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<17> )
  );
  LUT6 #(
    .INIT ( 64'hD77D28827DD78228 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<23>1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_COMPUTE_545 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [7]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [6]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [24]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [15]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<23>_bdd2 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<23> )
  );
  LUT6 #(
    .INIT ( 64'hD77D28827DD78228 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<29>1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_COMPUTE_545 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [4]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [0]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [31]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [21]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<14>_bdd6 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<29> )
  );
  LUT6 #(
    .INIT ( 64'hE44E4EE44EE4E44E ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/Mmux_CALC[23]_CALC[23]_mux_3_OUT13  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_COMPUTE_545 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [0]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [30]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [1]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [24]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [7]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'hD77D28827DD78228 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/Mmux_CALC[23]_CALC[23]_mux_3_OUT111  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_COMPUTE_545 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [27]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [4]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [31]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [11]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [0]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<19> )
  );
  LUT6 #(
    .INIT ( 64'hD77D28827DD78228 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/Mmux_CALC[23]_CALC[23]_mux_3_OUT181  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_COMPUTE_545 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [27]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [4]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [26]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [17]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [5]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<25> )
  );
  LUT6 #(
    .INIT ( 64'hD77D28827DD78228 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/Mmux_CALC[23]_CALC[23]_mux_3_OUT241  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_COMPUTE_545 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [31]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [0]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [28]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [22]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [3]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<30> )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_VLAN_ENABLE_OUT1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/MUX_CONTROL_954 ),
    .I1(tx_mac_config_vector[2]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_TX_VLAN_ENABLE_OUT )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/Result<3>1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/DATA_COUNT [3]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/DATA_COUNT [0]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/DATA_COUNT [1]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/DATA_COUNT [2]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/Result [3])
  );
  LUT5 #(
    .INIT ( 32'h6CCCCCCC ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/Result<4>1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/DATA_COUNT [3]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/DATA_COUNT [4]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/DATA_COUNT [0]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/DATA_COUNT [1]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/DATA_COUNT [2]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/Result [4])
  );
  LUT6 #(
    .INIT ( 64'h0000000004000000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n008111  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/DATA_COUNT [4]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/DATA_COUNT [3]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/BAD_FRAME_INT_283 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/DATA_COUNT [2]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/DATA_COUNT [1]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GOOD_FRAME_INT_284 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n00811 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0100_inv1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/DATA_COUNT [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n00811 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0100_inv )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/Mcount_DATA_COUNT_xor<2>11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/DATA_COUNT [2]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/DATA_COUNT [0]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/DATA_COUNT [1]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/Result [2])
  );
  LUT4 #(
    .INIT ( 16'hAA2A ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/Mmux_GOOD_FRAME_OUT11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GOOD_FRAME_INT_284 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/ADD_CONTROL_FRAME_282 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_ENABLE_REG_834 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/BAD_OPCODE_INT_915 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_GOOD_FRAME_COMB )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAA8AAAAAA ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0127_inv1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA_VALID_FINAL_285 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/DATA_COUNT [3]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/DATA_COUNT [0]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/DATA_COUNT [1]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/DATA_COUNT [4]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/DATA_COUNT [2]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0127_inv )
  );
  LUT5 #(
    .INIT ( 32'hFFFF2000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/Mmux_BAD_FRAME_OUT11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GOOD_FRAME_INT_284 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/BAD_OPCODE_INT_915 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/ADD_CONTROL_FRAME_282 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_ENABLE_REG_834 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/BAD_FRAME_INT_283 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_BAD_FRAME_COMB )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/Mcount_DATA_COUNT_val1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/BAD_FRAME_INT_283 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GOOD_FRAME_INT_284 ),
    .I2(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/Mcount_DATA_COUNT_val )
  );
  LUT6 #(
    .INIT ( 64'hEEEEEEEEEEEEEEFE ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0123_inv11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/BAD_FRAME_INT_283 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GOOD_FRAME_INT_284 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/DATA_COUNT [4]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/DATA_COUNT [3]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/DATA_COUNT [2]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/DATA_COUNT [1]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0123_inv1 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/Mcount_DATA_COUNT_xor<1>11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/DATA_COUNT [1]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/DATA_COUNT [0]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/Result [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/Mmux__n010517  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/DATA_COUNT [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA [7]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE [15]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0105 [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/Mmux__n010521  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/DATA_COUNT [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE [5]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA [5]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0105 [10])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/Mmux__n010531  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/DATA_COUNT [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE [4]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA [4]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0105 [11])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/Mmux__n010541  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/DATA_COUNT [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE [3]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA [3]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0105 [12])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/Mmux__n010551  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/DATA_COUNT [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE [2]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA [2]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0105 [13])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/Mmux__n010561  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/DATA_COUNT [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE [1]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA [1]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0105 [14])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/Mmux__n010571  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/DATA_COUNT [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE [0]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA [0]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0105 [15])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/Mmux__n010581  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/DATA_COUNT [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA [6]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE [14]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0105 [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/Mmux__n010591  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/DATA_COUNT [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA [5]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE [13]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0105 [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/Mmux__n0105101  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/DATA_COUNT [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA [4]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE [12]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0105 [3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/Mmux__n0105111  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/DATA_COUNT [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA [3]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE [11]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0105 [4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/Mmux__n0105121  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/DATA_COUNT [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA [2]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE [10]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0105 [5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/Mmux__n0105131  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/DATA_COUNT [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA [1]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE [9]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0105 [6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/Mmux__n0105141  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/DATA_COUNT [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA [0]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE [8]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0105 [7])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/Mmux__n0105151  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/DATA_COUNT [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE [7]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA [7]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0105 [8])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/Mmux__n0105161  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/DATA_COUNT [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_VALUE [6]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA [6]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n0105 [9])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/BAD_OPCODE1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/BAD_OPCODE_INT_915 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/CONTROL_FRAME_281 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GOOD_FRAME_INT_284 ),
    .O(rx_statistics_vector[24])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_REQ1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/ADD_CONTROL_FRAME_282 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_ENABLE_REG_834 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_REQ_INT_916 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/PAUSE_REQ_LOCAL )
  );
  LUT5 #(
    .INIT ( 32'h6CCCCCCC ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mcount_DATA_COUNT_xor<4>11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [4]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [1]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [2]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [3]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Result [4])
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mcount_DATA_COUNT_xor<3>11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [3]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [0]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [1]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [2]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Result [3])
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mcount_DATA_COUNT_xor<2>11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [2]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [0]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [1]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Result [2])
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_Mux_26_o111  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [4]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [3]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [2]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [1]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_Mux_26_o11_925 )
  );
  LUT6 #(
    .INIT ( 64'h5557555755575556 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_Mux_26_o11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [4]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [1]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [2]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [3]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [0]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/END_OF_TX_REG_956 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT[4]_GND_28_o_Mux_26_o )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_AVAIL_OUT11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_AVAIL_CONTROL_957 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_AVAIL_IN_REG_967 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/MUX_CONTROL_954 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_TX_DATA_VALID_OUT )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_UNDERRUN_OUT11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_UNDERRUN_INT_829 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/MUX_CONTROL_954 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_TX_UNDERRUN_OUT )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_OUT11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/MUX_CONTROL_954 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_DATA_INT [0]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_CONTROL [0]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_TX_DATA_OUT [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_OUT21  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/MUX_CONTROL_954 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_DATA_INT [1]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_CONTROL [1]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_TX_DATA_OUT [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_OUT31  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/MUX_CONTROL_954 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_DATA_INT [2]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_CONTROL [2]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_TX_DATA_OUT [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_OUT41  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/MUX_CONTROL_954 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_DATA_INT [3]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_CONTROL [3]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_TX_DATA_OUT [3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_OUT51  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/MUX_CONTROL_954 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_DATA_INT [4]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_CONTROL [4]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_TX_DATA_OUT [4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_OUT61  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/MUX_CONTROL_954 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_DATA_INT [5]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_CONTROL [5]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_TX_DATA_OUT [5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_OUT71  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/MUX_CONTROL_954 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_DATA_INT [6]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_CONTROL [6]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_TX_DATA_OUT [6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_OUT81  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/MUX_CONTROL_954 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_DATA_INT [7]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_CONTROL [7]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_TX_DATA_OUT [7])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0163_inv1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/STATE_COUNT_FSM_FFd2_931 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_REQ_INT_953 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0163_inv )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/CONTROL_COMPLETE<1>1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [4]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [0]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [1]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/CONTROL_COMPLETE )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/GOOD_FRAME_IN1_GOOD_FRAME_IN3_OR_81_o1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/GOOD_FRAME_IN2_1036 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/GOOD_FRAME_IN3_1035 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/GOOD_FRAME_IN1_1034 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/GOOD_FRAME_IN1_GOOD_FRAME_IN3_OR_81_o )
  );
  LUT6 #(
    .INIT ( 64'h7F807F8000007F80 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_QUANTA_xor<3>11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_QUANTA [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_QUANTA [1]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_QUANTA [2]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_QUANTA [3]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/COUNT_SET_832 ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/STATE_COUNT_FSM_FFd2_931 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_QUANTA3 )
  );
  LUT5 #(
    .INIT ( 32'h78780078 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_QUANTA_xor<2>11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_QUANTA [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_QUANTA [1]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_QUANTA [2]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/COUNT_SET_832 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/STATE_COUNT_FSM_FFd2_931 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_QUANTA2 )
  );
  LUT4 #(
    .INIT ( 16'h6606 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_QUANTA_xor<1>11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_QUANTA [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_QUANTA [1]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/COUNT_SET_832 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/STATE_COUNT_FSM_FFd2_931 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_QUANTA1 )
  );
  LUT3 #(
    .INIT ( 8'h45 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_QUANTA_xor<0>11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_QUANTA [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/STATE_COUNT_FSM_FFd2_931 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/COUNT_SET_832 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_QUANTA )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mmux_COUNT_SET_GND_31_o_MUX_238_o121  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_REQ_TO_TX_837 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/GOOD_FRAME_IN_TX_REG_1093 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/sync_good_rx/data_sync2 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mmux_COUNT_SET_GND_31_o_MUX_238_o12_1037 )
  );
  LUT6 #(
    .INIT ( 64'h444444444444444F ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter[5]_GND_49_o_equal_14_o11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/rx_data_valid_reg2_1182 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/rx_data_valid_reg1_1176 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [5]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [4]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [3]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mcount_counter_xor<5>11 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter[5]_GND_49_o_equal_14_o1 )
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Reset_OR_DriverANDClockEnable1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/rx_data_valid_reg1_1176 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/rx_data_valid_reg2_1182 ),
    .I2(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Reset_OR_DriverANDClockEnable )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mcount_counter_xor<3>11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [3]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [0]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [1]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [2]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Result [3])
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mcount_load_count_xor<2>11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count [2]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count [0]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count [1]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Result<2>1 )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mcount_counter_xor<2>11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [2]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [0]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [1]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Result [2])
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mcount_counter_xor<5>111  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [2]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [0]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [1]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mcount_counter_xor<5>11 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mcount_counter_xor<1>11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [1]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [0]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Result [1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mcount_load_count_xor<1>11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count [1]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count [0]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Result<1>1 )
  );
  LUT3 #(
    .INIT ( 8'h57 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count[2]_PWR_51_o_LessThan_17_o1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count [2]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count [0]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count [1]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count[2]_PWR_51_o_LessThan_17_o )
  );
  LUT3 #(
    .INIT ( 8'h57 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count_pipe[2]_PWR_51_o_LessThan_20_o1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count_pipe [2]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count_pipe [0]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count_pipe [1]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count_pipe[2]_PWR_51_o_LessThan_20_o )
  );
  LUT6 #(
    .INIT ( 64'hBBBABBBABBBAB990 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/Mmux_next_rx_state11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_state_FSM_FFd2_1204 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_state_FSM_FFd1_1210 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_DATA_VALID_INT_321 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/fsmfake0 [0]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_GOOD_FRAME_INT_323 ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_BAD_FRAME_INT_322 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/next_rx_state [0])
  );
  LUT5 #(
    .INIT ( 32'h040404AE ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_state_FSM_FFd2-In1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_state_FSM_FFd2_1204 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_DATA_VALID_INT_321 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_state_FSM_FFd1_1210 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_BAD_FRAME_INT_322 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_GOOD_FRAME_INT_323 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_state_FSM_FFd2-In )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_state_rx_state[1]_GND_23_o_equal_28_o1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_state_FSM_FFd1_1210 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_state_FSM_FFd2_1204 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_state[1]_GND_23_o_equal_28_o )
  );
  LUT6 #(
    .INIT ( 64'hD77D28827DD78228 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/Mmux_CALC[23]_CALC[23]_mux_3_OUT241  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/CRC_COMPUTE_1356 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [31]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [0]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [28]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [22]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [3]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<30> )
  );
  LUT6 #(
    .INIT ( 64'hD77D28827DD78228 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/Mmux_CALC[23]_CALC[23]_mux_3_OUT181  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/CRC_COMPUTE_1356 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [27]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [4]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [26]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [17]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [5]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<25> )
  );
  LUT6 #(
    .INIT ( 64'hD77D28827DD78228 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/Mmux_CALC[23]_CALC[23]_mux_3_OUT111  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/CRC_COMPUTE_1356 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [27]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [4]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [31]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [11]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [0]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<19> )
  );
  LUT6 #(
    .INIT ( 64'hE44E4EE44EE4E44E ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/Mmux_CALC[23]_CALC[23]_mux_3_OUT11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/CRC_COMPUTE_1356 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [0]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [30]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [1]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [24]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [7]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'hD77D28827DD78228 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<29>1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/CRC_COMPUTE_1356 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [4]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [0]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [31]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [21]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<14>_bdd6 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<29> )
  );
  LUT6 #(
    .INIT ( 64'hD77D28827DD78228 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<23>1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/CRC_COMPUTE_1356 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [7]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [6]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [24]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [15]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<23>_bdd2 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<23> )
  );
  LUT5 #(
    .INIT ( 32'hD7287D82 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<17>1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/CRC_COMPUTE_1356 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [2]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [6]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [9]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<12>_bdd6 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<17> )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<23>21  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [30]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [1]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [25]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<23>_bdd2 )
  );
  LUT4 #(
    .INIT ( 16'h6CC6 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<22>1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/CRC_COMPUTE_1356 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [14]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [7]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [24]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<22> )
  );
  LUT4 #(
    .INIT ( 16'h6CC6 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<20>1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/CRC_COMPUTE_1356 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [12]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [3]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [28]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<20> )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<14>41  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [30]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [1]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [27]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<14>_bdd6 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<12>41  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [30]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [1]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [29]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [25]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<12>_bdd6 )
  );
  LUT4 #(
    .INIT ( 16'h6CC6 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<31>1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/CRC_COMPUTE_1356 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [23]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [2]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [29]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<31> )
  );
  LUT4 #(
    .INIT ( 16'h6CC6 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<21>1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/CRC_COMPUTE_1356 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [13]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [2]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [29]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<21> )
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mmux_FRAME_SUCCESS_FRAME_FAILURE_MUX_864_o11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/GOOD_FRAME_1340 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MATCH_FRAME_INT_1304 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/BAD_FRAME_1339 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_SUCCESS_FRAME_FAILURE_MUX_864_o )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mmux_GND_41_o_FRAME_SUCCESS_MUX_863_o11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MATCH_FRAME_INT_1304 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/GOOD_FRAME_1340 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GND_41_o_FRAME_SUCCESS_MUX_863_o )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mmux_GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT16  (
    .I0(rx_mac_config_vector[14]),
    .I1(rx_mac_config_vector[16]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT<0> )
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mmux_GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT21  (
    .I0(rx_mac_config_vector[26]),
    .I1(rx_mac_config_vector[14]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT<10> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mmux_GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT31  (
    .I0(rx_mac_config_vector[14]),
    .I1(rx_mac_config_vector[27]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT<11> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mmux_GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT41  (
    .I0(rx_mac_config_vector[14]),
    .I1(rx_mac_config_vector[28]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT<12> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mmux_GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT51  (
    .I0(rx_mac_config_vector[14]),
    .I1(rx_mac_config_vector[29]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT<13> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mmux_GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT61  (
    .I0(rx_mac_config_vector[14]),
    .I1(rx_mac_config_vector[30]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT<14> )
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mmux_GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT71  (
    .I0(rx_mac_config_vector[17]),
    .I1(rx_mac_config_vector[14]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT<1> )
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mmux_GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT81  (
    .I0(rx_mac_config_vector[18]),
    .I1(rx_mac_config_vector[14]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT<2> )
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mmux_GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT91  (
    .I0(rx_mac_config_vector[19]),
    .I1(rx_mac_config_vector[14]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT<3> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mmux_GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT101  (
    .I0(rx_mac_config_vector[14]),
    .I1(rx_mac_config_vector[20]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT<4> )
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mmux_GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT111  (
    .I0(rx_mac_config_vector[21]),
    .I1(rx_mac_config_vector[14]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT<5> )
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mmux_GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT121  (
    .I0(rx_mac_config_vector[22]),
    .I1(rx_mac_config_vector[14]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT<6> )
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mmux_GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT131  (
    .I0(rx_mac_config_vector[23]),
    .I1(rx_mac_config_vector[14]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT<7> )
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mmux_GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT141  (
    .I0(rx_mac_config_vector[24]),
    .I1(rx_mac_config_vector[14]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT<8> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mmux_GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT151  (
    .I0(rx_mac_config_vector[14]),
    .I1(rx_mac_config_vector[25]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GND_41_o_MAX_FRAME_LENGTH[14]_mux_2_OUT<9> )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Reset_OR_DriverANDClockEnable11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/VALIDATE_REQUIRED_1302 ),
    .I1(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Reset_OR_DriverANDClockEnable1 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA_VALID_EARLY1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA_VALID_EARLY_INT_1303 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_DV_REG1_1338 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/DATA_VALID_EARLY )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/SFD_FLAG_1308 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/PREAMBLE_1395 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG )
  );
  LUT5 #(
    .INIT ( 32'h44444000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/RX_DV_REG6_DAT_FIELD_AND_353_o1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/END_DATA_1397 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_DV_REG6_1336 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/FIELD_CONTROL [1]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/LEN_FIELD_1392 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/DAT_FIELD_1391 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/RX_DV_REG6_DAT_FIELD_AND_353_o )
  );
  LUT5 #(
    .INIT ( 32'h44444000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/RX_DV_REG6_LEN_FIELD_AND_350_o1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/FIELD_CONTROL [1]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_DV_REG6_1336 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/FIELD_CONTROL [5]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/SRC_ADDRESS_FIELD_1393 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/LEN_FIELD_1392 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/RX_DV_REG6_LEN_FIELD_AND_350_o )
  );
  LUT6 #(
    .INIT ( 64'h4444444440004040 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/RX_DV_REG6_DEST_ADDRESS_FIELD_AND_344_o1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/FIELD_CONTROL [5]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_DV_REG6_1336 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/SFD_FLAG_1308 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/PREAMBLE_1395 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_DV_REG7_1335 ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/DEST_ADDRESS_FIELD_1394 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/RX_DV_REG6_DEST_ADDRESS_FIELD_AND_344_o )
  );
  LUT6 #(
    .INIT ( 64'h4444444444444440 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/Mmux_GND_44_o_FIELD_CONTROL[0]_MUX_679_o11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/END_FRAME_1849 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/FIELD_CONTROL [0]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/CRC_FIELD_1390 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/DEST_ADDRESS_FIELD_1394 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/LEN_FIELD_1392 ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/SRC_ADDRESS_FIELD_1393 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/GND_44_o_FIELD_CONTROL[0]_MUX_679_o )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFF0001 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/Mmux_PWR_46_o_FIELD_CONTROL[5]_MUX_680_o11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/LEN_FIELD_1392 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/SRC_ADDRESS_FIELD_1393 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/CRC_FIELD_1390 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/DEST_ADDRESS_FIELD_1394 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/END_FRAME_1849 ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/FIELD_CONTROL [5]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/PWR_46_o_FIELD_CONTROL[5]_MUX_680_o )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/Mmux_FIELD_CONTROL[1]_GND_44_o_MUX_684_o11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/END_FRAME_1849 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/FIELD_CONTROL [1]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/FIELD_CONTROL[1]_GND_44_o_MUX_684_o )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/Mmux_FIELD_CONTROL[3]_GND_44_o_MUX_682_o11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/END_FRAME_1849 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/FIELD_CONTROL [3]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/FIELD_CONTROL[3]_GND_44_o_MUX_682_o )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/Mmux_FIELD_CONTROL[4]_GND_44_o_MUX_681_o11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/END_FRAME_1849 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/FIELD_CONTROL [4]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/FIELD_CONTROL[4]_GND_44_o_MUX_681_o )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/Mmux_FIELD_CONTROL[2]_GND_44_o_MUX_683_o11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/END_FRAME_1849 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/FIELD_CONTROL [2]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/FIELD_CONTROL[2]_GND_44_o_MUX_683_o )
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/CRC_FIELD_END_DATA_OR_200_o1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/CRC_FIELD_1390 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/END_FCS_1396 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/END_DATA_1397 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/CRC_FIELD_END_DATA_OR_200_o )
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Reset_OR_DriverANDClockEnable3  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/LEN_FIELD_1392 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/FIELD_CONTROL [0]),
    .I2(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Reset_OR_DriverANDClockEnable )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/PWR_47_o_RXD[7]_equal_15_o<7>1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [3]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [7]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_FIELD_LT_CHECK_DISABLE_AND_371_o1 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/PWR_47_o_RXD[7]_equal_15_o )
  );
  LUT5 #(
    .INIT ( 32'h00200000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/GND_45_o_CONTROL_MATCH_AND_415_o1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/CONTROL_MATCH_1557 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [7]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [3]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [0]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_FIELD_LT_CHECK_DISABLE_AND_371_o1 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/GND_45_o_CONTROL_MATCH_AND_415_o )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF444E4444 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/_n0477_inv11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/DEST_ADDRESS_FIELD_1394 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/broadcastaddressmatch_305 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/END_DATA_1397 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/CRC_FIELD_1390 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/FIELD_CONTROL [0]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/END_FRAME_1849 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/_n0477_inv1 )
  );
  LUT6 #(
    .INIT ( 64'h8888888D88888888 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mmux_DATA_NO_FCS_DATA_WITH_FCS_MUX_776_o11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/CRC_MODE_HELD_1312 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_WITH_FCS_1559 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/EXT_FIELD_1389 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/END_FRAME_1849 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_ZERO_1561 ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_NO_FCS_1558 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_NO_FCS_DATA_WITH_FCS_MUX_776_o )
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/GND_45_o_RXD[7]_equal_9_o<7>1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [7]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [3]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [0]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_FIELD_LT_CHECK_DISABLE_AND_371_o1 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/GND_45_o_RXD[7]_equal_9_o )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_FIELD_LT_CHECK_DISABLE_AND_371_o11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [1]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [6]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [4]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [5]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [2]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_FIELD_LT_CHECK_DISABLE_AND_371_o1 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_val1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/END_FRAME_1849 ),
    .I1(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/Reset_OR_DriverANDClockEnable )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/_n0405_inv1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/CRC_FIELD_1390 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/LEN_FIELD_1392 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/DAT_FIELD_1391 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/EXT_FIELD_1389 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/_n0405_inv )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/RX_DV_REG_FRAME_COUNTER[14]_AND_404_o1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [14]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/RX_DV_REG_1555 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/RX_DV_REG_FRAME_COUNTER[14]_AND_404_o )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_FIELD_FIELD_COUNTER[1]_AND_376_o1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/LEN_FIELD_1392 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/FIELD_CONTROL [1]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_FIELD_FIELD_COUNTER[1]_AND_376_o )
  );
  LUT4 #(
    .INIT ( 16'h0EEE ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/END_OF_FRAME_SFD_FLAG_AND_419_o1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/END_FRAME_1849 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/INHIBIT_FRAME_1573 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/PREAMBLE_1395 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/SFD_FLAG_1308 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/END_OF_FRAME_SFD_FLAG_AND_419_o )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF4040FF40 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/FCS_ERR_EXTENSION_FIELD_OR_255_o1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/PREAMBLE_1395 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_DV_REG7_1335 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_ERR_REG7_1332 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/EXT_FIELD_1389 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/EXTENSION_FLAG_1307 ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/FCS_ERR_CRC_ENGINE_ERR_OR_265_o ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/FCS_ERR_EXTENSION_FIELD_OR_255_o )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/FCS_ERR_CRC_ENGINE_ERR_OR_265_o1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/FCS_ERR_1574 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/CRC_ENGINE_ERR_1575 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/FCS_ERR_CRC_ENGINE_ERR_OR_265_o )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/MAX_LENGTH_ERR_CRC_ENGINE_ERR_OR_260_o1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/CRC_ENGINE_ERR_1575 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/FCS_ERR_1574 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/FRAME_LEN_ERR_1576 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/MAX_LENGTH_ERR_1572 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/BAD_FRAME_rstpot )
  );
  LUT3 #(
    .INIT ( 8'hEA ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/MIN_LENGTH_MATCH_EXCEEDED_MIN_LEN_OR_235_o1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/EXCEEDED_MIN_LEN_1577 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/MIN_LENGTH_MATCH_1578 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/DAT_FIELD_1391 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/MIN_LENGTH_MATCH_EXCEEDED_MIN_LEN_OR_235_o )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/END_OF_FRAME_INHIBIT_FRAME_AND_452_o1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/INHIBIT_FRAME_1573 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/END_FRAME_1849 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/GOOD_FRAME_rstpot )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/Mmux_GMII_TX_ER_TO_PHY_GND_39_o_MUX_577_o11  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/TX_ER_REG1_1579 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/GMII_TX_ER_TO_PHY_GND_39_o_MUX_577_o )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/Mmux_GMII_TX_EN_TO_PHY_GND_39_o_MUX_575_o11  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/TX_EN_REG1_1580 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/GMII_TX_EN_TO_PHY_GND_39_o_MUX_575_o )
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/next_tx_state[3]_ignore_packet_OR_46_o1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/ACK_OUT_317 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd1_387 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd6_385 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd7_390 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/next_tx_state[3]_ignore_packet_OR_46_o1_1593 )
  );
  LUT6 #(
    .INIT ( 64'h1111111100101010 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/next_tx_state[3]_ignore_packet_OR_46_o2  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/early_deassert_373 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/two_byte_tx_376 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd4_389 ),
    .I3(tx_axis_mac_tlast),
    .I4(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_mac_tready_reg ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/next_tx_state[3]_ignore_packet_OR_46_o1_1593 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/next_tx_state[3]_ignore_packet_OR_46_o2_1594 )
  );
  LUT6 #(
    .INIT ( 64'hA8A8A8A8A8AAA8A8 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/next_tx_state[3]_ignore_packet_OR_46_o3  (
    .I0(tx_axis_mac_tvalid),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd2_383 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd7_390 ),
    .I3(tx_axis_mac_tuser),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd10_388 ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/no_burst_394 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/next_tx_state[3]_ignore_packet_OR_46_o3_1595 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF54444444 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/next_tx_state[3]_ignore_packet_OR_46_o4  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/ACK_OUT_317 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd2_383 ),
    .I2(tx_axis_mac_tlast),
    .I3(tx_axis_mac_tuser),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd6_385 ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/ignore_packet_375 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/next_tx_state[3]_ignore_packet_OR_46_o4_1596 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFEEFE ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/next_tx_state[3]_ignore_packet_OR_46_o5  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/next_tx_state[3]_ignore_packet_OR_46_o4_1596 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/next_tx_state[3]_ignore_packet_OR_46_o3_1595 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd9_362 ),
    .I3(tx_axis_mac_tlast),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/next_tx_state[3]_ignore_packet_OR_46_o2_1594 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/next_tx_state[3]_ignore_packet_OR_46_o )
  );
  LUT4 #(
    .INIT ( 16'h8880 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd7-In_SW0  (
    .I0(tx_axis_mac_tlast),
    .I1(tx_axis_mac_tuser),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd8_386 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd9_362 ),
    .O(N2)
  );
  LUT6 #(
    .INIT ( 64'hEEEEEEEEEEEEEEFE ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd7-In  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd5_391 ),
    .I1(N2),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd7_390 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/ACK_OUT_317 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/force_end_393 ),
    .I5(tx_axis_mac_tvalid),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd7-In_365 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd3-In_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/two_byte_tx_376 ),
    .I1(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_mac_tready_reg ),
    .I2(tx_axis_mac_tlast),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/early_deassert_373 ),
    .O(N4)
  );
  LUT6 #(
    .INIT ( 64'hFFFF002000200020 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd3-In  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd7_390 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/ACK_OUT_317 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/force_end_393 ),
    .I3(tx_axis_mac_tvalid),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd4_389 ),
    .I5(N4),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd3-In_363 )
  );
  LUT5 #(
    .INIT ( 32'h00040404 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd4-In_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/early_deassert_373 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd4_389 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/two_byte_tx_376 ),
    .I3(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_mac_tready_reg ),
    .I4(tx_axis_mac_tlast),
    .O(N6)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFAAAA88A8 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd4-In  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/ACK_OUT_317 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd1_387 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd7_390 ),
    .I3(tx_axis_mac_tvalid),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd6_385 ),
    .I5(N6),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/next_tx_state[3]_PWR_23_o_equal_72_o )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd10-In_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/no_burst_394 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/ignore_packet_375 ),
    .I2(tx_axis_mac_tuser),
    .O(N8)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFB3A2A2A2 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd10-In  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd10_388 ),
    .I1(tx_axis_mac_tvalid),
    .I2(N8),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd2_383 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/ACK_OUT_317 ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd3_384 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/next_tx_state[3]_tx_enable_reg_AND_28_o )
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_mac_tready_int_tx_ack_OR_30_o_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd4_389 ),
    .I1(tx_axis_mac_tvalid),
    .I2(tx_axis_mac_tuser),
    .O(N10)
  );
  LUT6 #(
    .INIT ( 64'hFFFF444044404440 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_mac_tready_int_tx_ack_OR_30_o  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd1_387 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/early_underrun_374 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/ACK_OUT_317 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/force_end_393 ),
    .I4(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_mac_tready_reg ),
    .I5(N10),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_underrun_glue_set )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_IFG_COUNT[7]_GND_36_o_mux_33_OUT7_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT [5]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT [4]),
    .O(N16)
  );
  LUT6 #(
    .INIT ( 64'h0000CCC30000AAAA ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_IFG_COUNT[7]_GND_36_o_mux_33_OUT7  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DEL_MASKED [6]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT [6]),
    .I2(N16),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_IFG_COUNT[7]_GND_36_o_mux_33_OUT51_427 ),
    .I4(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIFG_TX_FAIL_DELAY_AND_167_o ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT[7]_GND_36_o_mux_33_OUT<6> )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n0921_inv_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MAX_PKT_LEN_REACHED_552 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/TX_565 ),
    .O(N20)
  );
  LUT6 #(
    .INIT ( 64'hFFFEFFEEFFFEFFFE ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n0921_inv  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/SCSH_560 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FCS_561 ),
    .I2(N20),
    .I3(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_TX_UNDERRUN_OUT ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_TX_DATA_VALID_OUT ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n0921_inv_488 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_IFG_COUNT[7]_GND_36_o_mux_33_OUT4_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT [1]),
    .O(N22)
  );
  LUT6 #(
    .INIT ( 64'h0000CCC30000AAAA ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_IFG_COUNT[7]_GND_36_o_mux_33_OUT4  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DEL_MASKED [3]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT [3]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT [2]),
    .I3(N22),
    .I4(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIFG_TX_FAIL_DELAY_AND_167_o ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT[7]_GND_36_o_mux_33_OUT<3> )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n0977_inv_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IDL_568 ),
    .I1(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .O(N24)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFEA5540 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n0977_inv  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_CRC_MODE_526 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CFL_563 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIN_PKT_LEN_REACHED_553 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/COF_562 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n0961_inv11 ),
    .I5(N24),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n0977_inv_486 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n0961_inv_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIFG_556 ),
    .I1(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .O(N26)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFD5C05500 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n0961_inv  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_CRC_MODE_526 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/COF_SEEN_551 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MAX_PKT_LEN_REACHED_552 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/COF_562 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n0961_inv11 ),
    .I5(N26),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n0961_inv_487 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000010000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_REG_TX_CONTROL_GND_36_o_MUX_507_o111  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/LEN [12]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/LEN [13]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/LEN [14]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/LEN [15]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/LEN [7]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/LEN [8]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_REG_TX_CONTROL_GND_36_o_MUX_507_o111_1607 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_REG_TX_CONTROL_GND_36_o_MUX_507_o112  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/LEN [10]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/LEN [9]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/LEN [4]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/LEN [5]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/LEN [6]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/LEN [1]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_REG_TX_CONTROL_GND_36_o_MUX_507_o112_1608 )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_REG_TX_CONTROL_GND_36_o_MUX_507_o113  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/LEN [2]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_REG_TX_CONTROL_GND_36_o_MUX_507_o111_1607 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_REG_TX_CONTROL_GND_36_o_MUX_507_o112_1608 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_REG_TX_CONTROL_GND_36_o_MUX_507_o11 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Msub_GND_36_o_GND_36_o_sub_12_OUT<7:0>_xor<7>1_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DELAY [3]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DELAY [4]),
    .O(N28)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAB00000001 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Msub_GND_36_o_GND_36_o_sub_12_OUT<7:0>_xor<7>1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DELAY [7]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DELAY [6]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DELAY [5]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DELAY [2]),
    .I4(N28),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Msub_GND_36_o_GND_36_o_sub_12_OUT<7:0>_xor<7>11 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/GND_36_o_GND_36_o_sub_12_OUT[7] )
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DST_ADDR_BYTE4_MATCH_GND_36_o_MUX_500_o_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_0 [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_TX_DA_564 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_0 [7]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_0 [6]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_0 [5]),
    .O(N30)
  );
  LUT6 #(
    .INIT ( 64'h0000000080000000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DST_ADDR_BYTE4_MATCH_GND_36_o_MUX_500_o  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_0 [3]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_0 [4]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_0 [1]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_0 [2]),
    .I4(N30),
    .I5(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DST_ADDR_BYTE4_MATCH_GND_36_o_MUX_500_o_600 )
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_DST_ADDR_BYTE3_MATCH_GND_36_o_MUX_498_o1_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_1 [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_TX_DA_564 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_1 [7]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_1 [6]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_1 [5]),
    .O(N32)
  );
  LUT6 #(
    .INIT ( 64'h4000000000000000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_DST_ADDR_BYTE3_MATCH_GND_36_o_MUX_498_o1  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_1 [2]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_1 [1]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_1 [4]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_1 [3]),
    .I5(N32),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DST_ADDR_BYTE3_MATCH_GND_36_o_MUX_498_o )
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_DST_ADDR_BYTE2_MATCH_GND_36_o_MUX_496_o1_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_2 [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_TX_DA_564 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_2 [7]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_2 [6]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_2 [5]),
    .O(N34)
  );
  LUT6 #(
    .INIT ( 64'h4000000000000000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_DST_ADDR_BYTE2_MATCH_GND_36_o_MUX_496_o1  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_2 [2]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_2 [1]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_2 [4]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_2 [3]),
    .I5(N34),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DST_ADDR_BYTE2_MATCH_GND_36_o_MUX_496_o )
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_DST_ADDR_BYTE0_MATCH_GND_36_o_MUX_492_o1_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_4 [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_TX_DA_564 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_4 [7]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_4 [6]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_4 [5]),
    .O(N36)
  );
  LUT6 #(
    .INIT ( 64'h4000000000000000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_DST_ADDR_BYTE0_MATCH_GND_36_o_MUX_492_o1  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_4 [2]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_4 [1]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_4 [4]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_4 [3]),
    .I5(N36),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DST_ADDR_BYTE0_MATCH_GND_36_o_MUX_492_o )
  );
  LUT5 #(
    .INIT ( 32'hFFFF7FFF ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_DST_ADDR_BYTE1_MATCH_GND_36_o_MUX_494_o1_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_TX_DA_564 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [1]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [6]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [2]),
    .I4(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .O(N38)
  );
  LUT6 #(
    .INIT ( 64'h0000000080000000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_DST_ADDR_BYTE1_MATCH_GND_36_o_MUX_494_o1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [7]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [4]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [5]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [3]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [0]),
    .I5(N38),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DST_ADDR_BYTE1_MATCH_GND_36_o_MUX_494_o )
  );
  LUT6 #(
    .INIT ( 64'h9669699669969669 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<12>_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [26]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [28]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [7]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [6]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [2]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [24]),
    .O(N40)
  );
  LUT6 #(
    .INIT ( 64'h6996FF009669FF00 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<12>  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<12>_bdd6 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [5]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [3]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [4]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_COMPUTE_545 ),
    .I5(N40),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<12>_780 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<26>_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [28]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [7]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [24]),
    .O(N42)
  );
  LUT6 #(
    .INIT ( 64'h6996FF009669FF00 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<26>  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<14>_bdd6 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [4]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [3]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [18]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_COMPUTE_545 ),
    .I5(N42),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<26>_794 )
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<2>_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [26]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [31]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [7]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [6]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [24]),
    .O(N44)
  );
  LUT6 #(
    .INIT ( 64'hE44E4EE44EE4E44E ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<2>  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_COMPUTE_545 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [2]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<23>_bdd2 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [5]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [0]),
    .I5(N44),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<2>_770 )
  );
  LUT4 #(
    .INIT ( 16'h9669 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<4>_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [26]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [28]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [7]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [24]),
    .O(N46)
  );
  LUT6 #(
    .INIT ( 64'hD77D28827DD78228 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<4>  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_COMPUTE_545 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<14>_bdd6 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [5]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [3]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [4]),
    .I5(N46),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<4>_772 )
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<6>_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [26]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [28]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [31]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [2]),
    .O(N48)
  );
  LUT6 #(
    .INIT ( 64'h6996FF009669FF00 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<6>  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<12>_bdd6 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [5]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [3]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [6]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_COMPUTE_545 ),
    .I5(N48),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<6>_774 )
  );
  LUT6 #(
    .INIT ( 64'h9669699669969669 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<7>_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [26]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [31]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [2]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [24]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [27]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [29]),
    .O(N50)
  );
  LUT6 #(
    .INIT ( 64'h6996FF009669FF00 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<7>  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [5]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [4]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [0]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [7]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_COMPUTE_545 ),
    .I5(N50),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<7>_775 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<16>_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [2]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [24]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [29]),
    .O(N52)
  );
  LUT6 #(
    .INIT ( 64'h6996FF009669FF00 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<16>  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [3]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [28]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [7]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [8]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_COMPUTE_545 ),
    .I5(N52),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<16>_784 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<18>_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [31]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [1]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [30]),
    .O(N54)
  );
  LUT6 #(
    .INIT ( 64'h6996FF009669FF00 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<18>  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [5]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [0]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [26]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [10]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_COMPUTE_545 ),
    .I5(N54),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<18>_786 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<24>_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [31]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [6]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [25]),
    .O(N56)
  );
  LUT6 #(
    .INIT ( 64'h6996FF009669FF00 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<24>  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [5]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [0]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [26]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [16]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_COMPUTE_545 ),
    .I5(N56),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<24>_792 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<28>_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [1]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [29]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [30]),
    .O(N58)
  );
  LUT6 #(
    .INIT ( 64'h6996FF009669FF00 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<28>  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [5]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [26]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [2]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [20]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_COMPUTE_545 ),
    .I5(N58),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<28>_796 )
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<3>_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [26]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [31]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [6]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [25]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [27]),
    .O(N60)
  );
  LUT6 #(
    .INIT ( 64'hE44E4EE44EE4E44E ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<3>  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_COMPUTE_545 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [3]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [5]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [4]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [0]),
    .I5(N60),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<3>_771 )
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<14>_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [3]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [0]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [26]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [28]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [31]),
    .O(N62)
  );
  LUT6 #(
    .INIT ( 64'hD77D28827DD78228 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<14>  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_COMPUTE_545 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<14>_bdd6 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [5]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [4]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [6]),
    .I5(N62),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<14>_782 )
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/Mmux_CALC[23]_CALC[23]_mux_3_OUT2_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [7]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [2]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [24]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [27]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [29]),
    .O(N64)
  );
  LUT6 #(
    .INIT ( 64'hD77D28827DD78228 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/Mmux_CALC[23]_CALC[23]_mux_3_OUT2  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_COMPUTE_545 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [5]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [4]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [26]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [2]),
    .I5(N64),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<10> )
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/Mmux_CALC[23]_CALC[23]_mux_3_OUT3_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [7]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [6]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [24]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [25]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [27]),
    .O(N66)
  );
  LUT6 #(
    .INIT ( 64'hD77D28827DD78228 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/Mmux_CALC[23]_CALC[23]_mux_3_OUT3  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_COMPUTE_545 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [4]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [3]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [28]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [3]),
    .I5(N66),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<11> )
  );
  LUT6 #(
    .INIT ( 64'h9669699669969669 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/Mmux_CALC[23]_CALC[23]_mux_3_OUT51  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [6]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [5]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [25]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [27]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [26]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/Mmux_CALC[23]_CALC[23]_mux_3_OUT5 )
  );
  LUT6 #(
    .INIT ( 64'h6996966996696996 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/Mmux_CALC[23]_CALC[23]_mux_3_OUT52  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [4]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [5]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [1]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [30]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [29]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [2]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/Mmux_CALC[23]_CALC[23]_mux_3_OUT51_1630 )
  );
  LUT5 #(
    .INIT ( 32'h69FF6900 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/Mmux_CALC[23]_CALC[23]_mux_3_OUT53  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/Mmux_CALC[23]_CALC[23]_mux_3_OUT51_1630 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [31]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/Mmux_CALC[23]_CALC[23]_mux_3_OUT5 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_COMPUTE_545 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [5]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<13> )
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/Mmux_CALC[23]_CALC[23]_mux_3_OUT7_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [28]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [31]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [2]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [27]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [29]),
    .O(N68)
  );
  LUT6 #(
    .INIT ( 64'hD77D28827DD78228 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/Mmux_CALC[23]_CALC[23]_mux_3_OUT7  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_COMPUTE_545 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [4]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [3]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [0]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [7]),
    .I5(N68),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<15> )
  );
  LUT4 #(
    .INIT ( 16'h9669 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/Mmux_CALC[23]_CALC[23]_mux_3_OUT12_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [6]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [24]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [25]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [30]),
    .O(N70)
  );
  LUT6 #(
    .INIT ( 64'hD77D28827DD78228 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/Mmux_CALC[23]_CALC[23]_mux_3_OUT12  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_COMPUTE_545 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [0]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [31]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [7]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [1]),
    .I5(N70),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<1> )
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/Mmux_CALC[23]_CALC[23]_mux_3_OUT20_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [31]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [6]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [2]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [25]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [29]),
    .O(N72)
  );
  LUT6 #(
    .INIT ( 64'hD77D28827DD78228 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/Mmux_CALC[23]_CALC[23]_mux_3_OUT20  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_COMPUTE_545 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [3]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [0]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [28]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [19]),
    .I5(N72),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<27> )
  );
  LUT6 #(
    .INIT ( 64'h6996966996696996 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/Mmux_CALC[23]_CALC[23]_mux_3_OUT281  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [2]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [29]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [1]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [30]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [7]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [24]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/Mmux_CALC[23]_CALC[23]_mux_3_OUT28 )
  );
  LUT6 #(
    .INIT ( 64'h6996966996696996 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/Mmux_CALC[23]_CALC[23]_mux_3_OUT282  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [3]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [28]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [27]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [4]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [6]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [25]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/Mmux_CALC[23]_CALC[23]_mux_3_OUT281_1635 )
  );
  LUT6 #(
    .INIT ( 64'h6996FFFF69960000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/Mmux_CALC[23]_CALC[23]_mux_3_OUT283  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/Mmux_CALC[23]_CALC[23]_mux_3_OUT281_1635 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [0]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [31]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/Mmux_CALC[23]_CALC[23]_mux_3_OUT28 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_COMPUTE_545 ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [5]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<5> )
  );
  LUT6 #(
    .INIT ( 64'hD77D28827DD78228 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/Mmux_CALC[23]_CALC[23]_mux_3_OUT31  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_COMPUTE_545 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [4]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [3]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [28]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [0]),
    .I5(N66),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<8> )
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/Mmux_CALC[23]_CALC[23]_mux_3_OUT32_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [28]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [6]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [2]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [25]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [29]),
    .O(N76)
  );
  LUT6 #(
    .INIT ( 64'hD77D28827DD78228 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/Mmux_CALC[23]_CALC[23]_mux_3_OUT32  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_COMPUTE_545 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [5]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DATA_REG_3 [3]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [26]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC [1]),
    .I5(N76),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRCGEN/CALC[23]_CALC[23]_mux_3_OUT<9> )
  );
  LUT6 #(
    .INIT ( 64'h0000000000010000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/GND_27_o_DATA[7]_equal_8_o<7>1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_OPCODE_EARLY [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_OPCODE_EARLY [1]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_OPCODE_EARLY [2]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_OPCODE_EARLY [3]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA [0]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_OPCODE_EARLY [4]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/GND_27_o_DATA[7]_equal_8_o<7> )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/GND_27_o_DATA[7]_equal_8_o<7>2  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_OPCODE_EARLY [6]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_OPCODE_EARLY [5]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_OPCODE_EARLY [7]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA [1]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA [2]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA [3]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/GND_27_o_DATA[7]_equal_8_o<7>1_1638 )
  );
  LUT6 #(
    .INIT ( 64'h0001000000000000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/GND_27_o_DATA[7]_equal_8_o<7>3  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA [7]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA [6]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA [4]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA [5]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/GND_27_o_DATA[7]_equal_8_o<7>1_1638 ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/GND_27_o_DATA[7]_equal_8_o<7> ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/GND_27_o_DATA[7]_equal_8_o )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0141_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_STATUS_INT_833 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_REQ_INT_953 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/STATE_COUNT_FSM_FFd2_931 ),
    .I3(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .O(N80)
  );
  LUT6 #(
    .INIT ( 64'h0000000007070747 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0141  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/END_OF_TX_HELD_955 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_AVAIL_IN_REG_967 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/COUNT_SET_832 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/MUX_CONTROL_954 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_TX_END_OF_TX ),
    .I5(N80),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0141_945 )
  );
  LUT4 #(
    .INIT ( 16'hFDFF ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0187_inv_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [4]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [3]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [2]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [0]),
    .O(N82)
  );
  LUT6 #(
    .INIT ( 64'h8888880008080800 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0187_inv  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/MUX_CONTROL_954 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_REQ_INT_953 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [1]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/ACK_INT_966 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/STATE_COUNT_FSM_FFd1_968 ),
    .I5(N82),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0187_inv_930 )
  );
  LUT5 #(
    .INIT ( 32'h02000000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n01471  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [4]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [3]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [2]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [1]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [0]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n01471_1641 )
  );
  LUT6 #(
    .INIT ( 64'h0000F0F0000010F0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n01472  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/ACK_INT_966 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/STATE_COUNT_FSM_FFd1_968 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_REQ_INT_953 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/MUX_CONTROL_954 ),
    .I4(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n01471_1641 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0147 )
  );
  LUT5 #(
    .INIT ( 32'hFFFF0010 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/STATE_COUNT_FSM_FFd2-In1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_STATUS_INT_833 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/MUX_CONTROL_954 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_AVAIL_IN_REG_967 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/END_OF_TX_HELD_955 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_REQ_INT_953 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/STATE_COUNT_FSM_FFd2-In1_1642 )
  );
  LUT5 #(
    .INIT ( 32'h7474FE74 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/STATE_COUNT_FSM_FFd2-In3  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/STATE_COUNT_FSM_FFd1_968 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/STATE_COUNT_FSM_FFd2_931 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/STATE_COUNT_FSM_FFd2-In1_1642 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/STATE_COUNT_FSM_FFd2-In2_1643 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/CONTROL_COMPLETE ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/STATE_COUNT_FSM_FFd2-In )
  );
  LUT4 #(
    .INIT ( 16'hAC00 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT101  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_VALUE_HELD [3]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_VALUE_HELD [11]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [0]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_Mux_26_o11_925 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT10 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT102  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [43]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [35]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [0]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT101_1645 )
  );
  LUT6 #(
    .INIT ( 64'h7776676655544544 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT103  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [1]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [2]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [0]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [19]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [27]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT101_1645 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT102_1646 )
  );
  LUT5 #(
    .INIT ( 32'h88800800 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT104  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [2]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [1]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [0]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [3]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [11]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT103_1647 )
  );
  LUT5 #(
    .INIT ( 32'hFFFF5410 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT105  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [4]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [3]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT103_1647 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT102_1646 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT10 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT71  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [18]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [34]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [42]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [26]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [1]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [0]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT7 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT72  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [2]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [10]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT71_1649 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT141  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [21]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [37]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [45]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [29]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [1]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [0]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT14 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT142  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [5]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [13]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT141_1651 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0FF00CCCCAAAA ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT121  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [20]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [36]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [44]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [28]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [1]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [0]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT12 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT122  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [4]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [12]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT121_1653 )
  );
  LUT6 #(
    .INIT ( 64'hDDA2DD8099A29980 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT31  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [3]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [1]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [40]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [2]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [24]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [8]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT3 )
  );
  LUT6 #(
    .INIT ( 64'h5499109954111011 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT32  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [2]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [1]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [16]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [3]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [32]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [0]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT31_1655 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT33  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_VALUE_HELD [8]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_VALUE_HELD [0]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT32_1656 )
  );
  LUT6 #(
    .INIT ( 64'hFFFF514051405140 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT34  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [4]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [0]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT3 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT31_1655 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_Mux_26_o11_925 ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT32_1656 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT<0> )
  );
  LUT4 #(
    .INIT ( 16'hAC00 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT51  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_VALUE_HELD [1]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_VALUE_HELD [9]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [0]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_Mux_26_o11_925 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT5 )
  );
  LUT6 #(
    .INIT ( 64'h4440040004000400 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT52  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [3]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [1]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [0]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [1]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [9]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [2]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT51_1658 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT53  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [41]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [25]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [1]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT52_1659 )
  );
  LUT6 #(
    .INIT ( 64'hFB44EA4451444044 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT54  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [1]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [33]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [3]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [17]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT52_1659 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT53_1660 )
  );
  LUT5 #(
    .INIT ( 32'hFFFF5150 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT55  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [4]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [2]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT51_1658 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT53_1660 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT5 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT<1> )
  );
  LUT4 #(
    .INIT ( 16'hAC00 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT161  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_VALUE_HELD [6]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_VALUE_HELD [14]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [0]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_Mux_26_o11_925 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT16 )
  );
  LUT6 #(
    .INIT ( 64'h4440040004000400 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT162  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [3]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [1]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [0]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [6]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [14]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [2]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT161_1662 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT163  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [46]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [30]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [1]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT162_1663 )
  );
  LUT6 #(
    .INIT ( 64'hFB44EA4451444044 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT164  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [1]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [38]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [3]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [22]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT162_1663 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT163_1664 )
  );
  LUT5 #(
    .INIT ( 32'hFFFF5150 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT165  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [4]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [2]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT161_1662 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT163_1664 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT16 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT<6> )
  );
  LUT4 #(
    .INIT ( 16'hAC00 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT191  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_VALUE_HELD [7]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_VALUE_HELD [15]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [0]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_Mux_26_o11_925 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT19 )
  );
  LUT4 #(
    .INIT ( 16'hA0CF ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT192  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [47]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [39]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [3]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [0]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT191_1666 )
  );
  LUT6 #(
    .INIT ( 64'h54FF10FF54101010 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT193  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [3]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [0]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [7]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [2]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [15]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT191_1666 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT192_1667 )
  );
  LUT5 #(
    .INIT ( 32'h75226422 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT194  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [2]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [31]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [3]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_SOURCE_HELD [23]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT193_1668 )
  );
  LUT5 #(
    .INIT ( 32'hFFFF5410 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT195  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [4]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [1]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT193_1668 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT192_1667 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT19 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT<7> )
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_QUANTA_xor<4>1_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/STATE_COUNT_FSM_FFd2_931 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/COUNT_SET_832 ),
    .O(N86)
  );
  LUT6 #(
    .INIT ( 64'h2888888888888888 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_QUANTA_xor<4>1  (
    .I0(N86),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_QUANTA [4]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_QUANTA [3]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_QUANTA [2]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_QUANTA [1]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_QUANTA [0]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_QUANTA4 )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_QUANTA_xor<5>1_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_QUANTA [2]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_QUANTA [1]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_QUANTA [0]),
    .O(N88)
  );
  LUT6 #(
    .INIT ( 64'h88884888AAAA5AAA ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_QUANTA_xor<5>1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_QUANTA [5]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/STATE_COUNT_FSM_FFd2_931 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_QUANTA [4]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_QUANTA [3]),
    .I4(N88),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/COUNT_SET_832 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_QUANTA5 )
  );
  LUT4 #(
    .INIT ( 16'hFF7F ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/_n0068_inv_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_QUANTA [5]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_QUANTA [1]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_QUANTA [0]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/COUNT_SET_832 ),
    .O(N90)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF00008000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/_n0068_inv  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_QUANTA [4]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_QUANTA [3]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_STATUS_INT_833 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_QUANTA [2]),
    .I4(N90),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mmux_COUNT_SET_GND_31_o_MUX_238_o12_1037 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/_n0068_inv_1085 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mmux_COUNT_SET_GND_31_o_MUX_238_o11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX [4]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX [5]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX [6]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX [7]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX [8]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX [9]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mmux_COUNT_SET_GND_31_o_MUX_238_o1 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mmux_COUNT_SET_GND_31_o_MUX_238_o12  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX [14]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX [15]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX [1]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX [2]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX [3]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mmux_COUNT_SET_GND_31_o_MUX_238_o1 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mmux_COUNT_SET_GND_31_o_MUX_238_o11_1673 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT[15]_GND_31_o_equal_8_o<15>1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT [1]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT [0]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT [2]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT [3]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT [4]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT [5]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT[15]_GND_31_o_equal_8_o<15> )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT[15]_GND_31_o_equal_8_o<15>2  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT [7]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT [6]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT [8]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT [9]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT [10]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT [11]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT[15]_GND_31_o_equal_8_o<15>1_1675 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT71  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count [2]),
    .I2(rx_mac_config_vector[46]),
    .I3(rx_mac_config_vector[78]),
    .I4(rx_mac_config_vector[70]),
    .I5(rx_mac_config_vector[38]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT7 )
  );
  LUT5 #(
    .INIT ( 32'hFBEA5140 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT72  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count [2]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count [0]),
    .I2(rx_mac_config_vector[62]),
    .I3(rx_mac_config_vector[54]),
    .I4(rx_mac_config_vector[38]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT71_1677 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT73  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count [1]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT7 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT71_1677 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count[2]_pause_addr[7]_wide_mux_27_OUT<6> )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT61  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count [2]),
    .I2(rx_mac_config_vector[45]),
    .I3(rx_mac_config_vector[77]),
    .I4(rx_mac_config_vector[69]),
    .I5(rx_mac_config_vector[37]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT6 )
  );
  LUT5 #(
    .INIT ( 32'hFBEA5140 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT62  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count [2]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count [0]),
    .I2(rx_mac_config_vector[61]),
    .I3(rx_mac_config_vector[53]),
    .I4(rx_mac_config_vector[37]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT61_1679 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT63  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count [1]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT6 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT61_1679 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count[2]_pause_addr[7]_wide_mux_27_OUT<5> )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT51  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count [2]),
    .I2(rx_mac_config_vector[44]),
    .I3(rx_mac_config_vector[76]),
    .I4(rx_mac_config_vector[68]),
    .I5(rx_mac_config_vector[36]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT5 )
  );
  LUT5 #(
    .INIT ( 32'hFBEA5140 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT52  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count [2]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count [0]),
    .I2(rx_mac_config_vector[60]),
    .I3(rx_mac_config_vector[52]),
    .I4(rx_mac_config_vector[36]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT51_1681 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT53  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count [1]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT5 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT51_1681 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count[2]_pause_addr[7]_wide_mux_27_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT41  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count [2]),
    .I2(rx_mac_config_vector[43]),
    .I3(rx_mac_config_vector[75]),
    .I4(rx_mac_config_vector[67]),
    .I5(rx_mac_config_vector[35]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT4 )
  );
  LUT5 #(
    .INIT ( 32'hFBEA5140 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT42  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count [2]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count [0]),
    .I2(rx_mac_config_vector[59]),
    .I3(rx_mac_config_vector[51]),
    .I4(rx_mac_config_vector[35]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT41_1683 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT43  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count [1]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT4 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT41_1683 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count[2]_pause_addr[7]_wide_mux_27_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT31  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count [2]),
    .I2(rx_mac_config_vector[42]),
    .I3(rx_mac_config_vector[74]),
    .I4(rx_mac_config_vector[66]),
    .I5(rx_mac_config_vector[34]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT3 )
  );
  LUT5 #(
    .INIT ( 32'hFBEA5140 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT32  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count [2]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count [0]),
    .I2(rx_mac_config_vector[58]),
    .I3(rx_mac_config_vector[50]),
    .I4(rx_mac_config_vector[34]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT31_1685 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT33  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count [1]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT3 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT31_1685 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count[2]_pause_addr[7]_wide_mux_27_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT21  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count [2]),
    .I2(rx_mac_config_vector[41]),
    .I3(rx_mac_config_vector[73]),
    .I4(rx_mac_config_vector[65]),
    .I5(rx_mac_config_vector[33]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT2 )
  );
  LUT5 #(
    .INIT ( 32'hFBEA5140 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT22  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count [2]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count [0]),
    .I2(rx_mac_config_vector[57]),
    .I3(rx_mac_config_vector[49]),
    .I4(rx_mac_config_vector[33]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT21_1687 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT23  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count [1]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT2 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT21_1687 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count[2]_pause_addr[7]_wide_mux_27_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count [2]),
    .I2(rx_mac_config_vector[40]),
    .I3(rx_mac_config_vector[72]),
    .I4(rx_mac_config_vector[64]),
    .I5(rx_mac_config_vector[32]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT1 )
  );
  LUT5 #(
    .INIT ( 32'hFBEA5140 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT12  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count [2]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count [0]),
    .I2(rx_mac_config_vector[56]),
    .I3(rx_mac_config_vector[48]),
    .I4(rx_mac_config_vector[32]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT11_1689 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT13  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count [1]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT1 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT11_1689 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count[2]_pause_addr[7]_wide_mux_27_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'h8040201008040201 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/special_pause_match_comb81  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG1 [6]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG1 [7]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG1 [1]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/special_pause_addr_lut [6]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/special_pause_addr_lut [7]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/special_pause_addr_lut [1]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/special_pause_match_comb8 )
  );
  LUT6 #(
    .INIT ( 64'h8040201008040201 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/special_pause_match_comb82  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG1 [3]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG1 [4]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG1 [5]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/special_pause_addr_lut [3]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/special_pause_addr_lut [4]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/special_pause_addr_lut [5]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/special_pause_match_comb81_1691 )
  );
  LUT6 #(
    .INIT ( 64'h8421000000000000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/special_pause_match_comb83  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG1 [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG1 [2]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/special_pause_addr_lut [0]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/special_pause_addr_lut [2]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/special_pause_match_comb81_1691 ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/special_pause_match_comb8 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/special_pause_match_comb )
  );
  LUT6 #(
    .INIT ( 64'h8040201008040201 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/pause_match_reg_rx_data[7]_MUX_940_o81  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG1 [6]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG1 [7]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG1 [1]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/expected_pause_data [6]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/expected_pause_data [7]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/expected_pause_data [1]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/pause_match_reg_rx_data[7]_MUX_940_o8 )
  );
  LUT6 #(
    .INIT ( 64'h8040201008040201 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/pause_match_reg_rx_data[7]_MUX_940_o82  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG1 [3]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG1 [4]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG1 [5]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/expected_pause_data [3]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/expected_pause_data [4]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/expected_pause_data [5]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/pause_match_reg_rx_data[7]_MUX_940_o81_1693 )
  );
  LUT6 #(
    .INIT ( 64'h8421000000000000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/pause_match_reg_rx_data[7]_MUX_940_o83  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG1 [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG1 [2]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/expected_pause_data [0]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/expected_pause_data [2]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/pause_match_reg_rx_data[7]_MUX_940_o8 ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/pause_match_reg_rx_data[7]_MUX_940_o81_1693 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/pause_match_reg_rx_data[7]_MUX_940_o )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/broadcast_byte_match_rx_data[7]_MUX_920_o<7>_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG1 [5]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG1 [2]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG1 [0]),
    .O(N92)
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/broadcast_byte_match_rx_data[7]_MUX_920_o<7>  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG1 [4]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG1 [3]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG1 [7]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG1 [6]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG1 [1]),
    .I5(N92),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/broadcast_byte_match_rx_data[7]_MUX_920_o )
  );
  LUT6 #(
    .INIT ( 64'h2222222220202000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/next_rx_state[1]_rx_enable_AND_7_o1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_state_FSM_FFd2_1204 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_GOOD_FRAME_INT_323 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_state_FSM_FFd1_1210 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_DATA_VALID_INT_321 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/fsmfake0 [0]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_BAD_FRAME_INT_322 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/next_rx_state[1]_rx_enable_AND_7_o )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_state[1]_next_rx_state[1]_OR_9_o1_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_GOOD_FRAME_INT_323 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_BAD_FRAME_INT_322 ),
    .O(N94)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF1F7F0F0F ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_state[1]_next_rx_state[1]_OR_9_o1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/fsmfake0 [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_DATA_VALID_INT_321 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_state_FSM_FFd2_1204 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_state_FSM_FFd1_1210 ),
    .I4(N94),
    .I5(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_state[1]_next_rx_state[1]_OR_9_o_0 )
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/Mmux_CALC[23]_CALC[23]_mux_3_OUT32_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [28]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [2]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [6]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [25]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [29]),
    .O(N96)
  );
  LUT6 #(
    .INIT ( 64'hD77D28827DD78228 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/Mmux_CALC[23]_CALC[23]_mux_3_OUT32  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/CRC_COMPUTE_1356 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [5]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [3]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [26]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [1]),
    .I5(N96),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<9> )
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/Mmux_CALC[23]_CALC[23]_mux_3_OUT31_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [7]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [6]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [24]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [25]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [27]),
    .O(N98)
  );
  LUT6 #(
    .INIT ( 64'hD77D28827DD78228 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/Mmux_CALC[23]_CALC[23]_mux_3_OUT31  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/CRC_COMPUTE_1356 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [4]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [3]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [28]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [0]),
    .I5(N98),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<8> )
  );
  LUT6 #(
    .INIT ( 64'h6996966996696996 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/Mmux_CALC[23]_CALC[23]_mux_3_OUT281  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [2]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [29]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [1]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [30]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [7]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [24]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/Mmux_CALC[23]_CALC[23]_mux_3_OUT28 )
  );
  LUT6 #(
    .INIT ( 64'h6996966996696996 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/Mmux_CALC[23]_CALC[23]_mux_3_OUT282  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [3]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [28]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [27]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [4]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [6]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [25]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/Mmux_CALC[23]_CALC[23]_mux_3_OUT281_1699 )
  );
  LUT6 #(
    .INIT ( 64'h6996FFFF69960000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/Mmux_CALC[23]_CALC[23]_mux_3_OUT283  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/Mmux_CALC[23]_CALC[23]_mux_3_OUT281_1699 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [0]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [31]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/Mmux_CALC[23]_CALC[23]_mux_3_OUT28 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/CRC_COMPUTE_1356 ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [5]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<5> )
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/Mmux_CALC[23]_CALC[23]_mux_3_OUT20_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [31]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [2]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [6]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [25]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [29]),
    .O(N100)
  );
  LUT6 #(
    .INIT ( 64'hD77D28827DD78228 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/Mmux_CALC[23]_CALC[23]_mux_3_OUT20  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/CRC_COMPUTE_1356 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [3]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [0]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [28]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [19]),
    .I5(N100),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<27> )
  );
  LUT4 #(
    .INIT ( 16'h9669 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/Mmux_CALC[23]_CALC[23]_mux_3_OUT12_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [6]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [24]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [25]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [30]),
    .O(N102)
  );
  LUT6 #(
    .INIT ( 64'hD77D28827DD78228 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/Mmux_CALC[23]_CALC[23]_mux_3_OUT12  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/CRC_COMPUTE_1356 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [0]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [31]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [7]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [1]),
    .I5(N102),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<1> )
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/Mmux_CALC[23]_CALC[23]_mux_3_OUT7_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [28]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [31]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [2]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [27]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [29]),
    .O(N104)
  );
  LUT6 #(
    .INIT ( 64'hD77D28827DD78228 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/Mmux_CALC[23]_CALC[23]_mux_3_OUT7  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/CRC_COMPUTE_1356 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [4]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [3]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [0]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [7]),
    .I5(N104),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<15> )
  );
  LUT6 #(
    .INIT ( 64'h9669699669969669 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/Mmux_CALC[23]_CALC[23]_mux_3_OUT51  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [6]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [5]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [25]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [27]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [26]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/Mmux_CALC[23]_CALC[23]_mux_3_OUT5 )
  );
  LUT6 #(
    .INIT ( 64'h6996966996696996 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/Mmux_CALC[23]_CALC[23]_mux_3_OUT52  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [4]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [5]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [1]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [30]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [29]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [2]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/Mmux_CALC[23]_CALC[23]_mux_3_OUT51_1704 )
  );
  LUT5 #(
    .INIT ( 32'h69FF6900 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/Mmux_CALC[23]_CALC[23]_mux_3_OUT53  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/Mmux_CALC[23]_CALC[23]_mux_3_OUT51_1704 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [31]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/Mmux_CALC[23]_CALC[23]_mux_3_OUT5 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/CRC_COMPUTE_1356 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [5]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<13> )
  );
  LUT6 #(
    .INIT ( 64'hD77D28827DD78228 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/Mmux_CALC[23]_CALC[23]_mux_3_OUT3  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/CRC_COMPUTE_1356 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [4]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [3]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [28]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [3]),
    .I5(N98),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<11> )
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/Mmux_CALC[23]_CALC[23]_mux_3_OUT2_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [2]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [7]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [24]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [27]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [29]),
    .O(N108)
  );
  LUT6 #(
    .INIT ( 64'hD77D28827DD78228 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/Mmux_CALC[23]_CALC[23]_mux_3_OUT2  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/CRC_COMPUTE_1356 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [5]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [4]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [26]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [2]),
    .I5(N108),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<10> )
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<14>_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [3]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [0]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [26]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [28]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [31]),
    .O(N110)
  );
  LUT6 #(
    .INIT ( 64'hD77D28827DD78228 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<14>  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/CRC_COMPUTE_1356 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<14>_bdd6 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [5]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [4]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [6]),
    .I5(N110),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<14>_1261 )
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<3>_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [26]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [31]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [6]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [25]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [27]),
    .O(N112)
  );
  LUT6 #(
    .INIT ( 64'hE44E4EE44EE4E44E ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<3>  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/CRC_COMPUTE_1356 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [3]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [5]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [4]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [0]),
    .I5(N112),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<3>_1272 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<28>_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [1]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [29]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [30]),
    .O(N114)
  );
  LUT6 #(
    .INIT ( 64'h6996FF009669FF00 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<28>  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [5]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [26]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [2]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [20]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/CRC_COMPUTE_1356 ),
    .I5(N114),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<28>_1247 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<24>_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [31]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [6]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [25]),
    .O(N116)
  );
  LUT6 #(
    .INIT ( 64'h6996FF009669FF00 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<24>  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [5]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [0]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [26]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [16]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/CRC_COMPUTE_1356 ),
    .I5(N116),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<24>_1251 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<18>_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [31]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [1]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [30]),
    .O(N118)
  );
  LUT6 #(
    .INIT ( 64'h6996FF009669FF00 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<18>  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [5]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [0]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [26]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [10]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/CRC_COMPUTE_1356 ),
    .I5(N118),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<18>_1257 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<16>_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [7]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [24]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [29]),
    .O(N120)
  );
  LUT6 #(
    .INIT ( 64'h6996FF009669FF00 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<16>  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [3]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [28]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [2]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [8]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/CRC_COMPUTE_1356 ),
    .I5(N120),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<16>_1259 )
  );
  LUT6 #(
    .INIT ( 64'h9669699669969669 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<7>_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [26]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [31]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [2]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [24]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [27]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [29]),
    .O(N122)
  );
  LUT6 #(
    .INIT ( 64'h6996FF009669FF00 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<7>  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [5]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [4]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [0]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [7]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/CRC_COMPUTE_1356 ),
    .I5(N122),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<7>_1268 )
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<6>_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [26]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [28]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [31]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [2]),
    .O(N124)
  );
  LUT6 #(
    .INIT ( 64'h6996FF009669FF00 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<6>  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<12>_bdd6 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [5]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [3]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [6]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/CRC_COMPUTE_1356 ),
    .I5(N124),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<6>_1269 )
  );
  LUT4 #(
    .INIT ( 16'h9669 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<4>_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [26]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [28]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [7]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [24]),
    .O(N126)
  );
  LUT6 #(
    .INIT ( 64'hD77D28827DD78228 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<4>  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/CRC_COMPUTE_1356 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<14>_bdd6 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [5]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [3]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [4]),
    .I5(N126),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<4>_1271 )
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<2>_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [26]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [31]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [7]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [6]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [24]),
    .O(N128)
  );
  LUT6 #(
    .INIT ( 64'hE44E4EE44EE4E44E ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<2>  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/CRC_COMPUTE_1356 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [2]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<23>_bdd2 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [5]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [0]),
    .I5(N128),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<2>_1273 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<26>_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [28]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [7]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [24]),
    .O(N130)
  );
  LUT6 #(
    .INIT ( 64'h6996FF009669FF00 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<26>  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<14>_bdd6 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [4]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [3]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [18]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/CRC_COMPUTE_1356 ),
    .I5(N130),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<26>_1249 )
  );
  LUT6 #(
    .INIT ( 64'h9669699669969669 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<12>_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [26]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [28]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [2]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [7]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [6]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [24]),
    .O(N132)
  );
  LUT6 #(
    .INIT ( 64'h6996FF009669FF00 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<12>  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<12>_bdd6 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [5]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [3]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [4]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/CRC_COMPUTE_1356 ),
    .I5(N132),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC[23]_CALC[23]_mux_3_OUT<12>_1263 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFEFFF ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GND_41_o_RX_DV_REG6_AND_324_o2_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG6 [4]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG6 [6]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG6 [2]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG6 [0]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG6 [5]),
    .O(N134)
  );
  LUT6 #(
    .INIT ( 64'h0000004000000000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GND_41_o_RX_DV_REG6_AND_324_o2  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_DV_REG6_1336 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_ERR_REG6_1333 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG6 [3]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG6 [7]),
    .I4(N134),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG6 [1]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GND_41_o_RX_DV_REG6_AND_324_o )
  );
  LUT5 #(
    .INIT ( 32'hF7FFFFFF ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/PWR_43_o_RX_ERR_REG6_AND_322_o1_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG6 [6]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG6 [4]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG6 [5]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG6 [2]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG6 [0]),
    .O(N136)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000008 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/PWR_43_o_RX_ERR_REG6_AND_322_o1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG6 [7]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_DV_REG6_1336 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_ERR_REG6_1333 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG6 [3]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG6 [1]),
    .I5(N136),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/PWR_43_o_RX_ERR_REG6_AND_322_o )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFFE ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/PRE_FALSE_CARR_FLAG2_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG5 [6]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG5 [5]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG5 [4]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_DV_REG5 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG5 [0]),
    .O(N138)
  );
  LUT6 #(
    .INIT ( 64'h0000000020000000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/PRE_FALSE_CARR_FLAG2  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_ERR_REG5 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG5 [7]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG5 [3]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG5 [2]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG5 [1]),
    .I5(N138),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/PRE_FALSE_CARR_FLAG )
  );
  LUT6 #(
    .INIT ( 64'h0000000000010000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/PRE_IFG_FLAG1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG5 [7]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG5 [3]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG5 [2]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG5 [1]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_ERR_REG5 ),
    .I5(N138),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/PRE_IFG_FLAG )
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Reset_OR_DriverANDClockEnable4_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/END_DATA_1397 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/FIELD_CONTROL [0]),
    .O(N148)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFA8FFA8AA ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Reset_OR_DriverANDClockEnable4  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/END_FRAME_1849 ),
    .I1(N148),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/CRC_FIELD_1390 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/DEST_ADDRESS_FIELD_1394 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/broadcastaddressmatch_305 ),
    .I5(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Reset_OR_DriverANDClockEnable4_1501 )
  );
  LUT5 #(
    .INIT ( 32'hFFFF5755 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/SFD_FLAG_DATA_NO_FCS_OR_227_o_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_NO_FCS_1558 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/TYPE_PACKET_1355 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/LT_CHECK_HELD_1311 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_MATCH_1358 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_ONE_1560 ),
    .O(N150)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF00010101 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/SFD_FLAG_DATA_NO_FCS_OR_227_o  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/END_FRAME_1849 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_ZERO_1561 ),
    .I2(N150),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/DAT_FIELD_1391 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/END_DATA_1397 ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/SFD_FLAG_DATA_NO_FCS_OR_227_o_1518 )
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_FIELD_LT_CHECK_DISABLE_AND_371_o_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/LT_CHECK_HELD_1311 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LESS_THAN_256_1562 ),
    .O(N152)
  );
  LUT6 #(
    .INIT ( 64'h0000004000000000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_FIELD_LT_CHECK_DISABLE_AND_371_o  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [3]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [0]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_FIELD_FIELD_COUNTER[1]_AND_376_o ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [7]),
    .I4(N152),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_FIELD_LT_CHECK_DISABLE_AND_371_o1 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_FIELD_LT_CHECK_DISABLE_AND_371_o_1523 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER[10]_LENGTH_TYPE[10]_equal_8_o111  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE [5]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER<14:0> [5]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE [9]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER<14:0> [9]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE [8]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER<14:0> [8]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER[10]_LENGTH_TYPE[10]_equal_8_o11 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER[10]_LENGTH_TYPE[10]_equal_8_o112  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE [6]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER<14:0> [6]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE [10]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER<14:0> [10]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE [7]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER<14:0> [7]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER[10]_LENGTH_TYPE[10]_equal_8_o111_1725 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER[10]_LENGTH_TYPE[10]_equal_8_o113  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER<14:0> [0]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE [4]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER<14:0> [4]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER[10]_LENGTH_TYPE[10]_equal_8_o112_1726 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER[10]_LENGTH_TYPE[10]_equal_8_o114  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE [3]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER<14:0> [3]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE [2]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER<14:0> [2]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE [1]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER<14:0> [1]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER[10]_LENGTH_TYPE[10]_equal_8_o113_1727 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER[10]_LENGTH_TYPE[10]_equal_8_o115  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER[10]_LENGTH_TYPE[10]_equal_8_o112_1726 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER[10]_LENGTH_TYPE[10]_equal_8_o113_1727 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER[10]_LENGTH_TYPE[10]_equal_8_o11 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER[10]_LENGTH_TYPE[10]_equal_8_o111_1725 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER[10]_LENGTH_TYPE[10]_equal_8_o )
  );
  LUT4 #(
    .INIT ( 16'hECCC ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Reset_OR_DriverANDClockEnable1_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [1]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [4]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [2]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [3]),
    .O(N154)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/VLAN_ENABLE_PWR_47_o_AND_411_o<0>_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/LEN_FIELD_1392 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/VLAN_ENABLE_HELD_1313 ),
    .O(N156)
  );
  LUT6 #(
    .INIT ( 64'h4000000000000000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/VLAN_ENABLE_PWR_47_o_AND_411_o<0>  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [3]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_FIELD_LT_CHECK_DISABLE_AND_371_o1 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [0]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [7]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/FIELD_CONTROL [0]),
    .I5(N156),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/VLAN_ENABLE_PWR_47_o_AND_411_o )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFF75FFBA ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/_n0139_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MAX_FRAME_LENGTH_HELD [2]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MAX_FRAME_ENABLE_HELD_1309 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/VLAN_FRAME_1354 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/JUMBO_FRAMES_HELD_1314 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [2]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/PREAMBLE_1395 ),
    .O(N158)
  );
  LUT6 #(
    .INIT ( 64'h8040080420100201 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/_n0165_inv11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MAX_FRAME_LENGTH_HELD [14]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MAX_FRAME_LENGTH_HELD [1]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MAX_FRAME_LENGTH_HELD [13]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [14]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [13]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [1]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/_n0165_inv11_1731 )
  );
  LUT6 #(
    .INIT ( 64'h8040201008040201 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/_n0165_inv12  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MAX_FRAME_LENGTH_HELD [8]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MAX_FRAME_LENGTH_HELD [9]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MAX_FRAME_LENGTH_HELD [0]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [8]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [9]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [0]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/_n0165_inv12_1732 )
  );
  LUT6 #(
    .INIT ( 64'h8040201008040201 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/_n0165_inv13  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MAX_FRAME_LENGTH_HELD [11]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MAX_FRAME_LENGTH_HELD [12]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MAX_FRAME_LENGTH_HELD [5]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [11]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [12]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [5]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/_n0165_inv13_1733 )
  );
  LUT6 #(
    .INIT ( 64'h8008400420021001 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/_n0165_inv14  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MAX_FRAME_LENGTH_HELD [6]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MAX_FRAME_LENGTH_HELD [7]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MAX_FRAME_LENGTH_HELD [10]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [10]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [6]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [7]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/_n0165_inv14_1734 )
  );
  LUT6 #(
    .INIT ( 64'h00B000B0BBBB00B0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/FRAME_LEN_ERR_END_OF_DATA_OR_241_o1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/EXCEEDED_MIN_LEN_1577 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/MIN_LENGTH_MATCH_1578 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/CONTROL_FRAME_281 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/PAUSE_LT_CHECK_HELD_1310 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/PADDED_FRAME_1359 ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/LT_CHECK_HELD_1311 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/FRAME_LEN_ERR_END_OF_DATA_OR_241_o1_1735 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/FRAME_LEN_ERR_END_OF_DATA_OR_241_o2  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/PADDED_FRAME_1359 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/TYPE_PACKET_1355 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/LT_CHECK_HELD_1311 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_MATCH_1358 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/FRAME_LEN_ERR_END_OF_DATA_OR_241_o2_1736 )
  );
  LUT6 #(
    .INIT ( 64'hFFA8FFA8FFFFFFA8 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/FRAME_LEN_ERR_END_OF_DATA_OR_241_o3  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/END_DATA_1397 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/FRAME_LEN_ERR_END_OF_DATA_OR_241_o2_1736 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/FRAME_LEN_ERR_END_OF_DATA_OR_241_o1_1735 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/FRAME_LEN_ERR_1576 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/CRC_FIELD_1390 ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/EXCEEDED_MIN_LEN_1577 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/FRAME_LEN_ERR_END_OF_DATA_OR_241_o )
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/GND_46_o_FRAME_COUNTER[7]_equal_1_o<7>_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [4]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [3]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [2]),
    .O(N160)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000008 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/GND_46_o_FRAME_COUNTER[7]_equal_1_o<7>  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [5]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [1]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [7]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [6]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [0]),
    .I5(N160),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/GND_46_o_FRAME_COUNTER[7]_equal_1_o )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/Mmux_TX_ER_REG1_GND_39_o_MUX_561_o1_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PRE_COUNT [2]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PRE_COUNT [1]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PRE_COUNT [0]),
    .O(N162)
  );
  LUT6 #(
    .INIT ( 64'h5055404440444044 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/Mmux_TX_ER_REG1_GND_39_o_MUX_561_o1  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_TX_UNDERRUN_OUT ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/TX_565 ),
    .I3(N162),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/COF_562 ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MAX_PKT_LEN_REACHED_552 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/TX_ER_REG1_GND_39_o_MUX_561_o )
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/force_burst2  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/force_burst2_glue_set_1739 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/force_burst2_370 )
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/force_assert  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/force_assert_glue_set_1740 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/force_assert_372 )
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/force_burst1  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/force_burst1_glue_set_1741 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/force_burst1_371 )
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/early_deassert  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/early_deassert_glue_set_1742 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/early_deassert_373 )
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/early_underrun  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/early_underrun_glue_set_1743 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/early_underrun_374 )
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data_valid  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data_valid_glue_set_1744 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data_valid_352 )
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/ignore_packet  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/ignore_packet_glue_set_1745 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/ignore_packet_375 )
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tlast_reg  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tlast_reg_glue_set ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tlast_reg_392 )
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_underrun  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_underrun_glue_set ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_underrun_351 )
  );
  FDS   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_MAX_2  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_MAX_2_glue_rst_1748 ),
    .S(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_MAX_2_679 )
  );
  FDS   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_MAX_3  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_MAX_3_glue_rst_1749 ),
    .S(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_MAX_3_680 )
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_MAX_4  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_MAX_4_glue_set_1750 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_MAX_4_681 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_MAX_4_glue_set  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH [4]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n07892 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_MAX_4_glue_set_1750 )
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_13  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_13_glue_set_1751 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1 [13])
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_12  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_12_glue_set_1752 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1 [12])
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_11  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_11_glue_set_1753 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1 [11])
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_10  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_10_glue_set_1754 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1 [10])
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_9  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_9_glue_set_1755 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1 [9])
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_8  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_8_glue_set_1756 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1 [8])
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_7  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_7_glue_set_1757 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1 [7])
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_6  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_6_glue_set_1758 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1 [6])
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_5  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_5_glue_set_1759 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1 [5])
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_4  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_4_glue_set_1760 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1 [4])
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_3  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_3_glue_set_1761 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1 [3])
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_2  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_2_glue_set_1762 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1 [2])
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_1  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_1_glue_set_1763 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1 [1])
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_0  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_0_glue_set_1764 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1 [0])
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/PAUSE_VECTOR_0  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/PAUSE_VECTOR_0_glue_set_1765 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/PAUSE_VECTOR_0 )
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_REQ_INT  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_REQ_INT_glue_set_1766 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_REQ_INT_916 )
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/BAD_OPCODE_INT  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/BAD_OPCODE_INT_glue_set_1767 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/BAD_OPCODE_INT_915 )
  );
  FDS   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT_0  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT_0_glue_rst_1768 ),
    .S(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [0])
  );
  FDS   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT_4  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT_4_glue_rst_1769 ),
    .S(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [4])
  );
  FDS   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT_1  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT_1_glue_rst_1770 ),
    .S(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [1])
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_REQ_INT  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_REQ_INT_glue_set_1771 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_REQ_INT_953 )
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/END_OF_TX_HELD  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/END_OF_TX_HELD_glue_set_1773 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/END_OF_TX_HELD_955 )
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_STATUS_INT  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_STATUS_INT_glue_set_1774 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_STATUS_INT_833 )
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/pause_match  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/pause_match_glue_set_1775 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/pause_match_1168 )
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/special_pause_match  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/special_pause_match_glue_set_1776 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/special_pause_match_1167 )
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/broadcast_match  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/broadcast_match_glue_set_1777 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/broadcast_match_1169 )
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/rxstatsaddressmatch  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/rxstatsaddressmatch_glue_set_1778 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/rxstatsaddressmatch )
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/address_match  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/address_match_glue_set_1779 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/address_match_1166 )
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/VALIDATE_REQUIRED  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/VALIDATE_REQUIRED_glue_set_1780 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/VALIDATE_REQUIRED_1302 )
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA_VALID_EARLY_INT  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA_VALID_EARLY_INT_glue_set_1781 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA_VALID_EARLY_INT_1303 )
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/EXT_FIELD  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/EXT_FIELD_glue_set_1782 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/EXT_FIELD_1389 )
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/PREAMBLE  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/PREAMBLE_glue_set_1783 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/PREAMBLE_1395 )
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/MAX_LENGTH_ERR  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/MAX_LENGTH_ERR_glue_set_1784 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/MAX_LENGTH_ERR_1572 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<13>_rt  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [13]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<13>_rt_1785 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<12>_rt  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [12]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<12>_rt_1786 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<11>_rt  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [11]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<11>_rt_1787 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<10>_rt  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [10]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<10>_rt_1788 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<9>_rt  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [9]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<9>_rt_1789 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<8>_rt  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [8]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<8>_rt_1790 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<7>_rt  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [7]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<7>_rt_1791 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<6>_rt  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [6]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<6>_rt_1792 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<5>_rt  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [5]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<5>_rt_1793 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<4>_rt  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [4]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<4>_rt_1794 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<3>_rt  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [3]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<3>_rt_1795 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<2>_rt  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [2]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<2>_rt_1796 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<1>_rt  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [1]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_cy<1>_rt_1797 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<13>_rt  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [13]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<13>_rt_1798 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<12>_rt  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [12]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<12>_rt_1799 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<11>_rt  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [11]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<11>_rt_1800 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<10>_rt  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [10]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<10>_rt_1801 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<9>_rt  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [9]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<9>_rt_1802 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<8>_rt  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [8]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<8>_rt_1803 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<7>_rt  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [7]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<7>_rt_1804 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<6>_rt  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [6]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<6>_rt_1805 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<5>_rt  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [5]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<5>_rt_1806 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<4>_rt  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [4]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<4>_rt_1807 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<3>_rt  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [3]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<3>_rt_1808 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<2>_rt  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [2]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<2>_rt_1809 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<1>_rt  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [1]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_cy<1>_rt_1810 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<9>_rt  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER<14:0> [9]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<9>_rt_1811 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<8>_rt  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER<14:0> [8]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<8>_rt_1812 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<7>_rt  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER<14:0> [7]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<7>_rt_1813 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<6>_rt  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER<14:0> [6]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<6>_rt_1814 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<5>_rt  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER<14:0> [5]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<5>_rt_1815 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<4>_rt  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER<14:0> [4]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<4>_rt_1816 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<3>_rt  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER<14:0> [3]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<3>_rt_1817 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<2>_rt  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER<14:0> [2]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<2>_rt_1818 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<1>_rt  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER<14:0> [1]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_cy<1>_rt_1819 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_xor<14>_rt  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [14]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_xor<14>_rt_1820 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_xor<14>_rt  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [14]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_xor<14>_rt_1821 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_xor<10>_rt  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER<14:0> [10]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_xor<10>_rt_1822 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CFL_rstpot  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CFL_563 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CFL_GND_36_o_MUX_352_o ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n0921_inv_488 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CFL_rstpot_1838 )
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/two_byte_tx  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/two_byte_tx_rstpot_1844 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/two_byte_tx_376 )
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/COUNT_SET  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/COUNT_SET_rstpot_1845 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/COUNT_SET_832 )
  );
  FDS   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/promiscuous_mode_sample  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/promiscuous_mode_sample_rstpot_1846 ),
    .S(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/promiscuous_mode_sample_1170 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MATCH_FRAME_INT_rstpot  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/END_FCS_1396 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MATCH_FRAME_INT_1304 ),
    .I2(N0),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MATCH_FRAME_INT_rstpot_1847 )
  );
  FDR   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MATCH_FRAME_INT  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MATCH_FRAME_INT_rstpot_1847 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MATCH_FRAME_INT_1304 )
  );
  FDS   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/TYPE_PACKET  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/TYPE_PACKET_rstpot_1848 ),
    .S(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/TYPE_PACKET_1355 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd1  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd1_rstpot_1852 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd1_387 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/no_burst  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/no_burst_rstpot_1853 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/no_burst_394 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/update_pause_ad_sync_reg  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/update_pause_ad_sync_reg_rstpot_1854 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/update_pause_ad_sync_reg_1171 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/rx_filtered_data_valid  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/rx_filtered_data_valid_rstpot_1855 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/rx_filtered_data_valid_306 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_state_FSM_FFd1  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_state_FSM_FFd1_rstpot_1856 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_state_FSM_FFd1_1210 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_mac_tvalid  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_mac_tvalid_rstpot ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_mac_tvalid_261 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_mac_tlast  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_mac_tlast_rstpot ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_mac_tlast_262 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/force_end  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/force_end_rstpot_1859 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/force_end_393 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT_2  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT_2_rstpot ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [2])
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/MUX_CONTROL  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/MUX_CONTROL_rstpot_1861 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/MUX_CONTROL_954 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR_2  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR_2_rstpot1_1862 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR [2])
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_ENABLE_REG  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_ENABLE_REG_rstpot1_1863 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_ENABLE_REG_828 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_ENABLE_REG  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_ENABLE_REG_rstpot1_1864 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_ENABLE_REG_834 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA_VALID_FINAL  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA_VALID_FINAL_rstpot1_1865 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA_VALID_FINAL_285 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/END_DATA  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/END_DATA_rstpot1_1866 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/END_DATA_1397 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/SRC_ADDRESS_FIELD  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/SRC_ADDRESS_FIELD_rstpot1_1867 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/SRC_ADDRESS_FIELD_1393 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/END_FCS  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/END_FCS_rstpot1_1868 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/END_FCS_1396 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_MATCH  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_MATCH_rstpot1_1869 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_MATCH_1358 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/CONTROL_FRAME_INT  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/CONTROL_FRAME_INT_rstpot1_1870 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/CONTROL_FRAME_INT_1539 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/ADD_CONTROL_ENABLE  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/ADD_CONTROL_ENABLE_rstpot1_1871 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/ADD_CONTROL_ENABLE_1541 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/MULTICAST_MATCH  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/MULTICAST_MATCH_rstpot1_1872 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/MULTICAST_MATCH_1540 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_WITH_FCS  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_WITH_FCS_rstpot1_1873 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_WITH_FCS_1559 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/PADDED_FRAME  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/PADDED_FRAME_rstpot1_1874 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/PADDED_FRAME_1359 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/LENGTH_TYPE_ERR  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/LENGTH_TYPE_ERR_rstpot1_1875 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/LENGTH_TYPE_ERR_1341 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/STATISTICS_VALID  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/STATISTICS_VALID_rstpot1_1876 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/STATISTICS_VALID_1344 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/BAD_FRAME  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/BAD_FRAME_rstpot1_1877 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/BAD_FRAME_1339 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/GOOD_FRAME  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/GOOD_FRAME_rstpot1_1878 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/GOOD_FRAME_1340 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/CRC_ENGINE_ERR  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/CRC_ENGINE_ERR_rstpot1_1879 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/CRC_ENGINE_ERR_1575 )
  );
  LUT6 #(
    .INIT ( 64'hAAA2FFE2AAA2FFF3 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/RX_DV_REG6_RX_ERR_REG6_OR_193_o_SW0_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/END_FRAME_1849 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_DV_REG7_1335 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_DV_REG6_1336 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_ERR_REG6_1333 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/END_EXT_1443 ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_ERR_REG7_1332 ),
    .O(N164)
  );
  LUT6 #(
    .INIT ( 64'hFFFF333354551011 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/RX_DV_REG6_RX_ERR_REG6_OR_193_o_SW0_SW1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/END_EXT_1443 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_DV_REG7_1335 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_ERR_REG6_1333 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_ERR_REG7_1332 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_DV_REG6_1336 ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/END_FRAME_1849 ),
    .O(N165)
  );
  LUT3 #(
    .INIT ( 8'h0E ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/MUX_CONTROL_rstpot  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/MUX_CONTROL_glue_ce_1772 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0141_945 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/MUX_CONTROL_rstpot_1861 )
  );
  LUT6 #(
    .INIT ( 64'h080800000A000000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/END_OF_TX1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/REG_DATA_VALID_527 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_AVAIL_CONTROL_957 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/COF_SEEN_551 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_AVAIL_IN_REG_967 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/COF_562 ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/MUX_CONTROL_954 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_TX_END_OF_TX )
  );
  LUT3 #(
    .INIT ( 8'h8A ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_MAX_2_glue_rst  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH [2]),
    .I1(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n07892 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_MAX_2_glue_rst_1748 )
  );
  LUT3 #(
    .INIT ( 8'h8A ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_MAX_3_glue_rst  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_LENGTH [3]),
    .I1(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n07892 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_MAX_3_glue_rst_1749 )
  );
  LUT3 #(
    .INIT ( 8'h81 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/RX_DV_REG6_RX_ERR_REG6_OR_193_o_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG5 [3]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG5 [2]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG5 [1]),
    .O(N169)
  );
  LUT6 #(
    .INIT ( 64'h00FF00FF04BF00FF ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/RX_DV_REG6_RX_ERR_REG6_OR_193_o  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG5 [7]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_ERR_REG5 ),
    .I2(N165),
    .I3(N164),
    .I4(N169),
    .I5(N138),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/RX_DV_REG6_RX_ERR_REG6_OR_193_o_1431 )
  );
  LUT4 #(
    .INIT ( 16'hDFFF ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/PRE_FALSE_CARR_FLAG2_SW1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG5 [3]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG5 [7]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG5 [2]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG5 [1]),
    .O(N171)
  );
  LUT6 #(
    .INIT ( 64'h4044404440444444 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/RX_ERR_REG5_END_EXT_AND_333_o1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/END_EXT_1443 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/EXT_FIELD_1389 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_DV_REG5 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_ERR_REG5 ),
    .I4(N171),
    .I5(N138),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/RX_ERR_REG5_END_EXT_AND_333_o )
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_REG_TX_CONTROL_GND_36_o_MUX_507_o113_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/LEN [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_VLAN_EN_586 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_ENABLE_569 ),
    .O(N173)
  );
  LUT6 #(
    .INIT ( 64'h0001000000000000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n078921  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/LEN [2]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/LEN [11]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/LEN [3]),
    .I3(N173),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_REG_TX_CONTROL_GND_36_o_MUX_507_o111_1607 ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_REG_TX_CONTROL_GND_36_o_MUX_507_o112_1608 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n07892 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/_n0165_inv15_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/JUMBO_FRAMES_HELD_1314 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/PREAMBLE_1395 ),
    .O(N178)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFAAAAABAA ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/_n0165_inv15_SW1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/JUMBO_FRAMES_HELD_1314 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [2]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [3]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [4]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/EXT_FIELD_1389 ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/PREAMBLE_1395 ),
    .O(N179)
  );
  LUT6 #(
    .INIT ( 64'hFFFF7FFF80000000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/_n0165_inv2  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/_n0165_inv13_1733 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/_n0165_inv11_1731 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/_n0165_inv14_1734 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/_n0165_inv12_1732 ),
    .I4(N179),
    .I5(N178),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/_n0165_inv )
  );
  LUT6 #(
    .INIT ( 64'hFFFF5050FFFFDC50 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IDL_rstpot  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CDS_567 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CLIENT_FRAME_DONE_555 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IDL_568 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIFG_556 ),
    .I4(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIFG_TX_FAIL_DELAY_AND_167_o1_428 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IDL_rstpot_1843 )
  );
  LUT4 #(
    .INIT ( 16'h00CA ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT_4_glue_rst  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [4]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Result [4]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0187_inv_930 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0147 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT_4_glue_rst_1769 )
  );
  LUT4 #(
    .INIT ( 16'hF0E4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/SCSH_rstpot  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/TX_OK_557 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/SCSH_560 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIFG_GND_36_o_MUX_380_o ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n0977_inv_486 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/SCSH_rstpot_1834 )
  );
  LUT4 #(
    .INIT ( 16'h00FE ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_mac_tlast_rstpot1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_BAD_FRAME_INT_322 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_GOOD_FRAME_INT_323 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_state_FSM_FFd1_1210 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_state[1]_next_rx_state[1]_OR_9_o_0 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_mac_tlast_rstpot )
  );
  LUT5 #(
    .INIT ( 32'hFF03FFAA ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/MAX_LENGTH_ERR_glue_set  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/MAX_LENGTH_ERR_1572 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/JUMBO_FRAMES_HELD_1314 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/PREAMBLE_1395 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/_n0139_1571 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/_n0165_inv ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/MAX_LENGTH_ERR_glue_set_1784 )
  );
  LUT6 #(
    .INIT ( 64'h6FF6FFFFFFFF6FF6 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/RXD_REG[7]_INV_456_o3_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [24]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [7]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [31]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [0]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [30]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [1]),
    .O(N181)
  );
  LUT6 #(
    .INIT ( 64'h0000C3AA0000AAAA ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_IFG_COUNT[7]_GND_36_o_mux_33_OUT21  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_DELAY_HELD [1]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT [1]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT [0]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIFG_556 ),
    .I4(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIFG_TX_FAIL_DELAY_AND_167_o1_428 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT[7]_GND_36_o_mux_33_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'h0000CA3A0000AAAA ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_IFG_COUNT[7]_GND_36_o_mux_33_OUT51  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DEL_MASKED [4]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT [4]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIFG_556 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_IFG_COUNT[7]_GND_36_o_mux_33_OUT51_427 ),
    .I4(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIFG_TX_FAIL_DELAY_AND_167_o1_428 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT[7]_GND_36_o_mux_33_OUT<4> )
  );
  LUT5 #(
    .INIT ( 32'hFF3AFFAA ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_IFG_COUNT[7]_GND_36_o_mux_33_OUT11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_DELAY_HELD [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT [0]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIFG_556 ),
    .I3(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIFG_TX_FAIL_DELAY_AND_167_o1_428 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT[7]_GND_36_o_mux_33_OUT<0> )
  );
  LUT5 #(
    .INIT ( 32'hFFFF6FF6 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/_n0165_inv15_SW2  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MAX_FRAME_LENGTH_HELD [3]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [3]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/MAX_FRAME_LENGTH_HELD [4]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [4]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/EXT_FIELD_1389 ),
    .O(N183)
  );
  LUT6 #(
    .INIT ( 64'h0000000040000000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/_n0139  (
    .I0(N183),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/_n0165_inv13_1733 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/_n0165_inv14_1734 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/_n0165_inv11_1731 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/_n0165_inv12_1732 ),
    .I5(N158),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/_n0139_1571 )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n1164_inv1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FCS_561 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIFG_556 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/REG_SCSH_529 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0 [14]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STOP_MAX_PKT_528 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n1164_inv )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/_n0369_inv111  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/SFD_FLAG_1308 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/PREAMBLE_1395 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/LEN_FIELD_1392 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/FIELD_CONTROL [1]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/_n0369_inv11 )
  );
  LUT4 #(
    .INIT ( 16'hBBB0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/rxstatsaddressmatch_glue_set  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/rx_data_valid_srl16_reg1_1178 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/rx_data_valid_srl16 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/rx_filtered_data_valid_306 ),
    .I3(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/rxstatsaddressmatch ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/rxstatsaddressmatch_glue_set_1778 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/END_DATA_rstpot1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_DV_REG3_1337 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_DV_REG2 ),
    .I2(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/END_DATA_rstpot1_1866 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/END_FCS_rstpot1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_DV_REG6_1336 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_DV_REG5 ),
    .I2(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/END_FCS_rstpot1_1868 )
  );
  LUT4 #(
    .INIT ( 16'h8421 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/RXD_REG[7]_INV_456_o5_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [29]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [28]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [2]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [3]),
    .O(N185)
  );
  LUT6 #(
    .INIT ( 64'hFFFF0000FFFE0000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIFG_TX_FAIL_DELAY_AND_167_o1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT [7]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT [6]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT [5]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT [4]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIFG_556 ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_IFG_COUNT[7]_GND_36_o_mux_33_OUT51_427 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIFG_TX_FAIL_DELAY_AND_167_o )
  );
  LUT6 #(
    .INIT ( 64'hFFFFF0F0FFFF10F0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mcount_DATA_COUNT_val1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/ACK_INT_966 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/STATE_COUNT_FSM_FFd1_968 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_REQ_INT_953 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/MUX_CONTROL_954 ),
    .I4(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n01471_1641 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mcount_DATA_COUNT_val )
  );
  LUT4 #(
    .INIT ( 16'hFEFC ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n1177_inv1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIFG_556 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PRE_566 ),
    .I2(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIFG_TX_FAIL_DELAY_AND_167_o1_428 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n1177_inv )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MAX_PKT_LEN_REACHED_rstpot_lut  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_JUMBO_EN_587 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIFG_556 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MAX_PKT_LEN_REACHED_rstpot_lut_1890 )
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MAX_PKT_LEN_REACHED_rstpot_cy  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT[14]_FRAME_MAX[14]_equal_51_o ),
    .DI(NlwRenamedSig_OI_N1),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MAX_PKT_LEN_REACHED_rstpot_lut_1890 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT[14]_FRAME_MAX[14]_equal_51_o_l1 )
  );
  MUXCY   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MAX_PKT_LEN_REACHED_rstpot_cy1  (
    .CI(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT[14]_FRAME_MAX[14]_equal_51_o_l1 ),
    .DI(N0),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MAX_PKT_LEN_REACHED_rstpot_lut1_1892 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MAX_PKT_LEN_REACHED_rstpot )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIFG_TX_FAIL_DELAY_AND_167_o11_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT [7]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT [6]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT [5]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT [4]),
    .O(N189)
  );
  LUT6 #(
    .INIT ( 64'hEFEEEEEEFFFFFFFF ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MAX_PKT_LEN_REACHED_rstpot_lut1  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_JUMBO_EN_587 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_IFG_COUNT[7]_GND_36_o_mux_33_OUT51_427 ),
    .I3(N189),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIFG_556 ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MAX_PKT_LEN_REACHED_552 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MAX_PKT_LEN_REACHED_rstpot_lut1_1892 )
  );
  FD #(
    .INIT ( 1'b1 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R3_PWR_20_o_MUX_31_o ),
    .Q(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 )
  );
  FD #(
    .INIT ( 1'b1 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R3  (
    .C(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R2_271 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R3_273 )
  );
  FD #(
    .INIT ( 1'b1 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R3_PWR_20_o_MUX_31_o ),
    .Q(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 )
  );
  FD #(
    .INIT ( 1'b1 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R3  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R2_275 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R3_277 )
  );
  FDE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DST_ADDR_MULTI_MATCH  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n1071_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DST_ADDR_MULTI_MATCH_GND_36_o_MUX_502_o ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DST_ADDR_MULTI_MATCH_533 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/REG_STATUS_VALID  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/REG_STATUS_VALID_GND_36_o_MUX_476_o ),
    .Q(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/REG_STATUS_VALID )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/REG_SCSH  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/REG_SCSH_GND_36_o_MUX_511_o ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/REG_SCSH_529 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PAD_PIPE  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PAD_PIPE_GND_36_o_MUX_467_o ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PAD_PIPE_544 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/REG_PREAMBLE  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/REG_PREAMBLE_GND_36_o_MUX_411_o ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/REG_PREAMBLE_549 )
  );
  FDE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_CRC_MODE  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n0836_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_CRC_MODE_GND_36_o_MUX_309_o ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_CRC_MODE_526 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/REG_DATA_VALID  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_TX_DA_GND_36_o_MUX_348_o ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/REG_DATA_VALID_527 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/REG_TX_VLAN  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/REG_TX_VLAN_GND_36_o_MUX_509_o ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/REG_TX_VLAN_530 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/REG_TX_CONTROL  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/REG_TX_CONTROL_GND_36_o_MUX_507_o ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/REG_TX_CONTROL_531 )
  );
  FDE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DST_ADDR_BYTE4_MATCH  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n1071_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DST_ADDR_BYTE4_MATCH_GND_36_o_MUX_500_o_600 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DST_ADDR_BYTE4_MATCH_534 )
  );
  FDE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DST_ADDR_BYTE3_MATCH  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n1071_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DST_ADDR_BYTE3_MATCH_GND_36_o_MUX_498_o ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DST_ADDR_BYTE3_MATCH_535 )
  );
  FDE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DST_ADDR_BYTE2_MATCH  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n1071_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DST_ADDR_BYTE2_MATCH_GND_36_o_MUX_496_o ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DST_ADDR_BYTE2_MATCH_536 )
  );
  FDE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DST_ADDR_BYTE1_MATCH  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n1071_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DST_ADDR_BYTE1_MATCH_GND_36_o_MUX_494_o ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DST_ADDR_BYTE1_MATCH_537 )
  );
  FDE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DST_ADDR_BYTE0_MATCH  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n1071_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DST_ADDR_BYTE0_MATCH_GND_36_o_MUX_492_o ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DST_ADDR_BYTE0_MATCH_538 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_TX_STATUS_VALID  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_TX_STATUS_VALID_GND_36_o_MUX_471_o ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_TX_STATUS_VALID_542 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CR178124_FIX  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CR178124_FIX_GND_36_o_MUX_469_o ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CR178124_FIX_543 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_COMPUTE  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_COMPUTE_GND_36_o_MUX_451_o ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_COMPUTE_545 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_GND_36_o_MUX_417_o ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_546 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PAD  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PAD_GND_36_o_MUX_415_o ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PAD_547 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/TRANSMIT  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/TRANSMIT_GND_36_o_MUX_413_o ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/TRANSMIT_548 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_GND_36_o_MUX_409_o ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_550 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/REG_PREAMBLE_DONE  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/REG_PREAMBLE_DONE_GND_36_o_MUX_386_o ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/REG_PREAMBLE_DONE_554 )
  );
  FDE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_ENABLE  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n0836_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_ENABLE_GND_36_o_MUX_321_o ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_MAX_FRAME_ENABLE_569 )
  );
  FDE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DEL_EN  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n0836_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DEL_EN_GND_36_o_MUX_317_o ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DEL_EN_585 )
  );
  FDE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_VLAN_EN  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n0836_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_VLAN_EN_GND_36_o_MUX_313_o ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_VLAN_EN_586 )
  );
  FDE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_JUMBO_EN  (
    .C(tx_axi_clk),
    .CE(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n0836_inv ),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_JUMBO_EN_GND_36_o_MUX_311_o ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_JUMBO_EN_587 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/GMII_TX_ER_TO_PHY  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/GMII_TX_ER_TO_PHY_GND_39_o_MUX_577_o ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/GMII_TX_ER_TO_PHY_268 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/GMII_TX_EN_TO_PHY  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/GMII_TX_EN_TO_PHY_GND_39_o_MUX_575_o ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/GMII_TX_EN_TO_PHY_267 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/TX_EN_REG1  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/TX_EN_REG1_GND_39_o_MUX_559_o ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/TX_EN_REG1_1580 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/TX_ER_REG1  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/TX_ER_REG1_GND_39_o_MUX_561_o ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/TX_ER_REG1_1579 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STOP_MAX_PKT  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STOP_MAX_PKT_rstpot_1823 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STOP_MAX_PKT_528 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/COF_SEEN  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/COF_SEEN_rstpot_1824 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/COF_SEEN_551 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIN_PKT_LEN_REACHED  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIN_PKT_LEN_REACHED_rstpot_1825 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIN_PKT_LEN_REACHED_553 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DST_ADDR_BYTE5_MATCH  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DST_ADDR_BYTE5_MATCH_rstpot_1826 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DST_ADDR_BYTE5_MATCH_532 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_TX_SUCCESS  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_TX_SUCCESS_rstpot_1827 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_TX_SUCCESS_539 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_TX_UNDERRUN2  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_TX_UNDERRUN2_rstpot_1828 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_TX_UNDERRUN2_540 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MAX_PKT_LEN_REACHED  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MAX_PKT_LEN_REACHED_rstpot ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MAX_PKT_LEN_REACHED_552 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CLIENT_FRAME_DONE  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CLIENT_FRAME_DONE_rstpot_1830 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CLIENT_FRAME_DONE_555 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIFG  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIFG_rstpot_1831 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIFG_556 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/TX_OK  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/TX_OK_rstpot_1832 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/TX_OK_557 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_GOOD  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_GOOD_rstpot_1833 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_GOOD_559 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/SCSH  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/SCSH_rstpot_1834 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/SCSH_560 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_BAD  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_BAD_rstpot_1835 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_BAD_558 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FCS  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FCS_rstpot_1836 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FCS_561 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/COF  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/COF_rstpot_1837 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/COF_562 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CFL  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CFL_rstpot_1838 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CFL_563 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_TX_DA  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_TX_DA_rstpot_1839 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_TX_DA_564 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/TX  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/TX_rstpot_1840 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/TX_565 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PRE  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PRE_rstpot_1841 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PRE_566 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CDS  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CDS_rstpot_1842 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CDS_567 )
  );
  FD   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IDL  (
    .C(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IDL_rstpot_1843 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IDL_568 )
  );
  LUT5 #(
    .INIT ( 32'hFBEA5140 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT_2_rstpot1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT_cst1 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [14]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [2]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Result [2]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_CRC_MODE_526 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT_2_rstpot )
  );
  LUT4 #(
    .INIT ( 16'h5510 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FCS_rstpot  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/SCSH_560 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FCS_561 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_FCS_GND_36_o_MUX_360_o11 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FCS_rstpot_1836 )
  );
  LUT6 #(
    .INIT ( 64'h5510101010101010 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PRE_rstpot  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/TX_565 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PRE_566 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IDL_568 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_TX_DATA_VALID_OUT ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/INT_ENABLE_417 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PRE_rstpot_1841 )
  );
  LUT6 #(
    .INIT ( 64'h5510101010101010 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CDS_rstpot  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PRE_566 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CDS_567 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IDL_568 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_TX_DATA_VALID_OUT ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/INT_ENABLE_417 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CDS_rstpot_1842 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR_2_rstpot1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DST_ADDR_MULTI_MATCH_533 ),
    .I1(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_TX_BROADCAST ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STATUS_VECTOR_2_rstpot1_1862 )
  );
  LUT6 #(
    .INIT ( 64'h4444444444444440 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/BAD_FRAME_rstpot1  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/GOOD_FRAME_rstpot ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/MAX_LENGTH_ERR_1572 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/FRAME_LEN_ERR_1576 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/FCS_ERR_1574 ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/CRC_ENGINE_ERR_1575 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/BAD_FRAME_rstpot1_1877 )
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/GOOD_FRAME_rstpot1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/BAD_FRAME_rstpot ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/END_FRAME_1849 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/INHIBIT_FRAME_1573 ),
    .I3(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/GOOD_FRAME_rstpot1_1878 )
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/force_burst1_glue_set  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/force_burst1_371 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/ACK_OUT_317 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/early_deassert_two_byte_tx_OR_36_o ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/force_burst1_glue_set_1741 )
  );
  LUT3 #(
    .INIT ( 8'h06 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT_0_glue_rst  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0187_inv_930 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0147 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT_0_glue_rst_1768 )
  );
  LUT4 #(
    .INIT ( 16'h006A ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT_1_glue_rst  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [1]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [0]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0187_inv_930 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/_n0147 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT_1_glue_rst_1770 )
  );
  LUT4 #(
    .INIT ( 16'hFE02 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DST_ADDR_BYTE5_MATCH_rstpot  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DST_ADDR_BYTE5_MATCH_532 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[5] ),
    .I2(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DST_ADDR_BYTE4_MATCH_GND_36_o_MUX_500_o_600 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/DST_ADDR_BYTE5_MATCH_rstpot_1826 )
  );
  LUT4 #(
    .INIT ( 16'h03AA ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_BAD_rstpot  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_BAD_558 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIFG_556 ),
    .I2(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n0961_inv_487 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_BAD_rstpot_1835 )
  );
  LUT4 #(
    .INIT ( 16'h00CA ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/MULTICAST_MATCH_rstpot1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/MULTICAST_MATCH_1540 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [0]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/_n0477_inv1 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Reset_OR_DriverANDClockEnable4_1501 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/MULTICAST_MATCH_rstpot1_1872 )
  );
  LUT6 #(
    .INIT ( 64'hFF02020202020202 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_REQ_INT_glue_set  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_REQ_INT_916 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/BAD_FRAME_INT_283 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GOOD_FRAME_INT_284 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n00811 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/DATA_COUNT [0]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/GND_27_o_DATA[7]_equal_8_o ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_REQ_INT_glue_set_1766 )
  );
  LUT6 #(
    .INIT ( 64'h02020202FF020202 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/BAD_OPCODE_INT_glue_set  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/BAD_OPCODE_INT_915 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/BAD_FRAME_INT_283 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GOOD_FRAME_INT_284 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/_n00811 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/DATA_COUNT [0]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/GND_27_o_DATA[7]_equal_8_o ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/BAD_OPCODE_INT_glue_set_1767 )
  );
  LUT6 #(
    .INIT ( 64'h0C080F0A0008000A ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/CONTROL_FRAME_INT_rstpot1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/CONTROL_FRAME_INT_1539 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_FIELD_FIELD_COUNTER[1]_AND_376_o ),
    .I2(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/_n0369_inv11 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/GND_45_o_CONTROL_MATCH_AND_415_o ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/CONTROL_FRAME_INT_rstpot1_1870 )
  );
  LUT5 #(
    .INIT ( 32'hFFFF88A8 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/next_tx_state[3]_tx_state[3]_OR_22_o3_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/ACK_OUT_317 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/early_deassert_373 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd2_383 ),
    .I3(tx_axis_mac_tvalid),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd3_384 ),
    .O(N199)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_IFG_COUNT[7]_GND_36_o_mux_33_OUT8_SW1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT [6]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT [5]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT [4]),
    .O(N202)
  );
  LUT6 #(
    .INIT ( 64'h5151511540404000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_IFG_COUNT[7]_GND_36_o_mux_33_OUT8  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIFG_556 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT [7]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_IFG_COUNT[7]_GND_36_o_mux_33_OUT51_427 ),
    .I4(N202),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DEL_MASKED [7]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IFG_COUNT[7]_GND_36_o_mux_33_OUT<7> )
  );
  LUT6 #(
    .INIT ( 64'h4440400044444444 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_mac_tvalid_rstpot1  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_state_FSM_FFd2_1204 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/fsmfake0 [0]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_state_FSM_FFd1_1210 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_DATA_VALID_INT_321 ),
    .I5(N94),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_mac_tvalid_rstpot )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT[15]_GND_31_o_equal_8_o<15>3_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT [15]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT [14]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT [13]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT [12]),
    .O(N206)
  );
  LUT6 #(
    .INIT ( 64'hAA2AFF3FAA2AAA2A ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_STATUS_INT_glue_set  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_STATUS_INT_833 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT[15]_GND_31_o_equal_8_o<15>1_1675 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT[15]_GND_31_o_equal_8_o<15> ),
    .I3(N206),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/STATE_COUNT_FSM_FFd2_931 ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/COUNT_SET_REG_1100 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_STATUS_INT_glue_set_1774 )
  );
  LUT6 #(
    .INIT ( 64'hAAFACCFCAAAACCCC ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_13_glue_set  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0 [13]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1 [13]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0 [14]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STOP_MAX_PKT_528 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n1164_inv ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n07981 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_13_glue_set_1751 )
  );
  LUT6 #(
    .INIT ( 64'hAAFACCFCAAAACCCC ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_12_glue_set  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0 [12]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1 [12]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0 [14]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STOP_MAX_PKT_528 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n1164_inv ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n07981 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_12_glue_set_1752 )
  );
  LUT6 #(
    .INIT ( 64'hAAFACCFCAAAACCCC ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_11_glue_set  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0 [11]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1 [11]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0 [14]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STOP_MAX_PKT_528 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n1164_inv ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n07981 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_11_glue_set_1753 )
  );
  LUT6 #(
    .INIT ( 64'hAAFACCFCAAAACCCC ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_10_glue_set  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0 [10]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1 [10]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0 [14]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STOP_MAX_PKT_528 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n1164_inv ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n07981 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_10_glue_set_1754 )
  );
  LUT6 #(
    .INIT ( 64'hAAFACCFCAAAACCCC ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_9_glue_set  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0 [9]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1 [9]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0 [14]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STOP_MAX_PKT_528 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n1164_inv ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n07981 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_9_glue_set_1755 )
  );
  LUT6 #(
    .INIT ( 64'hAAFACCFCAAAACCCC ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_8_glue_set  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0 [8]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1 [8]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0 [14]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STOP_MAX_PKT_528 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n1164_inv ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n07981 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_8_glue_set_1756 )
  );
  LUT6 #(
    .INIT ( 64'hAAFACCFCAAAACCCC ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_7_glue_set  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0 [7]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1 [7]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0 [14]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STOP_MAX_PKT_528 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n1164_inv ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n07981 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_7_glue_set_1757 )
  );
  LUT6 #(
    .INIT ( 64'hAAFACCFCAAAACCCC ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_6_glue_set  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0 [6]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1 [6]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0 [14]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STOP_MAX_PKT_528 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n1164_inv ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n07981 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_6_glue_set_1758 )
  );
  LUT6 #(
    .INIT ( 64'hAAFACCFCAAAACCCC ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_5_glue_set  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0 [5]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1 [5]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0 [14]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STOP_MAX_PKT_528 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n1164_inv ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n07981 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_5_glue_set_1759 )
  );
  LUT6 #(
    .INIT ( 64'hAAFACCFCAAAACCCC ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_4_glue_set  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0 [4]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1 [4]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0 [14]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STOP_MAX_PKT_528 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n1164_inv ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n07981 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_4_glue_set_1760 )
  );
  LUT6 #(
    .INIT ( 64'hAAFACCFCAAAACCCC ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_3_glue_set  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0 [3]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1 [3]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0 [14]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STOP_MAX_PKT_528 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n1164_inv ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n07981 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_3_glue_set_1761 )
  );
  LUT6 #(
    .INIT ( 64'hAAFACCFCAAAACCCC ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_2_glue_set  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0 [2]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1 [2]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0 [14]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STOP_MAX_PKT_528 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n1164_inv ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n07981 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_2_glue_set_1762 )
  );
  LUT6 #(
    .INIT ( 64'hAAFACCFCAAAACCCC ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_1_glue_set  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0 [1]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1 [1]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0 [14]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STOP_MAX_PKT_528 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n1164_inv ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n07981 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_1_glue_set_1763 )
  );
  LUT6 #(
    .INIT ( 64'hAAFACCFCAAAACCCC ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_0_glue_set  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0 [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1 [0]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_0 [14]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STOP_MAX_PKT_528 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n1164_inv ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n07981 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/BYTE_COUNT_1_0_glue_set_1764 )
  );
  LUT5 #(
    .INIT ( 32'h45557555 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut<0>  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/GOOD_FRAME_IN_TX_REG_1093 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/sync_good_rx/data_sync2 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_REQ_TO_TX_837 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX [0]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut [0])
  );
  LUT5 #(
    .INIT ( 32'h45557555 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut<1>  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT [1]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/GOOD_FRAME_IN_TX_REG_1093 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/sync_good_rx/data_sync2 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_REQ_TO_TX_837 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX [1]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut [1])
  );
  LUT5 #(
    .INIT ( 32'hFFFFA2AA ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/STATE_COUNT_FSM_FFd2-In2  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_AVAIL_IN_REG_967 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/REG_DATA_VALID_527 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/COF_SEEN_551 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/COF_562 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/MUX_CONTROL_954 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/STATE_COUNT_FSM_FFd2-In2_1643 )
  );
  LUT4 #(
    .INIT ( 16'h5140 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_TX_DA_GND_36_o_MUX_348_o1  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/MUX_CONTROL_954 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_AVAIL_CONTROL_957 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_AVAIL_IN_REG_967 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_TX_DA_GND_36_o_MUX_348_o )
  );
  LUT5 #(
    .INIT ( 32'h45557555 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut<2>  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT [2]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/GOOD_FRAME_IN_TX_REG_1093 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/sync_good_rx/data_sync2 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_REQ_TO_TX_837 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX [2]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut [2])
  );
  LUT5 #(
    .INIT ( 32'h45557555 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut<3>  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT [3]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/GOOD_FRAME_IN_TX_REG_1093 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/sync_good_rx/data_sync2 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_REQ_TO_TX_837 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX [3]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut [3])
  );
  LUT5 #(
    .INIT ( 32'h45557555 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut<4>  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT [4]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/GOOD_FRAME_IN_TX_REG_1093 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/sync_good_rx/data_sync2 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_REQ_TO_TX_837 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX [4]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut [4])
  );
  LUT5 #(
    .INIT ( 32'h45557555 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut<5>  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT [5]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/GOOD_FRAME_IN_TX_REG_1093 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/sync_good_rx/data_sync2 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_REQ_TO_TX_837 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX [5]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut [5])
  );
  LUT5 #(
    .INIT ( 32'h45557555 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut<6>  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT [6]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/GOOD_FRAME_IN_TX_REG_1093 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/sync_good_rx/data_sync2 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_REQ_TO_TX_837 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX [6]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut [6])
  );
  LUT5 #(
    .INIT ( 32'h45557555 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut<7>  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT [7]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/GOOD_FRAME_IN_TX_REG_1093 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/sync_good_rx/data_sync2 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_REQ_TO_TX_837 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX [7]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut [7])
  );
  LUT5 #(
    .INIT ( 32'h20000000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_FIELD_LT_CHECK_DISABLE_AND_375_o1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LESS_THAN_256_1562 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/LT_CHECK_HELD_1311 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/LEN_FIELD_1392 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/FIELD_CONTROL [1]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/GND_45_o_RXD[7]_equal_9_o ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_FIELD_LT_CHECK_DISABLE_AND_375_o )
  );
  LUT6 #(
    .INIT ( 64'hF444044404440444 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mmux_VLAN_MATCH[1]_GND_45_o_MUX_812_o11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/END_FRAME_1849 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/VLAN_MATCH [1]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/FIELD_CONTROL [1]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/LEN_FIELD_1392 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/VLAN_MATCH [0]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/GND_45_o_RXD[7]_equal_9_o ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/VLAN_MATCH[1]_GND_45_o_MUX_812_o )
  );
  LUT6 #(
    .INIT ( 64'h0000002000003030 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mmux_CFL_GND_36_o_MUX_352_o11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_UNDERRUN_INT_829 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MAX_PKT_LEN_REACHED_552 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/TX_565 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/MUX_CONTROL_954 ),
    .I4(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_TX_DATA_VALID_OUT ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CFL_GND_36_o_MUX_352_o )
  );
  LUT5 #(
    .INIT ( 32'h11100100 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_MATCH_rstpot1  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/END_FRAME_1849 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/DAT_FIELD_1391 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_MATCH_1358 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER[10]_LENGTH_TYPE[10]_equal_8_o ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_MATCH_rstpot1_1869 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFDDDF ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/GND_45_o_PAUSEADDRESSMATCH_AND_398_o1_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [3]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [0]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/specialpauseaddressmatch_303 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/pauseaddressmatch_304 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [7]),
    .O(N212)
  );
  LUT6 #(
    .INIT ( 64'h0100010045440100 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/ADD_CONTROL_ENABLE_rstpot1  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/CONTROL_MATCH_1557 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/END_FRAME_1849 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/ADD_CONTROL_ENABLE_1541 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_FIELD_LT_CHECK_DISABLE_AND_371_o1 ),
    .I5(N212),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/ADD_CONTROL_ENABLE_rstpot1_1871 )
  );
  MUXF7   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_GOOD_rstpot  (
    .I0(N214),
    .I1(N215),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_CRC_MODE_526 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_GOOD_rstpot_1833 )
  );
  LUT5 #(
    .INIT ( 32'h40554040 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_GOOD_rstpot_F  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIN_PKT_LEN_REACHED_553 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CFL_563 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIFG_556 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_GOOD_559 ),
    .O(N214)
  );
  LUT6 #(
    .INIT ( 64'h0444555504440444 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_GOOD_rstpot_G  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n0961_inv11 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MAX_PKT_LEN_REACHED_552 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/COF_SEEN_551 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIFG_556 ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_GOOD_559 ),
    .O(N215)
  );
  MUXF7   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_TX_UNDERRUN2_rstpot  (
    .I0(N216),
    .I1(N217),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_TX_UNDERRUN_OUT ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_TX_UNDERRUN2_rstpot_1828 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_TX_UNDERRUN2_rstpot_F  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_TX_UNDERRUN2_540 ),
    .I1(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I2(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/REG_STATUS_VALID ),
    .O(N216)
  );
  LUT6 #(
    .INIT ( 64'h1111111111111110 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_TX_UNDERRUN2_rstpot_G  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I1(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/REG_STATUS_VALID ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/TX_565 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FCS_561 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PRE_566 ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_TX_UNDERRUN2_540 ),
    .O(N217)
  );
  LUT6 #(
    .INIT ( 64'h0415040404040404 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/TX_OK_rstpot  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/TX_OK_557 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIFG_556 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_BAD_558 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_GOOD_559 ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/SCSH_560 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/TX_OK_rstpot_1832 )
  );
  LUT6 #(
    .INIT ( 64'h0100010001000000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/EXT_FIELD_glue_set  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FALSE_CARR_FLAG_1305 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/IFG_FLAG_1306 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_DV_REG6_1336 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_ERR_REG6_1333 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/CRC_FIELD_1390 ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/EXT_FIELD_1389 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/EXT_FIELD_glue_set_1782 )
  );
  LUT5 #(
    .INIT ( 32'h11111000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/VALIDATE_REQUIRED_glue_set  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/BAD_FRAME_1339 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/GOOD_FRAME_1340 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_VALID_1357 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/rx_filtered_data_valid_306 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/VALIDATE_REQUIRED_1302 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/VALIDATE_REQUIRED_glue_set_1780 )
  );
  LUT5 #(
    .INIT ( 32'h888888F8 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/force_end_rstpot  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/ACK_OUT_317 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd5_391 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/force_end_393 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd10_388 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd7_390 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/force_end_rstpot_1859 )
  );
  LUT4 #(
    .INIT ( 16'hAA08 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/pause_match_glue_set  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/pause_match_reg_1180 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/rx_data_valid_reg1_1176 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/rx_data_valid_reg2_1182 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/pause_match_1168 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/pause_match_glue_set_1775 )
  );
  LUT4 #(
    .INIT ( 16'hAA08 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/special_pause_match_glue_set  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/special_pause_match_reg_1179 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/rx_data_valid_reg1_1176 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/rx_data_valid_reg2_1182 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/special_pause_match_1167 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/special_pause_match_glue_set_1776 )
  );
  LUT4 #(
    .INIT ( 16'hAA08 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/broadcast_match_glue_set  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/broadcast_byte_match_1181 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/rx_data_valid_reg1_1176 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/rx_data_valid_reg2_1182 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/broadcast_match_1169 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/broadcast_match_glue_set_1777 )
  );
  LUT5 #(
    .INIT ( 32'h0808AA08 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/PREAMBLE_glue_set  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_DV_REG6_1336 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/ENABLE_REG_1315 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_DV_REG7_1335 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/PREAMBLE_1395 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/SFD_FLAG_1308 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/PREAMBLE_glue_set_1783 )
  );
  LUT5 #(
    .INIT ( 32'h44444044 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_state_FSM_FFd1_rstpot  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_state_FSM_FFd2_1204 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_BAD_FRAME_INT_322 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_DATA_VALID_INT_321 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_GOOD_FRAME_INT_323 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/rx_axi_shim/rx_state_FSM_FFd1_rstpot_1856 )
  );
  LUT4 #(
    .INIT ( 16'h4440 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA_VALID_FINAL_rstpot1  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_VALID_1357 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/VALIDATE_REQUIRED_1302 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/rx_filtered_data_valid_306 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA_VALID_FINAL_rstpot1_1865 )
  );
  LUT5 #(
    .INIT ( 32'h22022000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/SRC_ADDRESS_FIELD_rstpot1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_DV_REG6_1336 ),
    .I1(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/FIELD_CONTROL [5]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/DEST_ADDRESS_FIELD_1394 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/SRC_ADDRESS_FIELD_1393 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/SRC_ADDRESS_FIELD_rstpot1_1867 )
  );
  LUT6 #(
    .INIT ( 64'hFFFF800080008000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/force_burst2_glue_set  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tlast_reg_392 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/two_byte_tx_376 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd6_385 ),
    .I3(tx_axis_mac_tvalid),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/force_burst1_371 ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/force_burst2_370 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/force_burst2_glue_set_1739 )
  );
  LUT4 #(
    .INIT ( 16'hFFFB ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/TX_rstpot_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CFL_563 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/TX_565 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/COF_562 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CDS_567 ),
    .O(N218)
  );
  LUT6 #(
    .INIT ( 64'h0000000455555555 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/TX_rstpot  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PRE_566 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PRE_COUNT [2]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PRE_COUNT [0]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PRE_COUNT [1]),
    .I5(N218),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/TX_rstpot_1840 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFDFFF ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA_VALID_EARLY_INT_glue_set_SW1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG1 [4]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG1 [3]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG1 [6]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG1 [7]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG1 [5]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_ERR_REG1_1334 ),
    .O(N220)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA00000800 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA_VALID_EARLY_INT_glue_set  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_DV_REG1_1338 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG1 [0]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG1 [1]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG1 [2]),
    .I4(N220),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA_VALID_EARLY_INT_1303 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA_VALID_EARLY_INT_glue_set_1781 )
  );
  LUT5 #(
    .INIT ( 32'h10551010 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_TX_SUCCESS_rstpot  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PRE_566 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_TX_SUCCESS_539 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_TX_UNDERRUN2_540 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/TX_OK_557 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_TX_SUCCESS_rstpot_1827 )
  );
  LUT5 #(
    .INIT ( 32'h55551000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/PAUSE_VECTOR_0_glue_set  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/REG_STATUS_VALID ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [0]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [1]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [4]),
    .I4(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/PAUSE_VECTOR_0 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/PAUSE_VECTOR_0_glue_set_1765 )
  );
  LUT4 #(
    .INIT ( 16'h5510 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STOP_MAX_PKT_rstpot  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PRE_566 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STOP_MAX_PKT_528 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MAX_PKT_LEN_REACHED_552 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/STOP_MAX_PKT_rstpot_1823 )
  );
  LUT5 #(
    .INIT ( 32'h55550100 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/COF_SEEN_rstpot  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IDL_568 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PRE_566 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/COF_SEEN_551 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/COF_562 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/COF_SEEN_rstpot_1824 )
  );
  LUT4 #(
    .INIT ( 16'h5510 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIN_PKT_LEN_REACHED_rstpot  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PRE_566 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIN_PKT_LEN_REACHED_553 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [6]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIN_PKT_LEN_REACHED_rstpot_1825 )
  );
  LUT6 #(
    .INIT ( 64'h0555044404440444 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_WITH_FCS_rstpot1  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_WITH_FCS_1559 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/END_FCS_1396 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/CRC_FIELD_1390 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/PREAMBLE_1395 ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/SFD_FLAG_1308 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_WITH_FCS_rstpot1_1873 )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd1_rstpot  (
    .I0(tx_axis_mac_tvalid),
    .I1(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd2_383 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd1_rstpot_1852 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/no_burst_rstpot  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd3_384 ),
    .I1(tx_axis_mac_tvalid),
    .I2(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/no_burst_rstpot_1853 )
  );
  LUT4 #(
    .INIT ( 16'h4440 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/rx_filtered_data_valid_rstpot  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/rx_data_valid_srl16_reg2_1177 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/address_match_1166 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/promiscuous_mode_sample_1170 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/rx_filtered_data_valid_rstpot_1855 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_ENABLE_REG_rstpot1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/sync_tx_enable/data_sync2 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/sync_tx_duplex/data_sync2 ),
    .I2(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_ENABLE_REG_rstpot1_1863 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_ENABLE_REG_rstpot1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/sync_rx_enable/data_sync2 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/sync_rx_duplex/data_sync2 ),
    .I2(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_ENABLE_REG_rstpot1_1864 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/LENGTH_TYPE_ERR_rstpot1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/FRAME_LEN_ERR_1576 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/TYPE_PACKET_1355 ),
    .I2(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/LENGTH_TYPE_ERR_rstpot1_1875 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/STATISTICS_VALID_rstpot1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/END_FRAME_1849 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/INHIBIT_FRAME_1573 ),
    .I2(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/STATISTICS_VALID_rstpot1_1876 )
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/COF_rstpot_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/SCSH_560 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/COF_562 ),
    .O(N224)
  );
  LUT6 #(
    .INIT ( 64'h1000100010005555 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/COF_rstpot  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CFL_563 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MAX_PKT_LEN_REACHED_552 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/TX_565 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FCS_561 ),
    .I5(N224),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/COF_rstpot_1837 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFEEE ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/TYPE_PACKET_rstpot_SW1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [4]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [5]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [1]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [2]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [6]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [7]),
    .O(N226)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFF3FEAEAEA2A ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/TYPE_PACKET_rstpot  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/TYPE_PACKET_1355 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/FIELD_CONTROL [0]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/LEN_FIELD_1392 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [3]),
    .I4(N226),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RECLOCK_RX_CONFIG ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/TYPE_PACKET_rstpot_1848 )
  );
  LUT6 #(
    .INIT ( 64'h66F644F4FFFFFFFF ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/force_assert_glue_set  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/force_burst1_371 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/force_burst2_370 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/force_assert_372 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data_valid_352 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/ACK_OUT_317 ),
    .I5(N228),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/force_assert_glue_set_1740 )
  );
  LUT4 #(
    .INIT ( 16'hEFFF ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/early_deassert_glue_set_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd4_389 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd10_388 ),
    .I2(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_mac_tready_reg ),
    .I3(tx_axis_mac_tlast),
    .O(N230)
  );
  LUT6 #(
    .INIT ( 64'h00202020FFFF2020 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/early_deassert_glue_set  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data_valid_352 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/two_byte_tx_376 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/early_deassert_373 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd2_383 ),
    .I4(tx_axis_mac_tvalid),
    .I5(N230),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/early_deassert_glue_set_1742 )
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/early_underrun_glue_set_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd4_389 ),
    .I1(tx_axis_mac_tuser),
    .O(N232)
  );
  LUT6 #(
    .INIT ( 64'h0010001055550010 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/early_underrun_glue_set  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd10_388 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd1_387 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/early_underrun_374 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/ACK_OUT_317 ),
    .I4(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_mac_tready_reg ),
    .I5(N232),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/early_underrun_glue_set_1743 )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/END_OF_TX_HELD_glue_set  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_AVAIL_IN_REG_967 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/END_OF_TX_HELD_955 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_TX_END_OF_TX ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/END_OF_TX_HELD_glue_set_1773 )
  );
  LUT5 #(
    .INIT ( 32'h84210000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/CRC_ENGINE_ERR_rstpot1_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [25]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [27]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [6]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [4]),
    .I4(N185),
    .O(N234)
  );
  LUT6 #(
    .INIT ( 64'h2222022022222222 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/CRC_ENGINE_ERR_rstpot1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/CRC_FIELD_1390 ),
    .I1(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [5]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FCS_CHECK/CALC [26]),
    .I4(N181),
    .I5(N234),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_CHECKER/CRC_ENGINE_ERR_rstpot1_1879 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/COUNT_SET_rstpot_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX [10]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX [11]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX [12]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX [13]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mmux_COUNT_SET_GND_31_o_MUX_238_o11_1673 ),
    .O(N236)
  );
  LUT6 #(
    .INIT ( 64'h22F2222222022222 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/COUNT_SET_rstpot  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/COUNT_SET_832 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_STATUS_INT_833 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_REQ_TO_TX_837 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/GOOD_FRAME_IN_TX_REG_1093 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/sync_good_rx/data_sync2 ),
    .I5(N236),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/COUNT_SET_rstpot_1845 )
  );
  LUT5 #(
    .INIT ( 32'h45557555 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut<8>  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT [8]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/GOOD_FRAME_IN_TX_REG_1093 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/sync_good_rx/data_sync2 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_REQ_TO_TX_837 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX [8]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut [8])
  );
  LUT5 #(
    .INIT ( 32'h45557555 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut<9>  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT [9]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/GOOD_FRAME_IN_TX_REG_1093 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/sync_good_rx/data_sync2 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_REQ_TO_TX_837 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX [9]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut [9])
  );
  LUT5 #(
    .INIT ( 32'h45557555 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut<10>  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT [10]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/GOOD_FRAME_IN_TX_REG_1093 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/sync_good_rx/data_sync2 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_REQ_TO_TX_837 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX [10]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut [10])
  );
  LUT5 #(
    .INIT ( 32'h45557555 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut<11>  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT [11]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/GOOD_FRAME_IN_TX_REG_1093 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/sync_good_rx/data_sync2 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_REQ_TO_TX_837 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX [11]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut [11])
  );
  LUT5 #(
    .INIT ( 32'h45557555 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut<12>  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT [12]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/GOOD_FRAME_IN_TX_REG_1093 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/sync_good_rx/data_sync2 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_REQ_TO_TX_837 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX [12]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut [12])
  );
  LUT5 #(
    .INIT ( 32'h45557555 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut<13>  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT [13]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/GOOD_FRAME_IN_TX_REG_1093 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/sync_good_rx/data_sync2 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_REQ_TO_TX_837 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX [13]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut [13])
  );
  LUT5 #(
    .INIT ( 32'h45557555 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut<14>  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT [14]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/GOOD_FRAME_IN_TX_REG_1093 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/sync_good_rx/data_sync2 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_REQ_TO_TX_837 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX [14]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut [14])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF10101011 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/Reset_OR_DriverANDClockEnable1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[2] ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PAD_PIPE_544 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CR178124_FIX_543 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_546 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/TRANSMIT_PIPE [1]),
    .I5(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/Reset_OR_DriverANDClockEnable )
  );
  LUT5 #(
    .INIT ( 32'hFFFF0770 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mcount_load_count_val1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA_VALID_EARLY_INT_1303 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_DV_REG1_1338 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/sync_update/data_sync2 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/update_pause_ad_sync_reg_1171 ),
    .I4(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mcount_load_count_val )
  );
  LUT4 #(
    .INIT ( 16'hFF2A ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mcount_counter_val1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/rx_data_valid_reg1_1176 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA_VALID_EARLY_INT_1303 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_DV_REG1_1338 ),
    .I3(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mcount_counter_val )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_val1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/SFD_FLAG_1308 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/PREAMBLE_1395 ),
    .I2(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_val )
  );
  LUT3 #(
    .INIT ( 8'hEA ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/_n0388_inv1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/LEN_FIELD_1392 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/SFD_FLAG_1308 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/PREAMBLE_1395 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/_n0388_inv )
  );
  LUT5 #(
    .INIT ( 32'h45557555 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut<15>  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_COUNT [15]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/GOOD_FRAME_IN_TX_REG_1093 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/sync_good_rx/data_sync2 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_REQ_TO_TX_837 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_PAUSE/PAUSE_VALUE_TO_TX [15]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/Mcount_PAUSE_COUNT_lut [15])
  );
  LUT5 #(
    .INIT ( 32'hAAAAAAA9 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Msub_GND_36_o_GND_36_o_sub_12_OUT<7:0>_xor<6>11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DELAY [6]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DELAY [5]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DELAY [2]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DELAY [3]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DELAY [4]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/GND_36_o_GND_36_o_sub_12_OUT[6] )
  );
  LUT6 #(
    .INIT ( 64'h5551151144400400 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_TX_DA_rstpot  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/TX_565 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/MUX_CONTROL_954 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_AVAIL_IN_REG_967 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_AVAIL_CONTROL_957 ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_TX_DA_564 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_TX_DA_rstpot_1839 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF777FF7FF ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/END_OF_TX_INV_38_o1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/REG_DATA_VALID_527 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/COF_562 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/MUX_CONTROL_954 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_AVAIL_IN_REG_967 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_AVAIL_CONTROL_957 ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/COF_SEEN_551 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/END_OF_TX_INV_38_o )
  );
  LUT6 #(
    .INIT ( 64'h6CCCCCCCCCCCCCCC ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mcount_counter_xor<5>12  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [2]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [5]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [0]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [1]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [4]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [3]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Result [5])
  );
  LUT5 #(
    .INIT ( 32'h6CCCCCCC ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mcount_counter_xor<4>11  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [2]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [4]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [0]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [1]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [3]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Result [4])
  );
  LUT5 #(
    .INIT ( 32'hFF8FF888 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mmux_LENGTH_TYPE[15]_PWR_47_o_mux_2_OUT17  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/PREAMBLE_1395 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/SFD_FLAG_1308 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/FIELD_CONTROL [1]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [0]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE [0]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE[15]_PWR_47_o_mux_2_OUT<0> )
  );
  LUT5 #(
    .INIT ( 32'hFF8FF888 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mmux_LENGTH_TYPE[15]_PWR_47_o_mux_2_OUT21  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/PREAMBLE_1395 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/SFD_FLAG_1308 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/FIELD_CONTROL [0]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [2]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE [10]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE[15]_PWR_47_o_mux_2_OUT<10> )
  );
  LUT5 #(
    .INIT ( 32'hFF8FF888 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mmux_LENGTH_TYPE[15]_PWR_47_o_mux_2_OUT81  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/PREAMBLE_1395 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/SFD_FLAG_1308 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/FIELD_CONTROL [1]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [1]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE [1]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE[15]_PWR_47_o_mux_2_OUT<1> )
  );
  LUT5 #(
    .INIT ( 32'hFF8FF888 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mmux_LENGTH_TYPE[15]_PWR_47_o_mux_2_OUT91  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/PREAMBLE_1395 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/SFD_FLAG_1308 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/FIELD_CONTROL [1]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [2]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE [2]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE[15]_PWR_47_o_mux_2_OUT<2> )
  );
  LUT5 #(
    .INIT ( 32'hFF8FF888 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mmux_LENGTH_TYPE[15]_PWR_47_o_mux_2_OUT101  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/PREAMBLE_1395 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/SFD_FLAG_1308 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/FIELD_CONTROL [1]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [3]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE [3]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE[15]_PWR_47_o_mux_2_OUT<3> )
  );
  LUT5 #(
    .INIT ( 32'hFF8FF888 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mmux_LENGTH_TYPE[15]_PWR_47_o_mux_2_OUT111  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/PREAMBLE_1395 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/SFD_FLAG_1308 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/FIELD_CONTROL [1]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [4]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE [4]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE[15]_PWR_47_o_mux_2_OUT<4> )
  );
  LUT5 #(
    .INIT ( 32'hFF8FF888 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mmux_LENGTH_TYPE[15]_PWR_47_o_mux_2_OUT121  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/PREAMBLE_1395 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/SFD_FLAG_1308 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/FIELD_CONTROL [1]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [5]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE [5]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE[15]_PWR_47_o_mux_2_OUT<5> )
  );
  LUT5 #(
    .INIT ( 32'hFF8FF888 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mmux_LENGTH_TYPE[15]_PWR_47_o_mux_2_OUT131  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/PREAMBLE_1395 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/SFD_FLAG_1308 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/FIELD_CONTROL [1]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [6]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE [6]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE[15]_PWR_47_o_mux_2_OUT<6> )
  );
  LUT5 #(
    .INIT ( 32'hFF8FF888 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mmux_LENGTH_TYPE[15]_PWR_47_o_mux_2_OUT141  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/PREAMBLE_1395 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/SFD_FLAG_1308 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/FIELD_CONTROL [1]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [7]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE [7]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE[15]_PWR_47_o_mux_2_OUT<7> )
  );
  LUT5 #(
    .INIT ( 32'hFF8FF888 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mmux_LENGTH_TYPE[15]_PWR_47_o_mux_2_OUT151  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/PREAMBLE_1395 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/SFD_FLAG_1308 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/FIELD_CONTROL [0]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [0]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE [8]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE[15]_PWR_47_o_mux_2_OUT<8> )
  );
  LUT5 #(
    .INIT ( 32'hFF8FF888 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mmux_LENGTH_TYPE[15]_PWR_47_o_mux_2_OUT161  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/PREAMBLE_1395 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/SFD_FLAG_1308 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/FIELD_CONTROL [0]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [1]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE [9]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LENGTH_TYPE[15]_PWR_47_o_mux_2_OUT<9> )
  );
  LUT5 #(
    .INIT ( 32'h888888F8 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/SFD_FLAG_CRC_COMPUTE_OR_212_o1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/PREAMBLE_1395 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/SFD_FLAG_1308 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/CRC_COMPUTE_1356 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/END_DATA_1397 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/END_FRAME_1849 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/SFD_FLAG_CRC_COMPUTE_OR_212_o )
  );
  LUT6 #(
    .INIT ( 64'h5555555555551110 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/Mmux_TX_EN_REG1_GND_39_o_MUX_559_o11  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CR178124_FIX_543 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CRC_546 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/TRANSMIT_PIPE [1]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[2] ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PAD_PIPE_544 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/GMII_MII_TX_GEN/TX_EN_REG1_GND_39_o_MUX_559_o )
  );
  LUT4 #(
    .INIT ( 16'hABA8 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/two_byte_tx_rstpot  (
    .I0(tx_axis_mac_tlast),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd1_387 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd8_386 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/two_byte_tx_376 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/two_byte_tx_rstpot_1844 )
  );
  LUT4 #(
    .INIT ( 16'hAEA2 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/promiscuous_mode_sample_rstpot  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/promiscuous_mode_sample_1170 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/rx_data_valid_reg1_1176 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/rx_data_valid_reg2_1182 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/resync_promiscuous_mode/data_sync2 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/promiscuous_mode_sample_rstpot_1846 )
  );
  LUT6 #(
    .INIT ( 64'hDFDFDFDFDF000000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_REQ_INT_glue_set  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [4]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [0]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [1]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_ENABLE_REG_828 ),
    .I4(pause_req),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_REQ_INT_953 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_REQ_INT_glue_set_1771 )
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/update_pause_ad_sync_reg_rstpot  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/sync_update/data_sync2 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA_VALID_EARLY_INT_1303 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_DV_REG1_1338 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/update_pause_ad_sync_reg_1171 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/update_pause_ad_sync_reg_rstpot_1854 )
  );
  LUT6 #(
    .INIT ( 64'h8888888808888888 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/_n0287_inv1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA_VALID_EARLY_INT_1303 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_DV_REG1_1338 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [5]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [4]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [3]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mcount_counter_xor<5>11 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/_n0287_inv )
  );
  LUT5 #(
    .INIT ( 32'hFFFF44F4 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CLIENT_FRAME_DONE_rstpot  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PRE_566 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CLIENT_FRAME_DONE_555 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n0985_inv1 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_TX_DATA_VALID_OUT ),
    .I4(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CLIENT_FRAME_DONE_rstpot_1830 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/PAUSE_VECTOR<1>1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/ADD_CONTROL_FRAME_282 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX_ENABLE_REG_834 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/PAUSE_REQ_INT_916 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/GOOD_FRAME_INT_284 ),
    .O(rx_statistics_vector[23])
  );
  LUT6 #(
    .INIT ( 64'hF0F030F0FAFA32FA ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/STATE_COUNT_FSM_FFd1-In_SW1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_AVAIL_IN_REG_967 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [4]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/MUX_CONTROL_954 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [1]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [0]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_TX_END_OF_TX ),
    .O(N238)
  );
  LUT4 #(
    .INIT ( 16'hEA40 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/STATE_COUNT_FSM_FFd1-In  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/STATE_COUNT_FSM_FFd1_968 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/ACK_INT_966 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/STATE_COUNT_FSM_FFd2_931 ),
    .I3(N238),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/STATE_COUNT_FSM_FFd1-In_932 )
  );
  LUT4 #(
    .INIT ( 16'hFEFA ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/PADDED_FRAME_rstpot1_SW1  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [6]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [5]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [7]),
    .I3(N154),
    .O(N240)
  );
  LUT6 #(
    .INIT ( 64'h0444044454440444 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/PADDED_FRAME_rstpot1  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_RX_RESET_I/R4 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/PADDED_FRAME_1359 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/LEN_FIELD_1392 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RX_SM/FIELD_CONTROL [1]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/LESS_THAN_256_1562 ),
    .I5(N240),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/PADDED_FRAME_rstpot1_1874 )
  );
  LUT6 #(
    .INIT ( 64'h082A080808080808 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/ignore_packet_glue_set  (
    .I0(tx_axis_mac_tvalid),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/ignore_packet_375 ),
    .I2(tx_axis_mac_tlast),
    .I3(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_mac_tready_reg ),
    .I4(tx_axis_mac_tuser),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd10_388 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/ignore_packet_glue_set_1745 )
  );
  LUT4 #(
    .INIT ( 16'hDFFF ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/force_assert_glue_set_SW0  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/early_deassert_373 ),
    .I1(tx_axis_mac_tlast),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd2_383 ),
    .I3(tx_axis_mac_tvalid),
    .O(N228)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFEEFFFFAFAE ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/MUX_CONTROL_glue_ce  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/PAUSE_STATUS_INT_833 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_REQ_INT_953 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_AVAIL_IN_REG_967 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX_PAUSE/COUNT_SET_832 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/MUX_CONTROL_954 ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/INT_TX_END_OF_TX ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/MUX_CONTROL_glue_ce_1772 )
  );
  INV   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_lut<0>_INV_0  (
    .I(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/FRAME_COUNT [0]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mcount_FRAME_COUNT_lut [0])
  );
  INV   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_lut<0>_INV_0  (
    .I(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/FRAME_COUNTER [0]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_FRAME_COUNTER_lut [0])
  );
  INV   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_lut<0>_INV_0  (
    .I(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_COUNTER<14:0> [0]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/Mcount_DATA_COUNTER<14:0>_lut<0> )
  );
  INV   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Msub_GND_36_o_GND_36_o_sub_12_OUT<7:0>_xor<2>11_INV_0  (
    .I(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_IFG_DELAY [2]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/GND_36_o_GND_36_o_sub_12_OUT[2] )
  );
  INV   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/Mcount_DATA_COUNT_xor<0>11_INV_0  (
    .I(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/DATA_COUNT [0]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/RX/Result [0])
  );
  INV   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mcount_counter_xor<0>11_INV_0  (
    .I(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [0]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Result [0])
  );
  INV   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mcount_load_count_xor<0>11_INV_0  (
    .I(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count [0]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Result<0>1 )
  );
  MUXF7   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT83  (
    .I0(N242),
    .I1(N243),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count [2]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count[2]_pause_addr[7]_wide_mux_27_OUT<7> )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT83_F  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count [0]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count [1]),
    .I2(rx_mac_config_vector[47]),
    .I3(rx_mac_config_vector[63]),
    .I4(rx_mac_config_vector[55]),
    .I5(rx_mac_config_vector[39]),
    .O(N242)
  );
  LUT5 #(
    .INIT ( 32'hFBEA5140 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mmux_load_count[2]_pause_addr[7]_wide_mux_27_OUT83_G  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count [1]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/load_count [0]),
    .I2(rx_mac_config_vector[79]),
    .I3(rx_mac_config_vector[71]),
    .I4(rx_mac_config_vector[39]),
    .O(N243)
  );
  MUXF7   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/address_match_glue_set  (
    .I0(N244),
    .I1(N245),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/Mcount_counter_xor<5>11 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/address_match_glue_set_1779 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FFFF01000101 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/address_match_glue_set_F  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [5]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [4]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/counter [3]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/rx_data_valid_reg2_1182 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/rx_data_valid_reg1_1176 ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/address_match_1166 ),
    .O(N244)
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/address_match_glue_set_G  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/address_match_1166 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/rx_data_valid_reg1_1176 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/addr_filter_top/address_filter_inst/rx_data_valid_reg2_1182 ),
    .O(N245)
  );
  MUXF7   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data_valid_glue_set  (
    .I0(N246),
    .I1(N247),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd10_388 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data_valid_glue_set_1744 )
  );
  LUT5 #(
    .INIT ( 32'hFFFF0444 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data_valid_glue_set_F  (
    .I0(N199),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data_valid_352 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/two_byte_tx_376 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_state_FSM_FFd4_389 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/force_assert_372 ),
    .O(N246)
  );
  LUT5 #(
    .INIT ( 32'hFFFF0010 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/tx_data_valid_glue_set_G  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/ignore_packet_375 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/no_burst_394 ),
    .I2(tx_axis_mac_tvalid),
    .I3(tx_axis_mac_tuser),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/G_AXI_SHIM.tx_axi_shim/force_assert_372 ),
    .O(N247)
  );
  MUXF7   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT74  (
    .I0(N248),
    .I1(N249),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [4]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT<2> )
  );
  LUT5 #(
    .INIT ( 32'h64202020 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT74_F  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [3]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [2]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT7 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [1]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT71_1649 ),
    .O(N248)
  );
  LUT6 #(
    .INIT ( 64'h0101000101000000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT74_G  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [1]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [3]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [2]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [0]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_VALUE_HELD [2]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_VALUE_HELD [10]),
    .O(N249)
  );
  MUXF7   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT144  (
    .I0(N250),
    .I1(N251),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [4]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT<5> )
  );
  LUT5 #(
    .INIT ( 32'h64202020 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT144_F  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [3]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [2]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT14 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [1]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT141_1651 ),
    .O(N250)
  );
  LUT6 #(
    .INIT ( 64'h0101000101000000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT144_G  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [1]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [3]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [2]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [0]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_VALUE_HELD [5]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_VALUE_HELD [13]),
    .O(N251)
  );
  MUXF7   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT124  (
    .I0(N252),
    .I1(N253),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [4]),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT<4> )
  );
  LUT5 #(
    .INIT ( 32'h64202020 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT124_F  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [3]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [2]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT12 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [1]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT121_1653 ),
    .O(N252)
  );
  LUT6 #(
    .INIT ( 64'h0101000101000000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/Mmux_DATA_COUNT[4]_GND_28_o_wide_mux_25_OUT124_G  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [1]),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [3]),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [2]),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/DATA_COUNT [0]),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_VALUE_HELD [4]),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/FLOW/TX/PAUSE_VALUE_HELD [12]),
    .O(N253)
  );
  MUXF7   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIFG_rstpot  (
    .I0(N254),
    .I1(N255),
    .S(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/INT_CRC_MODE_526 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIFG_rstpot_1831 )
  );
  LUT6 #(
    .INIT ( 64'h5444555554445444 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIFG_rstpot_F  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/COF_562 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/CFL_563 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIN_PKT_LEN_REACHED_553 ),
    .I4(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IDL_568 ),
    .I5(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIFG_556 ),
    .O(N254)
  );
  LUT4 #(
    .INIT ( 16'h5510 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIFG_rstpot_G  (
    .I0(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/IDL_568 ),
    .I2(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/MIFG_556 ),
    .I3(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/_n0961_inv11 ),
    .O(N255)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mshreg_DATA_7  (
    .A0(NlwRenamedSig_OI_N1),
    .A1(NlwRenamedSig_OI_N1),
    .A2(NlwRenamedSig_OI_N1),
    .A3(NlwRenamedSig_OI_N1),
    .CE(N0),
    .CLK(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [7]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mshreg_DATA_7_1927 ),
    .Q15(\NLW_U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mshreg_DATA_7_Q15_UNCONNECTED )
  );
  FDE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA_7  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mshreg_DATA_7_1927 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA [7])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mshreg_PREAMBLE_PIPE_13  (
    .A0(N0),
    .A1(NlwRenamedSig_OI_N1),
    .A2(N0),
    .A3(NlwRenamedSig_OI_N1),
    .CE(N0),
    .CLK(tx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[5] ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mshreg_PREAMBLE_PIPE_13_1928 ),
    .Q15(\NLW_U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mshreg_PREAMBLE_PIPE_13_Q15_UNCONNECTED )
  );
  FDE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE_131  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/Mshreg_PREAMBLE_PIPE_13_1928 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE_131_1929 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mshreg_STATISTICS_VECTOR_22  (
    .A0(NlwRenamedSig_OI_N1),
    .A1(NlwRenamedSig_OI_N1),
    .A2(NlwRenamedSig_OI_N1),
    .A3(NlwRenamedSig_OI_N1),
    .CE(N0),
    .CLK(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/FRAME_DECODER/DATA_WITH_FCS_1559 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mshreg_STATISTICS_VECTOR_22_1930 ),
    .Q15(\NLW_U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mshreg_STATISTICS_VECTOR_22_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR_22  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mshreg_STATISTICS_VECTOR_22_1930 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/STATISTICS_VECTOR [22])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mshreg_DATA_6  (
    .A0(NlwRenamedSig_OI_N1),
    .A1(NlwRenamedSig_OI_N1),
    .A2(NlwRenamedSig_OI_N1),
    .A3(NlwRenamedSig_OI_N1),
    .CE(N0),
    .CLK(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [6]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mshreg_DATA_6_1931 ),
    .Q15(\NLW_U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mshreg_DATA_6_Q15_UNCONNECTED )
  );
  FDE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA_6  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mshreg_DATA_6_1931 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA [6])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mshreg_DATA_5  (
    .A0(NlwRenamedSig_OI_N1),
    .A1(NlwRenamedSig_OI_N1),
    .A2(NlwRenamedSig_OI_N1),
    .A3(NlwRenamedSig_OI_N1),
    .CE(N0),
    .CLK(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [5]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mshreg_DATA_5_1932 ),
    .Q15(\NLW_U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mshreg_DATA_5_Q15_UNCONNECTED )
  );
  FDE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA_5  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mshreg_DATA_5_1932 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA [5])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mshreg_DATA_2  (
    .A0(NlwRenamedSig_OI_N1),
    .A1(NlwRenamedSig_OI_N1),
    .A2(NlwRenamedSig_OI_N1),
    .A3(NlwRenamedSig_OI_N1),
    .CE(N0),
    .CLK(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [2]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mshreg_DATA_2_1933 ),
    .Q15(\NLW_U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mshreg_DATA_2_Q15_UNCONNECTED )
  );
  FDE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA_2  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mshreg_DATA_2_1933 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA [2])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mshreg_DATA_4  (
    .A0(NlwRenamedSig_OI_N1),
    .A1(NlwRenamedSig_OI_N1),
    .A2(NlwRenamedSig_OI_N1),
    .A3(NlwRenamedSig_OI_N1),
    .CE(N0),
    .CLK(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [4]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mshreg_DATA_4_1934 ),
    .Q15(\NLW_U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mshreg_DATA_4_Q15_UNCONNECTED )
  );
  FDE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA_4  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mshreg_DATA_4_1934 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA [4])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mshreg_DATA_3  (
    .A0(NlwRenamedSig_OI_N1),
    .A1(NlwRenamedSig_OI_N1),
    .A2(NlwRenamedSig_OI_N1),
    .A3(NlwRenamedSig_OI_N1),
    .CE(N0),
    .CLK(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [3]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mshreg_DATA_3_1935 ),
    .Q15(\NLW_U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mshreg_DATA_3_Q15_UNCONNECTED )
  );
  FDE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA_3  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mshreg_DATA_3_1935 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA [3])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mshreg_DATA_1  (
    .A0(NlwRenamedSig_OI_N1),
    .A1(NlwRenamedSig_OI_N1),
    .A2(NlwRenamedSig_OI_N1),
    .A3(NlwRenamedSig_OI_N1),
    .CE(N0),
    .CLK(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [1]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mshreg_DATA_1_1936 ),
    .Q15(\NLW_U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mshreg_DATA_1_Q15_UNCONNECTED )
  );
  FDE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA_1  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mshreg_DATA_1_1936 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA [1])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mshreg_DATA_0  (
    .A0(NlwRenamedSig_OI_N1),
    .A1(NlwRenamedSig_OI_N1),
    .A2(NlwRenamedSig_OI_N1),
    .A3(NlwRenamedSig_OI_N1),
    .CE(N0),
    .CLK(rx_axi_clk),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/RXD_REG7 [0]),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mshreg_DATA_0_1937 ),
    .Q15(\NLW_U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mshreg_DATA_0_Q15_UNCONNECTED )
  );
  FDE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA_0  (
    .C(rx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/Mshreg_DATA_0_1937 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/RXGEN/DATA [0])
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4_shift1  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(N0),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4_shift1_1938 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4_shift2  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4_shift1_1938 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4_shift2_1939 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4_shift3  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4_shift2_1939 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4_shift3_1940 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4_shift4  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4_shift3_1940 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4_shift4_1941 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4_shift5  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4_shift4_1941 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4_shift5_1942 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4_shift6  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4_shift5_1942 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4_shift6_1943 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4_shift7  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4_shift6_1943 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4_shift7_1944 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE_1311  (
    .I0(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE_131_1929 ),
    .I1(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4_shift7_1944 ),
    .O(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE_1311_1945 )
  );
  FDRE   \U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE_13  (
    .C(tx_axi_clk),
    .CE(N0),
    .D(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE_1311_1945 ),
    .R(\NlwRenamedSig_OI_U0/trimac_top/TRI_SPEED.TRIMAC_INST/SYNC_TX_RESET_I/R4 ),
    .Q(\U0/trimac_top/TRI_SPEED.TRIMAC_INST/TXGEN/TX_SM1/PREAMBLE_PIPE[13] )
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

// synthesis translate_on
