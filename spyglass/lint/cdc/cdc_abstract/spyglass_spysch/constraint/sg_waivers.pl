################################################################################
#This is an internally genertaed by spyglass to populate Waiver Info for Reports
#Note:Spyglass does not support any perl routine like "spyDecompileWaiverInfo"
#     The routine is purely for internal usage of spyglass
################################################################################


use SpyGlass;

spyClearWaiverHashInPerl(0);

spyComputeWaivedViolCount("totalWaivedViolationCount"=>'3',
                          "totalGeneratedCount"=>'13',
                          "totalReportCount"=>'10'
                         );

spyDecompileWaiverInfo("waive_cmd_id"=>'1',
                       "waiverCmd"=>'q%waive  -rule "Setup_port01" -comment "Created by ICer on 25-Sep-2026 03:49:05"%',
                       "-rule"=>'"Setup_port01"',
                       "-comment"=>'"Created by ICer on 25-Sep-2026 03:49:05"',
                       "violations_waived"=>'20 21',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./lint/cdc/cdc_abstract/lint_waiver_file.awl"',
                       "waiverline"=>'1'
                      );

spyDecompileWaiverInfo("waive_cmd_id"=>'2',
                       "waiverCmd"=>'q%waive  -rule "SGDC_cdc_false_path07" -comment "Created by ICer on 25-Sep-2026 03:49:36"%',
                       "-rule"=>'"SGDC_cdc_false_path07"',
                       "-comment"=>'"Created by ICer on 25-Sep-2026 03:49:36"',
                       "violations_waived"=>'8',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./lint/cdc/cdc_abstract/lint_waiver_file.awl"',
                       "waiverline"=>'2'
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
