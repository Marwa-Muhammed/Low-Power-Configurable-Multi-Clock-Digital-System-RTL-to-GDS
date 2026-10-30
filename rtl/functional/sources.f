// ============================================================
// Source list file 
// Usage (ModelSim/Questa):  vlog -f sources.f
// ============================================================

// ---------- ALU ----------
Arithmatic_unit.v
Logic_unit.v
CMP_unit.v
Shift_unit.v
DECODER_2X4.v
ALU_TOP.v

// ---------- Clocking / reset / sync ----------
CLK_DIV.v
clk_gate.v
RST_SYNC.v
DATA_SYNC.v
pulse_gen.v
prescale.v

// ---------- Async FIFO ----------
GRAY_SYNC.v
FIFO_BUFFER.v
SOURCE_DOMAIN.v
DESTINATION_DOMAIN.v
ASYNC_FIFO.v

// ---------- UART TX ----------
parity_calc.v
serializer.v
Tx_FSM.sv
uart_tx.v

// ---------- UART RX ----------
edge_bit_counter.v
sampler.v
deserializer.v
parity_checker.v
Rx_FSM.sv
uart_rx.v

// ---------- UART top ----------
uart_top.v

// ---------- System blocks ----------
regfile.v
sys_ctrl.sv

// ---------- Top module ----------
sys_top.v

// ---------- Testbench ----------
SYS_TOP_tb.v
