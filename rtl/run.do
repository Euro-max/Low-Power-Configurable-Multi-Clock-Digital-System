vlib work
vlog *.v *.sv
vsim -voptargs=+acc work.SYS_TB
do wave.do
run -all
