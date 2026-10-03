####################################################################################
# Constraints
####################################################################################
           #########################################################
                  #### Section 0 : DC Variables ####
           #########################################################
# Prevent assign statements in the generated netlist (must be applied before compile)
set_fix_multiple_port_nets -all -buffer_constants -feedthroughs

####################################################################################
           #########################################################
                  #### Section 1 : Clock Definition ####
           #########################################################

set CLK_SETUP_SKEW 0.2
set CLK_HOLD_SKEW 0.1
set CLK_RISE 0.05
set CLK_FALL 0.05

# 1. Master Clocks
create_clock -name CLKREF_DOMAIN -period 20 -waveform "0 10" [get_ports REF_CLK]
create_clock -name CLKUART_DOMAIN -period 271.30 -waveform "0 135.65" [get_ports UART_CLK]

# 2. Generated clocks (Ensure NO spaces exist after the backslashes)
create_generated_clock -name alu_clk \
  -source [get_ports REF_CLK] \
  -divide_by 1 \
  [get_pins U0/ECK]
  
create_generated_clock -name TX_CLK \
  -master_clock CLKUART_DOMAIN \
  -source [get_ports UART_CLK] \
  -divide_by 32 \
  [get_pins u_CLK_DIV_TX/o_div_clk]
  
create_generated_clock -name RX_CLK \
  -master_clock CLKUART_DOMAIN \
  -source [get_ports UART_CLK] \
  -divide_by 1 \
  [get_pins u_CLK_DIV_RX/o_div_clk]
  
# 3. Clock Uncertainty for Setup (Master & Generated clocks)
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks "CLKREF_DOMAIN CLKUART_DOMAIN TX_CLK RX_CLK alu_clk"]

# 4. Clock Uncertainty for Hold (Master & Generated clocks)
set_clock_uncertainty -hold $CLK_HOLD_SKEW [get_clocks "CLKREF_DOMAIN CLKUART_DOMAIN TX_CLK RX_CLK alu_clk"]

# 5. Clock Transition for Master Clocks ONLY 
set_clock_transition -rise $CLK_RISE [get_clocks "CLKREF_DOMAIN CLKUART_DOMAIN"]
set_clock_transition -fall $CLK_FALL [get_clocks "CLKREF_DOMAIN CLKUART_DOMAIN"]

set_dont_touch_network [get_clocks {CLKREF_DOMAIN CLKUART_DOMAIN TX_CLK RX_CLK alu_clk}]

####################################################################################
           #########################################################
             #### Section 2 : Clocks Relationship ####
           #########################################################

set_clock_groups -asynchronous -group [get_clocks {CLKREF_DOMAIN alu_clk}] \
                               -group [get_clocks {CLKUART_DOMAIN TX_CLK RX_CLK}]

####################################################################################
           #########################################################
             #### Section 3 : set input/output delay on ports ####
           #########################################################

# 1. Define master clock period
set UART_CLK_PERIOD 271.30

# 2. Calculate generated clock periods
set RX_CLK_PERIOD [expr $UART_CLK_PERIOD]
set TX_CLK_PERIOD [expr $UART_CLK_PERIOD * 32]

# 3. Calculate 20% delays
set in_delay  [expr 0.2 * $RX_CLK_PERIOD]
set out_delay [expr 0.2 * $TX_CLK_PERIOD]

# 4. Constrain Input (RX_IN captured by RX_CLK)
set_input_delay $in_delay -clock RX_CLK [get_ports RX_IN]

# 5. Constrain Output (TX_OUT launched by TX_CLK)
set_output_delay $out_delay -clock TX_CLK [get_ports TX_OUT]

####################################################################################
           #########################################################
                  #### Section 4 : Driving cells ####
           #########################################################

# Fixed: get_port -> get_ports
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y [get_ports RX_IN]

####################################################################################
           #########################################################
                  #### Section 5 : Output load ####
           #########################################################

# Fixed: get_port -> get_ports
set_load 0.1 [get_ports TX_OUT]

####################################################################################
           #########################################################
                 #### Section 6 : Operating Condition ####
           #########################################################

set_operating_conditions -min_library "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" -min "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" -max_library "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c" -max "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c"

####################################################################################
           #########################################################
                  #### Section 7 : wireload Model ####
           #########################################################

set_wire_load_model -name tsmc13_wl30 -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c

####################################################################################
           #########################################################
                  #### Section 8 : premapped cells (ICG) ####
           #########################################################


