vlib work
vlog -sv *.v *.sv
vsim -voptargs=+acc work.SYS_TOP_tb
do wave.do
run -all