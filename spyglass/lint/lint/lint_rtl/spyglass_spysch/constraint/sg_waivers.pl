################################################################################
#This is an internally genertaed by spyglass to populate Waiver Info for Reports
#Note:Spyglass does not support any perl routine like "spyDecompileWaiverInfo"
#     The routine is purely for internal usage of spyglass
################################################################################


use SpyGlass;

spyClearWaiverHashInPerl(0);

spyComputeWaivedViolCount("totalWaivedViolationCount"=>'10',
                          "totalGeneratedCount"=>'0',
                          "totalReportCount"=>'0'
                         );

spyDecompileWaiverInfo("waive_cmd_id"=>'1',
                       "waiverCmd"=>'q%waive  -rule "W287b" -comment "Created by ICer on 25-Sep-2026 02:51:48"%',
                       "-rule"=>'"W287b"',
                       "-comment"=>'"Created by ICer on 25-Sep-2026 02:51:48"',
                       "violations_waived"=>'5 6 7 8 9 10 11',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"/home/ICer/Labs/SYSTEM/spyglass/waived.awl"',
                       "waiverline"=>'12'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'2',
                       "waiverCmd"=>'q%waive  -rule "InferLatch" -comment "Created by ICer on 25-Sep-2026 02:51:58"%',
                       "-rule"=>'"InferLatch"',
                       "-comment"=>'"Created by ICer on 25-Sep-2026 02:51:58"',
                       "violations_waived"=>'17',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"/home/ICer/Labs/SYSTEM/spyglass/waived.awl"',
                       "waiverline"=>'13'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'3',
                       "waiverCmd"=>'q%waive  -rule "checkCMD_dirfile03" -comment "Created by ICer on 25-Sep-2026 02:52:14"%',
                       "-rule"=>'"checkCMD_dirfile03"',
                       "-comment"=>'"Created by ICer on 25-Sep-2026 02:52:14"',
                       "violations_waived"=>'1 2',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"/home/ICer/Labs/SYSTEM/spyglass/waived.awl"',
                       "waiverline"=>'14'
                      );

spyWaiversDataCount("totalWaivers"=>'3',
"totalWaiversApplied"=>'3',
"totalWaiversWithRegExp"=>'0',
"totalWaiversWithRuleSpecified"=>'3',
"totalWaiversWithIpSpecified"=>'0',
"totalWaiversWithFileLine"=>'0',
                         );

spyProhibitWaiverRules(                         );

spySetWaivedViolationNumberHash("");

1;
