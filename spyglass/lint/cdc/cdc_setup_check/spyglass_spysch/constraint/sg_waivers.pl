################################################################################
#This is an internally genertaed by spyglass to populate Waiver Info for Reports
#Note:Spyglass does not support any perl routine like "spyDecompileWaiverInfo"
#     The routine is purely for internal usage of spyglass
################################################################################


use SpyGlass;

spyClearWaiverHashInPerl(0);

spyComputeWaivedViolCount("totalWaivedViolationCount"=>'4',
                          "totalGeneratedCount"=>'15',
                          "totalReportCount"=>'11'
                         );

spyDecompileWaiverInfo("waive_cmd_id"=>'1',
                       "waiverCmd"=>'q%waive  -rule "checkCMD_dirfile03" -comment "Created by ICer on 25-Sep-2026 02:54:29"%',
                       "-rule"=>'"checkCMD_dirfile03"',
                       "-comment"=>'"Created by ICer on 25-Sep-2026 02:54:29"',
                       "violations_waived"=>'1 2',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./lint/cdc/cdc_setup_check/lint_waiver_file.awl"',
                       "waiverline"=>'3'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'2',
                       "waiverCmd"=>'q%waive  -rule "Setup_port01" -comment "Created by ICer on 25-Sep-2026 03:03:44"%',
                       "-rule"=>'"Setup_port01"',
                       "-comment"=>'"Created by ICer on 25-Sep-2026 03:03:44"',
                       "violations_waived"=>'21 23',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./lint/cdc/cdc_setup_check/lint_waiver_file.awl"',
                       "waiverline"=>'4'
                      );

spyWaiversDataCount("totalWaivers"=>'2',
"totalWaiversApplied"=>'2',
"totalWaiversWithRegExp"=>'0',
"totalWaiversWithRuleSpecified"=>'2',
"totalWaiversWithIpSpecified"=>'0',
"totalWaiversWithFileLine"=>'0',
                         );

spyProhibitWaiverRules(                         );

spySetWaivedViolationNumberHash("");

1;
