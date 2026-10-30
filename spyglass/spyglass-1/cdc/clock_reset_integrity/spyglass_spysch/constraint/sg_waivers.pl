################################################################################
#This is an internally genertaed by spyglass to populate Waiver Info for Reports
#Note:Spyglass does not support any perl routine like "spyDecompileWaiverInfo"
#     The routine is purely for internal usage of spyglass
################################################################################


use SpyGlass;

spyClearWaiverHashInPerl(0);

spyComputeWaivedViolCount("totalWaivedViolationCount"=>'2',
                          "totalGeneratedCount"=>'0',
                          "totalReportCount"=>'0'
                         );

spyDecompileWaiverInfo("waive_cmd_id"=>'1',
                       "waiverCmd"=>'q%waive  -rule "Clock_glitch04" -comment "Reg_File[3][1:0] holds a quasi-static configuration and Reg_File[2][7:2] holds the UART prescale configuration, which feeds the clock-divider ratio decode. It is quasi-static so div_clk cannot glitch during operation. "%',
                       "-rule"=>'"Clock_glitch04"',
                       "-comment"=>'"Reg_File[3][1:0] holds a quasi-static configuration and Reg_File[2][7:2] holds the UART prescale configuration, which feeds the clock-divider ratio decode. It is quasi-static so div_clk cannot glitch during operation. "',
                       "violations_waived"=>'10 11',
                       "partial_violations_waived"=>'',
                       "cmd_status"=>'1',
                       "waiverfile"=>'"./spyglass-1/cdc/clock_reset_integrity/spyglass-1_waiver_file.awl"',
                       "waiverline"=>'2'
                      );

spyWaiversDataCount("totalWaivers"=>'1',
"totalWaiversApplied"=>'1',
"totalWaiversWithRegExp"=>'0',
"totalWaiversWithRuleSpecified"=>'1',
"totalWaiversWithIpSpecified"=>'0',
"totalWaiversWithFileLine"=>'0',
                         );

spyProhibitWaiverRules(                         );

spySetWaivedViolationNumberHash("");

1;
