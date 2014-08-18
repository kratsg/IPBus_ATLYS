# The package naming convention is <core_name>_xmdf
package provide tri_mode_eth_mac_v5_4_xmdf 1.0

# This includes some utilities that support common XMDF operations
package require utilities_xmdf

# Define a namespace for this package. The name of the name space
# is <core_name>_xmdf
namespace eval ::tri_mode_eth_mac_v5_4_xmdf {
# Use this to define any statics
}

# Function called by client to rebuild the params and port arrays
# Optional when the use context does not require the param or ports
# arrays to be available.
proc ::tri_mode_eth_mac_v5_4_xmdf::xmdfInit { instance } {
# Variable containing name of library into which module is compiled
# Recommendation: <module_name>
# Required
utilities_xmdf::xmdfSetData $instance Module Attributes Name tri_mode_eth_mac_v5_4
}
# ::tri_mode_eth_mac_v5_4_xmdf::xmdfInit

# Function called by client to fill in all the xmdf* data variables
# based on the current settings of the parameters
proc ::tri_mode_eth_mac_v5_4_xmdf::xmdfApplyParams { instance } {

set fcount 0
# Array containing libraries that are assumed to exist
# Examples include unisim and xilinxcorelib
# Optional
# In this example, we assume that the unisim library will
# be available to the simulation and synthesis tool
utilities_xmdf::xmdfSetData $instance FileSet $fcount type logical_library
utilities_xmdf::xmdfSetData $instance FileSet $fcount logical_library unisim
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path tri_mode_eth_mac_v5_4/doc/pg051-tri-mode-eth-mac.pdf
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path tri_mode_eth_mac_v5_4/doc/tri_mode_eth_mac_readme.txt
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path tri_mode_eth_mac_v5_4/doc/tri_mode_eth_mac_v5_5_vinfo.html
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path tri_mode_eth_mac_v5_4/example_design/axi_ipif/tri_mode_eth_mac_v5_4_address_decoder.v
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path tri_mode_eth_mac_v5_4/example_design/axi_ipif/tri_mode_eth_mac_v5_4_axi4_lite_ipif_wrapper.v
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path tri_mode_eth_mac_v5_4/example_design/axi_ipif/tri_mode_eth_mac_v5_4_axi_lite_ipif.v
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path tri_mode_eth_mac_v5_4/example_design/axi_ipif/tri_mode_eth_mac_v5_4_counter_f.v
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path tri_mode_eth_mac_v5_4/example_design/axi_ipif/tri_mode_eth_mac_v5_4_pselect_f.v
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path tri_mode_eth_mac_v5_4/example_design/axi_ipif/tri_mode_eth_mac_v5_4_slave_attachment.v
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path tri_mode_eth_mac_v5_4/example_design/common/tri_mode_eth_mac_v5_4_reset_sync.v
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path tri_mode_eth_mac_v5_4/example_design/common/tri_mode_eth_mac_v5_4_sync_block.v
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path tri_mode_eth_mac_v5_4/example_design/control/tri_mode_eth_mac_v5_4_config_vector_sm.v
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path tri_mode_eth_mac_v5_4/example_design/fifo/tri_mode_eth_mac_v5_4_rx_client_fifo.v
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path tri_mode_eth_mac_v5_4/example_design/fifo/tri_mode_eth_mac_v5_4_ten_100_1g_eth_fifo.v
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path tri_mode_eth_mac_v5_4/example_design/fifo/tri_mode_eth_mac_v5_4_tx_client_fifo.v
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path tri_mode_eth_mac_v5_4/example_design/pat_gen/tri_mode_eth_mac_v5_4_address_swap.v
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path tri_mode_eth_mac_v5_4/example_design/pat_gen/tri_mode_eth_mac_v5_4_axi_mux.v
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path tri_mode_eth_mac_v5_4/example_design/pat_gen/tri_mode_eth_mac_v5_4_axi_pat_check.v
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path tri_mode_eth_mac_v5_4/example_design/pat_gen/tri_mode_eth_mac_v5_4_axi_pat_gen.v
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path tri_mode_eth_mac_v5_4/example_design/pat_gen/tri_mode_eth_mac_v5_4_axi_pipe.v
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path tri_mode_eth_mac_v5_4/example_design/pat_gen/tri_mode_eth_mac_v5_4_basic_pat_gen.v
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path tri_mode_eth_mac_v5_4/example_design/physical/tri_mode_eth_mac_v5_4_gmii_if.v
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path tri_mode_eth_mac_v5_4/example_design/tri_mode_eth_mac_v5_4_block.v
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path tri_mode_eth_mac_v5_4/example_design/tri_mode_eth_mac_v5_4_clk_wiz.v
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path tri_mode_eth_mac_v5_4/example_design/tri_mode_eth_mac_v5_4_example_design.ucf
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path tri_mode_eth_mac_v5_4/example_design/tri_mode_eth_mac_v5_4_example_design.v
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path tri_mode_eth_mac_v5_4/example_design/tri_mode_eth_mac_v5_4_fifo_block.v
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path tri_mode_eth_mac_v5_4/example_design/tri_mode_eth_mac_v5_4_mod.v
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path tri_mode_eth_mac_v5_4/implement/implement.bat
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path tri_mode_eth_mac_v5_4/implement/implement.sh
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path tri_mode_eth_mac_v5_4/implement/xst.prj
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path tri_mode_eth_mac_v5_4/implement/xst.scr
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path tri_mode_eth_mac_v5_4/simulation/demo_tb.v
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path tri_mode_eth_mac_v5_4/simulation/functional/simulate_mti.do
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path tri_mode_eth_mac_v5_4/simulation/functional/simulate_ncsim.sh
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path tri_mode_eth_mac_v5_4/simulation/functional/simulate_vcs.sh
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path tri_mode_eth_mac_v5_4/simulation/functional/ucli_commands.key
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path tri_mode_eth_mac_v5_4/simulation/functional/vcs_session.tcl
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path tri_mode_eth_mac_v5_4/simulation/functional/wave_mti.do
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path tri_mode_eth_mac_v5_4/simulation/functional/wave_ncsim.sv
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path tri_mode_eth_mac_v5_4/simulation/tri_mode_eth_mac_v5_4_frame_typ.v
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path tri_mode_eth_mac_v5_4/tri_mode_eth_mac_readme.txt
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path tri_mode_eth_mac_v5_4.asy
utilities_xmdf::xmdfSetData $instance FileSet $fcount type asy
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path tri_mode_eth_mac_v5_4.ngc
utilities_xmdf::xmdfSetData $instance FileSet $fcount type ngc
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path tri_mode_eth_mac_v5_4.v
utilities_xmdf::xmdfSetData $instance FileSet $fcount type verilog
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path tri_mode_eth_mac_v5_4.veo
utilities_xmdf::xmdfSetData $instance FileSet $fcount type verilog_template
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path tri_mode_eth_mac_v5_4.xco
utilities_xmdf::xmdfSetData $instance FileSet $fcount type coregen_ip
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path tri_mode_eth_mac_v5_4_xmdf.tcl
utilities_xmdf::xmdfSetData $instance FileSet $fcount type AnyView
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount associated_module tri_mode_eth_mac_v5_4
incr fcount

}

# ::gen_comp_name_xmdf::xmdfApplyParams
