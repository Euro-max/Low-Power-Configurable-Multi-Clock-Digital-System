
###################################################################
########################### Variables #############################
###################################################################

set SSLIB "/home/ICer/Labs/Ass_DFT_1.0/std_cells/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "/home/ICer/Labs/Ass_DFT_1.0/std_cells/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "/home/ICer/Labs/Ass_DFT_1.0/std_cells/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

###################################################################
############################ Guidance #############################
###################################################################

# Synopsys setup variable
set synopsys_auto_setup true

# Formality Setup File
set_svf "/home/ICer/Labs/SYSTEM/syn/SYS_TOP.svf"

###################################################################
###################### Reference Container ########################
###################################################################

# Read Reference Design Verilog Files
read_verilog -container Ref "/home/ICer/Labs/SYSTEM/syn/netlists/SYS_TOP.v"
# Read Reference technology libraries
read_db -container Ref [list $SSLIB $TTLIB $FFLIB]

# set the top Reference Design 
set_reference_design SYS_TOP
set_top SYS_TOP


###################################################################
#################### Implementation Container #####################
###################################################################

read_verilog -container Imp "/home/ICer/Labs/SYSTEM/dft/netlists/SYS_TOP_dft.v"

# Read Implementation technology libraries
read_db -container Imp [list $SSLIB $TTLIB $FFLIB]

# set the top Implementation Design
set_implementation_design SYS_TOP
set_top SYS_TOP


###################################################################
#################### Implementation Container #####################
###################################################################

########################## Don't verify ###########################

# do not verify scan in & scan out ports as a compare point as it is existed only after synthesis and not existed in the RTL

#scan in & scan out
set_dont_verify_points -type port Imp:/WORK/SYS_TOP/SI
set_dont_verify_points -type port Imp:/WORK/SYS_TOP/S0




############################### contants #####################################

# all atpg enable (test_mode, scan_enable) are zero during formal compare

#test_mode
set_constant Ref:/WORK/*/test_mode 0
set_constant Imp:/WORK/*/test_mode 0

#scan_enable
set_constant Ref:/WORK/*/SE 0
set_constant Imp:/WORK/*/SE 0


###################### Matching Compare points ####################

match

######################### Run Verification ########################

set successful [verify]
if {!$successful} {
diagnose
analyze_points -failing
}

########################### Reporting ############################# 
report_passing_points > "passing_points.rpt"
report_failing_points > "failing_points.rpt"
report_aborted_points > "aborted_points.rpt"
report_unverified_points > "unverified_points.rpt"

########################### Start GUI ############################# 
start_gui


