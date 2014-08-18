#!/bin/sh

rm -rf simv* csrc DVEfiles AN.DB

echo "Compiling Core Simulation Models"
vlogan +v2k -v2005 \
      ../../../tri_mode_eth_mac_v5_4.v \
      ../../example_design/fifo/tri_mode_eth_mac_v5_4_tx_client_fifo.v \
      ../../example_design/fifo/tri_mode_eth_mac_v5_4_rx_client_fifo.v \
      ../../example_design/fifo/tri_mode_eth_mac_v5_4_ten_100_1g_eth_fifo.v \
      ../../example_design/common/tri_mode_eth_mac_v5_4_reset_sync.v \
      ../../example_design/common/tri_mode_eth_mac_v5_4_sync_block.v \
      ../../example_design/pat_gen/tri_mode_eth_mac_v5_4_address_swap.v \
      ../../example_design/pat_gen/tri_mode_eth_mac_v5_4_axi_mux.v \
      ../../example_design/pat_gen/tri_mode_eth_mac_v5_4_axi_pat_gen.v \
      ../../example_design/pat_gen/tri_mode_eth_mac_v5_4_axi_pat_check.v \
      ../../example_design/pat_gen/tri_mode_eth_mac_v5_4_axi_pipe.v \
      ../../example_design/pat_gen/tri_mode_eth_mac_v5_4_basic_pat_gen.v \
      ../../example_design/physical/tri_mode_eth_mac_v5_4_gmii_if.v \
     ../../example_design/control/tri_mode_eth_mac_v5_4_config_vector_sm.v \
      ../../example_design/tri_mode_eth_mac_v5_4_clk_wiz.v \
      ../../example_design/tri_mode_eth_mac_v5_4_block.v \
      ../../example_design/tri_mode_eth_mac_v5_4_fifo_block.v \
      ../../example_design/tri_mode_eth_mac_v5_4_example_design.v \
      ../tri_mode_eth_mac_v5_4_frame_typ.v \
      ../demo_tb.v

echo "Elaborating design"
vcs +vcs+lic+wait \
      -y unisims_ver \
      -y unimacro_ver \
      -y simprims_ver \
    -debug -PP \
    demo_tb glbl

echo "Starting simulation"
./simv -ucli -i ucli_commands.key

dve -vpd vcdplus.vpd -session vcs_session.tcl


