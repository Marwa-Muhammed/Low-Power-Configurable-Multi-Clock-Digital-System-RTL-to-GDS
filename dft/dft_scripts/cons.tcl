####################################################################################
####################################################################################
#                   Section 1 : Clocks Definitions
####################################################################################
####################################################################################
# 1. Master Clock Definitions
# 2. Generated Clock Definitions
# 3. Clock Uncertainties
# 4. Clock Transitions
####################################################################################

#-------------------------------------------------------------------------------
# Clock Names and Periods
#-------------------------------------------------------------------------------

set DFT_CLK_NAME DFT_CLK
set DFT_CLK_PER 1000
set DFT_CLK_HALF_PER [expr $DFT_CLK_PER/2.0]

set DFT_CLK_SETUP_SKEW 0.025
set DFT_CLK_HOLD_SKEW  0.01
set DFT_CLK_RISE       0.05
set DFT_CLK_FALL       0.05

set REF_CLK_NAME REF_CLK
set REF_CLK_PER 10
set REF_CLK_HALF_PER [expr $REF_CLK_PER/2.0]

set UART_CLK_NAME UART_CLK
set UART_CLK_PER 271.3
set UART_CLK_HALF_PER [expr $UART_CLK_PER/2.0]

set CLKs_SETUP_SKEW 0.2
set CLKs_HOLD_SKEW  0.1
set CLKs_TRANS      0.05


#################################### SCAN Clocks ###################################

create_clock \
    -name $DFT_CLK_NAME \
    -period $DFT_CLK_PER \
    -waveform "0 $DFT_CLK_HALF_PER" \
    [get_ports scan_clk]

set_clock_uncertainty \
    -setup $DFT_CLK_SETUP_SKEW \
    [get_clocks $DFT_CLK_NAME]

set_clock_uncertainty \
    -hold $DFT_CLK_HOLD_SKEW \
    [get_clocks $DFT_CLK_NAME]

set_clock_transition \
    -rise $DFT_CLK_RISE \
    [get_clocks $DFT_CLK_NAME]

set_clock_transition \
    -fall $DFT_CLK_FALL \
    [get_clocks $DFT_CLK_NAME]


#################################### FUNC Clocks ###################################

# Reference Clock
create_clock \
    -period $REF_CLK_PER \
    -name $REF_CLK_NAME \
    -waveform "0 $REF_CLK_HALF_PER" \
    [get_ports REF_CLK]


# UART Clock
create_clock \
    -period $UART_CLK_PER \
    -name $UART_CLK_NAME \
    -waveform "0 $UART_CLK_HALF_PER" \
    [get_ports UART_CLK]


# RX Generated Clock
create_generated_clock \
    -master_clock $UART_CLK_NAME \
    -source [get_ports UART_CLK] \
    -name RX_CLK \
    -divide_by 1 \
    [get_pins u_clk_div_2/div_clk]


# TX Generated Clock
create_generated_clock \
    -master_clock $UART_CLK_NAME \
    -source [get_ports UART_CLK] \
    -name TX_CLK \
    -divide_by 32 \
    [get_pins u_clk_div_1/div_clk]


# ALU Generated Clock
create_generated_clock \
    -master_clock $REF_CLK_NAME \
    -source [get_ports REF_CLK] \
    -name ALU_CLK \
    -divide_by 1 \
    [get_pins u_clk_gating/GATED_CLK]


#-------------------------------------------------------------------------------
# Functional Clock Uncertainty
#-------------------------------------------------------------------------------

set_clock_uncertainty \
    -setup $CLKs_SETUP_SKEW \
    [get_clocks [list $REF_CLK_NAME $UART_CLK_NAME RX_CLK TX_CLK ALU_CLK]]

set_clock_uncertainty \
    -hold $CLKs_HOLD_SKEW \
    [get_clocks [list $REF_CLK_NAME $UART_CLK_NAME RX_CLK TX_CLK ALU_CLK]]


#-------------------------------------------------------------------------------
# Functional Clock Transition
#-------------------------------------------------------------------------------

set_clock_transition \
    $CLKs_TRANS \
    [get_clocks [list $REF_CLK_NAME $UART_CLK_NAME]]


#-------------------------------------------------------------------------------
# Prevent clock network optimization
#-------------------------------------------------------------------------------

