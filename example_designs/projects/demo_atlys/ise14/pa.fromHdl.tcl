
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name demo_atlys -dir "C:/Users/tang/Desktop/IPBus_ATLYS/example_designs/projects/demo_atlys/ise14/planAhead_run_1" -part xc6slx45csg324-2
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "C:/Users/tang/Desktop/IPBus_ATLYS/example_designs/ucf/atlys.ucf" [current_fileset -constrset]
add_files [list {ipcore_dir/mac_fifo_axi4.ngc}]
add_files [list {ipcore_dir/tri_mode_eth_mac_v5_4.ngc}]
set hdlfile [add_files [list {../../../../ipbus_core/hdl/ipbus_trans_decl.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../../ipbus_core/hdl/ipbus_package.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../../ipbus_core/hdl/udp_tx_mux.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../../ipbus_core/hdl/udp_txtransactor_if_simple.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../../ipbus_core/hdl/udp_status_buffer.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../../ipbus_core/hdl/udp_rxtransactor_if_simple.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../../ipbus_core/hdl/udp_rxram_shim.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../../ipbus_core/hdl/udp_rxram_mux.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../../ipbus_core/hdl/udp_rarp_block.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../../ipbus_core/hdl/udp_packet_parser.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../../ipbus_core/hdl/udp_ipaddr_block.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../../ipbus_core/hdl/udp_dualportram_tx.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../../ipbus_core/hdl/udp_dualportram_rx.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../../ipbus_core/hdl/udp_dualportram.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../../ipbus_core/hdl/udp_do_rx_reset.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../../ipbus_core/hdl/udp_clock_crossing_if.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../../ipbus_core/hdl/udp_byte_sum.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../../ipbus_core/hdl/udp_build_status.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../../ipbus_core/hdl/udp_build_resend.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../../ipbus_core/hdl/udp_build_ping.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../../ipbus_core/hdl/udp_build_payload.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../../ipbus_core/hdl/udp_build_arp.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../../ipbus_core/hdl/udp_buffer_selector.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../../ipbus_core/hdl/transactor_sm.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../../ipbus_core/hdl/transactor_if.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../../ipbus_core/hdl/transactor_cfg.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../hdl/ipbus_addr_decode.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../hdl/clock_div.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../../slaves/hdl/ipbus_reg.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../../slaves/hdl/ipbus_ram.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../../slaves/hdl/ipbus_pkt_ctr.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../../slaves/hdl/ipbus_peephole_ram.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../../slaves/hdl/ipbus_ctrlreg.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../../ipbus_core/hdl/udp_if_flat.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../../ipbus_core/hdl/trans_arb.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../../ipbus_core/hdl/transactor.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../../ipbus_core/hdl/stretcher.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../../ipbus_core/hdl/ipbus_fabric.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {ipcore_dir/tri_mode_eth_mac_v5_4.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {ipcore_dir/mac_fifo_axi4.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {emac_hostbus_decl.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../../ipbus_core/hdl/ipbus_ctrl.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../hdl/slaves.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../hdl/clocks_s6_extphy_100MHz.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../../ethernet/hdl/eth_s6_gmii.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../hdl/demo_atlys/top_atlys.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top top $srcset
add_files [list {C:/Users/tang/Desktop/IPBus_ATLYS/example_designs/ucf/atlys.ucf}] -fileset [get_property constrset [current_run]]
add_files [list {C:/Users/tang/Desktop/IPBus_ATLYS/example_designs/projects/demo_atlys/ise14/mac_fifo_axi4.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {C:/Users/tang/Desktop/IPBus_ATLYS/example_designs/projects/demo_atlys/ise14/tri_mode_eth_mac_v5_4.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {ipcore_dir/mac_fifo_axi4.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {ipcore_dir/tri_mode_eth_mac_v5_4.ncf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx45csg324-2
