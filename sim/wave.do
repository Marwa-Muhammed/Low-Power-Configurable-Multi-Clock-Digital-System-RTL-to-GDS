onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group System_Top /SYS_TOP_tb/u_dut/RST
add wave -noupdate -expand -group System_Top /SYS_TOP_tb/u_dut/REF_CLK
add wave -noupdate -expand -group System_Top /SYS_TOP_tb/u_dut/UART_CLK
add wave -noupdate -expand -group System_Top /SYS_TOP_tb/u_dut/RX_IN
add wave -noupdate -expand -group System_Top -radix hexadecimal /SYS_TOP_tb/u_dut/RX_P_DATA
add wave -noupdate -expand -group System_Top -radix hexadecimal /SYS_TOP_tb/u_dut/Wr_Data_fifo
add wave -noupdate -expand -group System_Top /SYS_TOP_tb/u_dut/TX_OUT
add wave -noupdate -expand -group System_Top /SYS_TOP_tb/u_dut/PAR_ERR
add wave -noupdate -expand -group System_Top /SYS_TOP_tb/u_dut/STP_ERR
add wave -noupdate -expand -group System_CTRL /SYS_TOP_tb/u_dut/u_sys_ctrl/CLK
add wave -noupdate -expand -group System_CTRL -radix hexadecimal /SYS_TOP_tb/u_dut/u_sys_ctrl/CMD
add wave -noupdate -expand -group System_CTRL -radix hexadecimal /SYS_TOP_tb/u_dut/u_sys_ctrl/Address
add wave -noupdate -expand -group System_CTRL /SYS_TOP_tb/u_dut/u_sys_ctrl/fifo_full
add wave -noupdate -expand -group System_CTRL /SYS_TOP_tb/u_dut/u_sys_ctrl/current_state
add wave -noupdate -expand -group System_CTRL /SYS_TOP_tb/u_dut/u_sys_ctrl/next_state
add wave -noupdate -expand -group System_CTRL -radix hexadecimal /SYS_TOP_tb/u_dut/u_sys_ctrl/RdData
add wave -noupdate -expand -group System_CTRL -radix binary /SYS_TOP_tb/u_dut/u_sys_ctrl/RX_P_DATA
add wave -noupdate -expand -group System_CTRL -color Red /SYS_TOP_tb/u_dut/u_sys_ctrl/RX_D_VLD
add wave -noupdate -expand -group System_CTRL /SYS_TOP_tb/u_dut/u_sys_ctrl/Wr_Data_fifo
add wave -noupdate -expand -group System_CTRL /SYS_TOP_tb/u_dut/u_sys_ctrl/Wr_inc
add wave -noupdate -group REG_FILE /SYS_TOP_tb/u_dut/RF/Address
add wave -noupdate -group REG_FILE -color Blue /SYS_TOP_tb/u_dut/RF/WrEn
add wave -noupdate -group REG_FILE /SYS_TOP_tb/u_dut/RF/WrData
add wave -noupdate -group REG_FILE -color {Medium Orchid} /SYS_TOP_tb/u_dut/RF/RdEn
add wave -noupdate -group REG_FILE -radix hexadecimal /SYS_TOP_tb/u_dut/RF/RdData
add wave -noupdate -group REG_FILE /SYS_TOP_tb/u_dut/RF/RdData_valid
add wave -noupdate -group REG_FILE /SYS_TOP_tb/u_dut/RF/REG0
add wave -noupdate -group REG_FILE /SYS_TOP_tb/u_dut/RF/REG1
add wave -noupdate -group REG_FILE /SYS_TOP_tb/u_dut/RF/REG2
add wave -noupdate -group REG_FILE /SYS_TOP_tb/u_dut/RF/REG3
add wave -noupdate -group REG_FILE -radix hexadecimal /SYS_TOP_tb/u_dut/RF/u_Reg_File
add wave -noupdate -expand -group ALU /SYS_TOP_tb/u_dut/u_sys_ctrl/latched_alu_func
add wave -noupdate -expand -group ALU /SYS_TOP_tb/u_dut/u_sys_ctrl/ALU_CLK_EN
add wave -noupdate -expand -group ALU /SYS_TOP_tb/u_dut/ALU/CLK_top
add wave -noupdate -expand -group ALU -radix decimal /SYS_TOP_tb/u_dut/ALU/A_top
add wave -noupdate -expand -group ALU -radix decimal /SYS_TOP_tb/u_dut/ALU/B_top
add wave -noupdate -expand -group ALU -radix decimal /SYS_TOP_tb/u_dut/u_sys_ctrl/ALU_OUT
add wave -noupdate -expand -group ALU -color {Medium Violet Red} /SYS_TOP_tb/u_dut/u_sys_ctrl/OUT_valid
add wave -noupdate -group FIFO /SYS_TOP_tb/u_dut/u_async_fifo/read_clk
add wave -noupdate -group FIFO /SYS_TOP_tb/u_dut/u_async_fifo/read_enable
add wave -noupdate -group FIFO -radix decimal /SYS_TOP_tb/u_dut/u_async_fifo/rd_data
add wave -noupdate -group FIFO /SYS_TOP_tb/u_dut/u_async_fifo/write_clk
add wave -noupdate -group FIFO /SYS_TOP_tb/u_dut/u_async_fifo/write_enable
add wave -noupdate -group FIFO -radix decimal /SYS_TOP_tb/u_dut/u_async_fifo/MEM/mem_array
add wave -noupdate -group FIFO /SYS_TOP_tb/u_dut/u_async_fifo/fifo_empty
add wave -noupdate -group FIFO /SYS_TOP_tb/u_dut/u_async_fifo/fifo_full
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {13350901255 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 278
configure wave -valuecolwidth 38
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 8680560
configure wave -griddelta 50
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {15545385381 ps}