set_dont_touch_network \
    [get_clocks [list $REF_CLK_NAME $UART_CLK_NAME RX_CLK TX_CLK ALU_CLK $DFT_CLK_NAME]]


####################################################################################
####################################################################################
#                   Section 2 : Clock Grouping
####################################################################################
####################################################################################

# REF/ALU clocks are asynchronous to UART/RX/TX clocks.
# DFT scan clock is asynchronous to all functional clocks.

set_clock_groups -asynchronous -name "CLK_GROUPS" \
    -group [get_clocks [list $REF_CLK_NAME ALU_CLK]] \
    -group [get_clocks [list $UART_CLK_NAME RX_CLK TX_CLK]] \
    -group [get_clocks $DFT_CLK_NAME]


####################################################################################
####################################################################################
#                   Section 3 : Input / Output Delays
####################################################################################
####################################################################################

#-------------------------------------------------------------------------------
# Functional Clock Periods
#-------------------------------------------------------------------------------

set RX_CLK_PER $UART_CLK_PER
set TX_CLK_PER [expr $UART_CLK_PER*32]


#-------------------------------------------------------------------------------
# Functional Input / Output Delays
#-------------------------------------------------------------------------------

set in_delay     [expr 0.2*$RX_CLK_PER]
set out_delay_rx [expr 0.2*$RX_CLK_PER]
set out_delay_tx [expr 0.2*$TX_CLK_PER]


#-------------------------------------------------------------------------------
# Functional Input Ports
#-------------------------------------------------------------------------------

set input_ports [list RX_IN]

set_input_delay \
    $in_delay \
    -clock RX_CLK \
    [get_ports $input_ports]


#-------------------------------------------------------------------------------
# Functional Output Ports
#-------------------------------------------------------------------------------

set output_ports_rx [list PAR_ERR STP_ERR]
set output_ports_tx [list TX_OUT]

set_output_delay \
    $out_delay_rx \
    -clock RX_CLK \
    [get_ports $output_ports_rx]

set_output_delay \
    $out_delay_tx \
    -clock TX_CLK \
    [get_ports $output_ports_tx]


#-------------------------------------------------------------------------------
# DFT Input / Output Delays
#-------------------------------------------------------------------------------

# DFT delay = 20% of DFT clock period
set dft_in_delay  [expr 0.2*$DFT_CLK_PER]
set dft_out_delay [expr 0.2*$DFT_CLK_PER]


#-------------------------------------------------------------------------------
# DFT Input Ports
#-------------------------------------------------------------------------------

set dft_input_ports [list SE SI test_mode]

set_input_delay \
    $dft_in_delay \
    -clock $DFT_CLK_NAME \
    [get_ports $dft_input_ports]


#-------------------------------------------------------------------------------
# DFT Output Port
#-------------------------------------------------------------------------------

set_output_delay \
    $dft_out_delay \
    -clock $DFT_CLK_NAME \
    [get_ports SO]


####################################################################################
####################################################################################
#                   Section 4 : Driving Cells
####################################################################################
####################################################################################

#-------------------------------------------------------------------------------
# Input ports driven externally
#-------------------------------------------------------------------------------

set driving_input_ports [list RX_IN SE SI test_mode]

set_driving_cell \
    -lib_cell BUFX2M \
    -library scmetro_tsmc_cl013g_rvt_tt_1p2v_25c \
    -pin Y \
    [get_ports $driving_input_ports]


####################################################################################
####################################################################################
#                   Section 5 : Output Load
####################################################################################
####################################################################################

set_load 0.1 \
    [get_ports [list PAR_ERR STP_ERR TX_OUT SO]]


####################################################################################
####################################################################################
#                   Section 6 : Operating Condition
####################################################################################
####################################################################################

#-------------------------------------------------------------------------------
# Worst library for MAX / setup analysis
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
# Best library for MIN / hold analysis
#-------------------------------------------------------------------------------

set_operating_conditions \
    -min_library scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c \
    -min         scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c \
    -max_library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c \
    -max         scmetro_tsmc_cl013g_rvt_ss_1p08v_125c


####################################################################################
####################################################################################
#                   Section 7 : Case Analysis
####################################################################################
####################################################################################

# Test mode is asserted for the DFT analysis
set_case_analysis 1 [get_ports test_mode]


####################################################################################
####################################################################################
#                   End of SDC
####################################################################################
####################################################################################