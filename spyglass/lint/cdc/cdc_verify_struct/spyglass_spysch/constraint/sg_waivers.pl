################################################################################
#This is an internally genertaed by spyglass to populate Waiver Info for Reports
#Note:Spyglass does not support any perl routine like "spyDecompileWaiverInfo"
#     The routine is purely for internal usage of spyglass
################################################################################


use SpyGlass;

spyClearWaiverHashInPerl(0);

spyComputeWaivedViolCount("totalWaivedViolationCount"=>'8',
                          "totalGeneratedCount"=>'0',
                          "totalReportCount"=>'0'
                         );

spyDecompileWaiverInfo("waive_cmd_id"=>'1',
                       "waiverCmd"=>'q%waive  -exact  -rule "Setup_port01" -comment "Created by ICer on 24-Sep-2026 06:26:16"%',
                       "-rule"=>'"Setup_port01"',
                       "-exact"=>'1',
                       "-comment"=>'"Created by ICer on 24-Sep-2026 06:26:16"',
                       "violations_waived"=>'66 68',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./lint/cdc/cdc_verify_struct/lint_waiver_file.awl"',
                       "waiverline"=>'1'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'2',
                       "waiverCmd"=>'q%waive  -exact  -du "SYS_TOP" -rule "W287b" -msg "Instance output port \'stp_err\' is not connected" -comment "Created by ICer on 18-Sep-2026 18:35:37"%',
                       "-du"=>'"SYS_TOP"',
                       "-rule"=>'"W287b"',
                       "-exact"=>'1',
                       "-msg"=>'q%Instance output port \'stp_err\' is not connected%',
                       "-comment"=>'"Created by ICer on 18-Sep-2026 18:35:37"',
                       "violations_waived"=>'',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"/home/ICer/Labs/SYSTEM/spyglass/waived.awl"',
                       "waiverline"=>'1'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'3',
                       "waiverCmd"=>'q%waive  -exact  -du "SYS_TOP" -rule "W287b" -msg "Instance output port \'Carry_Flag\' is not connected" -comment "Created by ICer on 18-Sep-2026 18:35:37"%',
                       "-du"=>'"SYS_TOP"',
                       "-rule"=>'"W287b"',
                       "-exact"=>'1',
                       "-msg"=>'q%Instance output port \'Carry_Flag\' is not connected%',
                       "-comment"=>'"Created by ICer on 18-Sep-2026 18:35:37"',
                       "violations_waived"=>'',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"/home/ICer/Labs/SYSTEM/spyglass/waived.awl"',
                       "waiverline"=>'2'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'4',
                       "waiverCmd"=>'q%waive  -exact  -du "SYS_TOP" -rule "W287b" -msg "Instance output port \'Arith_Flag\' is not connected" -comment "Created by ICer on 18-Sep-2026 18:35:37"%',
                       "-du"=>'"SYS_TOP"',
                       "-rule"=>'"W287b"',
                       "-exact"=>'1',
                       "-msg"=>'q%Instance output port \'Arith_Flag\' is not connected%',
                       "-comment"=>'"Created by ICer on 18-Sep-2026 18:35:37"',
                       "violations_waived"=>'',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"/home/ICer/Labs/SYSTEM/spyglass/waived.awl"',
                       "waiverline"=>'3'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'5',
                       "waiverCmd"=>'q%waive  -exact  -du "SYS_TOP" -rule "W287b" -msg "Instance output port \'Logic_Flag\' is not connected" -comment "Created by ICer on 18-Sep-2026 18:35:37"%',
                       "-du"=>'"SYS_TOP"',
                       "-rule"=>'"W287b"',
                       "-exact"=>'1',
                       "-msg"=>'q%Instance output port \'Logic_Flag\' is not connected%',
                       "-comment"=>'"Created by ICer on 18-Sep-2026 18:35:37"',
                       "violations_waived"=>'',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"/home/ICer/Labs/SYSTEM/spyglass/waived.awl"',
                       "waiverline"=>'4'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'6',
                       "waiverCmd"=>'q%waive  -exact  -du "SYS_TOP" -rule "W287b" -msg "Instance output port \'Shift_Flag\' is not connected" -comment "Created by ICer on 18-Sep-2026 18:35:37"%',
                       "-du"=>'"SYS_TOP"',
                       "-rule"=>'"W287b"',
                       "-exact"=>'1',
                       "-msg"=>'q%Instance output port \'Shift_Flag\' is not connected%',
                       "-comment"=>'"Created by ICer on 18-Sep-2026 18:35:37"',
                       "violations_waived"=>'',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"/home/ICer/Labs/SYSTEM/spyglass/waived.awl"',
                       "waiverline"=>'5'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'7',
                       "waiverCmd"=>'q%waive  -exact  -du "SYS_TOP" -rule "W287b" -msg "Instance output port \'CMP_Flag\' is not connected" -comment "Created by ICer on 18-Sep-2026 18:35:37"%',
                       "-du"=>'"SYS_TOP"',
                       "-rule"=>'"W287b"',
                       "-exact"=>'1',
                       "-msg"=>'q%Instance output port \'CMP_Flag\' is not connected%',
                       "-comment"=>'"Created by ICer on 18-Sep-2026 18:35:37"',
                       "violations_waived"=>'',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"/home/ICer/Labs/SYSTEM/spyglass/waived.awl"',
                       "waiverline"=>'6'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'8',
                       "waiverCmd"=>'q%waive  -exact  -du "SYS_TOP" -rule "W287b" -msg "Instance output port \'par_err\' is not connected" -comment "Created by ICer on 18-Sep-2026 18:35:37"%',
                       "-du"=>'"SYS_TOP"',
                       "-rule"=>'"W287b"',
                       "-exact"=>'1',
                       "-msg"=>'q%Instance output port \'par_err\' is not connected%',
                       "-comment"=>'"Created by ICer on 18-Sep-2026 18:35:37"',
                       "violations_waived"=>'',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"/home/ICer/Labs/SYSTEM/spyglass/waived.awl"',
                       "waiverline"=>'7'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'9',
                       "waiverCmd"=>'q%waive  -exact  -rule "checkCMD_dirfile03" -msg "Option \'+incdir\': Directory specification \'\'../rtl\'\' does not exists. Reason:No such file or directory" -comment "Created by ICer on 18-Sep-2026 18:36:10"%',
                       "-rule"=>'"checkCMD_dirfile03"',
                       "-exact"=>'1',
                       "-msg"=>'q%Option \'+incdir\': Directory specification \'\'../rtl\'\' does not exists. Reason:No such file or directory%',
                       "-comment"=>'"Created by ICer on 18-Sep-2026 18:36:10"',
                       "violations_waived"=>'1',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"/home/ICer/Labs/SYSTEM/spyglass/waived.awl"',
                       "waiverline"=>'8'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'10',
                       "waiverCmd"=>'q%waive  -exact  -rule "checkCMD_dirfile03" -msg "Option \'+incdir\': Directory specification \'\'./rtl\'\' does not exists. Reason:No such file or directory" -comment "Created by ICer on 18-Sep-2026 18:36:10"%',
                       "-rule"=>'"checkCMD_dirfile03"',
                       "-exact"=>'1',
                       "-msg"=>'q%Option \'+incdir\': Directory specification \'\'./rtl\'\' does not exists. Reason:No such file or directory%',
                       "-comment"=>'"Created by ICer on 18-Sep-2026 18:36:10"',
                       "violations_waived"=>'2',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"/home/ICer/Labs/SYSTEM/spyglass/waived.awl"',
                       "waiverline"=>'9'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'11',
                       "waiverCmd"=>'q%waive  -exact  -du "CLKGATE" -rule "InferLatch" -msg "Latch inferred for signal \'LATCHED_CLK\' in module \'CLKGATE\'" -comment "Created by ICer on 18-Sep-2026 18:54:09"%',
                       "-du"=>'"CLKGATE"',
                       "-rule"=>'"InferLatch"',
                       "-exact"=>'1',
                       "-msg"=>'q%Latch inferred for signal \'LATCHED_CLK\' in module \'CLKGATE\'%',
                       "-comment"=>'"Created by ICer on 18-Sep-2026 18:54:09"',
                       "violations_waived"=>'',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"/home/ICer/Labs/SYSTEM/spyglass/waived.awl"',
                       "waiverline"=>'10'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'12',
                       "waiverCmd"=>'q%waive  -exact  -du "CLKGATE" -rule "InferLatch" -msg "Latch inferred for signal \'LATCHED_CLK\' in module \'CLKGATE\'" -comment "Created by ICer on 24-Sep-2026 05:22:25"%',
                       "-du"=>'"CLKGATE"',
                       "-rule"=>'"InferLatch"',
                       "-exact"=>'1',
                       "-msg"=>'q%Latch inferred for signal \'LATCHED_CLK\' in module \'CLKGATE\'%',
                       "-comment"=>'"Created by ICer on 24-Sep-2026 05:22:25"',
                       "violations_waived"=>'',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"/home/ICer/Labs/SYSTEM/spyglass/waived.awl"',
                       "waiverline"=>'11'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'13',
                       "waiverCmd"=>'q%waive  -rule "Ac_conv01" -comment "Created by ICer on 25-Sep-2026 03:40:48"%',
                       "-rule"=>'"Ac_conv01"',
                       "-comment"=>'"Created by ICer on 25-Sep-2026 03:40:48"',
                       "violations_waived"=>'75',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./lint/cdc/cdc_verify_struct/lint_waiver_file.awl"',
                       "waiverline"=>'2'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'14',
                       "waiverCmd"=>'q%waive  -rule "Ac_conv02" -comment "Created by ICer on 25-Sep-2026 03:40:48"%',
                       "-rule"=>'"Ac_conv02"',
                       "-comment"=>'"Created by ICer on 25-Sep-2026 03:40:48"',
                       "violations_waived"=>'70 72',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./lint/cdc/cdc_verify_struct/lint_waiver_file.awl"',
                       "waiverline"=>'3'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'15',
                       "waiverCmd"=>'q%waive  -rule "SGDC_cdc_false_path07" -comment "Created by ICer on 25-Sep-2026 03:42:46"%',
                       "-rule"=>'"SGDC_cdc_false_path07"',
                       "-comment"=>'"Created by ICer on 25-Sep-2026 03:42:46"',
                       "violations_waived"=>'8',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./lint/cdc/cdc_verify_struct/lint_waiver_file.awl"',
                       "waiverline"=>'4'
                      );

spyWaiversDataCount("totalWaivers"=>'15',
"totalWaiversApplied"=>'15',
"totalWaiversWithRegExp"=>'0',
"totalWaiversWithRuleSpecified"=>'15',
"totalWaiversWithIpSpecified"=>'0',
"totalWaiversWithFileLine"=>'0',
                         );

spyProhibitWaiverRules(                         );

spySetWaivedViolationNumberHash("");

1;
