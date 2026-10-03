onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group REF_CLK&RST /SYS_TB/u_DUT/u_SYS_CTRL/CLK
add wave -noupdate -expand -group REF_CLK&RST /SYS_TB/u_DUT/u_SYS_CTRL/RST
add wave -noupdate -expand -group UART_RX /SYS_TB/u_DUT/u_UART_RX/clk
add wave -noupdate -expand -group UART_RX /SYS_TB/u_DUT/u_UART_RX/rst
add wave -noupdate -expand -group UART_RX /SYS_TB/u_DUT/u_UART_RX/RX_IN
add wave -noupdate -expand -group UART_RX /SYS_TB/u_DUT/u_UART_RX/PRESCALE
add wave -noupdate -expand -group UART_RX /SYS_TB/u_DUT/u_UART_RX/P_DATA
add wave -noupdate -expand -group UART_RX /SYS_TB/u_DUT/u_UART_RX/data_valid
add wave -noupdate -expand -group DATA_SYNCH /SYS_TB/u_DUT/u_DATA_SYNC/CLK
add wave -noupdate -expand -group DATA_SYNCH /SYS_TB/u_DUT/u_DATA_SYNC/RST
add wave -noupdate -expand -group DATA_SYNCH /SYS_TB/u_DUT/u_DATA_SYNC/UNSYNC_BUS
add wave -noupdate -expand -group DATA_SYNCH /SYS_TB/u_DUT/u_DATA_SYNC/sync_bus
add wave -noupdate -expand -group SYS_CTRL_I /SYS_TB/u_DUT/u_SYS_CTRL/RX_P_DATA
add wave -noupdate -expand -group SYS_CTRL_I /SYS_TB/u_DUT/u_SYS_CTRL/RX_D_VLD
add wave -noupdate -expand -group SYS_CTRL_I /SYS_TB/u_DUT/u_SYS_CTRL/ALU_OUT
add wave -noupdate -expand -group SYS_CTRL_I /SYS_TB/u_DUT/u_SYS_CTRL/OUT_Valid
add wave -noupdate -expand -group SYS_CTRL_I /SYS_TB/u_DUT/u_SYS_CTRL/RdData
add wave -noupdate -expand -group SYS_CTRL_I /SYS_TB/u_DUT/u_SYS_CTRL/RdData_Valid
add wave -noupdate -expand -group SYS_CTRL_I /SYS_TB/u_DUT/u_SYS_CTRL/FIFO_FULL
add wave -noupdate -expand -group SYS_CTRL_O /SYS_TB/u_DUT/u_SYS_CTRL/Address
add wave -noupdate -expand -group SYS_CTRL_O /SYS_TB/u_DUT/u_SYS_CTRL/ALU_FUN
add wave -noupdate -expand -group SYS_CTRL_O /SYS_TB/u_DUT/u_SYS_CTRL/clk_div_en
add wave -noupdate -expand -group SYS_CTRL_O /SYS_TB/u_DUT/u_SYS_CTRL/CLK_EN
add wave -noupdate -expand -group SYS_CTRL_O /SYS_TB/u_DUT/u_SYS_CTRL/EN
add wave -noupdate -expand -group SYS_CTRL_O /SYS_TB/u_DUT/u_SYS_CTRL/RdEn
add wave -noupdate -expand -group SYS_CTRL_O /SYS_TB/u_DUT/u_SYS_CTRL/TX_D_VLD
add wave -noupdate -expand -group SYS_CTRL_O /SYS_TB/u_DUT/u_SYS_CTRL/TX_P_DATA
add wave -noupdate -expand -group SYS_CTRL_O /SYS_TB/u_DUT/u_SYS_CTRL/WrData
add wave -noupdate -expand -group SYS_CTRL_O /SYS_TB/u_DUT/u_SYS_CTRL/WrEn
add wave -noupdate -expand -group REGFILE /SYS_TB/u_DUT/u_RegFile/RdData
add wave -noupdate -expand -group REGFILE /SYS_TB/u_DUT/u_RegFile/RdData_Valid
add wave -noupdate -expand -group REGFILE /SYS_TB/u_DUT/u_RegFile/Address
add wave -noupdate -expand -group REGFILE /SYS_TB/u_DUT/u_RegFile/WrData
add wave -noupdate -expand -group REGFILE /SYS_TB/u_DUT/u_RegFile/WrEn
add wave -noupdate -expand -group REGFILE /SYS_TB/u_DUT/u_RegFile/RdEn
add wave -noupdate -expand -group REGFILE /SYS_TB/u_DUT/u_RegFile/mem
add wave -noupdate -expand -group ALU /SYS_TB/u_DUT/u_ALU/clk
add wave -noupdate -expand -group ALU /SYS_TB/u_DUT/u_ALU/ALU_EN
add wave -noupdate -expand -group ALU /SYS_TB/u_DUT/u_ALU/A
add wave -noupdate -expand -group ALU /SYS_TB/u_DUT/u_ALU/B
add wave -noupdate -expand -group ALU /SYS_TB/u_DUT/u_ALU/ALU_FUN
add wave -noupdate -expand -group ALU /SYS_TB/u_DUT/u_ALU/ALU_OUT
add wave -noupdate -expand -group ALU /SYS_TB/u_DUT/u_ALU/Valid
add wave -noupdate -expand -group ASYNC_FIFO /SYS_TB/u_DUT/u_ASYNC_FIFO/rclk
add wave -noupdate -expand -group ASYNC_FIFO /SYS_TB/u_DUT/u_ASYNC_FIFO/rinc
add wave -noupdate -expand -group ASYNC_FIFO /SYS_TB/u_DUT/u_ASYNC_FIFO/rrst_n
add wave -noupdate -expand -group ASYNC_FIFO /SYS_TB/u_DUT/u_ASYNC_FIFO/wclk
add wave -noupdate -expand -group ASYNC_FIFO /SYS_TB/u_DUT/u_ASYNC_FIFO/wdata
add wave -noupdate -expand -group ASYNC_FIFO /SYS_TB/u_DUT/u_ASYNC_FIFO/winc
add wave -noupdate -expand -group ASYNC_FIFO /SYS_TB/u_DUT/u_ASYNC_FIFO/wrst_n
add wave -noupdate -expand -group ASYNC_FIFO /SYS_TB/u_DUT/u_ASYNC_FIFO/rdata
add wave -noupdate -expand -group ASYNC_FIFO /SYS_TB/u_DUT/u_ASYNC_FIFO/rempty
add wave -noupdate -expand -group ASYNC_FIFO /SYS_TB/u_DUT/u_ASYNC_FIFO/wfull
add wave -noupdate -expand -group UART_TX /SYS_TB/u_DUT/u_CLK_DIV_TX/o_div_clk
add wave -noupdate -expand -group UART_TX /SYS_TB/u_DUT/u_UART_TX/TX_out
add wave -noupdate -expand -group UART_TX /SYS_TB/u_DUT/u_UART_TX/Busy
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {207319229 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {1806035604 ps} {2080766581 ps}
