
######################### Formality Setup File ###########################

set synopsys_auto_setup true
set_svf "/home/ICer/Labs/SYSTEM/syn/SYS_TOP.svf"


set SSLIB "/home/ICer/Labs/Ass_DFT_1.0/std_cells/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "/home/ICer/Labs/Ass_DFT_1.0/std_cells/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "/home/ICer/Labs/Ass_DFT_1.0/std_cells/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

######################### Reference Container ############################

## Read Reference technology libraries
read_db -container Ref [list $SSLIB $TTLIB $FFLIB]

## Read Reference Design Files
read_verilog  -container Ref "../rtl/ALU_8B.v"
read_verilog  -container Ref "../rtl/ASYNC_FIFO_TOP.v"
read_verilog  -container Ref "../rtl/B2G.v"
read_verilog  -container Ref "../rtl/CLK_DIV.v"
read_verilog  -container Ref "../rtl/CLKGATE.v"
read_verilog  -container Ref "../rtl/DATA_SAMPLING.v"
read_verilog  -container Ref "../rtl/DATA_SYNC.v"
read_verilog  -container Ref "../rtl/DESERIALIZER.v"
read_verilog  -container Ref "../rtl/DFFS.v"
read_verilog  -container Ref "../rtl/EDGE_COUNTER.v"
read_verilog  -container Ref "../rtl/FIFO_MEM.v"
read_verilog  -container Ref "../rtl/FIFO_RD.v"
read_verilog  -container Ref "../rtl/FIFO_WR.v"
read_sverilog -container Ref "../rtl/FSM.sv"
read_verilog  -container Ref "../rtl/G2B.v"
read_verilog  -container Ref "../rtl/MUX.v"
read_verilog  -container Ref "../rtl/Parity.v"
read_verilog  -container Ref "../rtl/PARITY_CHECKER.v"
read_verilog  -container Ref "../rtl/PulseGen.v"
read_verilog  -container Ref "../rtl/RegisterFile.v"
read_verilog  -container Ref "../rtl/RESET_SYNC.v"
read_sverilog -container Ref "../rtl/RX_FSM.sv"
read_verilog  -container Ref "../rtl/Serializer.v"
read_verilog  -container Ref "../rtl/START_CHECKER.v"
read_verilog  -container Ref "../rtl/STOP_CHECKER.v"
read_sverilog -container Ref "../rtl/SYS_CTRL.sv"
read_verilog  -container Ref "../rtl/SYSTEM_TOP.v"
read_verilog  -container Ref "../rtl/UART_TOP_RX.v"
read_verilog  -container Ref "../rtl/UART_TOP_TX.v"
read_verilog  -container Ref "../rtl/uart_tx_defines.v"

## set the top Reference Design 
set_reference_design SYS_TOP
set_top SYS_TOP

######################## Implementation Container #########################

## Read Implementation technology libraries
read_db -container Imp [list $SSLIB $TTLIB $FFLIB]
## Read Implementation Design Files
 read_verilog -container Imp "/home/ICer/Labs/SYSTEM/syn/netlists/SYS_TOP.v"
## set the top Implementation Design
set_implementation_design SYS_TOP
set_top SYS_TOP


## matching Compare points
match

## verify
set successful [verify]
if {!$successful} {
diagnose
analyze_points -failing
}
file mkdir reports
report_passing_points > "reports/passing_points.rpt"
report_failing_points > "reports/failing_points.rpt"
report_aborted_points > "reports/aborted_points.rpt"
report_unverified_points > "reports/unverified_points.rpt"


start_gui
