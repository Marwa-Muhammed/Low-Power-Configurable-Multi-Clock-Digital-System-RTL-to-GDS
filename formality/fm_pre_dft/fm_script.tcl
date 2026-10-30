#############################################################################
# Formal Verification Script - Formality
# Reference (RTL) vs Implementation (Gate-Level Netlist)
# Design : SYS_TOP
#############################################################################

# Global setup options
set synopsys_auto_setup true

# Define design paths
set RTL_DIR     "/home/ICer/Shared_Folder/FINAL_SYSYEM/rtl"  
set NETLIST_DIR "/home/ICer/Shared_Folder/FINAL_SYSYEM/syn_pre_dft"
set STD_CELLS   "/home/ICer/Shared_Folder/FINAL_SYSYEM/std_cells/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set top_module  SYS_TOP

# Set SVF file from Design Compiler
set_svf "${NETLIST_DIR}/sys_top.svf"

#############################################################################
# ==> REFERENCE design (RTL)
#############################################################################

# Read Verilog RTL files into container "r"
read_verilog -container r [list \
    "${RTL_DIR}/ALU_TOP.v" \
    "${RTL_DIR}/Arithmatic_unit.v" \
    "${RTL_DIR}/ASYNC_FIFO.v" \
    "${RTL_DIR}/CLK_DIV.v" \
    "${RTL_DIR}/clk_gate.v" \
    "${RTL_DIR}/CMP_unit.v" \
    "${RTL_DIR}/DATA_SYNC.v" \
    "${RTL_DIR}/DECODER_2X4.v" \
    "${RTL_DIR}/deserializer.v" \
    "${RTL_DIR}/DESTINATION_DOMAIN.v" \
    "${RTL_DIR}/edge_bit_counter.v" \
    "${RTL_DIR}/FIFO_BUFFER.v" \
    "${RTL_DIR}/GRAY_SYNC.v" \
    "${RTL_DIR}/Logic_unit.v" \
    "${RTL_DIR}/parity_calc.v" \
    "${RTL_DIR}/parity_checker.v" \
    "${RTL_DIR}/prescale.v" \
    "${RTL_DIR}/pulse_gen.v" \
    "${RTL_DIR}/regfile.v" \
    "${RTL_DIR}/RST_SYNC.v" \
    "${RTL_DIR}/sampler.v" \
    "${RTL_DIR}/serializer.v" \
    "${RTL_DIR}/Shift_unit.v" \
    "${RTL_DIR}/SOURCE_DOMAIN.v" \
    "${RTL_DIR}/sys_top.v" \
    "${RTL_DIR}/uart_rx.v" \
    "${RTL_DIR}/uart_top.v" \
    "${RTL_DIR}/uart_tx.v" \
]

# Read SystemVerilog RTL files into container "r"
read_sverilog -container r [list \
    "${RTL_DIR}/Rx_FSM.sv" \
    "${RTL_DIR}/sys_ctrl.sv" \
    "${RTL_DIR}/Tx_FSM.sv" \
]

# ---- Read standard cell library (functional/logic view only) ----
# A single corner (tt) is sufficient for Formality: it only needs the
# logic/truth-table view of each cell, not timing arcs, so ss/ff are
# not required here.

read_db -container r "/home/ICer/Shared_Folder/FINAL_SYSYEM/std_cells/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"

# ---- Set reference top module ----
set_top $top_module


#############################################################################
# ==> IMPLEMENTATION design (gate-level netlist)
#############################################################################

# Read gate-level netlist into container "i"
read_verilog -container i "${NETLIST_DIR}/sys_top_netlist.v"

# ---- Read the same standard cell library for the implementation side ----
read_db -container i "/home/ICer/Shared_Folder/FINAL_SYSYEM/std_cells/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"

# ---- Set implementation top module ----
set_top $top_module

#############################################################################
# Matching & Verification
#############################################################################
match

set successful [verify]

if {!$successful} {
    diagnose
    analyze_points -failing
}

#############################################################################
# Deliverable Reports
#############################################################################
file mkdir "Reports"

report_passing_points    > "Reports/passing_points.rpt"
report_failing_points    > "Reports/failing_points.rpt"
report_aborted_points    > "Reports/aborted_points.rpt"
report_unverified_points > "Reports/unverified_points.rpt"
report_status            > "Reports/status.rpt"


#############################################################################
# End of script
# Remember: capture the session transcript as fm.log at invocation time, e.g.
#   fm_shell -f fm_script.tcl | tee fm.log
#############################################################################
