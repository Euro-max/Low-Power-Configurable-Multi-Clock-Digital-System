########################### Define Top Module ############################
set top_module SYS_TOP

##################### Create Directories for Outputs ######################
file mkdir work
file mkdir netlists
file mkdir sdf
file mkdir sdc
file mkdir reports

##################### Define Working Library Directory ######################
define_design_lib work -path ./work

############################# Formality Setup File ##########################
set_svf ${top_module}.svf

################## Design Compiler Library Files Setup ######################

puts "###########################################"
puts "#      Setting Design Libraries           #"
puts "###########################################"

lappend search_path /home/ICer/tsmc_fb_cl013g_sc/aci/sc-m/synopsys
lappend search_path /home/ICer/Labs/SYSTEM/std_cells
lappend search_path /home/ICer/Labs/SYSTEM/rtl

set SSLIB "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

set target_library [list $SSLIB]
set link_library   [list * $SSLIB $TTLIB $FFLIB]

######################## Reading RTL Files #################################

puts "###########################################"
puts "#              Reading RTL Files          #"
puts "###########################################"

set file_format sverilog

set fh [open system.lst r]
set rtl [read $fh]
close $fh
set designs ""
regsub -all "\n" $rtl " " designs

analyze -format sverilog $designs
elaborate $top_module

###################### Defining toplevel ###################################

current_design $top_module

#################### Linking All The Design Parts #########################
puts "###############################################"
puts "######## Linking All The Design Parts #########"
puts "###############################################"

link

#################### Checking Design Consistency ##########################
puts "###############################################"
puts "######## Checking Design Consistency ##########"
puts "###############################################"

check_design

#################### Define Design Constraints #########################
puts "###############################################"
puts "############ Design Constraints ###############"
puts "###############################################"

source ./cons.tcl
set_case_analysis 1 [get_ports test_mode]     
#################### Configure Scan Chains & Autofix #########################
puts "###############################################"
puts "############ Configure scan chains ############"
puts "###############################################"

# Fix D14: mix_edges allows lockup latch insertion for negative-edge registers
# Chain count: Set to 3 to match parameter CHAINS=3 on SI/SO
set_scan_configuration -chain_count 5 -clock_mixing mix_edges -style multiplexed_flip_flop -replace true -max_length 100


###################### Mapping and optimization ########################
puts "###############################################"
puts "########## Mapping & Optimization #############"
puts "###############################################"

compile -scan

################################################################### 
# Setting Test Timing Variables
################################################################### 

set test_default_period 100
set test_default_delay 0
set test_default_bidir_delay 0
set test_default_strobe 20
set test_default_strobe_width 0

########################## Define DFT Signals ##########################
########################## Define DFT Signals ##########################
set_dft_signal -port [get_ports scan_clk]  -type ScanClock   -view existing_dft  -timing {30 60}
set_dft_signal -port [get_ports scan_rst]  -type Reset       -view existing_dft  -active_state 0
set_dft_signal -port [get_ports test_mode] -type Constant    -view existing_dft  -active_state 1 
set_dft_signal -port [get_ports test_mode] -type TestMode    -view spec          -active_state 1 
set_dft_signal -port [get_ports SE]        -type ScanEnable  -view spec          -active_state 1   -usage scan

# Explicitly map the 5 scan chain inputs and outputs
set_dft_signal -port [get_ports {SI[0] SI[1] SI[2] SI[3] SI[4]}] -type ScanDataIn  -view spec 
set_dft_signal -port [get_ports {SO[0] SO[1] SO[2] SO[3] SO[4]}] -type ScanDataOut -view spec

############################# Create Test Protocol #######################
create_test_protocol

###################### Pre-DFT Design Rule Checking #######################
dft_drc -verbose

############################# Preview DFT ##############################
preview_dft -show scan_summary

############################# Insert DFT ##############################
insert_dft

######################## Optimize Logic post DFT #######################
compile -scan -incremental

###################### Design Rule Checking #######################
dft_drc -verbose -coverage_estimate

#############################################################################
# Write out files
#############################################################################

write_file -format ddc -hierarchy -output netlists/${top_module}.ddc
write_file -format verilog -hierarchy -output netlists/${top_module}_dft.v
write_sdf sdf/${top_module}.sdf
write_sdc -nosplit sdc/${top_module}.sdc

####################### Reporting ##########################################
report_area -hierarchy > reports/area_dft.rpt
report_power -hierarchy > reports/power_dft.rpt
report_timing -max_paths 100 -delay_type min > reports/hold_dft.rpt
report_timing -max_paths 100 -delay_type max > reports/setup_dft.rpt
report_clock -attributes > reports/clocks_dft.rpt
report_constraint -all_violators > reports/constraints_dft.rpt
dft_drc -coverage_estimate > reports/dft_drc_post_dft.rpt
