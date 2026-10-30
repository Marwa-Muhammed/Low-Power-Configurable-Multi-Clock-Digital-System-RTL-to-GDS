########################### Define Top Module ############################
                                                   
set top_module SYS_TOP

##################### Define Working Library Directory ######################
                                                   
define_design_lib work -path ./work

################## Design Compiler Library Files #setup ######################

lappend search_path /home/ICer/Shared_Folder/FINAL_SYSYEM/std_cells
lappend search_path /home/ICer/Shared_Folder/FINAL_SYSYEM/rtl

set SSLIB "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

########################## SVF ###################################

set_svf ./sys_top.svf

## Standard Cell libraries 
set target_library [list $SSLIB $TTLIB $FFLIB]

## Standard Cell & Hard Macros libraries 
set link_library [list * $SSLIB $TTLIB $FFLIB]  

#echo "###############################################"
#echo "############# Reading RTL Files  ##############"
#echo "###############################################"

set verilog_files [list \
    Arithmatic_unit.v Logic_unit.v CMP_unit.v Shift_unit.v DECODER_2X4.v ALU_TOP.v \
    CLK_DIV.v clk_gate.v RST_SYNC.v DATA_SYNC.v pulse_gen.v prescale.v \
    GRAY_SYNC.v FIFO_BUFFER.v SOURCE_DOMAIN.v DESTINATION_DOMAIN.v ASYNC_FIFO.v \
    parity_calc.v serializer.v uart_tx.v \
    edge_bit_counter.v sampler.v deserializer.v parity_checker.v uart_rx.v \
    uart_top.v regfile.v mux2x1.v sys_top.v ]

set sverilog_files [list Tx_FSM.sv Rx_FSM.sv sys_ctrl.sv]

foreach f $verilog_files   { analyze -format verilog   $f }
foreach f $sverilog_files  { analyze -format sverilog  $f }

###################### Defining toplevel ###################################

elaborate $top_module
current_design $top_module

#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## Liniking All The Design Parts ########"
puts "###############################################"

link 

#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## checking design consistency ##########"
puts "###############################################"

check_design

#################### Define Design Constraints #########################
puts "###############################################"
puts "############ Design Constraints #### ##########"
puts "###############################################"

source -echo ./dft_Scripts/cons.tcl


######################## Scan Configuration ######################

set_scan_configuration -clock_mixing no_mix -style multiplexed_flip_flop -replace true -max_length 100

###################### Mapping and optimization #######################

compile -scan

################################################################### 
# Setting Test Timing Variables
################################################################### 

# Preclock Measure Protocol (default protocol)
set test_default_period 1000
set test_default_delay 0
set test_default_bidir_delay 0
set test_default_strobe 20
set test_default_strobe_width 0

########################## Define DFT Signals ##########################

set_dft_signal -port [get_ports scan_clk]  -type ScanClock   -view existing_dft  -timing {30 60}
set_dft_signal -port [get_ports scan_rst]  -type Reset       -view existing_dft  -active_state 0
set_dft_signal -port [get_ports test_mode] -type Constant    -view existing_dft  -active_state 1 
set_dft_signal -port [get_ports test_mode] -type TestMode    -view spec          -active_state 1 
set_dft_signal -port [get_ports SE]        -type ScanEnable  -view spec          -active_state 1   -usage scan
set_dft_signal -port [get_ports SI]        -type ScanDataIn  -view spec 
set_dft_signal -port [get_ports SO]        -type ScanDataOut -view spec  

set_dft_signal -port [get_ports test_mode] -type ScanEnable  -view spec          -active_state 1   -usage clock_gating
############################# Create Test Protocol #######################
                                           
create_test_protocol

###################### Pre-DFT Design Rule Checking #######################

dft_drc -verbose

############################# Preview DFT ##############################

preview_dft -show scan_summary

############################# Insert DFT ##############################

insert_dft
compile -scan -incremental

set_svf -off

###################### Design Rule Checking #######################

dft_drc -verbose -coverage_estimate

#############################################################################
# Write out files
#############################################################################

write_file -format verilog -hierarchy -output POST_DFT_sys_top_Netlist.v

####################### reporting ##########################################

report_area -hierarchy > Reports/area_dft.rpt
report_power -hierarchy > Reports/power_dft.rpt
report_timing -max_paths 100 -delay_type min > Reports/hold_dft.rpt
report_timing -max_paths 100 -delay_type max > Reports/setup_dft.rpt
report_clock -attributes > Reports/clocks_dft.rpt
report_constraint -all_violators > Reports/constraints_dft.rpt
report_port [get_ports *] > Reports/ports.rpt
dft_drc -verbose -coverage_estimate > Reports/dft_drc_post_dft.rpt

################# starting graphical user interface #######################

#gui_start
