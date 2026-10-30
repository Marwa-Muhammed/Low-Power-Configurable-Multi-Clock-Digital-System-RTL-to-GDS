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
    uart_top.v regfile.v sys_top.v ]

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

source -echo ./Syn_Scripts/cons.tcl

###################### Mapping and optimization ########################
puts "###############################################"
puts "########## Mapping & Optimization #############"
puts "###############################################"

compile -map_effort high
set_svf -off


#############################################################################
# Write out Design after initial compile
#############################################################################

write_file -format verilog -hierarchy -output sys_top_netlist.v
write_file -format ddc     -hierarchy -output sys_top_netlist.ddc
write_sdc  -nosplit sys_top_constraints.sdc

################# reporting #######################
report_area -hierarchy > Syn_Reports/Area.rpt
report_power -hierarchy > Syn_Reports/power.rpt
report_timing -max_paths 100 -delay_type min > Syn_Reports/hold.rpt
report_timing -max_paths 100 -delay_type max > Syn_Reports/setup.rpt
report_clock -attributes > Syn_Reports/clocks.rpt
report_constraint -all_violators > Syn_Reports/constraints.rpt

################# starting graphical user interface #######################

#gui_start
