# ----------------------------------------------------------------------------
# System Constraints for SYS_TOP
# ----------------------------------------------------------------------------
set_fix_multiple_port_nets -all -buffer_constants -feedthroughs

####################################################################################
# Section 1 : Clock Definition
#################################################################################### 
set REF_CLK_PER 20
set UART_CLK_PER 271.27
set SCAN_CLK_PER 100

set CLK_SETUP_SKEW 0.2
set CLK_HOLD_SKEW 0.1
set CLK_LAT 0
set CLK_RISE 0.05
set CLK_FALL 0.05

# Master Clock Definitions 
create_clock -name REF_CLK -period $REF_CLK_PER -waveform "0 [expr $REF_CLK_PER/2]" [get_ports REF_CLK]
create_clock -name UART_CLK -period $UART_CLK_PER -waveform "0 [expr $UART_CLK_PER/2]" [get_ports UART_CLK]
create_clock -name SCAN_CLK -period $SCAN_CLK_PER -waveform "0 [expr $SCAN_CLK_PER/2]" [get_ports scan_clk]

# Generated Clock Definitions
create_generated_clock -name TX_CLK -master_clock UART_CLK -source [get_ports UART_CLK] -divide_by 1 [get_pins u_CLK_DIV_TX/o_div_clk]
create_generated_clock -name RX_CLK -master_clock UART_CLK -source [get_ports UART_CLK] -divide_by 1 [get_pins u_CLK_DIV_RX/o_div_clk]
create_generated_clock -name ALU_CLK -master_clock REF_CLK -source [get_ports REF_CLK] -divide_by 1 [get_pins U0/ECK]

# Clock Uncertainties, Transitions, and Latencies
foreach_in_collection clk [get_clocks *] {
    set_clock_uncertainty -setup $CLK_SETUP_SKEW $clk
    set_clock_uncertainty -hold $CLK_HOLD_SKEW $clk
    set_clock_transition -rise $CLK_RISE $clk
    set_clock_transition -fall $CLK_FALL $clk
    set_clock_latency $CLK_LAT $clk
}

set_dont_touch_network [get_clocks *]

####################################################################################
# Section 2 : Clocks Relationships
####################################################################################
set_clock_groups -asynchronous -group [get_clocks "REF_CLK ALU_CLK"] \
                               -group [get_clocks "UART_CLK TX_CLK RX_CLK"]

set_clock_groups -logically_exclusive -group [get_clocks "REF_CLK UART_CLK ALU_CLK TX_CLK RX_CLK"] \
                                      -group [get_clocks "SCAN_CLK"]

####################################################################################
# Section 3 : Input/Output Delays
####################################################################################
set in_delay   [expr 0.2 * $UART_CLK_PER]
set out_delay  [expr 0.2 * $UART_CLK_PER]
set scan_delay [expr 0.2 * $SCAN_CLK_PER]

set_input_delay $in_delay -clock UART_CLK [get_ports RX_IN]
set_output_delay $out_delay -clock TX_CLK [get_ports TX_OUT]

set_input_delay $scan_delay -clock SCAN_CLK [get_ports test_mode]
set_input_delay $scan_delay -clock SCAN_CLK [get_ports scan_rst]
set_input_delay $scan_delay -clock SCAN_CLK [get_ports SI]
set_input_delay $scan_delay -clock SCAN_CLK [get_ports SE]
set_output_delay $scan_delay -clock SCAN_CLK [get_ports SO]

####################################################################################
# Section 4 : Driving Cells
####################################################################################
set LIB_NAME "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c"
set BUF_CELL "BUFX2M"

set_driving_cell -library $LIB_NAME -lib_cell $BUF_CELL -pin Y [get_ports RX_IN]
set_driving_cell -library $LIB_NAME -lib_cell $BUF_CELL -pin Y [get_ports {SI SE test_mode scan_rst}]

####################################################################################
# Section 5 : Output Loads
####################################################################################
set_load 0.1 [get_ports TX_OUT]
set_load 0.1 [get_ports SO]

####################################################################################
# Section 6 : Operating Conditions
####################################################################################
set_operating_conditions -min_library "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" -min "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" \
                         -max_library "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c" -max "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c"

####################################################################################
# Section 7 : Wireload Model
####################################################################################
set_wire_load_model -name tsmc13_wl30 -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c

####################################################################################
# Section 8 : Case Analysis
####################################################################################
# Note: Case analysis on test_mode is commented out during DFT insertion
set_case_analysis 1 [get_ports test_mode]
