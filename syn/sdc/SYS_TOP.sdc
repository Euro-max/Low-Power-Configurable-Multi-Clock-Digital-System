###################################################################

# Created by write_sdc on Sun Sep 27 05:27:31 2026

###################################################################
set sdc_version 2.1

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_operating_conditions -max scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -max_library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -min scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c -min_library scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c
set_wire_load_model -name tsmc13_wl30 -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports RX_IN]
set_load -pin_load 0.1 [get_ports TX_OUT]
create_clock [get_ports REF_CLK]  -name CLKREF_DOMAIN  -period 20  -waveform {0 10}
set_clock_uncertainty -setup 0.2  [get_clocks CLKREF_DOMAIN]
set_clock_uncertainty -hold 0.1  [get_clocks CLKREF_DOMAIN]
set_clock_transition -max -rise 0.05 [get_clocks CLKREF_DOMAIN]
set_clock_transition -min -rise 0.05 [get_clocks CLKREF_DOMAIN]
set_clock_transition -max -fall 0.05 [get_clocks CLKREF_DOMAIN]
set_clock_transition -min -fall 0.05 [get_clocks CLKREF_DOMAIN]
create_clock [get_ports UART_CLK]  -name CLKUART_DOMAIN  -period 271.3  -waveform {0 135.65}
set_clock_uncertainty -setup 0.2  [get_clocks CLKUART_DOMAIN]
set_clock_uncertainty -hold 0.1  [get_clocks CLKUART_DOMAIN]
set_clock_transition -max -rise 0.05 [get_clocks CLKUART_DOMAIN]
set_clock_transition -min -rise 0.05 [get_clocks CLKUART_DOMAIN]
set_clock_transition -max -fall 0.05 [get_clocks CLKUART_DOMAIN]
set_clock_transition -min -fall 0.05 [get_clocks CLKUART_DOMAIN]
create_generated_clock [get_pins U0/ECK]  -name alu_clk  -source [get_ports REF_CLK]  -divide_by 1
set_clock_uncertainty -setup 0.2  [get_clocks alu_clk]
set_clock_uncertainty -hold 0.1  [get_clocks alu_clk]
create_generated_clock [get_pins u_CLK_DIV_TX/o_div_clk]  -name TX_CLK  -source [get_ports UART_CLK]  -master_clock CLKUART_DOMAIN  -divide_by 32  -add
set_clock_uncertainty -setup 0.2  [get_clocks TX_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks TX_CLK]
create_generated_clock [get_pins u_CLK_DIV_RX/o_div_clk]  -name RX_CLK  -source [get_ports UART_CLK]  -master_clock CLKUART_DOMAIN  -divide_by 1  -add
set_clock_uncertainty -setup 0.2  [get_clocks RX_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks RX_CLK]
set_input_delay -clock RX_CLK  54.26  [get_ports RX_IN]
set_output_delay -clock TX_CLK  1736.32  [get_ports TX_OUT]
set_clock_groups -asynchronous -name CLKREF_DOMAIN_1 -group [list [get_clocks CLKREF_DOMAIN] [get_clocks alu_clk]] -group [list [get_clocks CLKUART_DOMAIN] [get_clocks TX_CLK] [get_clocks RX_CLK]]
