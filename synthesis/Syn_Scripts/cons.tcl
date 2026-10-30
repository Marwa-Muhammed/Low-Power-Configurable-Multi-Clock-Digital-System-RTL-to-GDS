####################################################################################
           #########################################################
                  #### Section 1 : Clocks Definitions ####
           #########################################################
#################################################################################### 
# 1. Master Clock Definitions 
# 2. Generated Clock Definitions
# 3. Clock Uncertainties
# 4. Clock Transitions
####################################################################################

set REF_CLK_NAME REF_CLK
set REF_CLK_PER 10
set REF_CLK_HALF_PER [expr $REF_CLK_PER/2.0]

set UART_CLK_NAME UART_CLK
set UART_CLK_PER 271.3
set UART_CLK_HALF_PER [expr $UART_CLK_PER/2.0]

set CLKs_SETUP_SKEW 0.2
set CLKs_HOLD_SKEW 0.1
set CLKs_TRANS 0.05


create_clock -period $REF_CLK_PER -name $REF_CLK_NAME -waveform "0 $REF_CLK_HALF_PER" [get_ports REF_CLK] 
create_clock -period $UART_CLK_PER -name $UART_CLK_NAME -waveform "0 $UART_CLK_HALF_PER" [get_ports UART_CLK] 

create_generated_clock -master_clock $UART_CLK_NAME -source [get_ports UART_CLK] -name RX_CLK  -divide_by 1  [get_pins u_clk_div_2/div_clk]
create_generated_clock -master_clock $UART_CLK_NAME -source [get_ports UART_CLK] -name TX_CLK  -divide_by 32 [get_pins u_clk_div_1/div_clk]
create_generated_clock -master_clock $REF_CLK_NAME  -source [get_ports REF_CLK]  -name ALU_CLK -divide_by 1  [get_pins u_clk_gating/GATED_CLK]

set_clock_uncertainty -setup $CLKs_SETUP_SKEW [get_clocks [list $REF_CLK_NAME $UART_CLK_NAME RX_CLK TX_CLK ALU_CLK]]
set_clock_uncertainty -hold  $CLKs_HOLD_SKEW  [get_clocks [list $REF_CLK_NAME $UART_CLK_NAME RX_CLK TX_CLK ALU_CLK]]

set_clock_transition $CLKs_TRANS [get_clocks [list $REF_CLK_NAME $UART_CLK_NAME]]

set_dont_touch_network [get_clocks [list $REF_CLK_NAME $UART_CLK_NAME RX_CLK TX_CLK ALU_CLK]]

####################################################################################
           #########################################################
             #### Section 2 : Clock Grouping ####
           #########################################################
####################################################################################

set_clock_groups -asynchronous -name "CLK_GROUPS" \
    -group [get_clocks [list $REF_CLK_NAME ALU_CLK]] \
    -group [get_clocks [list $UART_CLK_NAME RX_CLK TX_CLK]]

####################################################################################
           #########################################################
             #### Section 3 : set input/output delay on ports ####
           #########################################################
####################################################################################

set RX_CLK_PER $UART_CLK_PER
set TX_CLK_PER [expr $UART_CLK_PER*32]

set in_delay     [expr 0.2*$RX_CLK_PER]
set out_delay_rx [expr 0.2*$RX_CLK_PER]
set out_delay_tx [expr 0.2*$TX_CLK_PER]

#Constrain Input Paths
set input_ports [list RX_IN]
set_input_delay $in_delay -clock RX_CLK [get_ports $input_ports]     

#Constrain Output Paths
set output_ports_rx [list PAR_ERR STP_ERR]
set output_ports_tx [list TX_OUT]
set_output_delay $out_delay_rx -clock RX_CLK [get_ports $output_ports_rx]  
set_output_delay $out_delay_tx -clock TX_CLK [get_ports $output_ports_tx]


####################################################################################
           #########################################################
                  #### Section 3 : Driving cells ####
           #########################################################
####################################################################################

set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_tt_1p2v_25c    -pin Y [get_ports $input_ports]

####################################################################################
           #########################################################
                  #### Section 4 : Output load ####
           #########################################################
####################################################################################
set_load 0.1 [get_ports [list PAR_ERR STP_ERR TX_OUT]]

####################################################################################
           #########################################################
                 #### Section 5 : Operating Condition ####
           #########################################################
####################################################################################

# Define the Worst Library for Max(#setup) analysis
# Define the Best Library for Min(hold) analysis

set_operating_conditions -min_library "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" -min "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" \
-max_library "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c" -max "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c"



