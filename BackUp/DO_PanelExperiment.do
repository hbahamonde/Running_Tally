* Panel Experiment
* MASTER DO
* STATA V13
* Hector Bahamonde [hector.bahamonde@rutgers.edu]



**************************************************************************************************
*					DONT DELETE DIRECTORY PATHS, JUST PUT A "*" IN FRONT THE COMMAND LINE
**************************************************************************************************



**************************************************************************************************
**************************************************************************************************
*										W	E	E	K	 1
**************************************************************************************************
**************************************************************************************************

set more off
clear all
* Set Working Directory (comment it with a "*", don't delet it)
cd "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W1/WorkingData/DurationData/OnlyCompleted"

**************************************************************************************************
*											W1S1
**************************************************************************************************


*Open W1S1 and save a Working Copy (We wanna keep a copy of the original data)
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W1/WorkingData/DurationData/OnlyCompleted/W1S1Completed.dta", replace
destring, replace
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W1/WorkingData/DurationData/OnlyCompleted/W1S1Completed_Working.dta", replace

* From Excel to STATA everything enters as lower case. Lets reverse it to its original: Upper Case
rename *, upper

* Now lets keep what we need
keep ///
GRP_20202 Q_5845_DUR_31529 FOD_A_3709 FOD_A_3710 ///
DATE FOD_A_3658 FOD_A_3661 FOD_A_3708 Q_5845_DUR_32035 Q_5845_VAL_31529 ///
FTA_A_3661 FTA_A_3708 FTA_A_3709 FTA_A_3710 ///
Q_5845_DUR_31530 Q_5845_DUR_31531 Q_5845_DUR_31534 Q_5845_DUR_31535	///
Q_5845_DUR_31537 Q_5845_DUR_31538 Q_5845_DUR_31539 Q_5845_DUR_31540 ///
Q_5845_DUR_31541 Q_5845_DUR_31542 Q_5845_DUR_31545 Q_5845_DUR_31546 ///
Q_5845_DUR_31547 Q_5845_DUR_31548 Q_5845_DUR_31549 Q_5845_DUR_31550 ///
Q_5845_DUR_31551 Q_5845_DUR_31552 Q_5845_DUR_31553 Q_5845_DUR_31554 ///
Q_5845_DUR_31555 Q_5845_DUR_31556 Q_5845_DUR_31557 Q_5845_DUR_31558 ///
Q_5845_DUR_31559 Q_5845_DUR_31560 Q_5845_DUR_31561 Q_5845_DUR_31562 ///
Q_5845_DUR_31563 Q_5845_DUR_32028 Q_5845_DUR_32029 Q_5845_DUR_32030 ///
Q_5845_DUR_32031 Q_5845_DUR_32032 Q_5845_DUR_32033 Q_5845_DUR_32034 ///
Q_5845_VAL_31530 Q_5845_VAL_31531 Q_5845_VAL_31534 Q_5845_VAL_31535 ///
Q_5845_VAL_31537 Q_5845_VAL_31538 Q_5845_VAL_31539 Q_5845_VAL_31540 ///
Q_5845_VAL_31541 Q_5845_VAL_31542 Q_5845_VAL_31545 Q_5845_VAL_31546 ///
Q_5845_VAL_31547 Q_5845_VAL_31548 Q_5845_VAL_31549 Q_5845_VAL_31550 ///
Q_5845_VAL_31551 Q_5845_VAL_31552 Q_5845_VAL_31553 Q_5845_VAL_31554 ///
Q_5845_VAL_31555 Q_5845_VAL_31556 Q_5845_VAL_31557 Q_5845_VAL_31558 ///
Q_5845_VAL_31559 Q_5845_VAL_31560 Q_5845_VAL_31561 Q_5845_VAL_31562 ///
Q_5845_VAL_31563 Q_5845_VAL_32028 Q_5845_VAL_32029 Q_5845_VAL_32030 ///
Q_5845_VAL_32031 Q_5845_VAL_32032 Q_5845_VAL_32033 Q_5845_VAL_32034 ///
Q_5845_VAL_32035 Q_5846_DUR_31565 Q_5846_DUR_31566 Q_5846_DUR_31567 ///
Q_5846_DUR_31568 Q_5846_DUR_31569 Q_5846_DUR_31570 Q_5846_DUR_31571 ///
Q_5846_DUR_31572 Q_5846_VAL_31565 Q_5846_VAL_31566 Q_5846_VAL_31567 ///
Q_5846_VAL_31568 Q_5846_VAL_31569 Q_5846_VAL_31570 Q_5846_VAL_31571 ///
Q_5846_VAL_31572 Q_5847_DUR_31574 Q_5847_DUR_31575 Q_5847_DUR_31576 ///
Q_5847_DUR_31577 Q_5847_DUR_31578 Q_5847_DUR_31579 Q_5847_DUR_31580 ///
Q_5847_DUR_31581 Q_5847_DUR_31582 Q_5847_DUR_31583 Q_5847_DUR_31584 ///
Q_5847_DUR_31585 Q_5847_DUR_31586 Q_5847_DUR_31587 Q_5847_DUR_31588 ///
Q_5847_DUR_31589 Q_5847_DUR_31590 Q_5847_DUR_31591 Q_5852_DUR_31467 ///
Q_5847_VAL_31574 Q_5847_VAL_31575 Q_5847_VAL_31576 Q_5851_VAL_32023 ///
Q_5847_VAL_31577 Q_5847_VAL_31578 Q_5847_VAL_31579 Q_5847_VAL_31580 ///
Q_5847_VAL_31581 Q_5847_VAL_31582 Q_5847_VAL_31583 Q_5847_VAL_31584 ///
Q_5847_VAL_31585 Q_5847_VAL_31586 Q_5847_VAL_31587 Q_5847_VAL_31588 ///
Q_5847_VAL_31589 Q_5847_VAL_31590 Q_5847_VAL_31591 Q_5848_DUR_31593 ///
Q_5848_DUR_31594 Q_5848_DUR_31595 Q_5848_DUR_31596 Q_5848_DUR_31597 ///
Q_5848_DUR_31598 Q_5848_DUR_31599 Q_5848_DUR_31600 Q_5848_DUR_31601 ///
Q_5848_DUR_31602 Q_5848_DUR_31603 Q_5848_DUR_31604 Q_5848_DUR_31605 ///
Q_5848_DUR_32145 Q_5848_DUR_32146 Q_5848_DUR_32147 Q_5848_DUR_32148 ///
Q_5848_DUR_32149 Q_5848_DUR_32150 Q_5848_DUR_32151 Q_5848_DUR_32152 ///
Q_5848_DUR_32153 Q_5848_DUR_32154 Q_5848_DUR_32155 Q_5848_DUR_32156 ///
Q_5848_DUR_32157 Q_5848_DUR_32158 Q_5848_DUR_32159 Q_5848_VAL_31593 ///
Q_5848_VAL_31594 Q_5848_VAL_31595 Q_5848_VAL_31596 Q_5848_VAL_31597 ///
Q_5848_VAL_31598 Q_5848_VAL_31599 Q_5848_VAL_31600 Q_5848_VAL_31601 ///
Q_5848_VAL_31602 Q_5848_VAL_31603 Q_5848_VAL_31604 Q_5848_VAL_31605 ///
Q_5848_VAL_32145 Q_5848_VAL_32146 Q_5848_VAL_32147 Q_5848_VAL_32148 ///
Q_5848_VAL_32149 Q_5848_VAL_32150 Q_5848_VAL_32151 Q_5848_VAL_32152 ///
Q_5848_VAL_32153 Q_5848_VAL_32154 Q_5848_VAL_32155 Q_5848_VAL_32156 ///
Q_5848_VAL_32157 Q_5848_VAL_32158 Q_5848_VAL_32159 Q_5849_DUR_31986 ///
Q_5849_DUR_31987 Q_5849_DUR_31988 Q_5849_DUR_31989 Q_5849_DUR_31990 ///
Q_5849_DUR_31991 Q_5849_DUR_31992 Q_5849_DUR_31993 Q_5849_DUR_31994 ///
Q_5849_DUR_31995 Q_5849_VAL_31986 Q_5850_VAL_31996 Q_5948_VAL_32025 ///
Q_5849_VAL_31987 Q_5849_VAL_31988 Q_5849_VAL_31989 Q_5849_VAL_31990 ///
Q_5849_VAL_31991 Q_5849_VAL_31992 Q_5849_VAL_31993 Q_5849_VAL_31994 ///
Q_5849_VAL_31995 Q_5850_DUR_31996 Q_5850_DUR_31997 Q_5850_DUR_31998 ///
Q_5850_DUR_31999 Q_5850_DUR_32000 Q_5850_DUR_32001 Q_5850_DUR_32002 ///
Q_5850_VAL_31997 Q_5850_VAL_31998 Q_5850_VAL_31999 Q_5850_VAL_32000 ///
Q_5850_VAL_32001 Q_5850_VAL_32002 Q_5851_DUR_32003 Q_5851_DUR_32004 ///
Q_5851_DUR_32005 Q_5851_DUR_32006 Q_5851_DUR_32007 Q_5851_DUR_32008 ///
Q_5851_DUR_32009 Q_5851_DUR_32010 Q_5851_DUR_32011 Q_5851_DUR_32012 ///
Q_5851_DUR_32013 Q_5851_DUR_32014 Q_5851_DUR_32015 Q_5851_DUR_32016 ///
Q_5851_DUR_32017 Q_5851_DUR_32018 Q_5851_DUR_32019 Q_5851_DUR_32020 ///
Q_5851_DUR_32021 Q_5851_DUR_32022 Q_5851_DUR_32023 Q_5852_VAL_31467 ///
Q_5851_VAL_32003 Q_5851_VAL_32004 Q_5851_VAL_32005 Q_5851_VAL_32006 ///
Q_5851_VAL_32007 Q_5851_VAL_32008 Q_5851_VAL_32009 Q_5851_VAL_32010 ///
Q_5851_VAL_32011 Q_5851_VAL_32012 Q_5851_VAL_32013 Q_5851_VAL_32014 ///
Q_5851_VAL_32015 Q_5851_VAL_32016 Q_5851_VAL_32017 Q_5851_VAL_32018 ///
Q_5851_VAL_32019 Q_5851_VAL_32020 Q_5851_VAL_32021 Q_5851_VAL_32022 ///
Q_5948_DUR_32024 Q_5948_DUR_32025 Q_5948_DUR_32026 Q_5948_DUR_32027 ///
Q_5948_DUR_32197 Q_5948_DUR_32238 Q_5948_DUR_32260 Q_5948_VAL_32024 ///
Q_5948_VAL_32026 Q_5948_VAL_32027 Q_5948_VAL_32197 Q_5948_VAL_32238 ///
Q_5948_VAL_32260 SUBJECT_ID	TIME TIME_BEGIN_FLOWPHASE ///
TIME_END_FLOWPHASE ///
TOTAL_FLOW_ACCESSED TTO_A_3658 TTO_A_3661 TTO_A_3708 ///
WORDS_A_3658 WORDS_A_3661 WORDS_A_3708 WORDS_A_3709 ///
TIME_BEGIN_SUBSTAGE	TTO_A_3709	WORDS_A_3710 ///
TTO_A_3710 FTA_A_3658

*rename SUBJECT_ID to PAC
rename SUBJECT_ID PAC

* Adding Prefixes and Suffixes
foreach x of var * {
rename `x' W1`x'
} 

foreach x of var * {
rename `x' `x'S1
}

* Renaming SUBJECT_ID (no pre nor su fixes, we need that to merge on it)
rename W1PACS1 PAC

* Eliminating ALL underscores
foreach v of var *_* { 
	local V : subinstr local v "_" "", all
	capture rename `v' `V' 
	if _rc di as txt "problem with `v'"
} 

*saving
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W1/WorkingData/DurationData/OnlyCompleted/W1S1Completed_Working.dta", replace


**************************************************************************************************
*											W1S2
**************************************************************************************************

clear all
set more off

*Open W1S2 and save a Working Copy (We wanna keep a copy of the original data)
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W1/WorkingData/DurationData/OnlyCompleted/W1S2Completed.dta", replace
destring, replace
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W1/WorkingData/DurationData/OnlyCompleted/W1S2Completed_Working.dta", replace

* From Excel to STATA everything enters as lower case. Lets reverse it to its original: Upper Case
rename *, upper

* Now lets keep what we need
keep ///
DATE	FOD_A_3659	FOD_A_3660	FOD_A_3662	FOD_A_3663	FOD_A_3664	FOD_A_3665	///
FOD_A_3722	FOD_A_3724	FOD_S_91296	FOD_S_91297	FOD_S_91298	FOD_S_91299	FOD_S_91300	///
FOD_S_91301	GRP_20329	GRP_20330	SUBJECT_ID	TIME	TIME_BEGIN_FLOWPHASE	///
TIME_BEGIN_SUBSTAGE	TIME_END_FLOWPHASE	TOD_S_91296	TOD_S_91297	///
TOD_S_91298	TOD_S_91299	TOD_S_91300	TOD_S_91301	TOTAL_FLOW_ACCESSED	TTA_S_91296	///
TTA_S_91297	TTA_S_91298	TTA_S_91299	TTA_S_91300	TTA_S_91301	TTO_A_3659	TTO_A_3660	///
TTO_A_3662	TTO_A_3663	TTO_A_3664	TTO_A_3665	TTO_A_3722	TTO_A_3724	TTO_S_91296	///
TTO_S_91297	TTO_S_91298	TTO_S_91299	TTO_S_91300	TTO_S_91301	WORDS_A_3659	///
WORDS_A_3660	WORDS_A_3662	WORDS_A_3663	WORDS_A_3664	WORDS_A_3665	///
WORDS_A_3722	WORDS_A_3724

*rename SUBJECT_ID to PAC
rename SUBJECT_ID PAC


* Adding Prefixes and Suffixes
foreach x of var * {
rename `x' W1`x'
} 

foreach x of var * {
rename `x' `x'S2
} 

* Renaming SUBJECT_ID (no pre nor su fixes, we need that to merge on it)
rename W1PACS2 PAC

* Eliminating ALL underscores
foreach v of var *_* { 
	local V : subinstr local v "_" "", all
	capture rename `v' `V' 
	if _rc di as txt "problem with `v'"
} 

*saving
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W1/WorkingData/DurationData/OnlyCompleted/W1S2Completed_Working.dta", replace

**************************************************************************************************
*											W1S3
**************************************************************************************************

clear all
set more off

*Open W1S3 and save a Working Copy (We wanna keep a copy of the original data)
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W1/WorkingData/DurationData/OnlyCompleted/W1S3Completed.dta", replace
destring, replace
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W1/WorkingData/DurationData/OnlyCompleted/W1S3Completed_Working.dta", replace

* From Excel to STATA everything enters as lower case. Lets reverse it to its original: Upper Case
rename *, upper

* Now lets keep what we need
keep ///
DATE	FOD_A_3797	FOD_S_89023	FOD_S_89035	FOD_S_89036	FOD_S_89037	FOD_S_89038	FOD_S_89039	FOD_S_89040	///
FOD_S_89041	FOD_S_89043	FOD_S_89044	FOD_S_89045	FOD_S_89048	FOD_S_89050	FOD_S_89051	FOD_S_89052	FOD_S_89053	///
FOD_S_89054	FOD_S_89055	FOD_S_89056	FOD_S_89057	FOD_S_89616	FOD_S_89617	FOD_S_89618	FOD_S_89619	GRP_20329	///
GRP_20330	SUBJECT_ID	TIME	TIME_BEGIN_FLOWPHASE	TIME_BEGIN_SUBSTAGE	TIME_END_FLOWPHASE	///
TOD_S_89023	TOD_S_89035	TOD_S_89036	TOD_S_89037	TOD_S_89038	TOD_S_89039	TOD_S_89040	TOD_S_89041	TOD_S_89043	///
TOD_S_89044	TOD_S_89045	TOD_S_89048	TOD_S_89050	TOD_S_89051	TOD_S_89052	TOD_S_89053	TOD_S_89054	TOD_S_89055	///
TOD_S_89056	TOD_S_89057	TOD_S_89616	TOD_S_89617	TOD_S_89618	TOD_S_89619	TOTAL_FLOW_ACCESSED	TTO_A_3797	///
TTO_S_89023	TTO_S_89035	TTO_S_89036	TTO_S_89037	TTO_S_89038	TTO_S_89039	TTO_S_89040	TTO_S_89041	TTO_S_89043	///
TTO_S_89044	TTO_S_89045	TTO_S_89048	TTO_S_89050	TTO_S_89051	TTO_S_89052	TTO_S_89053	TTO_S_89054	TTO_S_89055	///
TTO_S_89056	TTO_S_89057	TTO_S_89616	TTO_S_89617	TTO_S_89618	TTO_S_89619	WORDS_A_3797

*rename SUBJECT_ID to PAC
rename SUBJECT_ID PAC

* Adding Prefixes and Suffixes
foreach x of var * {
rename `x' W1`x'
} 

foreach x of var * {
rename `x' `x'S3
}

* Renaming SUBJECT_ID (no pre nor su fixes, we need that to merge on it)
rename W1PACS3 PAC

* Eliminating ALL underscores
foreach v of var *_* { 
	local V : subinstr local v "_" "", all
	capture rename `v' `V' 
	if _rc di as txt "problem with `v'"
} 

*saving
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W1/WorkingData/DurationData/OnlyCompleted/W1S3Completed_Working.dta", replace

**************************************************************************************************
*											W1S4
**************************************************************************************************

clear all
set more off


*Open W1S4 and save a Working Copy (We wanna keep a copy of the original data)
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W1/WorkingData/DurationData/OnlyCompleted/W1S4Completed.dta", replace
destring, replace
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W1/WorkingData/DurationData/OnlyCompleted/W1S4Completed_Working.dta", replace

* From Excel to STATA everything enters as lower case. Lets reverse it to its original: Upper Case
rename *, upper

* Now lets keep what we need
keep ///
DATE	FOD_A_3706	FOD_A_3707	FOD_A_3712	FOD_S_89023	FOD_S_89035	FOD_S_89036	FOD_S_89037	FOD_S_89038	FOD_S_89039	///
FOD_S_89040	FOD_S_89041	FOD_S_89043	FOD_S_89044	FOD_S_89045	FOD_S_89048	FOD_S_89050	FOD_S_89051	FOD_S_89052	///
FOD_S_89053	FOD_S_89054	FOD_S_89055	FOD_S_89056	FOD_S_89057	FOD_S_89616	FOD_S_89617	FOD_S_89618	FOD_S_89619	GRP_20329	///
GRP_20330	GRP_20371	GRP_20372	Q_5767_DUR_31079	Q_5767_DUR_31080	///
Q_5767_VAL_31079	Q_5767_VAL_31080	Q_5771_DUR_31084	Q_5771_DUR_31085 ///
Q_5771_VAL_31084	Q_5771_VAL_31085	SUBJECT_ID	TIME	TIME_BEGIN_FLOWPHASE	TIME_BEGIN_SUBSTAGE	TIME_END_FLOWPHASE	///
TOD_S_89023	TOD_S_89035	TOD_S_89036	TOD_S_89037	TOD_S_89038	TOD_S_89039	TOD_S_89040	///
TOD_S_89041	TOD_S_89043	TOD_S_89044	TOD_S_89045	TOD_S_89048	TOD_S_89050	TOD_S_89051	TOD_S_89052	TOD_S_89053	TOD_S_89054	///
TOD_S_89055	TOD_S_89056	TOD_S_89057	TOD_S_89616	TOD_S_89617	TOD_S_89618	TOD_S_89619	TOTAL_FLOW_ACCESSED	TTO_A_3706	///
TTO_A_3707	TTO_A_3712	TTO_S_89023	TTO_S_89035	TTO_S_89036	TTO_S_89037	TTO_S_89038	TTO_S_89039	TTO_S_89040	TTO_S_89041	///
TTO_S_89043	TTO_S_89044	TTO_S_89045	TTO_S_89048	TTO_S_89050	TTO_S_89051	TTO_S_89052	TTO_S_89053	TTO_S_89054	TTO_S_89055	///
TTO_S_89056	TTO_S_89057	TTO_S_89616	TTO_S_89617	TTO_S_89618	TTO_S_89619	WORDS_A_3706	WORDS_A_3707	WORDS_A_3712


*rename SUBJECT_ID to PAC
rename SUBJECT_ID PAC

* Adding Prefixes and Suffixes
foreach x of var * {
rename `x' W1`x'
}
 
foreach x of var * {
rename `x' `x'S4
}

* Renaming SUBJECT_ID (no pre nor su fixes, we need that to merge on it)
rename W1PACS4 PAC 

* Eliminating ALL underscores
foreach v of var *_* { 
	local V : subinstr local v "_" "", all
	capture rename `v' `V' 
	if _rc di as txt "problem with `v'"
} 

*saving
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W1/WorkingData/DurationData/OnlyCompleted/W1S4Completed_Working.dta", replace


**************************************************************************************************
*							M	E	R	G	I	N	G	 		W	1
**************************************************************************************************

clear all
set more off

* Merge W1S2 with W1S1
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W1/WorkingData/DurationData/OnlyCompleted/W1S2Completed_Working.dta", replace
merge 1:m PAC using "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W1/WorkingData/DurationData/OnlyCompleted/W1S1Completed_Working.dta"
drop _merge
* Save W1S12
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W1/WorkingData/DurationData/OnlyCompleted/W1S12Completed_Working.dta", replace

**************************************************************************************************
clear all

* Merge W1S3 with W1S4
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W1/WorkingData/DurationData/OnlyCompleted/W1S4Completed_Working.dta", replace
merge 1:m PAC using "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W1/WorkingData/DurationData/OnlyCompleted/W1S3Completed_Working.dta"
drop _merge
* Save W1S12
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W1/WorkingData/DurationData/OnlyCompleted/W1S34Completed_Working.dta", replace

**************************************************************************************************
clear all

* Merge W1S12 with W1S34
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W1/WorkingData/DurationData/OnlyCompleted/W1S12Completed_Working.dta", replace
merge 1:m PAC using "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W1/WorkingData/DurationData/OnlyCompleted/W1S34Completed_Working.dta"
drop _merge
* Save W1S1234
order *, alpha

** LABELING


label variable W1FODA3658S1 "1aWelcomeAnnouncement"
label variable W1FODA3659S2 "3aIntroDemPrimary1"
label variable W1FODA3660S2 "3aIntroRepPrimary1"
label variable W1FODA3661S1 "2PrimaryPartyChoice"
label variable W1FODA3662S2 "3bIntroDemPrimary"
label variable W1FODA3663S2 "3cIntroDemPrimary"
label variable W1FODA3664S2 "3bIntroRepPrimary"
label variable W1FODA3665S2 "3cIntroRepPrimary"
label variable W1FODA3706S4 "EndMTurkCode"
label variable W1FODA3707S4 "EndStudentCode"
label variable W1FODA3708S1 "ConsentSheetStudents"
label variable W1FODA3709S1 "ConsentSheetMTurk"
label variable W1FODA3710S1 "1bWelcomeAnnouncement"
label variable W1FODA3712S4 "BetweenSubstage2and3D&R"
label variable W1FODA3722S2 "3aIntroDemPrimary2"
label variable W1FODA3724S2 "3aIntroRepPrimary2"
label variable W1FODA3797S3 "BeginScrollingAnnouncement"
label variable W1FODS89023S3 "Wk1DSmithBackground"
label variable W1FODS89023S4 "Wk1DSmithBackground"
label variable W1FODS89035S3 "Wk1DWilsonBackground"
label variable W1FODS89035S4 "Wk1DWilsonBackground"
label variable W1FODS89036S3 "Wk1RJonesBackground"
label variable W1FODS89036S4 "Wk1RJonesBackground"
label variable W1FODS89037S3 "Wk1RWilliamsBackground"
label variable W1FODS89037S4 "Wk1RWilliamsBackground"
label variable W1FODS89038S3 "Wk1RJonesFamily"
label variable W1FODS89038S4 "Wk1RJonesFamily"
label variable W1FODS89039S3 "Wk1DWilsonFamily"
label variable W1FODS89039S4 "Wk1DWilsonFamily"
label variable W1FODS89040S3 "Wk1DSmithFamily"
label variable W1FODS89040S4 "Wk1DSmithFamily"
label variable W1FODS89041S3 "Wk1RWilliamsFamily"
label variable W1FODS89041S4 "Wk1RWilliamsFamily"
label variable W1FODS89043S3 "Wk1RJonesExperience"
label variable W1FODS89043S4 "Wk1RJonesExperience"
label variable W1FODS89044S3 "Wk1DWilsonExperience"
label variable W1FODS89044S4 "Wk1DWilsonExperience"
label variable W1FODS89045S3 "Wk1DSmithExperience"
label variable W1FODS89045S4 "Wk1DSmithExperience"
label variable W1FODS89048S3 "Wk1RWilliamsExperience"
label variable W1FODS89048S4 "Wk1RWilliamsExperience"
label variable W1FODS89050S3 "Wk1DSmithSlogan"
label variable W1FODS89050S4 "Wk1DSmithSlogan"
label variable W1FODS89051S3 "Wk1DWilsonSlogan"
label variable W1FODS89051S4 "Wk1DWilsonSlogan"
label variable W1FODS89052S3 "Wk1RJonesSlogan"
label variable W1FODS89052S4 "Wk1RJonesSlogan"
label variable W1FODS89053S3 "Wk1RWilliamsSlogan"
label variable W1FODS89053S4 "Wk1RWilliamsSlogan"
label variable W1FODS89054S3 "Wk1DSmithCandidatePicture"
label variable W1FODS89054S4 "Wk1DSmithCandidatePicture"
label variable W1FODS89055S3 "Wk1DWilsonCandidatePicture"
label variable W1FODS89055S4 "Wk1DWilsonCandidatePicture"
label variable W1FODS89056S3 "Wk1RJonesCandidatePicture"
label variable W1FODS89056S4 "Wk1RJonesCandidatePicture"
label variable W1FODS89057S3 "Wk1RWilliamsCandidatePicture"
label variable W1FODS89057S4 "Wk1RWilliamsCandidatePicture"
label variable W1FODS89616S3 "Wk1DSmithPersonality"
label variable W1FODS89616S4 "Wk1DSmithPersonality"
label variable W1FODS89617S3 "Wk1DWilsonPersonality"
label variable W1FODS89617S4 "Wk1DWilsonPersonality"
label variable W1FODS89618S3 "Wk1RJonesPersonality"
label variable W1FODS89618S4 "Wk1RJonesPersonality"
label variable W1FODS89619S3 "Wk1RWilliamsPersonality"
label variable W1FODS89619S4 "Wk1RWilliamsPersonality"
label variable W1FODS91296S2 "001practice"
label variable W1FODS91297S2 "000practice"
label variable W1FODS91298S2 "002Practice"
label variable W1FODS91299S2 "004practice"
label variable W1FODS91300S2 "005practice"
label variable W1FODS91301S2 "006Practice"
label variable W1FTAA3658S1 "1aWelcomeAnnouncement"
label variable W1FTAA3661S1 "2PrimaryPartyChoice"
label variable W1FTAA3708S1 "ConsentSheetStudents"
label variable W1FTAA3709S1 "ConsentSheetMTurk"
label variable W1FTAA3710S1 "1bWelcomeAnnouncement"
label variable W1GRP20202S1 "StartGroup"
label variable W1GRP20329S2 "DemPrimary"
label variable W1GRP20329S3 "DemPrimary"
label variable W1GRP20329S4 "DemPrimary"
label variable W1GRP20330S2 "RepPrimary"
label variable W1GRP20330S3 "RepPrimary"
label variable W1GRP20330S4 "RepPrimary"
label variable W1GRP20371S4 "DemEndGroup"
label variable W1GRP20372S4 "RepEndGroup"
label variable W1Q5767DUR31079S4 "SmithFT"
label variable W1Q5767DUR31080S4 "WilsonFT"
label variable W1Q5767VAL31079S4 "SmithFT"
label variable W1Q5767VAL31080S4 "WilsonFT"
label variable W1Q5771DUR31084S4 "WilliamsFT"
label variable W1Q5771DUR31085S4 "JonesFT"
label variable W1Q5771VAL31084S4 "WilliamsFT"
label variable W1Q5771VAL31085S4 "JonesFT"
label variable W1Q5845DUR31529S1 "Q01PoliticalInterest"
label variable W1Q5845DUR31530S1 "Q02DiscussPolitics"
label variable W1Q5845DUR31531S1 "Q03NatNtwrkNewsTv"
label variable W1Q5845DUR31534S1 "Q04ReadNatLocNewspap"
label variable W1Q5845DUR31535S1 "Q05InternetTypDo"
label variable W1Q5845DUR31537S1 "Q06DaysWeekWebPolNews"
label variable W1Q5845DUR31538S1 "Q07IntPrimarySourceNews"
label variable W1Q5845DUR31539S1 "Q08VoteObamaRomney"
label variable W1Q5845DUR31540S1 "Q10MeetingContributedWorked"
label variable W1Q5845DUR31541S1 "Q11LibCon"
label variable W1Q5845DUR31542S1 "Q11aLibCondCONDIT"
label variable W1Q5845DUR31545S1 "Q12JobStdLiving"
label variable W1Q5845DUR31546S1 "Q13TaxCuts"
label variable W1Q5845DUR31547S1 "Q14GovServices"
label variable W1Q5845DUR31548S1 "Q15HealthCareReform"
label variable W1Q5845DUR31549S1 "Q16BlackPreference"
label variable W1Q5845DUR31550S1 "Q17SchoolVoucherProgram"
label variable W1Q5845DUR31551S1 "Q18UndocumentedImmigrants"
label variable W1Q5845DUR31552S1 "Q19DefenseSpending"
label variable W1Q5845DUR31553S1 "Q20DiplomacyMilitary"
label variable W1Q5845DUR31554S1 "Q21Troops"
label variable W1Q5845DUR31555S1 "Q22CoopChina"
label variable W1Q5845DUR31556S1 "Q23CapitalPunishment"
label variable W1Q5845DUR31557S1 "Q24Abortion"
label variable W1Q5845DUR31558S1 "Q25StemCellResearch"
label variable W1Q5845DUR31559S1 "Q26SameSexMarriage"
label variable W1Q5845DUR31560S1 "Q27RepDem"
label variable W1Q5845DUR31561S1 "Q28aREPCONDIT"
label variable W1Q5845DUR31562S1 "Q28bDemCONDIT"
label variable W1Q5845DUR31563S1 "Q28cINDRepDemCONDIT"
label variable W1Q5845DUR32028S1 "Q09Reasonsfor2012Vote"
label variable W1Q5845DUR32029S1 "Q09aMostImportantReason"
label variable W1Q5845DUR32030S1 "Q09b2ndMostImportantReason"
label variable W1Q5845DUR32031S1 "Q09c2ndMostImportantReason"
label variable W1Q5845DUR32032S1 "Q09d2ndMostImportantReason"
label variable W1Q5845DUR32033S1 "Q09e2ndMostImportantReason"
label variable W1Q5845DUR32034S1 "Q09f2ndMostImportantReason"
label variable W1Q5845DUR32035S1 "Q09gMostImportantReasonOther"
label variable W1Q5845VAL31529S1 "Q01PoliticalInterest"
label variable W1Q5845VAL31530S1 "Q02DiscussPolitics"
label variable W1Q5845VAL31531S1 "Q03NatNtwrkNewsTv"
label variable W1Q5845VAL31534S1 "Q04ReadNatLocNewspap"
label variable W1Q5845VAL31535S1 "Q05InternetTypDo"
label variable W1Q5845VAL31537S1 "Q06DaysWeekWebPolNews"
label variable W1Q5845VAL31538S1 "Q07IntPrimarySourceNews"
label variable W1Q5845VAL31539S1 "Q08VoteObamaRomney"
label variable W1Q5845VAL31540S1 "Q10MeetingContributedWorked"
label variable W1Q5845VAL31541S1 "Q11LibCon"
label variable W1Q5845VAL31542S1 "Q11aLibCondCONDIT"
label variable W1Q5845VAL31545S1 "Q12JobStdLiving"
label variable W1Q5845VAL31546S1 "Q13TaxCuts"
label variable W1Q5845VAL31547S1 "Q14GovServices"
label variable W1Q5845VAL31548S1 "Q15HealthCareReform"
label variable W1Q5845VAL31549S1 "Q16BlackPreference"
label variable W1Q5845VAL31550S1 "Q17SchoolVoucherProgram"
label variable W1Q5845VAL31551S1 "Q18UndocumentedImmigrants"
label variable W1Q5845VAL31552S1 "Q19DefenseSpending"
label variable W1Q5845VAL31553S1 "Q20DiplomacyMilitary"
label variable W1Q5845VAL31554S1 "Q21Troops"
label variable W1Q5845VAL31555S1 "Q22CoopChina"
label variable W1Q5845VAL31556S1 "Q23CapitalPunishment"
label variable W1Q5845VAL31557S1 "Q24Abortion"
label variable W1Q5845VAL31558S1 "Q25StemCellResearch"
label variable W1Q5845VAL31559S1 "Q26SameSexMarriage"
label variable W1Q5845VAL31560S1 "Q27RepDem"
label variable W1Q5845VAL31561S1 "Q28aREPCONDIT"
label variable W1Q5845VAL31562S1 "Q28bDemCONDIT"
label variable W1Q5845VAL31563S1 "Q28cINDRepDemCONDIT"
label variable W1Q5845VAL32028S1 "Q09Reasonsfor2012Vote"
label variable W1Q5845VAL32029S1 "Q09aMostImportantReason"
label variable W1Q5845VAL32030S1 "Q09b2ndMostImportantReason"
label variable W1Q5845VAL32031S1 "Q09c2ndMostImportantReason"
label variable W1Q5845VAL32032S1 "Q09d2ndMostImportantReason"
label variable W1Q5845VAL32033S1 "Q09e2ndMostImportantReason"
label variable W1Q5845VAL32034S1 "Q09f2ndMostImportantReason"
label variable W1Q5845VAL32035S1 "Q09gMostImportantReasonOther"
label variable W1Q5846DUR31565S1 "Q29FTJoeBiden"
label variable W1Q5846DUR31566S1 "Q30FTJohnBoehner"
label variable W1Q5846DUR31567S1 "Q31FTHillaryClinton"
label variable W1Q5846DUR31568S1 "Q32FTTedCruz"
label variable W1Q5846DUR31569S1 "Q33FTObama"
label variable W1Q5846DUR31570S1 "Q34FTRomney"
label variable W1Q5846DUR31571S1 "Q35FTReid"
label variable W1Q5846DUR31572S1 "Q36FTRyan"
label variable W1Q5846VAL31565S1 "Q29FTJoeBiden"
label variable W1Q5846VAL31566S1 "Q30FTJohnBoehner"
label variable W1Q5846VAL31567S1 "Q31FTHillaryClinton"
label variable W1Q5846VAL31568S1 "Q32FTTedCruz"
label variable W1Q5846VAL31569S1 "Q33FTObama"
label variable W1Q5846VAL31570S1 "Q34FTRomney"
label variable W1Q5846VAL31571S1 "Q35FTReid"
label variable W1Q5846VAL31572S1 "Q36FTRyan"
label variable W1Q5847DUR31574S1 "Q37FTVFW"
label variable W1Q5847DUR31575S1 "Q38FTNAACP"
label variable W1Q5847DUR31576S1 "Q39FTNRL"
label variable W1Q5847DUR31577S1 "Q40FTNCAPA"
label variable W1Q5847DUR31578S1 "Q41FTNAM"
label variable W1Q5847DUR31579S1 "Q42FTHeritage"
label variable W1Q5847DUR31580S1 "Q43FTNOW"
label variable W1Q5847DUR31581S1 "Q44FTChristCoal"
label variable W1Q5847DUR31582S1 "Q45FTLGBT"
label variable W1Q5847DUR31583S1 "Q46FTAFSCME"
label variable W1Q5847DUR31584S1 "Q47FTNTU"
label variable W1Q5847DUR31585S1 "Q48FTFRC"
label variable W1Q5847DUR31586S1 "Q49FTACLU"
label variable W1Q5847DUR31587S1 "Q50FTFAIR"
label variable W1Q5847DUR31588S1 "Q51FTNCLR"
label variable W1Q5847DUR31589S1 "Q52FTADA"
label variable W1Q5847DUR31590S1 "Q53FTAFT"
label variable W1Q5847DUR31591S1 "Q54FTAFLCIO"
label variable W1Q5847VAL31574S1 "Q37FTVFW"
label variable W1Q5847VAL31575S1 "Q38FTNAACP"
label variable W1Q5847VAL31576S1 "Q39FTNRL"
label variable W1Q5847VAL31577S1 "Q40FTNCAPA"
label variable W1Q5847VAL31578S1 "Q41FTNAM"
label variable W1Q5847VAL31579S1 "Q42FTHeritage"
label variable W1Q5847VAL31580S1 "Q43FTNOW"
label variable W1Q5847VAL31581S1 "Q44FTChristCoal"
label variable W1Q5847VAL31582S1 "Q45FTLGBT"
label variable W1Q5847VAL31583S1 "Q46FTAFSCME"
label variable W1Q5847VAL31584S1 "Q47FTNTU"
label variable W1Q5847VAL31585S1 "Q48FTFRC"
label variable W1Q5847VAL31586S1 "Q49FTACLU"
label variable W1Q5847VAL31587S1 "Q50FTFAIR"
label variable W1Q5847VAL31588S1 "Q51FTNCLR"
label variable W1Q5847VAL31589S1 "Q52FTADA"
label variable W1Q5847VAL31590S1 "Q53FTAFT"
label variable W1Q5847VAL31591S1 "Q54FTAFLCIO"
label variable W1Q5848DUR31593S1 "Q56DMGroupsTrusting"
label variable W1Q5848DUR31594S1 "Q57DMGatherInfo"
label variable W1Q5848DUR31595S1 "Q58DMParty"
label variable W1Q5848DUR31596S1 "Q59DMTwoIssues"
label variable W1Q5848DUR31597S1 "Q60DMMeetNeeds"
label variable W1Q5848DUR31598S1 "Q61DMLikelyAlt"
label variable W1Q5848DUR31599S1 "Q62DMPolarizedDistinct"
label variable W1Q5848DUR31600S1 "Q63DMImpAspects"
label variable W1Q5848DUR31601S1 "Q64DMFamiliarCandidate"
label variable W1Q5848DUR31602S1 "Q65DMFindInfo"
label variable W1Q5848DUR31603S1 "Q66DMMyPartyGood"
label variable W1Q5848DUR31604S1 "Q67DMObjective"
label variable W1Q5848DUR31605S1 "Q68DMGut"
label variable W1Q5848DUR32145S1 "NDMRat1"
label variable W1Q5848DUR32146S1 "NDMRat2"
label variable W1Q5848DUR32147S1 "NDMRat3"
label variable W1Q5848DUR32148S1 "NDMIntuit4"
label variable W1Q5848DUR32149S1 "NDMIntuit5"
label variable W1Q5848DUR32150S1 "NDMIntuit6"
label variable W1Q5848DUR32151S1 "NDMSpont7"
label variable W1Q5848DUR32152S1 "NDMSpont8"
label variable W1Q5848DUR32153S1 "NDMSpont9"
label variable W1Q5848DUR32154S1 "NDMMax10"
label variable W1Q5848DUR32155S1 "NDMMax11"
label variable W1Q5848DUR32156S1 "NDMMax12"
label variable W1Q5848DUR32157S1 "NDMRegret13"
label variable W1Q5848DUR32158S1 "NDMRegret14"
label variable W1Q5848DUR32159S1 "NDMRegret15"
label variable W1Q5848VAL31593S1 "Q56DMGroupsTrusting"
label variable W1Q5848VAL31594S1 "Q57DMGatherInfo"
label variable W1Q5848VAL31595S1 "Q58DMParty"
label variable W1Q5848VAL31596S1 "Q59DMTwoIssues"
label variable W1Q5848VAL31597S1 "Q60DMMeetNeeds"
label variable W1Q5848VAL31598S1 "Q61DMLikelyAlt"
label variable W1Q5848VAL31599S1 "Q62DMPolarizedDistinct"
label variable W1Q5848VAL31600S1 "Q63DMImpAspects"
label variable W1Q5848VAL31601S1 "Q64DMFamiliarCandidate"
label variable W1Q5848VAL31602S1 "Q65DMFindInfo"
label variable W1Q5848VAL31603S1 "Q66DMMyPartyGood"
label variable W1Q5848VAL31604S1 "Q67DMObjective"
label variable W1Q5848VAL31605S1 "Q68DMGut"
label variable W1Q5848VAL32145S1 "NDMRat1"
label variable W1Q5848VAL32146S1 "NDMRat2"
label variable W1Q5848VAL32147S1 "NDMRat3"
label variable W1Q5848VAL32148S1 "NDMIntuit4"
label variable W1Q5848VAL32149S1 "NDMIntuit5"
label variable W1Q5848VAL32150S1 "NDMIntuit6"
label variable W1Q5848VAL32151S1 "NDMSpont7"
label variable W1Q5848VAL32152S1 "NDMSpont8"
label variable W1Q5848VAL32153S1 "NDMSpont9"
label variable W1Q5848VAL32154S1 "NDMMax10"
label variable W1Q5848VAL32155S1 "NDMMax11"
label variable W1Q5848VAL32156S1 "NDMMax12"
label variable W1Q5848VAL32157S1 "NDMRegret13"
label variable W1Q5848VAL32158S1 "NDMRegret14"
label variable W1Q5848VAL32159S1 "NDMRegret15"
label variable W1Q5849DUR31986S1 "Q69PolKnow"
label variable W1Q5849DUR31987S1 "Q70PolKnow"
label variable W1Q5849DUR31988S1 "Q71PolKnow"
label variable W1Q5849DUR31989S1 "Q73PolKnow"
label variable W1Q5849DUR31990S1 "Q72PolKnow"
label variable W1Q5849DUR31991S1 "Q74PolKnow"
label variable W1Q5849DUR31992S1 "Q75PolKnow"
label variable W1Q5849DUR31993S1 "Q76PolKnow"
label variable W1Q5849DUR31994S1 "Q77PolKnow"
label variable W1Q5849DUR31995S1 "Q78PolKnow"
label variable W1Q5849VAL31986S1 "Q69PolKnow"
label variable W1Q5849VAL31987S1 "Q70PolKnow"
label variable W1Q5849VAL31988S1 "Q71PolKnow"
label variable W1Q5849VAL31989S1 "Q73PolKnow"
label variable W1Q5849VAL31990S1 "Q72PolKnow"
label variable W1Q5849VAL31991S1 "Q74PolKnow"
label variable W1Q5849VAL31992S1 "Q75PolKnow"
label variable W1Q5849VAL31993S1 "Q76PolKnow"
label variable W1Q5849VAL31994S1 "Q77PolKnow"
label variable W1Q5849VAL31995S1 "Q78PolKnow"
label variable W1Q5850DUR31996S1 "Q79DigLit - MP3"
label variable W1Q5850DUR31997S1 "Q80DigLit - PrefSet"
label variable W1Q5850DUR31998S1 "Q81DigLit - Refr"
label variable W1Q5850DUR31999S1 "Q82DigLit - Newsgroup"
label variable W1Q5850DUR32000S1 "Q83DigLit - PDF"
label variable W1Q5850DUR32001S1 "Q85DigLit - Download"
label variable W1Q5850DUR32002S1 "Q84DigLit - Advanced Search"
label variable W1Q5850VAL31996S1 "Q79DigLit - MP3"
label variable W1Q5850VAL31997S1 "Q80DigLit - PrefSet"
label variable W1Q5850VAL31998S1 "Q81DigLit - Refr"
label variable W1Q5850VAL31999S1 "Q82DigLit - Newsgroup"
label variable W1Q5850VAL32000S1 "Q83DigLit - PDF"
label variable W1Q5850VAL32001S1 "Q85DigLit - Download"
label variable W1Q5850VAL32002S1 "Q84DigLit - Advanced Search"
label variable W1Q5851DUR32003S1 "Q86DemographicsGender"
label variable W1Q5851DUR32004S1 "Q87DemographicsYearBorn"
label variable W1Q5851DUR32005S1 "Q88DemographicsEduc"
label variable W1Q5851DUR32006S1 "Q89DemographicsEmployment"
label variable W1Q5851DUR32007S1 "Q90DemographicsReligion"
label variable W1Q5851DUR32008S1 "Q91DemographicsReligious"
label variable W1Q5851DUR32009S1 "Q92DemographicsIncome"
label variable W1Q5851DUR32010S1 "Q93DemographicsRace"
label variable W1Q5851DUR32011S1 "Q94DemographicsLatino"
label variable W1Q5851DUR32012S1 "Q95aDemographicsBlackID"
label variable W1Q5851DUR32013S1 "Q96aDemographicsBlackID"
label variable W1Q5851DUR32014S1 "Q97aDemographicsBlackID"
label variable W1Q5851DUR32015S1 "Q95bDemographicsLatinoID"
label variable W1Q5851DUR32016S1 "Q96bDemographicsLatinoID"
label variable W1Q5851DUR32017S1 "Q97bDemographicsLatinoID"
label variable W1Q5851DUR32018S1 "Q95cDemographicsWhiteID"
label variable W1Q5851DUR32019S1 "Q96cDemographicsWhiteID"
label variable W1Q5851DUR32020S1 "Q97cDemographicsWhiteID"
label variable W1Q5851DUR32021S1 "Q95dDemographicsAsianID"
label variable W1Q5851DUR32022S1 "Q96dDemographicsAsianID"
label variable W1Q5851DUR32023S1 "Q97dDemographicsAsianID"
label variable W1Q5851VAL32003S1 "Q86DemographicsGender"
label variable W1Q5851VAL32004S1 "Q87DemographicsYearBorn"
label variable W1Q5851VAL32005S1 "Q88DemographicsEduc"
label variable W1Q5851VAL32006S1 "Q89DemographicsEmployment"
label variable W1Q5851VAL32007S1 "Q90DemographicsReligion"
label variable W1Q5851VAL32008S1 "Q91DemographicsReligious"
label variable W1Q5851VAL32009S1 "Q92DemographicsIncome"
label variable W1Q5851VAL32010S1 "Q93DemographicsRace"
label variable W1Q5851VAL32011S1 "Q94DemographicsLatino"
label variable W1Q5851VAL32012S1 "Q95aDemographicsBlackID"
label variable W1Q5851VAL32013S1 "Q96aDemographicsBlackID"
label variable W1Q5851VAL32014S1 "Q97aDemographicsBlackID"
label variable W1Q5851VAL32015S1 "Q95bDemographicsLatinoID"
label variable W1Q5851VAL32016S1 "Q96bDemographicsLatinoID"
label variable W1Q5851VAL32017S1 "Q97bDemographicsLatinoID"
label variable W1Q5851VAL32018S1 "Q95cDemographicsWhiteID"
label variable W1Q5851VAL32019S1 "Q96cDemographicsWhiteID"
label variable W1Q5851VAL32020S1 "Q97cDemographicsWhiteID"
label variable W1Q5851VAL32021S1 "Q95dDemographicsAsianID"
label variable W1Q5851VAL32022S1 "Q96dDemographicsAsianID"
label variable W1Q5851VAL32023S1 "Q97dDemographicsAsianID"
label variable W1Q5852DUR31467S1 "PrimaryChoice"
label variable W1Q5852VAL31467S1 "PrimaryChoice"
label variable W1Q5948DUR32024S1 "Q00StudentORMTurk"
label variable W1Q5948DUR32025S1 "Q00zStudentNamelast"
label variable W1Q5948DUR32026S1 "Q00yStudentNamefirst"
label variable W1Q5948DUR32027S1 "Q00xInstructorName"
label variable W1Q5948DUR32197S1 "Q000dayofweek"
label variable W1Q5948DUR32238S1 "Q000uEmail"
label variable W1Q5948DUR32260S1 "Q000uEmailRepeat"
label variable W1Q5948VAL32024S1 "Q00StudentORMTurk"
label variable W1Q5948VAL32025S1 "Q00zStudentNamelast"
label variable W1Q5948VAL32026S1 "Q00yStudentNamefirst"
label variable W1Q5948VAL32027S1 "Q00xInstructorName"
label variable W1Q5948VAL32197S1 "Q000dayofweek"
label variable W1Q5948VAL32238S1 "Q000uEmail"
label variable W1Q5948VAL32260S1 "Q000uEmailRepeat"
label variable W1TODS89023S3 "Wk1DSmithBackground"
label variable W1TODS89023S4 "Wk1DSmithBackground"
label variable W1TODS89035S3 "Wk1DWilsonBackground"
label variable W1TODS89035S4 "Wk1DWilsonBackground"
label variable W1TODS89036S3 "Wk1RJonesBackground"
label variable W1TODS89036S4 "Wk1RJonesBackground"
label variable W1TODS89037S3 "Wk1RWilliamsBackground"
label variable W1TODS89037S4 "Wk1RWilliamsBackground"
label variable W1TODS89038S3 "Wk1RJonesFamily"
label variable W1TODS89038S4 "Wk1RJonesFamily"
label variable W1TODS89039S3 "Wk1DWilsonFamily"
label variable W1TODS89039S4 "Wk1DWilsonFamily"
label variable W1TODS89040S3 "Wk1DSmithFamily"
label variable W1TODS89040S4 "Wk1DSmithFamily"
label variable W1TODS89041S3 "Wk1RWilliamsFamily"
label variable W1TODS89041S4 "Wk1RWilliamsFamily"
label variable W1TODS89043S3 "Wk1RJonesExperience"
label variable W1TODS89043S4 "Wk1RJonesExperience"
label variable W1TODS89044S3 "Wk1DWilsonExperience"
label variable W1TODS89044S4 "Wk1DWilsonExperience"
label variable W1TODS89045S3 "Wk1DSmithExperience"
label variable W1TODS89045S4 "Wk1DSmithExperience"
label variable W1TODS89048S3 "Wk1RWilliamsExperience"
label variable W1TODS89048S4 "Wk1RWilliamsExperience"
label variable W1TODS89050S3 "Wk1DSmithSlogan"
label variable W1TODS89050S4 "Wk1DSmithSlogan"
label variable W1TODS89051S3 "Wk1DWilsonSlogan"
label variable W1TODS89051S4 "Wk1DWilsonSlogan"
label variable W1TODS89052S3 "Wk1RJonesSlogan"
label variable W1TODS89052S4 "Wk1RJonesSlogan"
label variable W1TODS89053S3 "Wk1RWilliamsSlogan"
label variable W1TODS89053S4 "Wk1RWilliamsSlogan"
label variable W1TODS89054S3 "Wk1DSmithCandidatePicture"
label variable W1TODS89054S4 "Wk1DSmithCandidatePicture"
label variable W1TODS89055S3 "Wk1DWilsonCandidatePicture"
label variable W1TODS89055S4 "Wk1DWilsonCandidatePicture"
label variable W1TODS89056S3 "Wk1RJonesCandidatePicture"
label variable W1TODS89056S4 "Wk1RJonesCandidatePicture"
label variable W1TODS89057S3 "Wk1RWilliamsCandidatePicture"
label variable W1TODS89057S4 "Wk1RWilliamsCandidatePicture"
label variable W1TODS89616S3 "Wk1DSmithPersonality"
label variable W1TODS89616S4 "Wk1DSmithPersonality"
label variable W1TODS89617S3 "Wk1DWilsonPersonality"
label variable W1TODS89617S4 "Wk1DWilsonPersonality"
label variable W1TODS89618S3 "Wk1RJonesPersonality"
label variable W1TODS89618S4 "Wk1RJonesPersonality"
label variable W1TODS89619S3 "Wk1RWilliamsPersonality"
label variable W1TODS89619S4 "Wk1RWilliamsPersonality"
label variable W1TODS91296S2 "001practice"
label variable W1TODS91297S2 "000practice"
label variable W1TODS91298S2 "002Practice"
label variable W1TODS91299S2 "004practice"
label variable W1TODS91300S2 "005practice"
label variable W1TODS91301S2 "006Practice"
label variable W1TTAS91296S2 "001practice"
label variable W1TTAS91297S2 "000practice"
label variable W1TTAS91298S2 "002Practice"
label variable W1TTAS91299S2 "004practice"
label variable W1TTAS91300S2 "005practice"
label variable W1TTAS91301S2 "006Practice"
label variable W1TTOA3658S1 "1aWelcomeAnnouncement"
label variable W1TTOA3659S2 "3aIntroDemPrimary1"
label variable W1TTOA3660S2 "3aIntroRepPrimary1"
label variable W1TTOA3661S1 "2PrimaryPartyChoice"
label variable W1TTOA3662S2 "3bIntroDemPrimary"
label variable W1TTOA3663S2 "3cIntroDemPrimary"
label variable W1TTOA3664S2 "3bIntroRepPrimary"
label variable W1TTOA3665S2 "3cIntroRepPrimary"
label variable W1TTOA3706S4 "EndMTurkCode"
label variable W1TTOA3707S4 "EndStudentCode"
label variable W1TTOA3708S1 "ConsentSheetStudents"
label variable W1TTOA3709S1 "ConsentSheetMTurk"
label variable W1TTOA3710S1 "1bWelcomeAnnouncement"
label variable W1TTOA3712S4 "BetweenSubstage2and3D&R"
label variable W1TTOA3722S2 "3aIntroDemPrimary2"
label variable W1TTOA3724S2 "3aIntroRepPrimary2"
label variable W1TTOA3797S3 "BeginScrollingAnnouncement"
label variable W1TTOS89023S3 "Wk1DSmithBackground"
label variable W1TTOS89023S4 "Wk1DSmithBackground"
label variable W1TTOS89035S3 "Wk1DWilsonBackground"
label variable W1TTOS89035S4 "Wk1DWilsonBackground"
label variable W1TTOS89036S3 "Wk1RJonesBackground"
label variable W1TTOS89036S4 "Wk1RJonesBackground"
label variable W1TTOS89037S3 "Wk1RWilliamsBackground"
label variable W1TTOS89037S4 "Wk1RWilliamsBackground"
label variable W1TTOS89038S3 "Wk1RJonesFamily"
label variable W1TTOS89038S4 "Wk1RJonesFamily"
label variable W1TTOS89039S3 "Wk1DWilsonFamily"
label variable W1TTOS89039S4 "Wk1DWilsonFamily"
label variable W1TTOS89040S3 "Wk1DSmithFamily"
label variable W1TTOS89040S4 "Wk1DSmithFamily"
label variable W1TTOS89041S3 "Wk1RWilliamsFamily"
label variable W1TTOS89041S4 "Wk1RWilliamsFamily"
label variable W1TTOS89043S3 "Wk1RJonesExperience"
label variable W1TTOS89043S4 "Wk1RJonesExperience"
label variable W1TTOS89044S3 "Wk1DWilsonExperience"
label variable W1TTOS89044S4 "Wk1DWilsonExperience"
label variable W1TTOS89045S3 "Wk1DSmithExperience"
label variable W1TTOS89045S4 "Wk1DSmithExperience"
label variable W1TTOS89048S3 "Wk1RWilliamsExperience"
label variable W1TTOS89048S4 "Wk1RWilliamsExperience"
label variable W1TTOS89050S3 "Wk1DSmithSlogan"
label variable W1TTOS89050S4 "Wk1DSmithSlogan"
label variable W1TTOS89051S3 "Wk1DWilsonSlogan"
label variable W1TTOS89051S4 "Wk1DWilsonSlogan"
label variable W1TTOS89052S3 "Wk1RJonesSlogan"
label variable W1TTOS89052S4 "Wk1RJonesSlogan"
label variable W1TTOS89053S3 "Wk1RWilliamsSlogan"
label variable W1TTOS89053S4 "Wk1RWilliamsSlogan"
label variable W1TTOS89054S3 "Wk1DSmithCandidatePicture"
label variable W1TTOS89054S4 "Wk1DSmithCandidatePicture"
label variable W1TTOS89055S3 "Wk1DWilsonCandidatePicture"
label variable W1TTOS89055S4 "Wk1DWilsonCandidatePicture"
label variable W1TTOS89056S3 "Wk1RJonesCandidatePicture"
label variable W1TTOS89056S4 "Wk1RJonesCandidatePicture"
label variable W1TTOS89057S3 "Wk1RWilliamsCandidatePicture"
label variable W1TTOS89057S4 "Wk1RWilliamsCandidatePicture"
label variable W1TTOS89616S3 "Wk1DSmithPersonality"
label variable W1TTOS89616S4 "Wk1DSmithPersonality"
label variable W1TTOS89617S3 "Wk1DWilsonPersonality"
label variable W1TTOS89617S4 "Wk1DWilsonPersonality"
label variable W1TTOS89618S3 "Wk1RJonesPersonality"
label variable W1TTOS89618S4 "Wk1RJonesPersonality"
label variable W1TTOS89619S3 "Wk1RWilliamsPersonality"
label variable W1TTOS89619S4 "Wk1RWilliamsPersonality"
label variable W1TTOS91296S2 "001practice"
label variable W1TTOS91297S2 "000practice"
label variable W1TTOS91298S2 "002Practice"
label variable W1TTOS91299S2 "004practice"
label variable W1TTOS91300S2 "005practice"
label variable W1TTOS91301S2 "006Practice"
label variable W1WORDSA3658S1 "1aWelcomeAnnouncement"
label variable W1WORDSA3659S2 "3aIntroDemPrimary1"
label variable W1WORDSA3660S2 "3aIntroRepPrimary1"
label variable W1WORDSA3661S1 "2PrimaryPartyChoice"
label variable W1WORDSA3662S2 "3bIntroDemPrimary"
label variable W1WORDSA3663S2 "3cIntroDemPrimary"
label variable W1WORDSA3664S2 "3bIntroRepPrimary"
label variable W1WORDSA3665S2 "3cIntroRepPrimary"
label variable W1WORDSA3706S4 "EndMTurkCode"
label variable W1WORDSA3707S4 "EndStudentCode"
label variable W1WORDSA3708S1 "ConsentSheetStudents"
label variable W1WORDSA3709S1 "ConsentSheetMTurk"
label variable W1WORDSA3710S1 "1bWelcomeAnnouncement"
label variable W1WORDSA3712S4 "BetweenSubstage2and3D&R"
label variable W1WORDSA3722S2 "3aIntroDemPrimary2"
label variable W1WORDSA3724S2 "3aIntroRepPrimary2"
label variable W1WORDSA3797S3 "BeginScrollingAnnouncement"
label variable W1WORDSA3797S3 "BeginScrollingAnnouncement"

* DROPPING
drop W1TIMES2 W1TIMES3 W1TIMES4


* Merge W1S1234 with IPW1 (IP ADDRESS)
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W1/WorkingData/DurationData/OnlyCompleted/W1S1234Completed_Working.dta", replace
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W1/WorkingData/DurationData/OnlyCompleted/W1S1234Completed_Working.dta", replace
merge m:m PAC using "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W1/IP/IPW1.dta"
drop _merge

* Duplicate Check
capture drop DUPW1
sort PAC
quietly by PAC: gen DUPW1 = cond(_N==1,0,_n)

* Generating week indicator
capture drop WEEK1
gen WEEK1 = 1

* Imputing Date for SUBJECTID 97736
replace W1DATES1= 20140218 if PAC == 97736


* Generating Date Variable
capture drop year month day
nsplit W1DATES1, digits(4 2 2) generate(year month day)
capture drop DATEW1b
gen DATEW1b = mdy(month, day, year)
capture drop date1
gen date1 = 19724
format %td date1
format %td DATEW1b
gen DATEW1a = DATEW1b - date1
capture drop date1 year month day

* ORDERING
order PAC IP DUPW1 DATEW1a DATEW1b W1TIMES1 WEEK1
sort PAC, stable

* Dropping Duplicates
drop if PAC <= 97500
drop if PAC == .
drop if PAC == 101078 & DUPW1 == 2
drop if PAC == 98280 | PAC == 98281 | PAC == 101073
replace W1TIMES1= "19:21:00.283" 	if PAC == 97736

* Saving
capture drop W1DATES1 W1DATES2 W1DATES3 W1DATES4
gen SUBJECTIDW1 = PAC
rename IP IPW1
sort PAC
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W1/WorkingData/DurationData/OnlyCompleted/W1S1234Completed_Working.dta", replace

**************************************************************************************************
**************************************************************************************************
*										W	E	E	K	 2
**************************************************************************************************
**************************************************************************************************

set more off
clear all
* Set Working Directory (Uncomment it, don't delet it)
cd "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W2/WorkingData/DurationData"

**************************************************************************************************
*											W2S1
**************************************************************************************************


*Open W2S1 and save a Working Copy (We wanna keep a copy of the original data)
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W2/WorkingData/DurationData/W2S1.dta", replace
destring, replace
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W2/WorkingData/DurationData/W2S1_Working.dta", replace

* From Excel to STATA everything enters as lower case. Lets reverse it to its original: Upper Case
rename *, upper

* Now lets keep what we need
keep ///
SUBJECT_ID	DATE	TIME	TIME_BEGIN_SUBSTAGE	TIME_BEGIN_FLOWPHASE	TIME_END_FLOWPHASE	GRP_20357	///
GRP_20358	FOD_A_3596	TTO_A_3596	WORDS_A_3596	Q_5729_VAL_30577	///
Q_5729_DUR_30577	TOTAL_FLOW_ACCESSED

* Adding Prefixes and Suffixes
foreach x of var * {
rename `x' W2`x'
}
 
foreach x of var * {
rename `x' `x'S1
}

* Renaming W2_Q_5729_VAL_30577_S1 into PAC
rename W2Q_5729_VAL_30577S1 PAC


* Renaming SUBJECT_ID (no pre nor su fixes, we need that to merge on it)
rename W2SUBJECT_IDS1 SUBJECT_ID 

* Eliminating ALL underscores
foreach v of var *_* { 
	local V : subinstr local v "_" "", all
	capture rename `v' `V' 
	if _rc di as txt "problem with `v'"
} 

*saving
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W2/WorkingData/DurationData/W2S1_Working.dta", replace

**************************************************************************************************
*											W2S2
**************************************************************************************************

clear all

*Open W2S2 and save a Working Copy (We wanna keep a copy of the original data)
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W2/WorkingData/DurationData/W2S2.dta", replace
destring, replace
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W2/WorkingData/DurationData/W2S2_Working.dta", replace

* From Excel to STATA everything enters as lower case. Lets reverse it to its original: Upper Case
rename *, upper

* Now lets keep what we need
keep ///
DATE	FOD_A_3670	FOD_A_3671	FOD_A_3672	FOD_A_3699	FOD_A_3700	FOD_A_3701	FOD_A_3702	FOD_A_3703	///
FOD_S_88687	FOD_S_88703	FOD_S_88811	FOD_S_88812	FOD_S_89547	FOD_S_89548	FOD_S_89549	FOD_S_89550	FOD_S_89551	///
FOD_S_89552	FOD_S_89553	FOD_S_89554	FOD_S_89555	FOD_S_89556	FOD_S_89557	FOD_S_89558	FOD_S_89559	FOD_S_89560	///
FOD_S_89561	FOD_S_89562	FOD_S_89564	FOD_S_89565	FOD_S_89566	FOD_S_89567	FOD_S_89568	FOD_S_89569	FOD_S_89570	///
FOD_S_89571	FOD_S_89680	FOD_S_89681	FOD_S_89682	FOD_S_89683	FOD_S_89684	FOD_S_89685	FOD_S_89686	FOD_S_89687	///
GRP_20131	GRP_20132	GRP_20133	GRP_20134	GRP_20136	GRP_20138	GRP_20140	GRP_20142	GRP_20144	///
GRP_20146	GRP_20148	GRP_20150	GRP_20152	GRP_20154	GRP_20156	GRP_20158	SUBJECT_ID	TIME	///
TIME_BEGIN_FLOWPHASE	TIME_BEGIN_SUBSTAGE	TIME_END_FLOWPHASE ///
TOD_S_88687	TOD_S_88703	TOD_S_88811	TOD_S_88812	TOD_S_89547	///
TOD_S_89548	TOD_S_89549	TOD_S_89550	TOD_S_89551	TOD_S_89552	TOD_S_89553	TOD_S_89554	TOD_S_89555	TOD_S_89556	///
TOD_S_89557	TOD_S_89558	TOD_S_89559	TOD_S_89560	TOD_S_89561	TOD_S_89562	TOD_S_89564	TOD_S_89565	TOD_S_89566	///
TOD_S_89567	TOD_S_89568	TOD_S_89569	TOD_S_89570	TOD_S_89571	TOD_S_89680	TOD_S_89681	TOD_S_89682	TOD_S_89683	///
TOD_S_89684	TOD_S_89685	TOD_S_89686	TOD_S_89687	TOTAL_FLOW_ACCESSED	TTO_A_3670	TTO_A_3671	TTO_A_3672	TTO_A_3699	///
TTO_A_3700	TTO_A_3701	TTO_A_3702	TTO_A_3703	TTO_S_88687	TTO_S_88703	TTO_S_88811	TTO_S_88812	TTO_S_89547	TTO_S_89548	///
TTO_S_89549	TTO_S_89550	TTO_S_89551	TTO_S_89552	TTO_S_89553	TTO_S_89554	TTO_S_89555	TTO_S_89556	TTO_S_89557	TTO_S_89558	///
TTO_S_89559	TTO_S_89560	TTO_S_89561	TTO_S_89562	TTO_S_89564	TTO_S_89565	TTO_S_89566	TTO_S_89567	TTO_S_89568	TTO_S_89569	///
TTO_S_89570	TTO_S_89571	TTO_S_89680	TTO_S_89681	TTO_S_89682	TTO_S_89683	TTO_S_89684	TTO_S_89685	TTO_S_89686	TTO_S_89687	///
WORDS_A_3670	WORDS_A_3671	WORDS_A_3672	WORDS_A_3699	WORDS_A_3700	WORDS_A_3701	WORDS_A_3702	WORDS_A_3703


* Adding Prefixes and Suffixes
foreach x of var * {
rename `x' W2`x'
}
 
foreach x of var * {
rename `x' `x'S2
}

* Renaming SUBJECT_ID (no pre nor su fixes, we need that to merge on it)
rename W2SUBJECT_IDS2 SUBJECT_ID 

* Eliminating ALL underscores
foreach v of var *_* { 
	local V : subinstr local v "_" "", all
	capture rename `v' `V' 
	if _rc di as txt "problem with `v'"
} 


*saving
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W2/WorkingData/DurationData/W2S2_Working.dta", replace

**************************************************************************************************
*											W2S3
**************************************************************************************************

clear all

*Open W2S3 and save a Working Copy (We wanna keep a copy of the original data)
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W2/WorkingData/DurationData/W2S3.dta", replace
destring, replace
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W2/WorkingData/DurationData/W2S3_Working.dta", replace

* From Excel to STATA everything enters as lower case. Lets reverse it to its original: Upper Case
rename *, upper

* Now lets keep what we need
keep ///
DATE	FOD_A_3704	FOD_A_3705	FOD_S_88687	FOD_S_88703	FOD_S_88811	FOD_S_88812	FOD_S_89547	FOD_S_89548	FOD_S_89549	///
FOD_S_89550	FOD_S_89551	FOD_S_89552	FOD_S_89553	FOD_S_89554	FOD_S_89555	FOD_S_89556	FOD_S_89557	FOD_S_89558	FOD_S_89559	///
FOD_S_89560	FOD_S_89561	FOD_S_89562	FOD_S_89564	FOD_S_89565	FOD_S_89566	FOD_S_89567	FOD_S_89568	FOD_S_89569	FOD_S_89570	///
FOD_S_89571	FOD_S_89629	FOD_S_89630	FOD_S_89631	FOD_S_89632	FOD_S_89633	FOD_S_89635	FOD_S_89636	FOD_S_89637	FOD_S_89638	///
FOD_S_89639	FOD_S_89640	FOD_S_89641	FOD_S_89642	FOD_S_89643	FOD_S_89644	FOD_S_89645	FOD_S_89646	FOD_S_89647	FOD_S_89648	///
FOD_S_89649	FOD_S_89650	FOD_S_89651	FOD_S_89660	FOD_S_89661	FOD_S_89662	FOD_S_89663	FOD_S_89664	FOD_S_89665	FOD_S_89666	///
FOD_S_89668	FOD_S_89669	FOD_S_89671	FOD_S_89672	FOD_S_89673	FOD_S_89675	FOD_S_89676	FOD_S_89677	FOD_S_89678	FOD_S_89680	///
FOD_S_89681	FOD_S_89682	FOD_S_89683	FOD_S_89684	FOD_S_89685	FOD_S_89686	FOD_S_89687	FOD_S_90282	FOD_S_90283	FOD_S_90284	///
FOD_S_90285	FOD_S_90286	FOD_S_90287	FOD_S_90288	FOD_S_90289	FOD_S_90291	FOD_S_90292	FOD_S_90293	FOD_S_90294	FOD_S_90295	///
FOD_S_90297	FOD_S_90299	FOD_S_90300	FOD_S_90301	FOD_S_90302	FOD_S_90303	FOD_S_90304	FOD_S_90305	FOD_S_90306	FOD_S_90307	///
FOD_S_90308	FOD_S_90309	FOD_S_90310	FOD_S_90311	FOD_S_90313	FOD_S_90314	FOD_S_90315	FOD_S_90316	FOD_S_90317	FOD_S_90318	///
FOD_S_90319	FOD_S_90320	FOD_S_90321	FOD_S_90322	FOD_S_90323	FOD_S_90324	FOD_S_90325	FOD_S_90326	FOD_S_90327	FOD_S_90328	///
FOD_S_90329	FOD_S_90330	FOD_S_90331	FOD_S_90332	FOD_S_90333	FOD_S_90334	FOD_S_90335	FOD_S_90336	FOD_S_90337	FOD_S_90338	///
FOD_S_90339	FOD_S_90340	FOD_S_90342	FOD_S_90348	FOD_S_90351	FOD_S_90353	GRP_20126	GRP_20131	GRP_20132	GRP_20133	///
GRP_20134	GRP_20136	GRP_20138	GRP_20140	GRP_20142	GRP_20144	GRP_20146	GRP_20148	GRP_20150	GRP_20152	///
GRP_20154	GRP_20156	GRP_20158	GRP_20159	GRP_20160	GRP_20161	GRP_20162	GRP_20163	GRP_20168	GRP_20169	///
GRP_20171	GRP_20172	GRP_20173	GRP_20174	GRP_20175	GRP_20176	GRP_20177	GRP_20178	GRP_20179	GRP_20180	///
GRP_20181	GRP_20182	GRP_20183	GRP_20184	GRP_20185	GRP_20186	GRP_20187	GRP_20188	GRP_20189	GRP_20191	///
GRP_20192	GRP_20193	GRP_20194	GRP_20326	GRP_20327	GRP_20338	GRP_20339	GRP_20341	GRP_20343	GRP_20344	///
GRP_20346	GRP_20347	GRP_20348	GRP_20349	GRP_20350	GRP_20352	GRP_20356	SUBJECT_ID	TIME	TIME_BEGIN_FLOWPHASE	///
TIME_BEGIN_SUBSTAGE	TIME_END_FLOWPHASE	TOD_S_88687	TOD_S_88703	TOD_S_88811	TOD_S_88812	TOD_S_89547	///
TOD_S_89548	TOD_S_89549	TOD_S_89550	TOD_S_89551	TOD_S_89552	TOD_S_89553	TOD_S_89554	TOD_S_89555	TOD_S_89556	TOD_S_89557	///
TOD_S_89558	TOD_S_89559	TOD_S_89560	TOD_S_89561	TOD_S_89562	TOD_S_89564	TOD_S_89565	TOD_S_89566	TOD_S_89567	TOD_S_89568	///
TOD_S_89569	TOD_S_89570	TOD_S_89571	TOD_S_89629	TOD_S_89630	TOD_S_89631	TOD_S_89632	TOD_S_89633	TOD_S_89635	TOD_S_89636	///
TOD_S_89637	TOD_S_89638	TOD_S_89639	TOD_S_89640	TOD_S_89641	TOD_S_89642	TOD_S_89643	TOD_S_89644	TOD_S_89645	TOD_S_89646	///
TOD_S_89647	TOD_S_89648	TOD_S_89649	TOD_S_89650	TOD_S_89651	TOD_S_89660	TOD_S_89661	TOD_S_89662	TOD_S_89663	TOD_S_89664	///
TOD_S_89665	TOD_S_89666	TOD_S_89668	TOD_S_89669	TOD_S_89671	TOD_S_89672	TOD_S_89673	TOD_S_89675	TOD_S_89676	TOD_S_89677	///
TOD_S_89678	TOD_S_89680	TOD_S_89681	TOD_S_89682	TOD_S_89683	TOD_S_89684	TOD_S_89685	TOD_S_89686	TOD_S_89687	TOD_S_90282	///
TOD_S_90283	TOD_S_90284	TOD_S_90285	TOD_S_90286	TOD_S_90287	TOD_S_90288	TOD_S_90289	TOD_S_90291	TOD_S_90292	TOD_S_90293	///
TOD_S_90294	TOD_S_90295	TOD_S_90297	TOD_S_90299	TOD_S_90300	TOD_S_90301	TOD_S_90302	TOD_S_90303	TOD_S_90304	TOD_S_90305	///
TOD_S_90306	TOD_S_90307	TOD_S_90308	TOD_S_90309	TOD_S_90310	TOD_S_90311	TOD_S_90313	TOD_S_90314	TOD_S_90315	TOD_S_90316	///
TOD_S_90317	TOD_S_90318	TOD_S_90319	TOD_S_90320	TOD_S_90321	TOD_S_90322	TOD_S_90323	TOD_S_90324	TOD_S_90325	TOD_S_90326	///
TOD_S_90327	TOD_S_90328	TOD_S_90329	TOD_S_90330	TOD_S_90331	TOD_S_90332	TOD_S_90333	TOD_S_90334	TOD_S_90335	TOD_S_90336	///
TOD_S_90337	TOD_S_90338	TOD_S_90339	TOD_S_90340	TOD_S_90342	TOD_S_90348	TOD_S_90351	TOD_S_90353	TOTAL_FLOW_ACCESSED	TTO_A_3704	///
TTO_A_3705	TTO_S_88687	TTO_S_88703	TTO_S_88811	TTO_S_88812	TTO_S_89547	TTO_S_89548	TTO_S_89549	TTO_S_89550	TTO_S_89551	///
TTO_S_89552	TTO_S_89553	TTO_S_89554	TTO_S_89555	TTO_S_89556	TTO_S_89557	TTO_S_89558	TTO_S_89559	TTO_S_89560	TTO_S_89561	///
TTO_S_89562	TTO_S_89564	TTO_S_89565	TTO_S_89566	TTO_S_89567	TTO_S_89568	TTO_S_89569	TTO_S_89570	TTO_S_89571	TTO_S_89629	///
TTO_S_89630	TTO_S_89631	TTO_S_89632	TTO_S_89633	TTO_S_89635	TTO_S_89636	TTO_S_89637	TTO_S_89638	TTO_S_89639	TTO_S_89640	///
TTO_S_89641	TTO_S_89642	TTO_S_89643	TTO_S_89644	TTO_S_89645	TTO_S_89646	TTO_S_89647	TTO_S_89648	TTO_S_89649	TTO_S_89650	///
TTO_S_89651	TTO_S_89660	TTO_S_89661	TTO_S_89662	TTO_S_89663	TTO_S_89664	TTO_S_89665	TTO_S_89666	TTO_S_89668	TTO_S_89669	///
TTO_S_89671	TTO_S_89672	TTO_S_89673	TTO_S_89675	TTO_S_89676	TTO_S_89677	TTO_S_89678	TTO_S_89680	TTO_S_89681	TTO_S_89682	///
TTO_S_89683	TTO_S_89684	TTO_S_89685	TTO_S_89686	TTO_S_89687	TTO_S_90282	TTO_S_90283	TTO_S_90284	TTO_S_90285	TTO_S_90286	///
TTO_S_90287	TTO_S_90288	TTO_S_90289	TTO_S_90291	TTO_S_90292	TTO_S_90293	TTO_S_90294	TTO_S_90295	TTO_S_90297	TTO_S_90299	///
TTO_S_90300	TTO_S_90301	TTO_S_90302	TTO_S_90303	TTO_S_90304	TTO_S_90305	TTO_S_90306	TTO_S_90307	TTO_S_90308	TTO_S_90309	///
TTO_S_90310	TTO_S_90311	TTO_S_90313	TTO_S_90314	TTO_S_90315	TTO_S_90316	TTO_S_90317	TTO_S_90318	TTO_S_90319	TTO_S_90320	///
TTO_S_90321	TTO_S_90322	TTO_S_90323	TTO_S_90324	TTO_S_90325	TTO_S_90326	TTO_S_90327	TTO_S_90328	TTO_S_90329	TTO_S_90330	///
TTO_S_90331	TTO_S_90332	TTO_S_90333	TTO_S_90334	TTO_S_90335	TTO_S_90336	TTO_S_90337	TTO_S_90338	TTO_S_90339	TTO_S_90340	///
TTO_S_90342	TTO_S_90348	TTO_S_90351	TTO_S_90353	WORDS_A_3704	WORDS_A_3705

* Adding Prefixes and Suffixes
foreach x of var * {
rename `x' W2`x'
}
 
foreach x of var * {
rename `x' `x'S3
}

* Renaming SUBJECT_ID (no pre nor su fixes, we need that to merge on it)
rename W2SUBJECT_IDS3 SUBJECT_ID 

* Eliminating ALL underscores
foreach v of var *_* { 
	local V : subinstr local v "_" "", all
	capture rename `v' `V' 
	if _rc di as txt "problem with `v'"
} 

*saving
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W2/WorkingData/DurationData/W2S3_Working.dta", replace

**************************************************************************************************
*											W2S4
**************************************************************************************************

clear all

*Open W2S4 and save a Working Copy (We wanna keep a copy of the original data)
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W2/WorkingData/DurationData/W2S4.dta", replace
destring, replace
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W2/WorkingData/DurationData/W2S4_Working.dta", replace

* From Excel to STATA everything enters as lower case. Lets reverse it to its original: Upper Case
rename *, upper

* Now lets keep what we need
keep ///
DATE	FOD_A_3588	GRP_20164	GRP_20166	Q_5730_DUR_30578	Q_5730_VAL_30578	Q_5731_DUR_30579	///
Q_5731_VAL_30579	SUBJECT_ID	TIME	TIME_BEGIN_FLOWPHASE	TIME_BEGIN_SUBSTAGE	TIME_END_FLOWPHASE	///
TOTAL_FLOW_ACCESSED	TTO_A_3588	WORDS_A_3588

* Adding Prefixes and Suffixes
foreach x of var * {
rename `x' W2`x'
}
 
foreach x of var * {
rename `x' `x'S4
}

* Renaming SUBJECT_ID (no pre nor su fixes, we need that to merge on it)
rename W2SUBJECT_IDS4 SUBJECT_ID 

* Eliminating ALL underscores
foreach v of var *_* { 
	local V : subinstr local v "_" "", all
	capture rename `v' `V' 
	if _rc di as txt "problem with `v'"
} 

*saving
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W2/WorkingData/DurationData/W2S4_Working.dta", replace


**************************************************************************************************
*							M	E	R	G	I	N	G	 		W	2
**************************************************************************************************

clear all

* Merge W2S2 with W2S1
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W2/WorkingData/DurationData/W2S2_Working.dta", replace
merge 1:m SUBJECTID using "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W2/WorkingData/DurationData/W2S1_Working.dta"
drop _merge
* Save W2S12
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W2/WorkingData/DurationData/W2S12_Working.dta", replace

**************************************************************************************************
clear all

* Merge W2S3 with W2S4
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W2/WorkingData/DurationData/W2S4_Working.dta", replace
merge 1:m SUBJECTID using "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W2/WorkingData/DurationData/W2S3_Working.dta"
drop _merge
* Save W2S12
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W2/WorkingData/DurationData/W2S34_Working.dta", replace

**************************************************************************************************
clear all

* Merge W2S12 with W2S34
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W2/WorkingData/DurationData/W2S12_Working.dta", replace
merge 1:m SUBJECTID using "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W2/WorkingData/DurationData/W2S34_Working.dta"
drop _merge

order *, alpha

label variable W2FODA3588S4 "That's it for this Week"
label variable W2FODA3596S1 "Whoops -- Not a Valid Subject ID"
label variable W2FODA3670S2 "WelcomeWk2D&RImpC"
label variable W2FODA3671S2 "Wk2DemPoll"
label variable W2FODA3672S2 "Wk2RepPoll"
label variable W2FODA3699S2 "WelcomeWk2DA"
label variable W2FODA3700S2 "WelcomeWk2RA"
label variable W2FODA3701S2 "WelcomeWk2D&RIntB"
label variable W2FODA3702S2 "WelcomeWk2D&RNoIntB"
label variable W2FODA3703S2 "WelcomeWk2D&RnotImpC"
label variable W2FODA3704S3 "Substage2and3BetwNoIntD&R"
label variable W2FODA3705S3 "Substage2and3BetwIntD&R"
label variable W2FODS88687S2 "Wk2DEndorsementAFLCIO"
label variable W2FODS88687S3 "Wk2DEndorsementAFLCIO"
label variable W2FODS88703S2 "Wk2DEndorsementChamberofCommerce"
label variable W2FODS88703S3 "Wk2DEndorsementChamberofCommerce"
label variable W2FODS88811S2 "Wk2REndorsemChamberofCommerceEndorsement"
label variable W2FODS88811S3 "Wk2REndorsemChamberofCommerceEndorsement"
label variable W2FODS88812S2 "Wk2REndorsementAFLCIO"
label variable W2FODS88812S3 "Wk2REndorsementAFLCIO"
label variable W2FODS89547S2 "wk2d1CBSHUFEcon2"
label variable W2FODS89547S3 "wk2d1CBSHUFEcon2"
label variable W2FODS89548S2 "wk2d1NBCFOXEcon10"
label variable W2FODS89548S3 "wk2d1NBCFOXEcon10"
label variable W2FODS89549S2 "wk2d1REUROOTEcon18"
label variable W2FODS89549S3 "wk2d1REUROOTEcon18"
label variable W2FODS89550S2 "wk2d1CNNUNIEcon22"
label variable W2FODS89550S3 "wk2d1CNNUNIEcon22"
label variable W2FODS89551S2 "wk2d2ABCABCEcon37"
label variable W2FODS89551S3 "wk2d2ABCABCEcon37"
label variable W2FODS89552S2 "wk2d2APAPEcon42"
label variable W2FODS89552S3 "wk2d2APAPEcon42"
label variable W2FODS89553S2 "wk2d2NYTNYTEcon54"
label variable W2FODS89553S3 "wk2d2NYTNYTEcon54"
label variable W2FODS89554S2 "wk2d2NBCNBCEcon62"
label variable W2FODS89554S3 "wk2d2NBCNBCEcon62"
label variable W2FODS89555S2 "wk2r2CBSCBSEcon66"
label variable W2FODS89555S3 "wk2r2CBSCBSEcon66"
label variable W2FODS89556S2 "wk2r2APAPEcon78"
label variable W2FODS89556S3 "wk2r2APAPEcon78"
label variable W2FODS89557S2 "wk2r2REUREUEcon82"
label variable W2FODS89557S3 "wk2r2REUREUEcon82"
label variable W2FODS89558S2 "wk2r2WSJWSJEcon94"
label variable W2FODS89558S3 "wk2r2WSJWSJEcon94"
label variable W2FODS89559S2 "wk2r1WSJHUFEcon110"
label variable W2FODS89559S3 "wk2r1WSJHUFEcon110"
label variable W2FODS89560S2 "wk2r1ABCROOTEcon118"
label variable W2FODS89560S3 "wk2r1ABCROOTEcon118"
label variable W2FODS89561S2 "wk2r1NBCUNIEcon122"
label variable W2FODS89561S3 "wk2r1NBCUNIEcon122"
label variable W2FODS89562S2 "wk2r1APFOXEcon126"
label variable W2FODS89562S3 "wk2r1APFOXEcon126"
label variable W2FODS89564S2 "wk2d3CBSHUFEcon2"
label variable W2FODS89564S3 "wk2d3CBSHUFEcon2"
label variable W2FODS89565S2 "wk2d3NBCFOXEcon10"
label variable W2FODS89565S3 "wk2d3NBCFOXEcon10"
label variable W2FODS89566S2 "wk2d3REUROOTEcon18"
label variable W2FODS89566S3 "wk2d3REUROOTEcon18"
label variable W2FODS89567S2 "wk2d3CNNUNIEcon22"
label variable W2FODS89567S3 "wk2d3CNNUNIEcon22"
label variable W2FODS89568S2 "wk2r3WSJHUFEcon110"
label variable W2FODS89568S3 "wk2r3WSJHUFEcon110"
label variable W2FODS89569S2 "wk2r3ABCROOTEcon118"
label variable W2FODS89569S3 "wk2r3ABCROOTEcon118"
label variable W2FODS89570S2 "wk2r3NBCUNIEcon122"
label variable W2FODS89570S3 "wk2r3NBCUNIEcon122"
label variable W2FODS89571S2 "wk2r3APFOXEcon126"
label variable W2FODS89571S3 "wk2r3APFOXEcon126"
label variable W2FODS89629S3 "Wk1RWilliamsPersonality"
label variable W2FODS89630S3 "Wk1RWilliamsFamily"
label variable W2FODS89631S3 "Wk1RWilliamsExperience"
label variable W2FODS89632S3 "Wk1RWilliamsCandidatePicture"
label variable W2FODS89633S3 "Wk1RWilliamsBackground"
label variable W2FODS89635S3 "Wk1RJonesPersonality"
label variable W2FODS89636S3 "Wk1RJonesFamily"
label variable W2FODS89637S3 "Wk1RJonesExperience"
label variable W2FODS89638S3 "Wk1RJonesCandidatePicture"
label variable W2FODS89639S3 "Wk1RJonesBackground"
label variable W2FODS89640S3 "Wk1DWilsonSlogan"
label variable W2FODS89641S3 "Wk1DWilsonPersonality"
label variable W2FODS89642S3 "Wk1DWilsonFamily"
label variable W2FODS89643S3 "Wk1DWilsonExperience"
label variable W2FODS89644S3 "Wk1DWilsonCandidatePicture"
label variable W2FODS89645S3 "Wk1DWilsonBackground"
label variable W2FODS89646S3 "Wk1DSmithSlogan"
label variable W2FODS89647S3 "Wk1DSmithPersonality"
label variable W2FODS89648S3 "Wk1DSmithFamily"
label variable W2FODS89649S3 "Wk1DSmithExperience"
label variable W2FODS89650S3 "Wk1DSmithCandidatePicture"
label variable W2FODS89651S3 "Wk1DSmithBackground"
label variable W2FODS89660S3 "SmithEducation"
label variable W2FODS89661S3 "SmithExperience"
label variable W2FODS89662S3 "SmithFamily"
label variable W2FODS89663S3 "JonesExperience"
label variable W2FODS89664S3 "SmithReligion"
label variable W2FODS89665S3 "JonesEducation"
label variable W2FODS89666S3 "JonesFamily"
label variable W2FODS89668S3 "JonesReligion"
label variable W2FODS89669S3 "WilsonEducation"
label variable W2FODS89671S3 "WilsonExperience"
label variable W2FODS89672S3 "Wilson's WilsonFamily"
label variable W2FODS89673S3 "WilliamsReligion"
label variable W2FODS89675S3 "WilliamsFamily"
label variable W2FODS89676S3 "WilliamsExperience"
label variable W2FODS89677S3 "WilliamsEducation"
label variable W2FODS89678S3 "WilsonReligion"
label variable W2FODS89680S2 "wk2DSmithJobs"
label variable W2FODS89680S3 "wk2DSmithJobs"
label variable W2FODS89681S2 "wk2DSmithEconPhil"
label variable W2FODS89681S3 "wk2DSmithEconPhil"
label variable W2FODS89682S2 "Wk2RJonesJobs"
label variable W2FODS89682S3 "Wk2RJonesJobs"
label variable W2FODS89683S2 "wk2DWilsonJobs"
label variable W2FODS89683S3 "wk2DWilsonJobs"
label variable W2FODS89684S2 "wk2DWilsonEconPhil"
label variable W2FODS89684S3 "wk2DWilsonEconPhil"
label variable W2FODS89685S2 "wk2RJonesEconPhil"
label variable W2FODS89685S3 "wk2RJonesEconPhil"
label variable W2FODS89686S2 "Wk2RWilliamsJobs"
label variable W2FODS89686S3 "Wk2RWilliamsJobs"
label variable W2FODS89687S2 "wk2RWilliamsEconPhil"
label variable W2FODS89687S3 "wk2RWilliamsEconPhil"
label variable W2FODS90282S3 "wk3DSmithEduc"
label variable W2FODS90283S3 "wk6DSmithHealth"
label variable W2FODS90284S3 "wk4DSmithChina"
label variable W2FODS90285S3 "wk4DSmithDefense"
label variable W2FODS90286S3 "wk5DSmithAbortion"
label variable W2FODS90287S3 "wk5DSmithGay"
label variable W2FODS90288S3 "wk6DSmithTaxes"
label variable W2FODS90289S3 "wk7DSmithAffirm"
label variable W2FODS90291S3 "wk7DSmithImmigration"
label variable W2FODS90292S3 "wk8DSmithAfghan"
label variable W2FODS90293S3 "wk8DSmithMil"
label variable W2FODS90294S3 "wk9DSmithDeathPen"
label variable W2FODS90295S3 "wk9DSmithStemCells"
label variable W2FODS90297S3 "wk3DSmithSocPhil"
label variable W2FODS90299S3 "wk3DWilsonEduc"
label variable W2FODS90300S3 "wk6DWilsonHealth"
label variable W2FODS90301S3 "wk4DWilsonChina"
label variable W2FODS90302S3 "wk4DWilsonDefense"
label variable W2FODS90303S3 "wk5DWilsonAbortion"
label variable W2FODS90304S3 "wk5DWilsonGay"
label variable W2FODS90305S3 "wk6DWilsonTaxes"
label variable W2FODS90306S3 "wk7DWilsonAffirm"
label variable W2FODS90307S3 "wk7DWilsonImmigration"
label variable W2FODS90308S3 "wk8DWilsonAfghan"
label variable W2FODS90309S3 "wk8DWilsonMil"
label variable W2FODS90310S3 "wk9DWilsonDeathPen"
label variable W2FODS90311S3 "wk9DWilsonStemCells"
label variable W2FODS90313S3 "wk7RJonesImmigration"
label variable W2FODS90314S3 "wk3DWilsonSocPhil"
label variable W2FODS90315S3 "wk3RWilliamsEduc"
label variable W2FODS90316S3 "wk3RWilliamsSocPhil"
label variable W2FODS90317S3 "wk4RWilliamsChina"
label variable W2FODS90318S3 "wk4RWilliamsDefense"
label variable W2FODS90319S3 "wk5RWilliamsAbortion"
label variable W2FODS90320S3 "wk5RWilliamsGay"
label variable W2FODS90321S3 "wk6RWilliamsTaxes"
label variable W2FODS90322S3 "wk7RWilliamsAffirm"
label variable W2FODS90323S3 "wk7RWilliamsImmigration"
label variable W2FODS90324S3 "wk8RWilliamsAfghan"
label variable W2FODS90325S3 "wk8RWilliamsMil"
label variable W2FODS90326S3 "wk9RWilliamsDeathPen"
label variable W2FODS90327S3 "wk9RWilliamsStemCells"
label variable W2FODS90328S3 "wk3RJonesEduc"
label variable W2FODS90329S3 "wk3RJonesSocPhil"
label variable W2FODS90330S3 "wk4RJonesChina"
label variable W2FODS90331S3 "wk4RJonesDefense"
label variable W2FODS90332S3 "wk5RJonesAbortion"
label variable W2FODS90333S3 "wk5RJonesGay"
label variable W2FODS90334S3 "wk6RJonesHealth"
label variable W2FODS90335S3 "wk8JRonesAfghan"
label variable W2FODS90336S3 "wk6RJonesTaxes"
label variable W2FODS90337S3 "wk7RJonesAffirm"
label variable W2FODS90338S3 "wk9RJonesStemCells"
label variable W2FODS90339S3 "wk8RJonesMil"
label variable W2FODS90340S3 "wk9RJonesDeathPen"
label variable W2FODS90342S3 "wk6RWilliamsHealth"
label variable W2FODS90348S3 "CheckBackNextWeekHOTAir"
label variable W2FODS90351S3 "CheckBackNextWeekMSNBC"
label variable W2FODS90353S3 "CheckBackNextWeekNYT"
label variable W2GRP20126S3 "RAltMediaHotAirBlog"
label variable W2GRP20131S2 "D02IntMainImp"
label variable W2GRP20131S3 "D02IntMainImp"
label variable W2GRP20132S2 "D04NoIntMainImp"
label variable W2GRP20132S3 "D04NoIntMainImp"
label variable W2GRP20133S2 "D06IntMainNot"
label variable W2GRP20133S3 "D06IntMainNot"
label variable W2GRP20134S2 "D08NoIntMainNot"
label variable W2GRP20134S3 "D08NoIntMainNot"
label variable W2GRP20136S2 "D01IntDiverseImp"
label variable W2GRP20136S3 "D01IntDiverseImp"
label variable W2GRP20138S2 "D03NoIntDiverseImp"
label variable W2GRP20138S3 "D03NoIntDiverseImp"
label variable W2GRP20140S2 "D05IntDiverseNot"
label variable W2GRP20140S3 "D05IntDiverseNot"
label variable W2GRP20142S2 "D07NoIntDiverseNot"
label variable W2GRP20142S3 "D07NoIntDiverseNot"
label variable W2GRP20144S2 "R09IntDiverseImp"
label variable W2GRP20144S3 "R09IntDiverseImp"
label variable W2GRP20146S2 "R10IntMainImp"
label variable W2GRP20146S3 "R10IntMainImp"
label variable W2GRP20148S2 "R11NoIntDiverseImp"
label variable W2GRP20148S3 "R11NoIntDiverseImp"
label variable W2GRP20150S2 "R12NoIntMainImp"
label variable W2GRP20150S3 "R12NoIntMainImp"
label variable W2GRP20152S2 "R13IntDiverseNot"
label variable W2GRP20152S3 "R13IntDiverseNot"
label variable W2GRP20154S2 "R14IntMainNot"
label variable W2GRP20154S3 "R14IntMainNot"
label variable W2GRP20156S2 "R15NoIntDiverseNot"
label variable W2GRP20156S3 "R15NoIntDiverseNot"
label variable W2GRP20158S2 "R16NoIntMainNot"
label variable W2GRP20158S3 "R16NoIntMainNot"
label variable W2GRP20159S3 "DMediaABCNews"
label variable W2GRP20160S3 "DMediaWireServices"
label variable W2GRP20161S3 "DMediaCBSNews"
label variable W2GRP20162S3 "DMediaCNNNews"
label variable W2GRP20163S3 "RAltMediaHuffPost"
label variable W2GRP20164S4 "DEndGroupQuestions"
label variable W2GRP20166S4 "REndGroupQuestions"
label variable W2GRP20168S3 "DMediaNBCNews"
label variable W2GRP20169S3 "DMediaNYT"
label variable W2GRP20171S3 "DMediaWSJ"
label variable W2GRP20172S3 "DAltMediaFoxNews"
label variable W2GRP20173S3 "DAltMediaHotAirBlog"
label variable W2GRP20174S3 "DAltMediaHuffPost"
label variable W2GRP20175S3 "DAltMediaMSNBCNews"
label variable W2GRP20176S3 "DCandSmithAllMediaWebpage"
label variable W2GRP20177S3 "DCandWilsonAllMediaWebpage"
label variable W2GRP20178S3 "RCandJonesAllMediaWebpage"
label variable W2GRP20179S3 "RCandWilliamsAllMediaWebpage"
label variable W2GRP20180S3 "DEndorsementsAllMedia"
label variable W2GRP20181S3 "REndorsementsAllMedia"
label variable W2GRP20182S3 "DAltMediaLatinoSources"
label variable W2GRP20183S3 "DAltMediaAfricanAmericanSources"
label variable W2GRP20184S3 "DOnlyMainMediaABC"
label variable W2GRP20185S3 "DOnlyMainMediaWireServices"
label variable W2GRP20186S3 "DOnlyMainMediaCBS"
label variable W2GRP20187S3 "DOnlyMainMediaCNN"
label variable W2GRP20188S3 "DOnlyMainMediaNBC"
label variable W2GRP20189S3 "DOnlyMainMediaNYT"
label variable W2GRP20191S3 "DOnlyMainMediaWSJ"
label variable W2GRP20192S3 "DCandWilsonOnlyMainWebpage"
label variable W2GRP20193S3 "DCandSmithOnlyMainWebpage"
label variable W2GRP20194S3 "DEndorsementsOnlyMain"
label variable W2GRP20326S3 "RCandJonesOnlyMainWebpage"
label variable W2GRP20327S3 "RCandWilliamsOnlyMainWebpage"
label variable W2GRP20338S3 "RAltMediaAfricanAmericanSources"
label variable W2GRP20339S3 "RAltMediaFoxNews"
label variable W2GRP20341S3 "RAltMediaLatinoSources"
label variable W2GRP20343S3 "RMediaABCNews"
label variable W2GRP20344S3 "RMediaCBSNews"
label variable W2GRP20346S3 "RMediaNYT"
label variable W2GRP20347S3 "RMediaWireServices"
label variable W2GRP20348S3 "RMediaWSJ"
label variable W2GRP20349S3 "RMediaNBCNews"
label variable W2GRP20350S3 "ROnlyMainMediaABC"
label variable W2GRP20352S3 "ROnlyMainMediaNYT"
label variable W2GRP20356S3 "ROnlyMainMediaNBC"
label variable W2GRP20357S1 "BeginGroup"
label variable W2GRP20358S1 "BeginGroupRepeated"
label variable W2Q5729DUR30577S1 "Subject Sign-in"
label variable W2Q5730DUR30578S4 "Wk2DemCandsRealistic"
label variable W2Q5730VAL30578S4 "Wk2DemCandsRealistic"
label variable W2Q5731DUR30579S4 "Wk2RepCandsRealistic"
label variable W2Q5731VAL30579S4 "Wk2RepCandsRealistic"
label variable W2TODS88687S2 "Wk2DEndorsementAFLCIO"
label variable W2TODS88687S3 "Wk2DEndorsementAFLCIO"
label variable W2TODS88703S2 "Wk2DEndorsementChamberofCommerce"
label variable W2TODS88703S3 "Wk2DEndorsementChamberofCommerce"
label variable W2TODS88811S2 "Wk2REndorsemChamberofCommerceEndorsement"
label variable W2TODS88811S3 "Wk2REndorsemChamberofCommerceEndorsement"
label variable W2TODS88812S2 "Wk2REndorsementAFLCIO"
label variable W2TODS88812S3 "Wk2REndorsementAFLCIO"
label variable W2TODS89547S2 "wk2d1CBSHUFEcon2"
label variable W2TODS89547S3 "wk2d1CBSHUFEcon2"
label variable W2TODS89548S2 "wk2d1NBCFOXEcon10"
label variable W2TODS89548S3 "wk2d1NBCFOXEcon10"
label variable W2TODS89549S2 "wk2d1REUROOTEcon18"
label variable W2TODS89549S3 "wk2d1REUROOTEcon18"
label variable W2TODS89550S2 "wk2d1CNNUNIEcon22"
label variable W2TODS89550S3 "wk2d1CNNUNIEcon22"
label variable W2TODS89551S2 "wk2d2ABCABCEcon37"
label variable W2TODS89551S3 "wk2d2ABCABCEcon37"
label variable W2TODS89552S2 "wk2d2APAPEcon42"
label variable W2TODS89552S3 "wk2d2APAPEcon42"
label variable W2TODS89553S2 "wk2d2NYTNYTEcon54"
label variable W2TODS89553S3 "wk2d2NYTNYTEcon54"
label variable W2TODS89554S2 "wk2d2NBCNBCEcon62"
label variable W2TODS89554S3 "wk2d2NBCNBCEcon62"
label variable W2TODS89555S2 "wk2r2CBSCBSEcon66"
label variable W2TODS89555S3 "wk2r2CBSCBSEcon66"
label variable W2TODS89556S2 "wk2r2APAPEcon78"
label variable W2TODS89556S3 "wk2r2APAPEcon78"
label variable W2TODS89557S2 "wk2r2REUREUEcon82"
label variable W2TODS89557S3 "wk2r2REUREUEcon82"
label variable W2TODS89558S2 "wk2r2WSJWSJEcon94"
label variable W2TODS89558S3 "wk2r2WSJWSJEcon94"
label variable W2TODS89559S2 "wk2r1WSJHUFEcon110"
label variable W2TODS89559S3 "wk2r1WSJHUFEcon110"
label variable W2TODS89560S2 "wk2r1ABCROOTEcon118"
label variable W2TODS89560S3 "wk2r1ABCROOTEcon118"
label variable W2TODS89561S2 "wk2r1NBCUNIEcon122"
label variable W2TODS89561S3 "wk2r1NBCUNIEcon122"
label variable W2TODS89562S2 "wk2r1APFOXEcon126"
label variable W2TODS89562S3 "wk2r1APFOXEcon126"
label variable W2TODS89564S2 "wk2d3CBSHUFEcon2"
label variable W2TODS89564S3 "wk2d3CBSHUFEcon2"
label variable W2TODS89565S2 "wk2d3NBCFOXEcon10"
label variable W2TODS89565S3 "wk2d3NBCFOXEcon10"
label variable W2TODS89566S2 "wk2d3REUROOTEcon18"
label variable W2TODS89566S3 "wk2d3REUROOTEcon18"
label variable W2TODS89567S2 "wk2d3CNNUNIEcon22"
label variable W2TODS89567S3 "wk2d3CNNUNIEcon22"
label variable W2TODS89568S2 "wk2r3WSJHUFEcon110"
label variable W2TODS89568S3 "wk2r3WSJHUFEcon110"
label variable W2TODS89569S2 "wk2r3ABCROOTEcon118"
label variable W2TODS89569S3 "wk2r3ABCROOTEcon118"
label variable W2TODS89570S2 "wk2r3NBCUNIEcon122"
label variable W2TODS89570S3 "wk2r3NBCUNIEcon122"
label variable W2TODS89571S2 "wk2r3APFOXEcon126"
label variable W2TODS89571S3 "wk2r3APFOXEcon126"
label variable W2TODS89629S3 "Wk1RWilliamsPersonality"
label variable W2TODS89630S3 "Wk1RWilliamsFamily"
label variable W2TODS89631S3 "Wk1RWilliamsExperience"
label variable W2TODS89632S3 "Wk1RWilliamsCandidatePicture"
label variable W2TODS89633S3 "Wk1RWilliamsBackground"
label variable W2TODS89635S3 "Wk1RJonesPersonality"
label variable W2TODS89636S3 "Wk1RJonesFamily"
label variable W2TODS89637S3 "Wk1RJonesExperience"
label variable W2TODS89638S3 "Wk1RJonesCandidatePicture"
label variable W2TODS89639S3 "Wk1RJonesBackground"
label variable W2TODS89640S3 "Wk1DWilsonSlogan"
label variable W2TODS89641S3 "Wk1DWilsonPersonality"
label variable W2TODS89642S3 "Wk1DWilsonFamily"
label variable W2TODS89643S3 "Wk1DWilsonExperience"
label variable W2TODS89644S3 "Wk1DWilsonCandidatePicture"
label variable W2TODS89645S3 "Wk1DWilsonBackground"
label variable W2TODS89646S3 "Wk1DSmithSlogan"
label variable W2TODS89647S3 "Wk1DSmithPersonality"
label variable W2TODS89648S3 "Wk1DSmithFamily"
label variable W2TODS89649S3 "Wk1DSmithExperience"
label variable W2TODS89650S3 "Wk1DSmithCandidatePicture"
label variable W2TODS89651S3 "Wk1DSmithBackground"
label variable W2TODS89660S3 "SmithEducation"
label variable W2TODS89661S3 "SmithExperience"
label variable W2TODS89662S3 "SmithFamily"
label variable W2TODS89663S3 "JonesExperience"
label variable W2TODS89664S3 "SmithReligion"
label variable W2TODS89665S3 "JonesEducation"
label variable W2TODS89666S3 "JonesFamily"
label variable W2TODS89668S3 "JonesReligion"
label variable W2TODS89669S3 "WilsonEducation"
label variable W2TODS89671S3 "WilsonExperience"
label variable W2TODS89672S3 "Wilson's WilsonFamily"
label variable W2TODS89673S3 "WilliamsReligion"
label variable W2TODS89675S3 "WilliamsFamily"
label variable W2TODS89676S3 "WilliamsExperience"
label variable W2TODS89677S3 "WilliamsEducation"
label variable W2TODS89678S3 "WilsonReligion"
label variable W2TODS89680S2 "wk2DSmithJobs"
label variable W2TODS89680S3 "wk2DSmithJobs"
label variable W2TODS89681S2 "wk2DSmithEconPhil"
label variable W2TODS89681S3 "wk2DSmithEconPhil"
label variable W2TODS89682S2 "Wk2RJonesJobs"
label variable W2TODS89682S3 "Wk2RJonesJobs"
label variable W2TODS89683S2 "wk2DWilsonJobs"
label variable W2TODS89683S3 "wk2DWilsonJobs"
label variable W2TODS89684S2 "wk2DWilsonEconPhil"
label variable W2TODS89684S3 "wk2DWilsonEconPhil"
label variable W2TODS89685S2 "wk2RJonesEconPhil"
label variable W2TODS89685S3 "wk2RJonesEconPhil"
label variable W2TODS89686S2 "Wk2RWilliamsJobs"
label variable W2TODS89686S3 "Wk2RWilliamsJobs"
label variable W2TODS89687S2 "wk2RWilliamsEconPhil"
label variable W2TODS89687S3 "wk2RWilliamsEconPhil"
label variable W2TODS90282S3 "wk3DSmithEduc"
label variable W2TODS90283S3 "wk6DSmithHealth"
label variable W2TODS90284S3 "wk4DSmithChina"
label variable W2TODS90285S3 "wk4DSmithDefense"
label variable W2TODS90286S3 "wk5DSmithAbortion"
label variable W2TODS90287S3 "wk5DSmithGay"
label variable W2TODS90288S3 "wk6DSmithTaxes"
label variable W2TODS90289S3 "wk7DSmithAffirm"
label variable W2TODS90291S3 "wk7DSmithImmigration"
label variable W2TODS90292S3 "wk8DSmithAfghan"
label variable W2TODS90293S3 "wk8DSmithMil"
label variable W2TODS90294S3 "wk9DSmithDeathPen"
label variable W2TODS90295S3 "wk9DSmithStemCells"
label variable W2TODS90297S3 "wk3DSmithSocPhil"
label variable W2TODS90299S3 "wk3DWilsonEduc"
label variable W2TODS90300S3 "wk6DWilsonHealth"
label variable W2TODS90301S3 "wk4DWilsonChina"
label variable W2TODS90302S3 "wk4DWilsonDefense"
label variable W2TODS90303S3 "wk5DWilsonAbortion"
label variable W2TODS90304S3 "wk5DWilsonGay"
label variable W2TODS90305S3 "wk6DWilsonTaxes"
label variable W2TODS90306S3 "wk7DWilsonAffirm"
label variable W2TODS90307S3 "wk7DWilsonImmigration"
label variable W2TODS90308S3 "wk8DWilsonAfghan"
label variable W2TODS90309S3 "wk8DWilsonMil"
label variable W2TODS90310S3 "wk9DWilsonDeathPen"
label variable W2TODS90311S3 "wk9DWilsonStemCells"
label variable W2TODS90313S3 "wk7RJonesImmigration"
label variable W2TODS90314S3 "wk3DWilsonSocPhil"
label variable W2TODS90315S3 "wk3RWilliamsEduc"
label variable W2TODS90316S3 "wk3RWilliamsSocPhil"
label variable W2TODS90317S3 "wk4RWilliamsChina"
label variable W2TODS90318S3 "wk4RWilliamsDefense"
label variable W2TODS90319S3 "wk5RWilliamsAbortion"
label variable W2TODS90320S3 "wk5RWilliamsGay"
label variable W2TODS90321S3 "wk6RWilliamsTaxes"
label variable W2TODS90322S3 "wk7RWilliamsAffirm"
label variable W2TODS90323S3 "wk7RWilliamsImmigration"
label variable W2TODS90324S3 "wk8RWilliamsAfghan"
label variable W2TODS90325S3 "wk8RWilliamsMil"
label variable W2TODS90326S3 "wk9RWilliamsDeathPen"
label variable W2TODS90327S3 "wk9RWilliamsStemCells"
label variable W2TODS90328S3 "wk3RJonesEduc"
label variable W2TODS90329S3 "wk3RJonesSocPhil"
label variable W2TODS90330S3 "wk4RJonesChina"
label variable W2TODS90331S3 "wk4RJonesDefense"
label variable W2TODS90332S3 "wk5RJonesAbortion"
label variable W2TODS90333S3 "wk5RJonesGay"
label variable W2TODS90334S3 "wk6RJonesHealth"
label variable W2TODS90335S3 "wk8JRonesAfghan"
label variable W2TODS90336S3 "wk6RJonesTaxes"
label variable W2TODS90337S3 "wk7RJonesAffirm"
label variable W2TODS90338S3 "wk9RJonesStemCells"
label variable W2TODS90339S3 "wk8RJonesMil"
label variable W2TODS90340S3 "wk9RJonesDeathPen"
label variable W2TODS90342S3 "wk6RWilliamsHealth"
label variable W2TODS90348S3 "CheckBackNextWeekHOTAir"
label variable W2TODS90351S3 "CheckBackNextWeekMSNBC"
label variable W2TODS90353S3 "CheckBackNextWeekNYT"
label variable W2TTOS88687S2 "Wk2DEndorsementAFLCIO"
label variable W2TTOS88687S3 "Wk2DEndorsementAFLCIO"
label variable W2TTOS88703S2 "Wk2DEndorsementChamberofCommerce"
label variable W2TTOS88703S3 "Wk2DEndorsementChamberofCommerce"
label variable W2TTOS88811S2 "Wk2REndorsemChamberofCommerceEndorsement"
label variable W2TTOS88811S3 "Wk2REndorsemChamberofCommerceEndorsement"
label variable W2TTOS88812S2 "Wk2REndorsementAFLCIO"
label variable W2TTOS88812S3 "Wk2REndorsementAFLCIO"
label variable W2TTOS89547S2 "wk2d1CBSHUFEcon2"
label variable W2TTOS89547S3 "wk2d1CBSHUFEcon2"
label variable W2TTOS89548S2 "wk2d1NBCFOXEcon10"
label variable W2TTOS89548S3 "wk2d1NBCFOXEcon10"
label variable W2TTOS89549S2 "wk2d1REUROOTEcon18"
label variable W2TTOS89549S3 "wk2d1REUROOTEcon18"
label variable W2TTOS89550S2 "wk2d1CNNUNIEcon22"
label variable W2TTOS89550S3 "wk2d1CNNUNIEcon22"
label variable W2TTOS89551S2 "wk2d2ABCABCEcon37"
label variable W2TTOS89551S3 "wk2d2ABCABCEcon37"
label variable W2TTOS89552S2 "wk2d2APAPEcon42"
label variable W2TTOS89552S3 "wk2d2APAPEcon42"
label variable W2TTOS89553S2 "wk2d2NYTNYTEcon54"
label variable W2TTOS89553S3 "wk2d2NYTNYTEcon54"
label variable W2TTOS89554S2 "wk2d2NBCNBCEcon62"
label variable W2TTOS89554S3 "wk2d2NBCNBCEcon62"
label variable W2TTOS89555S2 "wk2r2CBSCBSEcon66"
label variable W2TTOS89555S3 "wk2r2CBSCBSEcon66"
label variable W2TTOS89556S2 "wk2r2APAPEcon78"
label variable W2TTOS89556S3 "wk2r2APAPEcon78"
label variable W2TTOS89557S2 "wk2r2REUREUEcon82"
label variable W2TTOS89557S3 "wk2r2REUREUEcon82"
label variable W2TTOS89558S2 "wk2r2WSJWSJEcon94"
label variable W2TTOS89558S3 "wk2r2WSJWSJEcon94"
label variable W2TTOS89559S2 "wk2r1WSJHUFEcon110"
label variable W2TTOS89559S3 "wk2r1WSJHUFEcon110"
label variable W2TTOS89560S2 "wk2r1ABCROOTEcon118"
label variable W2TTOS89560S3 "wk2r1ABCROOTEcon118"
label variable W2TTOS89561S2 "wk2r1NBCUNIEcon122"
label variable W2TTOS89561S3 "wk2r1NBCUNIEcon122"
label variable W2TTOS89562S2 "wk2r1APFOXEcon126"
label variable W2TTOS89562S3 "wk2r1APFOXEcon126"
label variable W2TTOS89564S2 "wk2d3CBSHUFEcon2"
label variable W2TTOS89564S3 "wk2d3CBSHUFEcon2"
label variable W2TTOS89565S2 "wk2d3NBCFOXEcon10"
label variable W2TTOS89565S3 "wk2d3NBCFOXEcon10"
label variable W2TTOS89566S2 "wk2d3REUROOTEcon18"
label variable W2TTOS89566S3 "wk2d3REUROOTEcon18"
label variable W2TTOS89567S2 "wk2d3CNNUNIEcon22"
label variable W2TTOS89567S3 "wk2d3CNNUNIEcon22"
label variable W2TTOS89568S2 "wk2r3WSJHUFEcon110"
label variable W2TTOS89568S3 "wk2r3WSJHUFEcon110"
label variable W2TTOS89569S2 "wk2r3ABCROOTEcon118"
label variable W2TTOS89569S3 "wk2r3ABCROOTEcon118"
label variable W2TTOS89570S2 "wk2r3NBCUNIEcon122"
label variable W2TTOS89570S3 "wk2r3NBCUNIEcon122"
label variable W2TTOS89571S2 "wk2r3APFOXEcon126"
label variable W2TTOS89571S3 "wk2r3APFOXEcon126"
label variable W2TTOS89629S3 "Wk1RWilliamsPersonality"
label variable W2TTOS89630S3 "Wk1RWilliamsFamily"
label variable W2TTOS89631S3 "Wk1RWilliamsExperience"
label variable W2TTOS89632S3 "Wk1RWilliamsCandidatePicture"
label variable W2TTOS89633S3 "Wk1RWilliamsBackground"
label variable W2TTOS89635S3 "Wk1RJonesPersonality"
label variable W2TTOS89636S3 "Wk1RJonesFamily"
label variable W2TTOS89637S3 "Wk1RJonesExperience"
label variable W2TTOS89638S3 "Wk1RJonesCandidatePicture"
label variable W2TTOS89639S3 "Wk1RJonesBackground"
label variable W2TTOS89640S3 "Wk1DWilsonSlogan"
label variable W2TTOS89641S3 "Wk1DWilsonPersonality"
label variable W2TTOS89642S3 "Wk1DWilsonFamily"
label variable W2TTOS89643S3 "Wk1DWilsonExperience"
label variable W2TTOS89644S3 "Wk1DWilsonCandidatePicture"
label variable W2TTOS89645S3 "Wk1DWilsonBackground"
label variable W2TTOS89646S3 "Wk1DSmithSlogan"
label variable W2TTOS89647S3 "Wk1DSmithPersonality"
label variable W2TTOS89648S3 "Wk1DSmithFamily"
label variable W2TTOS89649S3 "Wk1DSmithExperience"
label variable W2TTOS89650S3 "Wk1DSmithCandidatePicture"
label variable W2TTOS89651S3 "Wk1DSmithBackground"
label variable W2TTOS89660S3 "SmithEducation"
label variable W2TTOS89661S3 "SmithExperience"
label variable W2TTOS89662S3 "SmithFamily"
label variable W2TTOS89663S3 "JonesExperience"
label variable W2TTOS89664S3 "SmithReligion"
label variable W2TTOS89665S3 "JonesEducation"
label variable W2TTOS89666S3 "JonesFamily"
label variable W2TTOS89668S3 "JonesReligion"
label variable W2TTOS89669S3 "WilsonEducation"
label variable W2TTOS89671S3 "WilsonExperience"
label variable W2TTOS89672S3 "Wilson's WilsonFamily"
label variable W2TTOS89673S3 "WilliamsReligion"
label variable W2TTOS89675S3 "WilliamsFamily"
label variable W2TTOS89676S3 "WilliamsExperience"
label variable W2TTOS89677S3 "WilliamsEducation"
label variable W2TTOS89678S3 "WilsonReligion"
label variable W2TTOS89680S2 "wk2DSmithJobs"
label variable W2TTOS89680S3 "wk2DSmithJobs"
label variable W2TTOS89681S2 "wk2DSmithEconPhil"
label variable W2TTOS89681S3 "wk2DSmithEconPhil"
label variable W2TTOS89682S2 "Wk2RJonesJobs"
label variable W2TTOS89682S3 "Wk2RJonesJobs"
label variable W2TTOS89683S2 "wk2DWilsonJobs"
label variable W2TTOS89683S3 "wk2DWilsonJobs"
label variable W2TTOS89684S2 "wk2DWilsonEconPhil"
label variable W2TTOS89684S3 "wk2DWilsonEconPhil"
label variable W2TTOS89685S2 "wk2RJonesEconPhil"
label variable W2TTOS89685S3 "wk2RJonesEconPhil"
label variable W2TTOS89686S2 "Wk2RWilliamsJobs"
label variable W2TTOS89686S3 "Wk2RWilliamsJobs"
label variable W2TTOS89687S2 "wk2RWilliamsEconPhil"
label variable W2TTOS89687S3 "wk2RWilliamsEconPhil"
label variable W2TTOS90282S3 "wk3DSmithEduc"
label variable W2TTOS90283S3 "wk6DSmithHealth"
label variable W2TTOS90284S3 "wk4DSmithChina"
label variable W2TTOS90285S3 "wk4DSmithDefense"
label variable W2TTOS90286S3 "wk5DSmithAbortion"
label variable W2TTOS90287S3 "wk5DSmithGay"
label variable W2TTOS90288S3 "wk6DSmithTaxes"
label variable W2TTOS90289S3 "wk7DSmithAffirm"
label variable W2TTOS90291S3 "wk7DSmithImmigration"
label variable W2TTOS90292S3 "wk8DSmithAfghan"
label variable W2TTOS90293S3 "wk8DSmithMil"
label variable W2TTOS90294S3 "wk9DSmithDeathPen"
label variable W2TTOS90295S3 "wk9DSmithStemCells"
label variable W2TTOS90297S3 "wk3DSmithSocPhil"
label variable W2TTOS90299S3 "wk3DWilsonEduc"
label variable W2TTOS90300S3 "wk6DWilsonHealth"
label variable W2TTOS90301S3 "wk4DWilsonChina"
label variable W2TTOS90302S3 "wk4DWilsonDefense"
label variable W2TTOS90303S3 "wk5DWilsonAbortion"
label variable W2TTOS90304S3 "wk5DWilsonGay"
label variable W2TTOS90305S3 "wk6DWilsonTaxes"
label variable W2TTOS90306S3 "wk7DWilsonAffirm"
label variable W2TTOS90307S3 "wk7DWilsonImmigration"
label variable W2TTOS90308S3 "wk8DWilsonAfghan"
label variable W2TTOS90309S3 "wk8DWilsonMil"
label variable W2TTOS90310S3 "wk9DWilsonDeathPen"
label variable W2TTOS90311S3 "wk9DWilsonStemCells"
label variable W2TTOS90313S3 "wk7RJonesImmigration"
label variable W2TTOS90314S3 "wk3DWilsonSocPhil"
label variable W2TTOS90315S3 "wk3RWilliamsEduc"
label variable W2TTOS90316S3 "wk3RWilliamsSocPhil"
label variable W2TTOS90317S3 "wk4RWilliamsChina"
label variable W2TTOS90318S3 "wk4RWilliamsDefense"
label variable W2TTOS90319S3 "wk5RWilliamsAbortion"
label variable W2TTOS90320S3 "wk5RWilliamsGay"
label variable W2TTOS90321S3 "wk6RWilliamsTaxes"
label variable W2TTOS90322S3 "wk7RWilliamsAffirm"
label variable W2TTOS90323S3 "wk7RWilliamsImmigration"
label variable W2TTOS90324S3 "wk8RWilliamsAfghan"
label variable W2TTOS90325S3 "wk8RWilliamsMil"
label variable W2TTOS90326S3 "wk9RWilliamsDeathPen"
label variable W2TTOS90327S3 "wk9RWilliamsStemCells"
label variable W2TTOS90328S3 "wk3RJonesEduc"
label variable W2TTOS90329S3 "wk3RJonesSocPhil"
label variable W2TTOS90330S3 "wk4RJonesChina"
label variable W2TTOS90331S3 "wk4RJonesDefense"
label variable W2TTOS90332S3 "wk5RJonesAbortion"
label variable W2TTOS90333S3 "wk5RJonesGay"
label variable W2TTOS90334S3 "wk6RJonesHealth"
label variable W2TTOS90335S3 "wk8JRonesAfghan"
label variable W2TTOS90336S3 "wk6RJonesTaxes"
label variable W2TTOS90337S3 "wk7RJonesAffirm"
label variable W2TTOS90338S3 "wk9RJonesStemCells"
label variable W2TTOS90339S3 "wk8RJonesMil"
label variable W2TTOS90340S3 "wk9RJonesDeathPen"
label variable W2TTOS90342S3 "wk6RWilliamsHealth"
label variable W2TTOS90348S3 "CheckBackNextWeekHOTAir"
label variable W2TTOS90351S3 "CheckBackNextWeekMSNBC"
label variable W2TTOS90353S3 "CheckBackNextWeekNYT"
label variable W2WORDSA3588S4 "That's it for this Week"
label variable W2WORDSA3596S1 "Whoops -- Not a Valid Subject ID"
label variable W2WORDSA3670S2 "WelcomeWk2D&RImpC"
label variable W2WORDSA3671S2 "Wk2DemPoll"
label variable W2WORDSA3672S2 "Wk2RepPoll"
label variable W2WORDSA3699S2 "WelcomeWk2DA"
label variable W2WORDSA3700S2 "WelcomeWk2RA"
label variable W2WORDSA3701S2 "WelcomeWk2D&RIntB"
label variable W2WORDSA3702S2 "WelcomeWk2D&RNoIntB"
label variable W2WORDSA3703S2 "WelcomeWk2D&RnotImpC"
label variable W2WORDSA3704S3 "Substage2and3BetwNoIntD&R"
label variable W2WORDSA3705S3 "Substage2and3BetwIntD&R"

*Dropping things we won't need...
drop W2DATES2 W2DATES3 W2DATES4 W2TOTALFLOWACCESSEDS1 W2TOTALFLOWACCESSEDS4 W2TTOA3596S1 ///
W2TTOA3670S2 W2TTOA3671S2 W2TTOA3672S2 W2TTOA3699S2 W2TTOA3700S2 W2TTOA3701S2 W2TTOA3702S2 ///
W2TTOA3703S2 W2TTOA3704S3 W2TTOA3705S3 W2TIMES2 W2TIMES3 W2TIMES4

* Merge W2S1234 with IPW2 (IP ADDRESS)
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W2/WorkingData/DurationData/W2S1234_Working.dta", replace
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W2/WorkingData/DurationData/W2S1234_Working.dta", replace
merge 1:m SUBJECTID using "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W2/IP/IPW2.dta"
drop _merge

* Duplicate Check
capture drop DUPW2
sort PAC
quietly by PAC: gen DUPW2 = cond(_N==1,0,_n)

* Generating week indicator
capture drop WEEK2
capture gen WEEK2 = 1

* Generating Date Variable
capture drop year month day
nsplit W2DATES1, digits(4 2 2) generate(year month day)
capture drop DATEW2b
gen DATEW2b = mdy(month, day, year)
capture drop date1
gen date1 = 19724
format %td date1
format %td DATEW2b
capture drop DATEW2a
gen DATEW2a = DATEW2b - date1
capture drop date1 year month day W2DATES1 W2DATES2 W2DATES3 W2DATES4

* ORDERING
order PAC IP DUPW2 DATEW2a DATEW2b W2TIMES1 WEEK2
sort PAC, stable

* Dropping Duplicates
drop if PAC == .
drop if SUBJECTID == 99005
drop if SUBJECTID == 98919
drop if SUBJECTID == 99351
drop if SUBJECTID == 99359
drop if SUBJECTID == 101353
replace PAC= 100824 if SUBJECTID == 101317
drop if SUBJECTID == 101341
drop if SUBJECTID == 101442
replace PAC= 108277 if IP == "50.134.64.50"
replace PAC= 108648 if IP == "72.225.41.203"

* Generating Cumulative TOD and TTO

capture egen  W2COD88687Wk = rowtotal(W2TODS88687S2 W2TODS88687S3)
capture egen  W2COD88703Wk = rowtotal(W2TODS88703S2 W2TODS88703S3)
capture egen  W2COD88811Wk = rowtotal(W2TODS88811S2 W2TODS88811S3)
capture egen  W2COD88812Wk = rowtotal(W2TODS88812S2 W2TODS88812S3)
capture egen  W2COD89547Wk = rowtotal(W2TODS89547S2 W2TODS89547S3)
capture egen  W2COD89548Wk = rowtotal(W2TODS89548S2 W2TODS89548S3)
capture egen  W2COD89549Wk = rowtotal(W2TODS89549S2 W2TODS89549S3)
capture egen  W2COD89550Wk = rowtotal(W2TODS89550S2 W2TODS89550S3)
capture egen  W2COD89551Wk = rowtotal(W2TODS89551S2 W2TODS89551S3)
capture egen  W2COD89552Wk = rowtotal(W2TODS89552S2 W2TODS89552S3)
capture egen  W2COD89553Wk = rowtotal(W2TODS89553S2 W2TODS89553S3)
capture egen  W2COD89554Wk = rowtotal(W2TODS89554S2 W2TODS89554S3)
capture egen  W2COD89555Wk = rowtotal(W2TODS89555S2 W2TODS89555S3)
capture egen  W2COD89556Wk = rowtotal(W2TODS89556S2 W2TODS89556S3)
capture egen  W2COD89557Wk = rowtotal(W2TODS89557S2 W2TODS89557S3)
capture egen  W2COD89558Wk = rowtotal(W2TODS89558S2 W2TODS89558S3)
capture egen  W2COD89559Wk = rowtotal(W2TODS89559S2 W2TODS89559S3)
capture egen  W2COD89560Wk = rowtotal(W2TODS89560S2 W2TODS89560S3)
capture egen  W2COD89561Wk = rowtotal(W2TODS89561S2 W2TODS89561S3)
capture egen  W2COD89562Wk = rowtotal(W2TODS89562S2 W2TODS89562S3)
capture egen  W2COD89564Wk = rowtotal(W2TODS89564S2 W2TODS89564S3)
capture egen  W2COD89565Wk = rowtotal(W2TODS89565S2 W2TODS89565S3)
capture egen  W2COD89566Wk = rowtotal(W2TODS89566S2 W2TODS89566S3)
capture egen  W2COD89567Wk = rowtotal(W2TODS89567S2 W2TODS89567S3)
capture egen  W2COD89568Wk = rowtotal(W2TODS89568S2 W2TODS89568S3)
capture egen  W2COD89569Wk = rowtotal(W2TODS89569S2 W2TODS89569S3)
capture egen  W2COD89570Wk = rowtotal(W2TODS89570S2 W2TODS89570S3)
capture egen  W2COD89571Wk = rowtotal(W2TODS89571S2 W2TODS89571S3)
capture egen  W2COD89680Wk = rowtotal(W2TODS89680S2 W2TODS89680S3)
capture egen  W2COD89681Wk = rowtotal(W2TODS89681S2 W2TODS89681S3)
capture egen  W2COD89682Wk = rowtotal(W2TODS89682S2 W2TODS89682S3)
capture egen  W2COD89683Wk = rowtotal(W2TODS89683S2 W2TODS89683S3)
capture egen  W2COD89684Wk = rowtotal(W2TODS89684S2 W2TODS89684S3)
capture egen  W2COD89685Wk = rowtotal(W2TODS89685S2 W2TODS89685S3)
capture egen  W2COD89686Wk = rowtotal(W2TODS89686S2 W2TODS89686S3)
capture egen  W2COD89687Wk = rowtotal(W2TODS89687S2 W2TODS89687S3)
capture egen  W2CTO88687Wk = rowtotal(W2TTOS88687S2 W2TTOS88687S3)
capture egen  W2CTO88703Wk = rowtotal(W2TTOS88703S2 W2TTOS88703S3)
capture egen  W2CTO88811Wk = rowtotal(W2TTOS88811S2 W2TTOS88811S3)
capture egen  W2CTO88812Wk = rowtotal(W2TTOS88812S2 W2TTOS88812S3)
capture egen  W2CTO89547Wk = rowtotal(W2TTOS89547S2 W2TTOS89547S3)
capture egen  W2CTO89548Wk = rowtotal(W2TTOS89548S2 W2TTOS89548S3)
capture egen  W2CTO89549Wk = rowtotal(W2TTOS89549S2 W2TTOS89549S3)
capture egen  W2CTO89550Wk = rowtotal(W2TTOS89550S2 W2TTOS89550S3)
capture egen  W2CTO89551Wk = rowtotal(W2TTOS89551S2 W2TTOS89551S3)
capture egen  W2CTO89552Wk = rowtotal(W2TTOS89552S2 W2TTOS89552S3)
capture egen  W2CTO89553Wk = rowtotal(W2TTOS89553S2 W2TTOS89553S3)
capture egen  W2CTO89554Wk = rowtotal(W2TTOS89554S2 W2TTOS89554S3)
capture egen  W2CTO89555Wk = rowtotal(W2TTOS89555S2 W2TTOS89555S3)
capture egen  W2CTO89556Wk = rowtotal(W2TTOS89556S2 W2TTOS89556S3)
capture egen  W2CTO89557Wk = rowtotal(W2TTOS89557S2 W2TTOS89557S3)
capture egen  W2CTO89558Wk = rowtotal(W2TTOS89558S2 W2TTOS89558S3)
capture egen  W2CTO89559Wk = rowtotal(W2TTOS89559S2 W2TTOS89559S3)
capture egen  W2CTO89560Wk = rowtotal(W2TTOS89560S2 W2TTOS89560S3)
capture egen  W2CTO89561Wk = rowtotal(W2TTOS89561S2 W2TTOS89561S3)
capture egen  W2CTO89562Wk = rowtotal(W2TTOS89562S2 W2TTOS89562S3)
capture egen  W2CTO89564Wk = rowtotal(W2TTOS89564S2 W2TTOS89564S3)
capture egen  W2CTO89565Wk = rowtotal(W2TTOS89565S2 W2TTOS89565S3)
capture egen  W2CTO89566Wk = rowtotal(W2TTOS89566S2 W2TTOS89566S3)
capture egen  W2CTO89567Wk = rowtotal(W2TTOS89567S2 W2TTOS89567S3)
capture egen  W2CTO89568Wk = rowtotal(W2TTOS89568S2 W2TTOS89568S3)
capture egen  W2CTO89569Wk = rowtotal(W2TTOS89569S2 W2TTOS89569S3)
capture egen  W2CTO89570Wk = rowtotal(W2TTOS89570S2 W2TTOS89570S3)
capture egen  W2CTO89571Wk = rowtotal(W2TTOS89571S2 W2TTOS89571S3)
capture egen  W2CTO89680Wk = rowtotal(W2TTOS89680S2 W2TTOS89680S3)
capture egen  W2CTO89681Wk = rowtotal(W2TTOS89681S2 W2TTOS89681S3)
capture egen  W2CTO89682Wk = rowtotal(W2TTOS89682S2 W2TTOS89682S3)
capture egen  W2CTO89683Wk = rowtotal(W2TTOS89683S2 W2TTOS89683S3)
capture egen  W2CTO89684Wk = rowtotal(W2TTOS89684S2 W2TTOS89684S3)
capture egen  W2CTO89685Wk = rowtotal(W2TTOS89685S2 W2TTOS89685S3)
capture egen  W2CTO89686Wk = rowtotal(W2TTOS89686S2 W2TTOS89686S3)
capture egen  W2CTO89687Wk = rowtotal(W2TTOS89687S2 W2TTOS89687S3)

* Saving
rename SUBJECTID SUBJECTIDW2
rename IP IPW2
sort PAC
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W2/WorkingData/DurationData/W2S1234_Working.dta", replace

**************************************************************************************************
**************************************************************************************************
*										W	E	E	K	 3
**************************************************************************************************
**************************************************************************************************

set more off
clear all
* Set Working Directory (Uncomment it, don't delet it)
cd "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W3/WorkingData/DurationData"

**************************************************************************************************
*											W3S1
**************************************************************************************************


*Open W3S1 and save a Working Copy (We wanna keep a copy of the original data)
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W3/WorkingData/DurationData/W3S1.dta", replace
destring, replace
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W3/WorkingData/DurationData/W3S1_Working.dta", replace

* From Excel to STATA everything enters as lower case. Lets reverse it to its original: Upper Case
rename *, upper

* Now lets keep what we need
keep ///
SUBJECT_ID DATE TIME TIME_BEGIN_SUBSTAGE TIME_BEGIN_FLOWPHASE TIME_END_FLOWPHASE GRP_20478 Q_5951_SEQ_32045 ///
Q_5951_VAL_32045 Q_5951_DUR_32045 TOTAL_FLOW_ACCESSED

*rename SUBJECT_ID to PAC
rename Q_5951_VAL_32045 PAC

* Adding Prefixes and Suffixes
foreach x of var * {
rename `x' W3`x'
} 

foreach x of var * {
rename `x' `x'S1
}

* Renaming SUBJECT_ID (no pre nor su fixes, we need that to merge on it)
rename W3SUBJECT_IDS1 SUBJECTID

* Renaming SUBJECT_ID (no pre nor su fixes, we need that to merge on it)
rename W3PACS1 PAC

* Eliminating ALL underscores
foreach v of var *_* { 
	local V : subinstr local v "_" "", all
	capture rename `v' `V' 
	if _rc di as txt "problem with `v'"
} 

*saving
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W3/WorkingData/DurationData/W3S1_Working.dta", replace

**************************************************************************************************
*											W3S2
**************************************************************************************************


*Open W3S2 and save a Working Copy (We wanna keep a copy of the original data)
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W3/WorkingData/DurationData/W3S2.dta", replace
destring, replace
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W3/WorkingData/DurationData/W3S2_Working.dta", replace

* From Excel to STATA everything enters as lower case. Lets reverse it to its original: Upper Case
rename *, upper

* Now lets keep what we need
keep ///
DATE FOD_A_3738 FOD_A_3739 FOD_A_3740 FOD_A_3741 FOD_A_3742 FOD_A_3743 FOD_A_3744 FOD_A_3745 FOD_S_90439 ///
FOD_S_90452 FOD_S_90453 FOD_S_90467 FOD_S_90468 FOD_S_90469 FOD_S_90481 FOD_S_90482 FOD_S_90498 FOD_S_90510 ///
FOD_S_90511 FOD_S_90512 FOD_S_90513 FOD_S_90514 FOD_S_90515 FOD_S_90516 FOD_S_90517 FOD_S_90518 FOD_S_90519 ///
FOD_S_90520 FOD_S_90521 FOD_S_90522 FOD_S_90523 FOD_S_90524 FOD_S_90525 FOD_S_90526 FOD_S_90527 FOD_S_90528 ///
FOD_S_90529 FOD_S_90530 FOD_S_90531 FOD_S_90532 FOD_S_90533 FOD_S_90534 FOD_S_90535 FOD_S_90536 FOD_S_90537 ///
GRP_20409 GRP_20410 GRP_20411 GRP_20412 GRP_20413 GRP_20414 GRP_20415 GRP_20416 GRP_20417 GRP_20418 GRP_20419 ///
GRP_20420 GRP_20421 GRP_20422 GRP_20423 GRP_20424 SUBJECT_ID TIME TIME_BEGIN_FLOWPHASE TIME_BEGIN_SUBSTAGE ///
TIME_END_FLOWPHASE TOD_A_3738 TOD_A_3739 TOD_A_3740 TOD_A_3741 TOD_A_3742 TOD_A_3743 TOD_A_3744 TOD_A_3745 ///
TOD_S_90439 TOD_S_90452 TOD_S_90453 TOD_S_90467 TOD_S_90468 TOD_S_90469 TOD_S_90481 TOD_S_90482 TOD_S_90498 ///
TOD_S_90510 TOD_S_90511 TOD_S_90512 TOD_S_90513 TOD_S_90514 TOD_S_90515 TOD_S_90516 TOD_S_90517 TOD_S_90518 ///
TOD_S_90519 TOD_S_90520 TOD_S_90521 TOD_S_90522 TOD_S_90523 TOD_S_90524 TOD_S_90525 TOD_S_90526 TOD_S_90527 ///
TOD_S_90528 TOD_S_90529 TOD_S_90530 TOD_S_90531 TOD_S_90532 TOD_S_90533 TOD_S_90534 TOD_S_90535 TOD_S_90536 ///
TOD_S_90537 TOTAL_FLOW_ACCESSED TTO_A_3738 TTO_A_3739 TTO_A_3740 TTO_A_3741 TTO_A_3742 TTO_A_3743 TTO_A_3744 ///
TTO_A_3745 TTO_S_90439 TTO_S_90452 TTO_S_90453 TTO_S_90467 TTO_S_90468 TTO_S_90469 TTO_S_90481 TTO_S_90482 ///
TTO_S_90498 TTO_S_90510 TTO_S_90511 TTO_S_90512 TTO_S_90513 TTO_S_90514 TTO_S_90515 TTO_S_90516 TTO_S_90517 ///
TTO_S_90518 TTO_S_90519 TTO_S_90520 TTO_S_90521 TTO_S_90522 TTO_S_90523 TTO_S_90524 TTO_S_90525 TTO_S_90526 ///
TTO_S_90527 TTO_S_90528 TTO_S_90529 TTO_S_90530 TTO_S_90531 TTO_S_90532 TTO_S_90533 TTO_S_90534 TTO_S_90535 ///
TTO_S_90536 TTO_S_90537 WORDS_A_3738 WORDS_A_3739 WORDS_A_3740 WORDS_A_3741 WORDS_A_3742 WORDS_A_3743  ///
WORDS_A_3744 WORDS_A_3745

* Adding Prefixes and Suffixes
foreach x of var * {
rename `x' W3`x'
}
 
foreach x of var * {
rename `x' `x'S2
}

* Renaming SUBJECT_ID (no pre nor su fixes, we need that to merge on it)
rename W3SUBJECT_IDS2 SUBJECT_ID 

* Eliminating ALL underscores
foreach v of var *_* { 
	local V : subinstr local v "_" "", all
	capture rename `v' `V' 
	if _rc di as txt "problem with `v'"
} 

*saving
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W3/WorkingData/DurationData/W3S2_Working.dta", replace

**************************************************************************************************
*											W3S3
**************************************************************************************************

*Open W3S3 and save a Working Copy (We wanna keep a copy of the original data)
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W3/WorkingData/DurationData/W3S3.dta", replace
destring, replace
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W3/WorkingData/DurationData/W3S3_Working.dta", replace

* From Excel to STATA everything enters as lower case. Lets reverse it to its original: Upper Case
rename *, upper

* Now lets keep what we need
keep ///
DATE FOD_A_3736 FOD_A_3737 FOD_S_90358 FOD_S_90359 FOD_S_90360 FOD_S_90361 FOD_S_90363 FOD_S_90364 ///
FOD_S_90365 FOD_S_90366 FOD_S_90367 FOD_S_90368 FOD_S_90369 FOD_S_90370 FOD_S_90371 FOD_S_90372 ///
FOD_S_90373 FOD_S_90374 FOD_S_90377 FOD_S_90378 FOD_S_90379 FOD_S_90380 FOD_S_90381 FOD_S_90382 ///
FOD_S_90383 FOD_S_90385 FOD_S_90386 FOD_S_90387 FOD_S_90388 FOD_S_90390 FOD_S_90392 FOD_S_90393 ///
FOD_S_90394 FOD_S_90396 FOD_S_90398 FOD_S_90399 FOD_S_90401 FOD_S_90402 FOD_S_90403 FOD_S_90404 ///
FOD_S_90405 FOD_S_90407 FOD_S_90408 FOD_S_90409 FOD_S_90410 FOD_S_90411 FOD_S_90412 FOD_S_90413 ///
FOD_S_90414 FOD_S_90415 FOD_S_90416 FOD_S_90418 FOD_S_90419 FOD_S_90421 FOD_S_90422 FOD_S_90423 ///
FOD_S_90425 FOD_S_90426 FOD_S_90427 FOD_S_90428 FOD_S_90430 FOD_S_90431 FOD_S_90432 FOD_S_90433 ///
FOD_S_90434 FOD_S_90435 FOD_S_90436 FOD_S_90437 FOD_S_90439 FOD_S_90440 FOD_S_90441 FOD_S_90442 ///
FOD_S_90443 FOD_S_90444 FOD_S_90445 FOD_S_90446 FOD_S_90447 FOD_S_90448 FOD_S_90449 FOD_S_90450 ///
FOD_S_90451 FOD_S_90452 FOD_S_90453 FOD_S_90454 FOD_S_90455 FOD_S_90456 FOD_S_90457 FOD_S_90458 ///
FOD_S_90459 FOD_S_90460 FOD_S_90461 FOD_S_90462 FOD_S_90463 FOD_S_90464 FOD_S_90465 FOD_S_90466 ///
FOD_S_90467 FOD_S_90468 FOD_S_90469 FOD_S_90470 FOD_S_90471 FOD_S_90472 FOD_S_90473 FOD_S_90474 ///
FOD_S_90475 FOD_S_90476 FOD_S_90477 FOD_S_90478 FOD_S_90479 FOD_S_90480 FOD_S_90481 FOD_S_90482 ///
FOD_S_90483 FOD_S_90484 FOD_S_90485 FOD_S_90486 FOD_S_90487 FOD_S_90488 FOD_S_90489 FOD_S_90490 ///
FOD_S_90491 FOD_S_90492 FOD_S_90493 FOD_S_90494 FOD_S_90498 FOD_S_90510 FOD_S_90511 FOD_S_90512 ///
FOD_S_90513 FOD_S_90514 FOD_S_90516 FOD_S_90517 FOD_S_90518 FOD_S_90519 FOD_S_90520 FOD_S_90521 ///
FOD_S_90522 FOD_S_90523 FOD_S_90524 FOD_S_90525 FOD_S_90526 FOD_S_90527 FOD_S_90528 FOD_S_90529 ///
FOD_S_90530 FOD_S_90531 FOD_S_90532 FOD_S_90533 FOD_S_90534 FOD_S_90535 FOD_S_90536 FOD_S_90537 ///
GRP_20409 GRP_20410 GRP_20411 GRP_20412 GRP_20413 GRP_20414 GRP_20415 GRP_20416 GRP_20417  ///
GRP_20418 GRP_20419 GRP_20420 GRP_20421 GRP_20422 GRP_20423 GRP_20424 GRP_20425 GRP_20426 ///
GRP_20428 GRP_20429 GRP_20432 GRP_20433 GRP_20434 GRP_20435 GRP_20436 GRP_20437 GRP_20438 ///
GRP_20439 GRP_20440 GRP_20441 GRP_20442 GRP_20443 GRP_20444 GRP_20445 GRP_20446 GRP_20447 ///
GRP_20448 GRP_20450 GRP_20451 GRP_20452 GRP_20453 GRP_20454 GRP_20455 GRP_20456 GRP_20457 ///
GRP_20458 GRP_20459 GRP_20460 GRP_20461 GRP_20465 GRP_20466 GRP_20467 GRP_20468 GRP_20469 ///
GRP_20473 GRP_20474 GRP_20475 GRP_20476 SUBJECT_ID TIME TIME_BEGIN_FLOWPHASE  ///
TIME_BEGIN_SUBSTAGE TIME_END_FLOWPHASE TOD_A_3736 TOD_A_3737 TOD_S_90358 TOD_S_90359 TOD_S_90360 ///
TOD_S_90361 TOD_S_90363 TOD_S_90364 TOD_S_90365 TOD_S_90366 TOD_S_90367 TOD_S_90368 TOD_S_90369 ///
TOD_S_90370 TOD_S_90371 TOD_S_90372 TOD_S_90373 TOD_S_90374 TOD_S_90377 TOD_S_90378 TOD_S_90379  ///
TOD_S_90380 TOD_S_90381 TOD_S_90382 TOD_S_90383 TOD_S_90385 TOD_S_90386 TOD_S_90387 TOD_S_90388 ///
TOD_S_90390 TOD_S_90392 TOD_S_90393 TOD_S_90394 TOD_S_90396 TOD_S_90398 TOD_S_90399 TOD_S_90401 ///
TOD_S_90402 TOD_S_90403 TOD_S_90404 TOD_S_90405 TOD_S_90407 TOD_S_90408 TOD_S_90409 TOD_S_90410 ///
TOD_S_90411 TOD_S_90412 TOD_S_90413 TOD_S_90414 TOD_S_90415 TOD_S_90416 TOD_S_90418 TOD_S_90419 ///
TOD_S_90421 TOD_S_90422 TOD_S_90423 TOD_S_90425 TOD_S_90426 TOD_S_90427 TOD_S_90428 TOD_S_90430 ///
TOD_S_90431 TOD_S_90432 TOD_S_90433 TOD_S_90434 TOD_S_90435 TOD_S_90436 TOD_S_90437 TOD_S_90439 ///
TOD_S_90440 TOD_S_90441 TOD_S_90442 TOD_S_90443 TOD_S_90444 TOD_S_90445 TOD_S_90446 TOD_S_90447 ///
TOD_S_90448 TOD_S_90449 TOD_S_90450 TOD_S_90451 TOD_S_90452 TOD_S_90453 TOD_S_90454 TOD_S_90455 ///
TOD_S_90456 TOD_S_90457 TOD_S_90458 TOD_S_90459 TOD_S_90460 TOD_S_90461 TOD_S_90462 TOD_S_90463 ///
TOD_S_90464 TOD_S_90465 TOD_S_90466 TOD_S_90467 TOD_S_90468 TOD_S_90469 TOD_S_90470 TOD_S_90471 ///
TOD_S_90472 TOD_S_90473 TOD_S_90474 TOD_S_90475 TOD_S_90476 TOD_S_90477 TOD_S_90478 TOD_S_90479 ///
TOD_S_90480 TOD_S_90481 TOD_S_90482 TOD_S_90483 TOD_S_90484 TOD_S_90485 TOD_S_90486 TOD_S_90487 ///
TOD_S_90488 TOD_S_90489 TOD_S_90490 TOD_S_90491 TOD_S_90492 TOD_S_90493 TOD_S_90494 TOD_S_90498 ///
TOD_S_90510 TOD_S_90511 TOD_S_90512 TOD_S_90513 TOD_S_90514 TOD_S_90516 TOD_S_90517 TOD_S_90518 ///
TOD_S_90519 TOD_S_90520 TOD_S_90521 TOD_S_90522 TOD_S_90523 TOD_S_90524 TOD_S_90525 TOD_S_90526 ///
TOD_S_90527 TOD_S_90528 TOD_S_90529 TOD_S_90530 TOD_S_90531 TOD_S_90532 TOD_S_90533 TOD_S_90534 ///
TOD_S_90535 TOD_S_90536 TOD_S_90537 TOTAL_FLOW_ACCESSED TTO_A_3736 TTO_A_3737 TTO_S_90358 ///
TTO_S_90359 TTO_S_90360 TTO_S_90361 TTO_S_90363 TTO_S_90364 TTO_S_90365 TTO_S_90366 TTO_S_90367 ///
TTO_S_90368 TTO_S_90369 TTO_S_90370 TTO_S_90371 TTO_S_90372 TTO_S_90373 TTO_S_90374 TTO_S_90377 ///
TTO_S_90378 TTO_S_90379 TTO_S_90380 TTO_S_90381 TTO_S_90382 TTO_S_90383 TTO_S_90385 TTO_S_90386 ///
TTO_S_90387 TTO_S_90388 TTO_S_90390 TTO_S_90392 TTO_S_90393 TTO_S_90394 TTO_S_90396 TTO_S_90398 ///
TTO_S_90399 TTO_S_90401 TTO_S_90402 TTO_S_90403 TTO_S_90404 TTO_S_90405 TTO_S_90407 TTO_S_90408 ///
TTO_S_90409 TTO_S_90410 TTO_S_90411 TTO_S_90412 TTO_S_90413 TTO_S_90414 TTO_S_90415 TTO_S_90416 ///
TTO_S_90418 TTO_S_90419 TTO_S_90421 TTO_S_90422 TTO_S_90423 TTO_S_90425 TTO_S_90426 TTO_S_90427 ///
TTO_S_90428 TTO_S_90430 TTO_S_90431 TTO_S_90432 TTO_S_90433 TTO_S_90434 TTO_S_90435 TTO_S_90436 ///
TTO_S_90437 TTO_S_90439 TTO_S_90440 TTO_S_90441 TTO_S_90442 TTO_S_90443 TTO_S_90444 TTO_S_90445 ///
TTO_S_90446 TTO_S_90447 TTO_S_90448 TTO_S_90449 TTO_S_90450 TTO_S_90451 TTO_S_90452 TTO_S_90453 ///
TTO_S_90454 TTO_S_90455 TTO_S_90456 TTO_S_90457 TTO_S_90458 TTO_S_90459 TTO_S_90460 TTO_S_90461 ///
TTO_S_90462 TTO_S_90463 TTO_S_90464 TTO_S_90465 TTO_S_90466 TTO_S_90467 TTO_S_90468 TTO_S_90469 ///
TTO_S_90470 TTO_S_90471 TTO_S_90472 TTO_S_90473 TTO_S_90474 TTO_S_90475 TTO_S_90476 TTO_S_90477 ///
TTO_S_90478 TTO_S_90479 TTO_S_90480 TTO_S_90481 TTO_S_90482 TTO_S_90483 TTO_S_90484 TTO_S_90485 ///
TTO_S_90486 TTO_S_90487 TTO_S_90488 TTO_S_90489 TTO_S_90490 TTO_S_90491 TTO_S_90492 TTO_S_90493 ///
TTO_S_90494 TTO_S_90498 TTO_S_90510 TTO_S_90511 TTO_S_90512 TTO_S_90513 TTO_S_90514 TTO_S_90516 ///
TTO_S_90517 TTO_S_90518 TTO_S_90519 TTO_S_90520 TTO_S_90521 TTO_S_90522 TTO_S_90523 TTO_S_90524 ///
TTO_S_90525 TTO_S_90526 TTO_S_90527 TTO_S_90528 TTO_S_90529 TTO_S_90530 TTO_S_90531 TTO_S_90532 ///
TTO_S_90533 TTO_S_90534 TTO_S_90535 TTO_S_90536 TTO_S_90537 WORDS_A_3736 WORDS_A_3737

* Adding Prefixes and Suffixes
foreach x of var * {
rename `x' W3`x'
} 

foreach x of var * {
rename `x' `x'S3
}

* Renaming SUBJECT_ID (no pre nor su fixes, we need that to merge on it)
rename W3SUBJECT_IDS3 SUBJECT_ID

* Eliminating ALL underscores
foreach v of var *_* { 
	local V : subinstr local v "_" "", all
	capture rename `v' `V' 
	if _rc di as txt "problem with `v'"
} 

*saving
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W3/WorkingData/DurationData/W3S3_Working.dta", replace

**************************************************************************************************
*											W3S4
**************************************************************************************************

*Open W3S4 and save a Working Copy (We wanna keep a copy of the original data)
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W3/WorkingData/DurationData/W3S4.dta", replace
destring, replace
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W3/WorkingData/DurationData/W3S4_Working.dta", replace

* From Excel to STATA everything enters as lower case. Lets reverse it to its original: Upper Case
rename *, upper

* Now lets keep what we need
keep ///
DATE FOD_A_3726 GRP_20430 GRP_20431 Q_5952_DUR_32139 Q_5952_DUR_32218 Q_5952_DUR_32220 Q_5952_SEQ_32139 ///
Q_5952_SEQ_32218 Q_5952_SEQ_32220 Q_5952_VAL_32139 Q_5952_VAL_32218 Q_5952_VAL_32220 Q_5953_DUR_32139 ///
Q_5953_DUR_32219 Q_5953_DUR_32221 Q_5953_SEQ_32139 Q_5953_SEQ_32219 Q_5953_SEQ_32221 Q_5953_VAL_32139 ///
Q_5953_VAL_32219 Q_5953_VAL_32221 SUBJECT_ID TIME TIME_BEGIN_FLOWPHASE TIME_BEGIN_SUBSTAGE TIME_END_FLOWPHASE ///
TOD_A_3726 TOTAL_FLOW_ACCESSED TTO_A_3726 WORDS_A_3726



* Adding Prefixes and Suffixes
foreach x of var * {
rename `x' W3`x'
} 

foreach x of var * {
rename `x' `x'S4
}

* Renaming SUBJECT_ID (no pre nor su fixes, we need that to merge on it)
rename W3SUBJECT_IDS4 SUBJECT_ID

* Eliminating ALL underscores
foreach v of var *_* { 
	local V : subinstr local v "_" "", all
	capture rename `v' `V' 
	if _rc di as txt "problem with `v'"
} 

*saving
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W3/WorkingData/DurationData/W3S4_Working.dta", replace

**************************************************************************************************
*							M	E	R	G	I	N	G	 		W	3
**************************************************************************************************

clear all

* Merge W3S2 with W3S1
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W3/WorkingData/DurationData/W3S2_Working.dta", replace
merge 1:m SUBJECTID using "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W3/WorkingData/DurationData/W3S1_Working.dta"
drop _merge
* Save W3S12
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W3/WorkingData/DurationData/W3S12_Working.dta", replace

**************************************************************************************************
clear all

* Merge W3S3 with W3S4
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W3/WorkingData/DurationData/W3S4_Working.dta", replace
merge 1:m SUBJECTID using "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W3/WorkingData/DurationData/W3S3_Working.dta"
drop _merge
* Save W3S34
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W3/WorkingData/DurationData/W3S34_Working.dta", replace

**************************************************************************************************
clear all

* Merge W3S12 with W3S34
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W3/WorkingData/DurationData/W3S12_Working.dta", replace
merge 1:m SUBJECTID using "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W3/WorkingData/DurationData/W3S34_Working.dta"
drop _merge
* Save W3S1234
order *, alpha


*Dropping things we won't need...
drop W3DATES2 W3DATES3 W3DATES4 W3TOTALFLOWACCESSEDS1 W3TOTALFLOWACCESSEDS4 W3TIMES2 W3TIMES3 W3TIMES4

* labeling

label variable W3FODA3726S4 "That's it for this Week"
label variable W3FODA3736S3 "Substage2and3BetwNoIntD&R"
label variable W3FODA3737S3 "Substage2and3BetwIntD&R"
label variable W3FODA3738S2 "WelcomeWk3DIntImp"
label variable W3FODA3739S2 "WelcomeWk3DIntNot"
label variable W3FODA3740S2 "WelcomeWk3DNoIntImp"
label variable W3FODA3741S2 "WelcomeWk3DNoIntNot"
label variable W3FODA3742S2 "WelcomeWk3RIntImp"
label variable W3FODA3743S2 "WelcomeWk3RIntNot"
label variable W3FODA3744S2 "WelcomeWk3RNoIntImp"
label variable W3FODA3745S2 "WelcomeWk3RNoIntNot"
label variable W3GRP20409S2 "D02IntMainImp"
label variable W3GRP20410S2 "D04NoIntMainImp"
label variable W3GRP20411S2 "D06IntMainNot"
label variable W3GRP20412S2 "D08NoIntMainNot"
label variable W3GRP20413S2 "D01IntDiverseImp"
label variable W3GRP20414S2 "D03NoIntDiverseImp"
label variable W3GRP20415S2 "D05IntDiverseNot"
label variable W3GRP20416S2 "D07NoIntDiverseNot"
label variable W3GRP20417S2 "R09IntDiverseImp"
label variable W3GRP20418S2 "R10IntMainImp"
label variable W3GRP20419S2 "R11NoIntDiverseImp"
label variable W3GRP20420S2 "R12NoIntMainImp"
label variable W3GRP20421S2 "R13IntDiverseNot"
label variable W3GRP20422S2 "R14IntMainNot"
label variable W3GRP20423S2 "R15NoIntDiverseNot"
label variable W3GRP20424S2 "R16NoIntMainNot"
label variable W3GRP20425S3 "DMediaABCNews"
label variable W3GRP20426S3 "DMediaWireServices"
label variable W3GRP20428S3 "DMediaCNNNews"
label variable W3GRP20429S3 "RAltMediaHuffPost"
label variable W3GRP20430S4 "DEndGroupQuestions"
label variable W3GRP20431S4 "REndGroupQuestions"
label variable W3GRP20432S3 "DMediaNBCNews"
label variable W3GRP20433S3 "DMediaNYT"
label variable W3GRP20434S3 "DMediaWSJ"
label variable W3GRP20435S3 "DAltMediaFoxNews"
label variable W3GRP20436S3 "DAltMediaHotAirBlog"
label variable W3GRP20437S3 "DAltMediaHuffPost"
label variable W3GRP20438S3 "DAltMediaMSNBCNews"
label variable W3GRP20439S3 "DCandSmithAllMediaWebpage"
label variable W3GRP20440S3 "DCandWilsonAllMediaWebpage"
label variable W3GRP20441S3 "RCandJonesAllMediaWebpage"
label variable W3GRP20442S3 "RCandWilliamsAllMediaWebpage"
label variable W3GRP20443S3 "DEndorsementsAllMedia"
label variable W3GRP20444S3 "REndorsementsAllMedia"
label variable W3GRP20445S3 "DAltMediaLatinoSources"
label variable W3GRP20446S3 "DAltMediaAfricanAmericanSources"
label variable W3GRP20447S3 "DOnlyMainMediaABC"
label variable W3GRP20448S3 "DOnlyMainMediaWireServices"
label variable W3GRP20450S3 "DOnlyMainMediaCNN"
label variable W3GRP20451S3 "DOnlyMainMediaNBC"
label variable W3GRP20452S3 "DOnlyMainMediaNYT"
label variable W3GRP20453S3 "DOnlyMainMediaWSJ"
label variable W3GRP20454S3 "DCandWilsonOnlyMainWebpage"
label variable W3GRP20455S3 "DCandSmithOnlyMainWebpage"
label variable W3GRP20456S3 "DEndorsementsOnlyMain"
label variable W3GRP20457S3 "RCandJonesOnlyMainWebpage"
label variable W3GRP20458S3 "RCandWilliamsOnlyMainWebpage"
label variable W3GRP20459S3 "REndorsementsOnlyMain"
label variable W3GRP20460S3 "RAltMediaAfricanAmericanSources"
label variable W3GRP20461S3 "RAltMediaFoxNews"
label variable W3GRP20465S3 "RMediaCBSNews"
label variable W3GRP20466S3 "RMediaCNNNews"
label variable W3GRP20467S3 "RMediaNYT"
label variable W3GRP20468S3 "RMediaWireServices"
label variable W3GRP20469S3 "RMediaWSJ"
label variable W3GRP20473S3 "ROnlyMainMediaNYT"
label variable W3GRP20474S3 "ROnlyMainMediaWireServices"
label variable W3GRP20475S3 "ROnlyMainMediaWSJ"
label variable W3GRP20476S3 "ROnlyMainMediaCNN"
label variable W3GRP20478S1 "BeginGroup"
label variable W3Q5951DUR32045S1 "Subject Sign-in"
label variable W3Q5952DUR32139S4 "Wk3WhichParty?"
label variable W3Q5952DUR32218S4 "Wk3DSmith"
label variable W3Q5953DUR32219S4 "Wk3RJones"
label variable W3Q5952DUR32220S4 "Wk3DWilson"
label variable W3Q5953DUR32221S4 "Wk3RWilliams"
label variable W3FODS90358S3 "Wk2DEndorsementAFLCIO"
label variable W3FODS90359S3 "Wk2DEndorsementChamberofCommerce"
label variable W3FODS90360S3 "Wk2REndorsemChamberofCommerceEndorsement"
label variable W3FODS90361S3 "Wk2REndorsementAFLCIO"
label variable W3FODS90363S3 "wk2d1NBCFOXEcon10"
label variable W3FODS90364S3 "wk2d1REUROOTEcon18"
label variable W3FODS90365S3 "wk2d1CNNUNIEcon22"
label variable W3FODS90366S3 "wk2d2ABCABCEcon37"
label variable W3FODS90367S3 "wk2d2APAPEcon42"
label variable W3FODS90368S3 "wk2d2NYTNYTEcon54"
label variable W3FODS90369S3 "wk2d2NBCNBCEcon62"
label variable W3FODS90370S3 "wk2r2CBSCBSEcon66"
label variable W3FODS90371S3 "wk2r2APAPEcon78"
label variable W3FODS90372S3 "wk2r2REUREUEcon82"
label variable W3FODS90373S3 "wk2r2WSJWSJEcon94"
label variable W3FODS90374S3 "wk2r1WSJHUFEcon110"
label variable W3FODS90377S3 "wk2r1APFOXEcon126"
label variable W3FODS90378S3 "wk2d3CBSHUFEcon2"
label variable W3FODS90379S3 "wk2d3NBCFOXEcon10"
label variable W3FODS90380S3 "wk2d3REUROOTEcon18"
label variable W3FODS90381S3 "wk2d3CNNUNIEcon22"
label variable W3FODS90382S3 "wk2r3WSJHUFEcon110"
label variable W3FODS90383S3 "wk2r3ABCROOTEcon118"
label variable W3FODS90385S3 "wk2r3APFOXEcon126"
label variable W3FODS90386S3 "Wk1RWilliamsSlogan"
label variable W3FODS90387S3 "Wk1RWilliamsPersonality"
label variable W3FODS90388S3 "Wk1RWilliamsFamily"
label variable W3FODS90390S3 "Wk1RWilliamsCandidatePicture"
label variable W3FODS90392S3 "Wk1RJonesSlogan"
label variable W3FODS90393S3 "Wk1RJonesPersonality"
label variable W3FODS90394S3 "Wk1RJonesFamily"
label variable W3FODS90396S3 "Wk1RJonesCandidatePicture"
label variable W3FODS90398S3 "Wk1DWilsonSlogan"
label variable W3FODS90399S3 "Wk1DWilsonPersonality"
label variable W3FODS90401S3 "Wk1DWilsonExperience"
label variable W3FODS90402S3 "Wk1DWilsonCandidatePicture"
label variable W3FODS90403S3 "Wk1DWilsonBackground"
label variable W3FODS90404S3 "Wk1DSmithSlogan"
label variable W3FODS90405S3 "Wk1DSmithPersonality"
label variable W3FODS90407S3 "Wk1DSmithExperience"
label variable W3FODS90408S3 "Wk1DSmithCandidatePicture"
label variable W3FODS90409S3 "Wk1DSmithBackground"
label variable W3FODS90410S3 "SmithEducation"
label variable W3FODS90411S3 "SmithExperience"
label variable W3FODS90412S3 "SmithFamily"
label variable W3FODS90413S3 "JonesExperience"
label variable W3FODS90414S3 "SmithReligion"
label variable W3FODS90415S3 "JonesEducation"
label variable W3FODS90416S3 "JonesFamily"
label variable W3FODS90418S3 "JonesReligion"
label variable W3FODS90419S3 "WilsonEducation"
label variable W3FODS90421S3 "WilsonExperience"
label variable W3FODS90422S3 "WilsonFamily"
label variable W3FODS90423S3 "WilliamsReligion"
label variable W3FODS90425S3 "WilliamsFamily"
label variable W3FODS90426S3 "WilliamsExperience"
label variable W3FODS90427S3 "WilliamsEducation"
label variable W3FODS90428S3 "WilsonReligion"
label variable W3FODS90430S3 "wk2DSmithJobs"
label variable W3FODS90431S3 "wk2DSmithEconPhil"
label variable W3FODS90432S3 "Wk2RJonesJobs"
label variable W3FODS90433S3 "wk2DWilsonJobs"
label variable W3FODS90434S3 "wk2DWilsonEconPhil"
label variable W3FODS90435S3 "wk2RJonesEconPhil"
label variable W3FODS90436S3 "Wk2RWilliamsJobs"
label variable W3FODS90437S3 "wk2RWilliamsEconPhil"
label variable W3FODS90439S2 "wk3DSmithEduc"
label variable W3FODS90440S3 "wk6DSmithHealth"
label variable W3FODS90441S3 "wk4DSmithChina"
label variable W3FODS90442S3 "wk4DSmithDefense"
label variable W3FODS90443S3 "wk5DSmithAbortion"
label variable W3FODS90444S3 "wk5DSmithGay"
label variable W3FODS90445S3 "wk6DSmithTaxes"
label variable W3FODS90446S3 "wk7DSmithAffirm"
label variable W3FODS90447S3 "wk7DSmithImmigration"
label variable W3FODS90448S3 "wk8DSmithAfghan"
label variable W3FODS90449S3 "wk8DSmithMil"
label variable W3FODS90450S3 "wk9DSmithDeathPen"
label variable W3FODS90451S3 "wk9DSmithStemCells"
label variable W3FODS90452S2 "wk3DSmithSocPhil"
label variable W3FODS90453S2 "wk3DWilsonEduc"
label variable W3FODS90454S3 "wk6DWilsonHealth"
label variable W3FODS90455S3 "wk4DWilsonChina"
label variable W3FODS90456S3 "wk4DWilsonDefense"
label variable W3FODS90457S3 "wk5DWilsonAbortion"
label variable W3FODS90458S3 "wk5DWilsonGay"
label variable W3FODS90459S3 "wk6DWilsonTaxes"
label variable W3FODS90460S3 "wk7DWilsonAffirm"
label variable W3FODS90461S3 "wk7DWilsonImmigration"
label variable W3FODS90462S3 "wk8DWilsonAfghan"
label variable W3FODS90463S3 "wk8DWilsonMil"
label variable W3FODS90464S3 "wk9DWilsonDeathPen"
label variable W3FODS90465S3 "wk9DWilsonStemCells"
label variable W3FODS90466S3 "wk7RJonesImmigration"
label variable W3FODS90467S2 "wk3DWilsonSocPhil"
label variable W3FODS90468S2 "wk3RWilliamsEduc"
label variable W3FODS90469S2 "wk3RWilliamsSocPhil"
label variable W3FODS90470S3 "wk4RWilliamsChina"
label variable W3FODS90471S3 "wk4RWilliamsDefense"
label variable W3FODS90472S3 "wk5RWilliamsAbortion"
label variable W3FODS90473S3 "wk5RWilliamsGay"
label variable W3FODS90474S3 "wk6RWilliamsTaxes"
label variable W3FODS90475S3 "wk7RWilliamsAffirm"
label variable W3FODS90476S3 "wk7RWilliamsImmigration"
label variable W3FODS90477S3 "wk8RWilliamsAfghan"
label variable W3FODS90478S3 "wk8RWilliamsMil"
label variable W3FODS90479S3 "wk9RWilliamsDeathPen"
label variable W3FODS90480S3 "wk9RWilliamsStemCells"
label variable W3FODS90481S2 "wk3RJonesEduc"
label variable W3FODS90482S2 "wk3RJonesSocPhil"
label variable W3FODS90483S3 "wk4RJonesChina"
label variable W3FODS90484S3 "wk4RJonesDefense"
label variable W3FODS90485S3 "wk5RJonesAbortion"
label variable W3FODS90486S3 "wk5RJonesGay"
label variable W3FODS90487S3 "wk6RJonesHealth"
label variable W3FODS90488S3 "wk8JRonesAfghan"
label variable W3FODS90489S3 "wk6RJonesTaxes"
label variable W3FODS90490S3 "wk7RJonesAffirm"
label variable W3FODS90491S3 "wk9RJonesStemCells"
label variable W3FODS90492S3 "wk8RJonesMil"
label variable W3FODS90493S3 "wk9RJonesDeathPen"
label variable W3FODS90494S3 "wk6RWilliamsHealth"
label variable W3FODS90498S2 "wk3d1APROOT16"
label variable W3FODS90510S2 "Wk3DEndorsementAFT"
label variable W3FODS90511S2 "Wk3DEndorsementFAIR"
label variable W3FODS90512S2 "wk3d1ABCHOT8"
label variable W3FODS90513S2 "Wk3REndorsementFAIR"
label variable W3FODS90514S2 "Wk3REndorsementAFT"
label variable W3FODS90515S2 "Wk3ForcedViewing"
label variable W3FODS90516S2 "wk3d1NBCUNI12"
label variable W3FODS90517S2 "wk3d1NYTMSN28"
label variable W3FODS90518S2 "wk3d2CBSCBS36"
label variable W3FODS90519S2 "wk3d2REUREU48"
label variable W3FODS90520S2 "wk3d2WSJWSJ60"
label variable W3FODS90521S2 "wk3d2NBCNBC64"
label variable W3FODS90522S2 "wk3d3ABCHOT8"
label variable W3FODS90523S2 "wk3r2ABCABC72"
label variable W3FODS90524S2 "wk3d3NBCUNI12"
label variable W3FODS90525S2 "wk3d3APROOT16"
label variable W3FODS90526S2 "wk3d3NYTMSN28"
label variable W3FODS90527S2 "wk3r2APAP80"
label variable W3FODS90528S2 "wk3r3REUBET100"
label variable W3FODS90529S2 "wk3r3CNNLAT101"
label variable W3FODS90530S2 "wk3r2NYTNYT92"
label variable W3FODS90531S2 "wk3r2WSJWSJ96"
label variable W3FODS90532S2 "wk3r3CBSFOX116"
label variable W3FODS90533S2 "wk3r3NBCHUF124"
label variable W3FODS90534S2 "wk3r1REUBET100"
label variable W3FODS90535S2 "wk3r1CNNLAT101"
label variable W3FODS90536S2 "wk3r1CBSFOX116"
label variable W3FODS90537S2 "wk3r1NBCHUF124"
label variable W3TODA3726S4 "That's it for this Week"
label variable W3TTOA3726S4 "That's it for this Week"
label variable W3WORDSA3726S4 "That's it for this Week"
label variable W3TODA3736S3 "Substage2and3BetwNoIntD&R"
label variable W3TTOA3736S3 "Substage2and3BetwNoIntD&R"
label variable W3WORDSA3736S3 "Substage2and3BetwNoIntD&R"
label variable W3TODA3737S3 "Substage2and3BetwIntD&R"
label variable W3TTOA3737S3 "Substage2and3BetwIntD&R"
label variable W3WORDSA3737S3 "Substage2and3BetwIntD&R"
label variable W3TODA3738S2 "WelcomeWk3DIntImp"
label variable W3TTOA3738S2 "WelcomeWk3DIntImp"
label variable W3WORDSA3738S2 "WelcomeWk3DIntImp"
label variable W3TODA3739S2 "WelcomeWk3DIntNot"
label variable W3TTOA3739S2 "WelcomeWk3DIntNot"
label variable W3WORDSA3739S2 "WelcomeWk3DIntNot"
label variable W3TODA3740S2 "WelcomeWk3DNoIntImp"
label variable W3TTOA3740S2 "WelcomeWk3DNoIntImp"
label variable W3WORDSA3740S2 "WelcomeWk3DNoIntImp"
label variable W3TODA3741S2 "WelcomeWk3DNoIntNot"
label variable W3TTOA3741S2 "WelcomeWk3DNoIntNot"
label variable W3WORDSA3741S2 "WelcomeWk3DNoIntNot"
label variable W3TODA3742S2 "WelcomeWk3RIntImp"
label variable W3TTOA3742S2 "WelcomeWk3RIntImp"
label variable W3WORDSA3742S2 "WelcomeWk3RIntImp"
label variable W3TODA3743S2 "WelcomeWk3RIntNot"
label variable W3TTOA3743S2 "WelcomeWk3RIntNot"
label variable W3WORDSA3743S2 "WelcomeWk3RIntNot"
label variable W3TODA3744S2 "WelcomeWk3RNoIntImp"
label variable W3TTOA3744S2 "WelcomeWk3RNoIntImp"
label variable W3WORDSA3744S2 "WelcomeWk3RNoIntImp"
label variable W3TODA3745S2 "WelcomeWk3RNoIntNot"
label variable W3TTOA3745S2 "WelcomeWk3RNoIntNot"
label variable W3WORDSA3745S2 "WelcomeWk3RNoIntNot"
label variable W3GRP20409S3 "D02IntMainImp"
label variable W3GRP20410S3 "D04NoIntMainImp"
label variable W3GRP20411S3 "D06IntMainNot"
label variable W3GRP20412S3 "D08NoIntMainNot"
label variable W3GRP20413S3 "D01IntDiverseImp"
label variable W3GRP20414S3 "D03NoIntDiverseImp"
label variable W3GRP20415S3 "D05IntDiverseNot"
label variable W3GRP20416S3 "D07NoIntDiverseNot"
label variable W3GRP20417S3 "R09IntDiverseImp"
label variable W3GRP20418S3 "R10IntMainImp"
label variable W3GRP20419S3 "R11NoIntDiverseImp"
label variable W3GRP20420S3 "R12NoIntMainImp"
label variable W3GRP20421S3 "R13IntDiverseNot"
label variable W3GRP20422S3 "R14IntMainNot"
label variable W3GRP20423S3 "R15NoIntDiverseNot"
label variable W3GRP20424S3 "R16NoIntMainNot"
label variable W3Q5951SEQ32045S1 "Subject Sign-in"
label variable W3Q5952SEQ32139S4 "Wk3WhichParty?"
label variable W3Q5952VAL32139S4 "Wk3WhichParty?"
label variable W3Q5953DUR32139S4 "Wk3WhichParty?"
label variable W3Q5953SEQ32139S4 "Wk3WhichParty?"
label variable W3Q5953VAL32139S4 "Wk3WhichParty?"
label variable W3Q5952SEQ32218S4 "Wk3DSmith"
label variable W3Q5952VAL32218S4 "Wk3DSmith"
label variable W3Q5953SEQ32219S4 "Wk3RJones"
label variable W3Q5953VAL32219S4 "Wk3RJones"
label variable W3Q5952SEQ32220S4 "Wk3DWilson"
label variable W3Q5952VAL32220S4 "Wk3DWilson"
label variable W3Q5953SEQ32221S4 "Wk3RWilliams"
label variable W3Q5953VAL32221S4 "Wk3RWilliams"
label variable W3TODS90358S3 "Wk2DEndorsementAFLCIO"
label variable W3TTOS90358S3 "Wk2DEndorsementAFLCIO"
label variable W3TODS90359S3 "Wk2DEndorsementChamberofCommerce"
label variable W3TTOS90359S3 "Wk2DEndorsementChamberofCommerce"
label variable W3TODS90360S3 "Wk2REndorsemChamberofCommerceEndorsement"
label variable W3TTOS90360S3 "Wk2REndorsemChamberofCommerceEndorsement"
label variable W3TODS90361S3 "Wk2REndorsementAFLCIO"
label variable W3TTOS90361S3 "Wk2REndorsementAFLCIO"
label variable W3TODS90363S3 "wk2d1NBCFOXEcon10"
label variable W3TTOS90363S3 "wk2d1NBCFOXEcon10"
label variable W3TODS90364S3 "wk2d1REUROOTEcon18"
label variable W3TTOS90364S3 "wk2d1REUROOTEcon18"
label variable W3TODS90365S3 "wk2d1CNNUNIEcon22"
label variable W3TTOS90365S3 "wk2d1CNNUNIEcon22"
label variable W3TODS90366S3 "wk2d2ABCABCEcon37"
label variable W3TTOS90366S3 "wk2d2ABCABCEcon37"
label variable W3TODS90367S3 "wk2d2APAPEcon42"
label variable W3TTOS90367S3 "wk2d2APAPEcon42"
label variable W3TODS90368S3 "wk2d2NYTNYTEcon54"
label variable W3TTOS90368S3 "wk2d2NYTNYTEcon54"
label variable W3TODS90369S3 "wk2d2NBCNBCEcon62"
label variable W3TTOS90369S3 "wk2d2NBCNBCEcon62"
label variable W3TODS90370S3 "wk2r2CBSCBSEcon66"
label variable W3TTOS90370S3 "wk2r2CBSCBSEcon66"
label variable W3TODS90371S3 "wk2r2APAPEcon78"
label variable W3TTOS90371S3 "wk2r2APAPEcon78"
label variable W3TODS90372S3 "wk2r2REUREUEcon82"
label variable W3TTOS90372S3 "wk2r2REUREUEcon82"
label variable W3TODS90373S3 "wk2r2WSJWSJEcon94"
label variable W3TTOS90373S3 "wk2r2WSJWSJEcon94"
label variable W3TODS90374S3 "wk2r1WSJHUFEcon110"
label variable W3TTOS90374S3 "wk2r1WSJHUFEcon110"
label variable W3TODS90377S3 "wk2r1APFOXEcon126"
label variable W3TTOS90377S3 "wk2r1APFOXEcon126"
label variable W3TODS90378S3 "wk2d3CBSHUFEcon2"
label variable W3TTOS90378S3 "wk2d3CBSHUFEcon2"
label variable W3TODS90379S3 "wk2d3NBCFOXEcon10"
label variable W3TTOS90379S3 "wk2d3NBCFOXEcon10"
label variable W3TODS90380S3 "wk2d3REUROOTEcon18"
label variable W3TTOS90380S3 "wk2d3REUROOTEcon18"
label variable W3TODS90381S3 "wk2d3CNNUNIEcon22"
label variable W3TTOS90381S3 "wk2d3CNNUNIEcon22"
label variable W3TODS90382S3 "wk2r3WSJHUFEcon110"
label variable W3TTOS90382S3 "wk2r3WSJHUFEcon110"
label variable W3TODS90383S3 "wk2r3ABCROOTEcon118"
label variable W3TTOS90383S3 "wk2r3ABCROOTEcon118"
label variable W3TODS90385S3 "wk2r3APFOXEcon126"
label variable W3TTOS90385S3 "wk2r3APFOXEcon126"
label variable W3TODS90386S3 "Wk1RWilliamsSlogan"
label variable W3TTOS90386S3 "Wk1RWilliamsSlogan"
label variable W3TODS90387S3 "Wk1RWilliamsPersonality"
label variable W3TTOS90387S3 "Wk1RWilliamsPersonality"
label variable W3TODS90388S3 "Wk1RWilliamsFamily"
label variable W3TTOS90388S3 "Wk1RWilliamsFamily"
label variable W3TODS90390S3 "Wk1RWilliamsCandidatePicture"
label variable W3TTOS90390S3 "Wk1RWilliamsCandidatePicture"
label variable W3TODS90392S3 "Wk1RJonesSlogan"
label variable W3TTOS90392S3 "Wk1RJonesSlogan"
label variable W3TODS90393S3 "Wk1RJonesPersonality"
label variable W3TTOS90393S3 "Wk1RJonesPersonality"
label variable W3TODS90394S3 "Wk1RJonesFamily"
label variable W3TTOS90394S3 "Wk1RJonesFamily"
label variable W3TODS90396S3 "Wk1RJonesCandidatePicture"
label variable W3TTOS90396S3 "Wk1RJonesCandidatePicture"
label variable W3TODS90398S3 "Wk1DWilsonSlogan"
label variable W3TTOS90398S3 "Wk1DWilsonSlogan"
label variable W3TODS90399S3 "Wk1DWilsonPersonality"
label variable W3TTOS90399S3 "Wk1DWilsonPersonality"
label variable W3TODS90401S3 "Wk1DWilsonExperience"
label variable W3TTOS90401S3 "Wk1DWilsonExperience"
label variable W3TODS90402S3 "Wk1DWilsonCandidatePicture"
label variable W3TTOS90402S3 "Wk1DWilsonCandidatePicture"
label variable W3TODS90403S3 "Wk1DWilsonBackground"
label variable W3TTOS90403S3 "Wk1DWilsonBackground"
label variable W3TODS90404S3 "Wk1DSmithSlogan"
label variable W3TTOS90404S3 "Wk1DSmithSlogan"
label variable W3TODS90405S3 "Wk1DSmithPersonality"
label variable W3TTOS90405S3 "Wk1DSmithPersonality"
label variable W3TODS90407S3 "Wk1DSmithExperience"
label variable W3TTOS90407S3 "Wk1DSmithExperience"
label variable W3TODS90408S3 "Wk1DSmithCandidatePicture"
label variable W3TTOS90408S3 "Wk1DSmithCandidatePicture"
label variable W3TODS90409S3 "Wk1DSmithBackground"
label variable W3TTOS90409S3 "Wk1DSmithBackground"
label variable W3TODS90410S3 "SmithEducation"
label variable W3TTOS90410S3 "SmithEducation"
label variable W3TODS90411S3 "SmithExperience"
label variable W3TTOS90411S3 "SmithExperience"
label variable W3TODS90412S3 "SmithFamily"
label variable W3TTOS90412S3 "SmithFamily"
label variable W3TODS90413S3 "JonesExperience"
label variable W3TTOS90413S3 "JonesExperience"
label variable W3TODS90414S3 "SmithReligion"
label variable W3TTOS90414S3 "SmithReligion"
label variable W3TODS90415S3 "JonesEducation"
label variable W3TTOS90415S3 "JonesEducation"
label variable W3TODS90416S3 "JonesFamily"
label variable W3TTOS90416S3 "JonesFamily"
label variable W3TODS90418S3 "JonesReligion"
label variable W3TTOS90418S3 "JonesReligion"
label variable W3TODS90419S3 "WilsonEducation"
label variable W3TTOS90419S3 "WilsonEducation"
label variable W3TODS90421S3 "WilsonExperience"
label variable W3TTOS90421S3 "WilsonExperience"
label variable W3TODS90422S3 "WilsonFamily"
label variable W3TTOS90422S3 "WilsonFamily"
label variable W3TODS90423S3 "WilliamsReligion"
label variable W3TTOS90423S3 "WilliamsReligion"
label variable W3TODS90425S3 "WilliamsFamily"
label variable W3TTOS90425S3 "WilliamsFamily"
label variable W3TODS90426S3 "WilliamsExperience"
label variable W3TTOS90426S3 "WilliamsExperience"
label variable W3TODS90427S3 "WilliamsEducation"
label variable W3TTOS90427S3 "WilliamsEducation"
label variable W3TODS90428S3 "WilsonReligion"
label variable W3TTOS90428S3 "WilsonReligion"
label variable W3TODS90430S3 "wk2DSmithJobs"
label variable W3TTOS90430S3 "wk2DSmithJobs"
label variable W3TODS90431S3 "wk2DSmithEconPhil"
label variable W3TTOS90431S3 "wk2DSmithEconPhil"
label variable W3TODS90432S3 "Wk2RJonesJobs"
label variable W3TTOS90432S3 "Wk2RJonesJobs"
label variable W3TODS90433S3 "wk2DWilsonJobs"
label variable W3TTOS90433S3 "wk2DWilsonJobs"
label variable W3TODS90434S3 "wk2DWilsonEconPhil"
label variable W3TTOS90434S3 "wk2DWilsonEconPhil"
label variable W3TODS90435S3 "wk2RJonesEconPhil"
label variable W3TTOS90435S3 "wk2RJonesEconPhil"
label variable W3TODS90436S3 "Wk2RWilliamsJobs"
label variable W3TTOS90436S3 "Wk2RWilliamsJobs"
label variable W3TODS90437S3 "wk2RWilliamsEconPhil"
label variable W3TTOS90437S3 "wk2RWilliamsEconPhil"
label variable W3FODS90439S3 "wk3DSmithEduc"
label variable W3TODS90439S2 "wk3DSmithEduc"
label variable W3TODS90439S3 "wk3DSmithEduc"
label variable W3TTOS90439S2 "wk3DSmithEduc"
label variable W3TTOS90439S3 "wk3DSmithEduc"
label variable W3TODS90440S3 "wk6DSmithHealth"
label variable W3TTOS90440S3 "wk6DSmithHealth"
label variable W3TODS90441S3 "wk4DSmithChina"
label variable W3TTOS90441S3 "wk4DSmithChina"
label variable W3TODS90442S3 "wk4DSmithDefense"
label variable W3TTOS90442S3 "wk4DSmithDefense"
label variable W3TODS90443S3 "wk5DSmithAbortion"
label variable W3TTOS90443S3 "wk5DSmithAbortion"
label variable W3TODS90444S3 "wk5DSmithGay"
label variable W3TTOS90444S3 "wk5DSmithGay"
label variable W3TODS90445S3 "wk6DSmithTaxes"
label variable W3TTOS90445S3 "wk6DSmithTaxes"
label variable W3TODS90446S3 "wk7DSmithAffirm"
label variable W3TTOS90446S3 "wk7DSmithAffirm"
label variable W3TODS90447S3 "wk7DSmithImmigration"
label variable W3TTOS90447S3 "wk7DSmithImmigration"
label variable W3TODS90448S3 "wk8DSmithAfghan"
label variable W3TTOS90448S3 "wk8DSmithAfghan"
label variable W3TODS90449S3 "wk8DSmithMil"
label variable W3TTOS90449S3 "wk8DSmithMil"
label variable W3TODS90450S3 "wk9DSmithDeathPen"
label variable W3TTOS90450S3 "wk9DSmithDeathPen"
label variable W3TODS90451S3 "wk9DSmithStemCells"
label variable W3TTOS90451S3 "wk9DSmithStemCells"
label variable W3FODS90452S3 "wk3DSmithSocPhil"
label variable W3TODS90452S2 "wk3DSmithSocPhil"
label variable W3TODS90452S3 "wk3DSmithSocPhil"
label variable W3TTOS90452S2 "wk3DSmithSocPhil"
label variable W3TTOS90452S3 "wk3DSmithSocPhil"
label variable W3FODS90453S3 "wk3DWilsonEduc"
label variable W3TODS90453S2 "wk3DWilsonEduc"
label variable W3TODS90453S3 "wk3DWilsonEduc"
label variable W3TTOS90453S2 "wk3DWilsonEduc"
label variable W3TTOS90453S3 "wk3DWilsonEduc"
label variable W3TODS90454S3 "wk6DWilsonHealth"
label variable W3TTOS90454S3 "wk6DWilsonHealth"
label variable W3TODS90455S3 "wk4DWilsonChina"
label variable W3TTOS90455S3 "wk4DWilsonChina"
label variable W3TODS90456S3 "wk4DWilsonDefense"
label variable W3TTOS90456S3 "wk4DWilsonDefense"
label variable W3TODS90457S3 "wk5DWilsonAbortion"
label variable W3TTOS90457S3 "wk5DWilsonAbortion"
label variable W3TODS90458S3 "wk5DWilsonGay"
label variable W3TTOS90458S3 "wk5DWilsonGay"
label variable W3TODS90459S3 "wk6DWilsonTaxes"
label variable W3TTOS90459S3 "wk6DWilsonTaxes"
label variable W3TODS90460S3 "wk7DWilsonAffirm"
label variable W3TTOS90460S3 "wk7DWilsonAffirm"
label variable W3TODS90461S3 "wk7DWilsonImmigration"
label variable W3TTOS90461S3 "wk7DWilsonImmigration"
label variable W3TODS90462S3 "wk8DWilsonAfghan"
label variable W3TTOS90462S3 "wk8DWilsonAfghan"
label variable W3TODS90463S3 "wk8DWilsonMil"
label variable W3TTOS90463S3 "wk8DWilsonMil"
label variable W3TODS90464S3 "wk9DWilsonDeathPen"
label variable W3TTOS90464S3 "wk9DWilsonDeathPen"
label variable W3TODS90465S3 "wk9DWilsonStemCells"
label variable W3TTOS90465S3 "wk9DWilsonStemCells"
label variable W3TODS90466S3 "wk7RJonesImmigration"
label variable W3TTOS90466S3 "wk7RJonesImmigration"
label variable W3FODS90467S3 "wk3DWilsonSocPhil"
label variable W3TODS90467S2 "wk3DWilsonSocPhil"
label variable W3TODS90467S3 "wk3DWilsonSocPhil"
label variable W3TTOS90467S2 "wk3DWilsonSocPhil"
label variable W3TTOS90467S3 "wk3DWilsonSocPhil"
label variable W3FODS90468S3 "wk3RWilliamsEduc"
label variable W3TODS90468S2 "wk3RWilliamsEduc"
label variable W3TODS90468S3 "wk3RWilliamsEduc"
label variable W3TTOS90468S2 "wk3RWilliamsEduc"
label variable W3TTOS90468S3 "wk3RWilliamsEduc"
label variable W3FODS90469S3 "wk3RWilliamsSocPhil"
label variable W3TODS90469S2 "wk3RWilliamsSocPhil"
label variable W3TODS90469S3 "wk3RWilliamsSocPhil"
label variable W3TTOS90469S2 "wk3RWilliamsSocPhil"
label variable W3TTOS90469S3 "wk3RWilliamsSocPhil"
label variable W3TODS90470S3 "wk4RWilliamsChina"
label variable W3TTOS90470S3 "wk4RWilliamsChina"
label variable W3TODS90471S3 "wk4RWilliamsDefense"
label variable W3TTOS90471S3 "wk4RWilliamsDefense"
label variable W3TODS90472S3 "wk5RWilliamsAbortion"
label variable W3TTOS90472S3 "wk5RWilliamsAbortion"
label variable W3TODS90473S3 "wk5RWilliamsGay"
label variable W3TTOS90473S3 "wk5RWilliamsGay"
label variable W3TODS90474S3 "wk6RWilliamsTaxes"
label variable W3TTOS90474S3 "wk6RWilliamsTaxes"
label variable W3TODS90475S3 "wk7RWilliamsAffirm"
label variable W3TTOS90475S3 "wk7RWilliamsAffirm"
label variable W3TODS90476S3 "wk7RWilliamsImmigration"
label variable W3TTOS90476S3 "wk7RWilliamsImmigration"
label variable W3TODS90477S3 "wk8RWilliamsAfghan"
label variable W3TTOS90477S3 "wk8RWilliamsAfghan"
label variable W3TODS90478S3 "wk8RWilliamsMil"
label variable W3TTOS90478S3 "wk8RWilliamsMil"
label variable W3TODS90479S3 "wk9RWilliamsDeathPen"
label variable W3TTOS90479S3 "wk9RWilliamsDeathPen"
label variable W3TODS90480S3 "wk9RWilliamsStemCells"
label variable W3TTOS90480S3 "wk9RWilliamsStemCells"
label variable W3FODS90481S3 "wk3RJonesEduc"
label variable W3TODS90481S2 "wk3RJonesEduc"
label variable W3TODS90481S3 "wk3RJonesEduc"
label variable W3TTOS90481S2 "wk3RJonesEduc"
label variable W3TTOS90481S3 "wk3RJonesEduc"
label variable W3FODS90482S3 "wk3RJonesSocPhil"
label variable W3TODS90482S2 "wk3RJonesSocPhil"
label variable W3TODS90482S3 "wk3RJonesSocPhil"
label variable W3TTOS90482S2 "wk3RJonesSocPhil"
label variable W3TTOS90482S3 "wk3RJonesSocPhil"
label variable W3TODS90483S3 "wk4RJonesChina"
label variable W3TTOS90483S3 "wk4RJonesChina"
label variable W3TODS90484S3 "wk4RJonesDefense"
label variable W3TTOS90484S3 "wk4RJonesDefense"
label variable W3TODS90485S3 "wk5RJonesAbortion"
label variable W3TTOS90485S3 "wk5RJonesAbortion"
label variable W3TODS90486S3 "wk5RJonesGay"
label variable W3TTOS90486S3 "wk5RJonesGay"
label variable W3TODS90487S3 "wk6RJonesHealth"
label variable W3TTOS90487S3 "wk6RJonesHealth"
label variable W3TODS90488S3 "wk8JRonesAfghan"
label variable W3TTOS90488S3 "wk8JRonesAfghan"
label variable W3TODS90489S3 "wk6RJonesTaxes"
label variable W3TTOS90489S3 "wk6RJonesTaxes"
label variable W3TODS90490S3 "wk7RJonesAffirm"
label variable W3TTOS90490S3 "wk7RJonesAffirm"
label variable W3TODS90491S3 "wk9RJonesStemCells"
label variable W3TTOS90491S3 "wk9RJonesStemCells"
label variable W3TODS90492S3 "wk8RJonesMil"
label variable W3TTOS90492S3 "wk8RJonesMil"
label variable W3TODS90493S3 "wk9RJonesDeathPen"
label variable W3TTOS90493S3 "wk9RJonesDeathPen"
label variable W3TODS90494S3 "wk6RWilliamsHealth"
label variable W3TTOS90494S3 "wk6RWilliamsHealth"
label variable W3FODS90498S3 "wk3d1APROOT16"
label variable W3TODS90498S2 "wk3d1APROOT16"
label variable W3TODS90498S3 "wk3d1APROOT16"
label variable W3TTOS90498S2 "wk3d1APROOT16"
label variable W3TTOS90498S3 "wk3d1APROOT16"
label variable W3FODS90510S3 "Wk3DEndorsementAFT"
label variable W3TODS90510S2 "Wk3DEndorsementAFT"
label variable W3TODS90510S3 "Wk3DEndorsementAFT"
label variable W3TTOS90510S2 "Wk3DEndorsementAFT"
label variable W3TTOS90510S3 "Wk3DEndorsementAFT"
label variable W3FODS90511S3 "Wk3DEndorsementFAIR"
label variable W3TODS90511S2 "Wk3DEndorsementFAIR"
label variable W3TODS90511S3 "Wk3DEndorsementFAIR"
label variable W3TTOS90511S2 "Wk3DEndorsementFAIR"
label variable W3TTOS90511S3 "Wk3DEndorsementFAIR"
label variable W3FODS90512S3 "wk3d1ABCHOT8"
label variable W3TODS90512S2 "wk3d1ABCHOT8"
label variable W3TODS90512S3 "wk3d1ABCHOT8"
label variable W3TTOS90512S2 "wk3d1ABCHOT8"
label variable W3TTOS90512S3 "wk3d1ABCHOT8"
label variable W3FODS90513S3 "Wk3REndorsementFAIR"
label variable W3TODS90513S2 "Wk3REndorsementFAIR"
label variable W3TODS90513S3 "Wk3REndorsementFAIR"
label variable W3TTOS90513S2 "Wk3REndorsementFAIR"
label variable W3TTOS90513S3 "Wk3REndorsementFAIR"
label variable W3FODS90514S3 "Wk3REndorsementAFT"
label variable W3TODS90514S2 "Wk3REndorsementAFT"
label variable W3TODS90514S3 "Wk3REndorsementAFT"
label variable W3TTOS90514S2 "Wk3REndorsementAFT"
label variable W3TTOS90514S3 "Wk3REndorsementAFT"
label variable W3TODS90515S2 "Wk3ForcedViewing"
label variable W3TTOS90515S2 "Wk3ForcedViewing"
label variable W3FODS90516S3 "wk3d1NBCUNI12"
label variable W3TODS90516S2 "wk3d1NBCUNI12"
label variable W3TODS90516S3 "wk3d1NBCUNI12"
label variable W3TTOS90516S2 "wk3d1NBCUNI12"
label variable W3TTOS90516S3 "wk3d1NBCUNI12"
label variable W3FODS90517S3 "wk3d1NYTMSN28"
label variable W3TODS90517S2 "wk3d1NYTMSN28"
label variable W3TODS90517S3 "wk3d1NYTMSN28"
label variable W3TTOS90517S2 "wk3d1NYTMSN28"
label variable W3TTOS90517S3 "wk3d1NYTMSN28"
label variable W3FODS90518S3 "wk3d2CBSCBS36"
label variable W3TODS90518S2 "wk3d2CBSCBS36"
label variable W3TODS90518S3 "wk3d2CBSCBS36"
label variable W3TTOS90518S2 "wk3d2CBSCBS36"
label variable W3TTOS90518S3 "wk3d2CBSCBS36"
label variable W3FODS90519S3 "wk3d2REUREU48"
label variable W3TODS90519S2 "wk3d2REUREU48"
label variable W3TODS90519S3 "wk3d2REUREU48"
label variable W3TTOS90519S2 "wk3d2REUREU48"
label variable W3TTOS90519S3 "wk3d2REUREU48"
label variable W3FODS90520S3 "wk3d2WSJWSJ60"
label variable W3TODS90520S2 "wk3d2WSJWSJ60"
label variable W3TODS90520S3 "wk3d2WSJWSJ60"
label variable W3TTOS90520S2 "wk3d2WSJWSJ60"
label variable W3TTOS90520S3 "wk3d2WSJWSJ60"
label variable W3FODS90521S3 "wk3d2NBCNBC64"
label variable W3TODS90521S2 "wk3d2NBCNBC64"
label variable W3TODS90521S3 "wk3d2NBCNBC64"
label variable W3TTOS90521S2 "wk3d2NBCNBC64"
label variable W3TTOS90521S3 "wk3d2NBCNBC64"
label variable W3FODS90522S3 "wk3d3ABCHOT8"
label variable W3TODS90522S2 "wk3d3ABCHOT8"
label variable W3TODS90522S3 "wk3d3ABCHOT8"
label variable W3TTOS90522S2 "wk3d3ABCHOT8"
label variable W3TTOS90522S3 "wk3d3ABCHOT8"
label variable W3FODS90523S3 "wk3r2ABCABC72"
label variable W3TODS90523S2 "wk3r2ABCABC72"
label variable W3TODS90523S3 "wk3r2ABCABC72"
label variable W3TTOS90523S2 "wk3r2ABCABC72"
label variable W3TTOS90523S3 "wk3r2ABCABC72"
label variable W3FODS90524S3 "wk3d3NBCUNI12"
label variable W3TODS90524S2 "wk3d3NBCUNI12"
label variable W3TODS90524S3 "wk3d3NBCUNI12"
label variable W3TTOS90524S2 "wk3d3NBCUNI12"
label variable W3TTOS90524S3 "wk3d3NBCUNI12"
label variable W3FODS90525S3 "wk3d3APROOT16"
label variable W3TODS90525S2 "wk3d3APROOT16"
label variable W3TODS90525S3 "wk3d3APROOT16"
label variable W3TTOS90525S2 "wk3d3APROOT16"
label variable W3TTOS90525S3 "wk3d3APROOT16"
label variable W3FODS90526S3 "wk3d3NYTMSN28"
label variable W3TODS90526S2 "wk3d3NYTMSN28"
label variable W3TODS90526S3 "wk3d3NYTMSN28"
label variable W3TTOS90526S2 "wk3d3NYTMSN28"
label variable W3TTOS90526S3 "wk3d3NYTMSN28"
label variable W3FODS90527S3 "wk3r2APAP80"
label variable W3TODS90527S2 "wk3r2APAP80"
label variable W3TODS90527S3 "wk3r2APAP80"
label variable W3TTOS90527S2 "wk3r2APAP80"
label variable W3TTOS90527S3 "wk3r2APAP80"
label variable W3FODS90528S3 "wk3r3REUBET100"
label variable W3TODS90528S2 "wk3r3REUBET100"
label variable W3TODS90528S3 "wk3r3REUBET100"
label variable W3TTOS90528S2 "wk3r3REUBET100"
label variable W3TTOS90528S3 "wk3r3REUBET100"
label variable W3FODS90529S3 "wk3r3CNNLAT101"
label variable W3TODS90529S2 "wk3r3CNNLAT101"
label variable W3TODS90529S3 "wk3r3CNNLAT101"
label variable W3TTOS90529S2 "wk3r3CNNLAT101"
label variable W3TTOS90529S3 "wk3r3CNNLAT101"
label variable W3FODS90530S3 "wk3r2NYTNYT92"
label variable W3TODS90530S2 "wk3r2NYTNYT92"
label variable W3TODS90530S3 "wk3r2NYTNYT92"
label variable W3TTOS90530S2 "wk3r2NYTNYT92"
label variable W3TTOS90530S3 "wk3r2NYTNYT92"
label variable W3FODS90531S3 "wk3r2WSJWSJ96"
label variable W3TODS90531S2 "wk3r2WSJWSJ96"
label variable W3TODS90531S3 "wk3r2WSJWSJ96"
label variable W3TTOS90531S2 "wk3r2WSJWSJ96"
label variable W3TTOS90531S3 "wk3r2WSJWSJ96"
label variable W3FODS90532S3 "wk3r3CBSFOX116"
label variable W3TODS90532S2 "wk3r3CBSFOX116"
label variable W3TODS90532S3 "wk3r3CBSFOX116"
label variable W3TTOS90532S2 "wk3r3CBSFOX116"
label variable W3TTOS90532S3 "wk3r3CBSFOX116"
label variable W3FODS90533S3 "wk3r3NBCHUF124"
label variable W3TODS90533S2 "wk3r3NBCHUF124"
label variable W3TODS90533S3 "wk3r3NBCHUF124"
label variable W3TTOS90533S2 "wk3r3NBCHUF124"
label variable W3TTOS90533S3 "wk3r3NBCHUF124"
label variable W3FODS90534S3 "wk3r1REUBET100"
label variable W3TODS90534S2 "wk3r1REUBET100"
label variable W3TODS90534S3 "wk3r1REUBET100"
label variable W3TTOS90534S2 "wk3r1REUBET100"
label variable W3TTOS90534S3 "wk3r1REUBET100"
label variable W3FODS90535S3 "wk3r1CNNLAT101"
label variable W3TODS90535S2 "wk3r1CNNLAT101"
label variable W3TODS90535S3 "wk3r1CNNLAT101"
label variable W3TTOS90535S2 "wk3r1CNNLAT101"
label variable W3TTOS90535S3 "wk3r1CNNLAT101"
label variable W3FODS90536S3 "wk3r1CBSFOX116"
label variable W3TODS90536S2 "wk3r1CBSFOX116"
label variable W3TODS90536S3 "wk3r1CBSFOX116"
label variable W3TTOS90536S2 "wk3r1CBSFOX116"
label variable W3TTOS90536S3 "wk3r1CBSFOX116"
label variable W3FODS90537S3 "wk3r1NBCHUF124"
label variable W3TODS90537S2 "wk3r1NBCHUF124"
label variable W3TODS90537S3 "wk3r1NBCHUF124"
label variable W3TTOS90537S2 "wk3r1NBCHUF124"
label variable W3TTOS90537S3 "wk3r1NBCHUF124"


* Merge W3S1234 with IPW3 (Ip ADDRESS)
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W3/WorkingData/DurationData/W3S1234_Working.dta", replace
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W3/WorkingData/DurationData/W3S1234_Working.dta", replace
merge 1:m SUBJECTID using "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W3/IP/IPW3.dta"
drop _merge

* Duplicate Check
capture drop DUPW3
sort PAC
quietly by PAC: gen DUPW3 = cond(_N==1,0,_n)

* Generating week indicator
capture drop WEEK3
gen WEEK3 = 1

* Generating Date Variable
capture drop year month day
nsplit W3DATES1, digits(4 2 2) generate(year month day)
capture drop DATEW3b
gen DATEW3b = mdy(month, day, year)
capture drop date1
gen date1 = 19724
format %td date1
format %td DATEW3b
capture drop DATEW3a
gen DATEW3a = DATEW3b - date1
capture drop date1 year month day W3DATES1 W3DATES2 W3DATES3 W3DATES4

* ORDERING
order PAC IP DUPW3 DATEW3a DATEW3b W3TIMES1 WEEK3
sort PAC, stable

* Dropping Duplicates
drop if PAC == .
drop if SUBJECTID == 103061 
replace PAC= 108277  if IP == "50.134.64.50"
replace PAC= 108648 if IP == "69.207.145.155"

* Building Cumulat.

capture egen  W3COD90358Wk = rowtotal(W3TODS90358S2 W3TODS90358S3)
capture egen  W3CTO90358Wk = rowtotal(W3TTOS90358S2 W3TTOS90358S3)
capture egen  W3COD90359Wk = rowtotal(W3TODS90359S2 W3TODS90359S3)
capture egen  W3CTO90359Wk = rowtotal(W3TTOS90359S2 W3TTOS90359S3)
capture egen  W3CTO90360Wk = rowtotal(W3TTOS90360S2 W3TTOS90360S3)
capture egen  W3COD90360Wk = rowtotal(W3TODS90360S2 W3TODS90360S3)
capture egen  W3CTO90361Wk = rowtotal(W3TTOS90361S2 W3TTOS90361S3)
capture egen  W3COD90361Wk = rowtotal(W3TODS90361S2 W3TODS90361S3)
capture egen  W3CTO90363Wk = rowtotal(W3TTOS90363S2 W3TTOS90363S3)
capture egen  W3COD90363Wk = rowtotal(W3TODS90363S2 W3TODS90363S3)
capture egen  W3COD90364Wk = rowtotal(W3TODS90364S2 W3TODS90364S3)
capture egen  W3CTO90364Wk = rowtotal(W3TTOS90364S2 W3TTOS90364S3)
capture egen  W3CTO90365Wk = rowtotal(W3TTOS90365S2 W3TTOS90365S3)
capture egen  W3COD90365Wk = rowtotal(W3TODS90365S2 W3TODS90365S3)
capture egen  W3CTO90366Wk = rowtotal(W3TTOS90366S2 W3TTOS90366S3)
capture egen  W3COD90366Wk = rowtotal(W3TODS90366S2 W3TODS90366S3)
capture egen  W3COD90367Wk = rowtotal(W3TODS90367S2 W3TODS90367S3)
capture egen  W3CTO90367Wk = rowtotal(W3TTOS90367S2 W3TTOS90367S3)
capture egen  W3COD90368Wk = rowtotal(W3TODS90368S2 W3TODS90368S3)
capture egen  W3CTO90368Wk = rowtotal(W3TTOS90368S2 W3TTOS90368S3)
capture egen  W3CTO90369Wk = rowtotal(W3TTOS90369S2 W3TTOS90369S3)
capture egen  W3COD90369Wk = rowtotal(W3TODS90369S2 W3TODS90369S3)
capture egen  W3COD90370Wk = rowtotal(W3TODS90370S2 W3TODS90370S3)
capture egen  W3CTO90370Wk = rowtotal(W3TTOS90370S2 W3TTOS90370S3)
capture egen  W3COD90371Wk = rowtotal(W3TODS90371S2 W3TODS90371S3)
capture egen  W3CTO90371Wk = rowtotal(W3TTOS90371S2 W3TTOS90371S3)
capture egen  W3CTO90372Wk = rowtotal(W3TTOS90372S2 W3TTOS90372S3)
capture egen  W3COD90372Wk = rowtotal(W3TODS90372S2 W3TODS90372S3)
capture egen  W3COD90373Wk = rowtotal(W3TODS90373S2 W3TODS90373S3)
capture egen  W3CTO90373Wk = rowtotal(W3TTOS90373S2 W3TTOS90373S3)
capture egen  W3COD90374Wk = rowtotal(W3TODS90374S2 W3TODS90374S3)
capture egen  W3CTO90374Wk = rowtotal(W3TTOS90374S2 W3TTOS90374S3)
capture egen  W3CTO90377Wk = rowtotal(W3TTOS90377S2 W3TTOS90377S3)
capture egen  W3COD90377Wk = rowtotal(W3TODS90377S2 W3TODS90377S3)
capture egen  W3COD90378Wk = rowtotal(W3TODS90378S2 W3TODS90378S3)
capture egen  W3CTO90378Wk = rowtotal(W3TTOS90378S2 W3TTOS90378S3)
capture egen  W3COD90379Wk = rowtotal(W3TODS90379S2 W3TODS90379S3)
capture egen  W3CTO90379Wk = rowtotal(W3TTOS90379S2 W3TTOS90379S3)
capture egen  W3COD90380Wk = rowtotal(W3TODS90380S2 W3TODS90380S3)
capture egen  W3CTO90380Wk = rowtotal(W3TTOS90380S2 W3TTOS90380S3)
capture egen  W3COD90381Wk = rowtotal(W3TODS90381S2 W3TODS90381S3)
capture egen  W3CTO90381Wk = rowtotal(W3TTOS90381S2 W3TTOS90381S3)
capture egen  W3COD90382Wk = rowtotal(W3TODS90382S2 W3TODS90382S3)
capture egen  W3CTO90382Wk = rowtotal(W3TTOS90382S2 W3TTOS90382S3)
capture egen  W3CTO90383Wk = rowtotal(W3TTOS90383S2 W3TTOS90383S3)
capture egen  W3COD90383Wk = rowtotal(W3TODS90383S2 W3TODS90383S3)
capture egen  W3COD90385Wk = rowtotal(W3TODS90385S2 W3TODS90385S3)
capture egen  W3CTO90385Wk = rowtotal(W3TTOS90385S2 W3TTOS90385S3)
capture egen  W3COD90386Wk = rowtotal(W3TODS90386S2 W3TODS90386S3)
capture egen  W3CTO90386Wk = rowtotal(W3TTOS90386S2 W3TTOS90386S3)
capture egen  W3COD90387Wk = rowtotal(W3TODS90387S2 W3TODS90387S3)
capture egen  W3CTO90387Wk = rowtotal(W3TTOS90387S2 W3TTOS90387S3)
capture egen  W3COD90388Wk = rowtotal(W3TODS90388S2 W3TODS90388S3)
capture egen  W3CTO90388Wk = rowtotal(W3TTOS90388S2 W3TTOS90388S3)
capture egen  W3COD90390Wk = rowtotal(W3TODS90390S2 W3TODS90390S3)
capture egen  W3CTO90390Wk = rowtotal(W3TTOS90390S2 W3TTOS90390S3)
capture egen  W3COD90392Wk = rowtotal(W3TODS90392S2 W3TODS90392S3)
capture egen  W3CTO90392Wk = rowtotal(W3TTOS90392S2 W3TTOS90392S3)
capture egen  W3CTO90393Wk = rowtotal(W3TTOS90393S2 W3TTOS90393S3)
capture egen  W3COD90393Wk = rowtotal(W3TODS90393S2 W3TODS90393S3)
capture egen  W3CTO90394Wk = rowtotal(W3TTOS90394S2 W3TTOS90394S3)
capture egen  W3COD90394Wk = rowtotal(W3TODS90394S2 W3TODS90394S3)
capture egen  W3COD90396Wk = rowtotal(W3TODS90396S2 W3TODS90396S3)
capture egen  W3CTO90396Wk = rowtotal(W3TTOS90396S2 W3TTOS90396S3)
capture egen  W3COD90398Wk = rowtotal(W3TODS90398S2 W3TODS90398S3)
capture egen  W3CTO90398Wk = rowtotal(W3TTOS90398S2 W3TTOS90398S3)
capture egen  W3COD90399Wk = rowtotal(W3TODS90399S2 W3TODS90399S3)
capture egen  W3CTO90399Wk = rowtotal(W3TTOS90399S2 W3TTOS90399S3)
capture egen  W3COD90401Wk = rowtotal(W3TODS90401S2 W3TODS90401S3)
capture egen  W3CTO90401Wk = rowtotal(W3TTOS90401S2 W3TTOS90401S3)
capture egen  W3CTO90402Wk = rowtotal(W3TTOS90402S2 W3TTOS90402S3)
capture egen  W3COD90402Wk = rowtotal(W3TODS90402S2 W3TODS90402S3)
capture egen  W3CTO90403Wk = rowtotal(W3TTOS90403S2 W3TTOS90403S3)
capture egen  W3COD90403Wk = rowtotal(W3TODS90403S2 W3TODS90403S3)
capture egen  W3COD90404Wk = rowtotal(W3TODS90404S2 W3TODS90404S3)
capture egen  W3CTO90404Wk = rowtotal(W3TTOS90404S2 W3TTOS90404S3)
capture egen  W3CTO90405Wk = rowtotal(W3TTOS90405S2 W3TTOS90405S3)
capture egen  W3COD90405Wk = rowtotal(W3TODS90405S2 W3TODS90405S3)
capture egen  W3CTO90407Wk = rowtotal(W3TTOS90407S2 W3TTOS90407S3)
capture egen  W3COD90407Wk = rowtotal(W3TODS90407S2 W3TODS90407S3)
capture egen  W3COD90408Wk = rowtotal(W3TODS90408S2 W3TODS90408S3)
capture egen  W3CTO90408Wk = rowtotal(W3TTOS90408S2 W3TTOS90408S3)
capture egen  W3COD90409Wk = rowtotal(W3TODS90409S2 W3TODS90409S3)
capture egen  W3CTO90409Wk = rowtotal(W3TTOS90409S2 W3TTOS90409S3)
capture egen  W3CTO90410Wk = rowtotal(W3TTOS90410S2 W3TTOS90410S3)
capture egen  W3COD90410Wk = rowtotal(W3TODS90410S2 W3TODS90410S3)
capture egen  W3COD90411Wk = rowtotal(W3TODS90411S2 W3TODS90411S3)
capture egen  W3CTO90411Wk = rowtotal(W3TTOS90411S2 W3TTOS90411S3)
capture egen  W3COD90412Wk = rowtotal(W3TODS90412S2 W3TODS90412S3)
capture egen  W3CTO90412Wk = rowtotal(W3TTOS90412S2 W3TTOS90412S3)
capture egen  W3COD90413Wk = rowtotal(W3TODS90413S2 W3TODS90413S3)
capture egen  W3CTO90413Wk = rowtotal(W3TTOS90413S2 W3TTOS90413S3)
capture egen  W3CTO90414Wk = rowtotal(W3TTOS90414S2 W3TTOS90414S3)
capture egen  W3COD90414Wk = rowtotal(W3TODS90414S2 W3TODS90414S3)
capture egen  W3COD90415Wk = rowtotal(W3TODS90415S2 W3TODS90415S3)
capture egen  W3CTO90415Wk = rowtotal(W3TTOS90415S2 W3TTOS90415S3)
capture egen  W3COD90416Wk = rowtotal(W3TODS90416S2 W3TODS90416S3)
capture egen  W3CTO90416Wk = rowtotal(W3TTOS90416S2 W3TTOS90416S3)
capture egen  W3CTO90418Wk = rowtotal(W3TTOS90418S2 W3TTOS90418S3)
capture egen  W3COD90418Wk = rowtotal(W3TODS90418S2 W3TODS90418S3)
capture egen  W3COD90419Wk = rowtotal(W3TODS90419S2 W3TODS90419S3)
capture egen  W3CTO90419Wk = rowtotal(W3TTOS90419S2 W3TTOS90419S3)
capture egen  W3CTO90421Wk = rowtotal(W3TTOS90421S2 W3TTOS90421S3)
capture egen  W3COD90421Wk = rowtotal(W3TODS90421S2 W3TODS90421S3)
capture egen  W3COD90422Wk = rowtotal(W3TODS90422S2 W3TODS90422S3)
capture egen  W3CTO90422Wk = rowtotal(W3TTOS90422S2 W3TTOS90422S3)
capture egen  W3CTO90423Wk = rowtotal(W3TTOS90423S2 W3TTOS90423S3)
capture egen  W3COD90423Wk = rowtotal(W3TODS90423S2 W3TODS90423S3)
capture egen  W3COD90425Wk = rowtotal(W3TODS90425S2 W3TODS90425S3)
capture egen  W3CTO90425Wk = rowtotal(W3TTOS90425S2 W3TTOS90425S3)
capture egen  W3COD90426Wk = rowtotal(W3TODS90426S2 W3TODS90426S3)
capture egen  W3CTO90426Wk = rowtotal(W3TTOS90426S2 W3TTOS90426S3)
capture egen  W3COD90427Wk = rowtotal(W3TODS90427S2 W3TODS90427S3)
capture egen  W3CTO90427Wk = rowtotal(W3TTOS90427S2 W3TTOS90427S3)
capture egen  W3CTO90428Wk = rowtotal(W3TTOS90428S2 W3TTOS90428S3)
capture egen  W3COD90428Wk = rowtotal(W3TODS90428S2 W3TODS90428S3)
capture egen  W3CTO90430Wk = rowtotal(W3TTOS90430S2 W3TTOS90430S3)
capture egen  W3COD90430Wk = rowtotal(W3TODS90430S2 W3TODS90430S3)
capture egen  W3CTO90431Wk = rowtotal(W3TTOS90431S2 W3TTOS90431S3)
capture egen  W3COD90431Wk = rowtotal(W3TODS90431S2 W3TODS90431S3)
capture egen  W3COD90432Wk = rowtotal(W3TODS90432S2 W3TODS90432S3)
capture egen  W3CTO90432Wk = rowtotal(W3TTOS90432S2 W3TTOS90432S3)
capture egen  W3CTO90433Wk = rowtotal(W3TTOS90433S2 W3TTOS90433S3)
capture egen  W3COD90433Wk = rowtotal(W3TODS90433S2 W3TODS90433S3)
capture egen  W3CTO90434Wk = rowtotal(W3TTOS90434S2 W3TTOS90434S3)
capture egen  W3COD90434Wk = rowtotal(W3TODS90434S2 W3TODS90434S3)
capture egen  W3COD90435Wk = rowtotal(W3TODS90435S2 W3TODS90435S3)
capture egen  W3CTO90435Wk = rowtotal(W3TTOS90435S2 W3TTOS90435S3)
capture egen  W3CTO90436Wk = rowtotal(W3TTOS90436S2 W3TTOS90436S3)
capture egen  W3COD90436Wk = rowtotal(W3TODS90436S2 W3TODS90436S3)
capture egen  W3COD90437Wk = rowtotal(W3TODS90437S2 W3TODS90437S3)
capture egen  W3CTO90437Wk = rowtotal(W3TTOS90437S2 W3TTOS90437S3)
capture egen  W3COD90439Wk = rowtotal(W3TODS90439S2 W3TODS90439S3)
capture egen  W3CTO90439Wk = rowtotal(W3TTOS90439S2 W3TTOS90439S3)
capture egen  W3COD90440Wk = rowtotal(W3TODS90440S2 W3TODS90440S3)
capture egen  W3CTO90440Wk = rowtotal(W3TTOS90440S2 W3TTOS90440S3)
capture egen  W3CTO90441Wk = rowtotal(W3TTOS90441S2 W3TTOS90441S3)
capture egen  W3COD90441Wk = rowtotal(W3TODS90441S2 W3TODS90441S3)
capture egen  W3CTO90442Wk = rowtotal(W3TTOS90442S2 W3TTOS90442S3)
capture egen  W3COD90442Wk = rowtotal(W3TODS90442S2 W3TODS90442S3)
capture egen  W3CTO90443Wk = rowtotal(W3TTOS90443S2 W3TTOS90443S3)
capture egen  W3COD90443Wk = rowtotal(W3TODS90443S2 W3TODS90443S3)
capture egen  W3COD90444Wk = rowtotal(W3TODS90444S2 W3TODS90444S3)
capture egen  W3CTO90444Wk = rowtotal(W3TTOS90444S2 W3TTOS90444S3)
capture egen  W3CTO90445Wk = rowtotal(W3TTOS90445S2 W3TTOS90445S3)
capture egen  W3COD90445Wk = rowtotal(W3TODS90445S2 W3TODS90445S3)
capture egen  W3CTO90446Wk = rowtotal(W3TTOS90446S2 W3TTOS90446S3)
capture egen  W3COD90446Wk = rowtotal(W3TODS90446S2 W3TODS90446S3)
capture egen  W3CTO90447Wk = rowtotal(W3TTOS90447S2 W3TTOS90447S3)
capture egen  W3COD90447Wk = rowtotal(W3TODS90447S2 W3TODS90447S3)
capture egen  W3COD90448Wk = rowtotal(W3TODS90448S2 W3TODS90448S3)
capture egen  W3CTO90448Wk = rowtotal(W3TTOS90448S2 W3TTOS90448S3)
capture egen  W3CTO90449Wk = rowtotal(W3TTOS90449S2 W3TTOS90449S3)
capture egen  W3COD90449Wk = rowtotal(W3TODS90449S2 W3TODS90449S3)
capture egen  W3CTO90450Wk = rowtotal(W3TTOS90450S2 W3TTOS90450S3)
capture egen  W3COD90450Wk = rowtotal(W3TODS90450S2 W3TODS90450S3)
capture egen  W3CTO90451Wk = rowtotal(W3TTOS90451S2 W3TTOS90451S3)
capture egen  W3COD90451Wk = rowtotal(W3TODS90451S2 W3TODS90451S3)
capture egen  W3COD90452Wk = rowtotal(W3TODS90452S2 W3TODS90452S3)
capture egen  W3CTO90452Wk = rowtotal(W3TTOS90452S2 W3TTOS90452S3)
capture egen  W3COD90453Wk = rowtotal(W3TODS90453S2 W3TODS90453S3)
capture egen  W3CTO90453Wk = rowtotal(W3TTOS90453S2 W3TTOS90453S3)
capture egen  W3COD90454Wk = rowtotal(W3TODS90454S2 W3TODS90454S3)
capture egen  W3CTO90454Wk = rowtotal(W3TTOS90454S2 W3TTOS90454S3)
capture egen  W3COD90455Wk = rowtotal(W3TODS90455S2 W3TODS90455S3)
capture egen  W3CTO90455Wk = rowtotal(W3TTOS90455S2 W3TTOS90455S3)
capture egen  W3CTO90456Wk = rowtotal(W3TTOS90456S2 W3TTOS90456S3)
capture egen  W3COD90456Wk = rowtotal(W3TODS90456S2 W3TODS90456S3)
capture egen  W3COD90457Wk = rowtotal(W3TODS90457S2 W3TODS90457S3)
capture egen  W3CTO90457Wk = rowtotal(W3TTOS90457S2 W3TTOS90457S3)
capture egen  W3COD90458Wk = rowtotal(W3TODS90458S2 W3TODS90458S3)
capture egen  W3CTO90458Wk = rowtotal(W3TTOS90458S2 W3TTOS90458S3)
capture egen  W3CTO90459Wk = rowtotal(W3TTOS90459S2 W3TTOS90459S3)
capture egen  W3COD90459Wk = rowtotal(W3TODS90459S2 W3TODS90459S3)
capture egen  W3COD90460Wk = rowtotal(W3TODS90460S2 W3TODS90460S3)
capture egen  W3CTO90460Wk = rowtotal(W3TTOS90460S2 W3TTOS90460S3)
capture egen  W3CTO90461Wk = rowtotal(W3TTOS90461S2 W3TTOS90461S3)
capture egen  W3COD90461Wk = rowtotal(W3TODS90461S2 W3TODS90461S3)
capture egen  W3CTO90462Wk = rowtotal(W3TTOS90462S2 W3TTOS90462S3)
capture egen  W3COD90462Wk = rowtotal(W3TODS90462S2 W3TODS90462S3)
capture egen  W3COD90463Wk = rowtotal(W3TODS90463S2 W3TODS90463S3)
capture egen  W3CTO90463Wk = rowtotal(W3TTOS90463S2 W3TTOS90463S3)
capture egen  W3COD90464Wk = rowtotal(W3TODS90464S2 W3TODS90464S3)
capture egen  W3CTO90464Wk = rowtotal(W3TTOS90464S2 W3TTOS90464S3)
capture egen  W3COD90465Wk = rowtotal(W3TODS90465S2 W3TODS90465S3)
capture egen  W3CTO90465Wk = rowtotal(W3TTOS90465S2 W3TTOS90465S3)
capture egen  W3CTO90466Wk = rowtotal(W3TTOS90466S2 W3TTOS90466S3)
capture egen  W3COD90466Wk = rowtotal(W3TODS90466S2 W3TODS90466S3)
capture egen  W3CTO90467Wk = rowtotal(W3TTOS90467S2 W3TTOS90467S3)
capture egen  W3COD90467Wk = rowtotal(W3TODS90467S2 W3TODS90467S3)
capture egen  W3CTO90468Wk = rowtotal(W3TTOS90468S2 W3TTOS90468S3)
capture egen  W3COD90468Wk = rowtotal(W3TODS90468S2 W3TODS90468S3)
capture egen  W3COD90469Wk = rowtotal(W3TODS90469S2 W3TODS90469S3)
capture egen  W3CTO90469Wk = rowtotal(W3TTOS90469S2 W3TTOS90469S3)
capture egen  W3CTO90470Wk = rowtotal(W3TTOS90470S2 W3TTOS90470S3)
capture egen  W3COD90470Wk = rowtotal(W3TODS90470S2 W3TODS90470S3)
capture egen  W3COD90471Wk = rowtotal(W3TODS90471S2 W3TODS90471S3)
capture egen  W3CTO90471Wk = rowtotal(W3TTOS90471S2 W3TTOS90471S3)
capture egen  W3CTO90472Wk = rowtotal(W3TTOS90472S2 W3TTOS90472S3)
capture egen  W3COD90472Wk = rowtotal(W3TODS90472S2 W3TODS90472S3)
capture egen  W3COD90473Wk = rowtotal(W3TODS90473S2 W3TODS90473S3)
capture egen  W3CTO90473Wk = rowtotal(W3TTOS90473S2 W3TTOS90473S3)
capture egen  W3CTO90474Wk = rowtotal(W3TTOS90474S2 W3TTOS90474S3)
capture egen  W3COD90474Wk = rowtotal(W3TODS90474S2 W3TODS90474S3)
capture egen  W3CTO90475Wk = rowtotal(W3TTOS90475S2 W3TTOS90475S3)
capture egen  W3COD90475Wk = rowtotal(W3TODS90475S2 W3TODS90475S3)
capture egen  W3CTO90476Wk = rowtotal(W3TTOS90476S2 W3TTOS90476S3)
capture egen  W3COD90476Wk = rowtotal(W3TODS90476S2 W3TODS90476S3)
capture egen  W3CTO90477Wk = rowtotal(W3TTOS90477S2 W3TTOS90477S3)
capture egen  W3COD90477Wk = rowtotal(W3TODS90477S2 W3TODS90477S3)
capture egen  W3COD90478Wk = rowtotal(W3TODS90478S2 W3TODS90478S3)
capture egen  W3CTO90478Wk = rowtotal(W3TTOS90478S2 W3TTOS90478S3)
capture egen  W3COD90479Wk = rowtotal(W3TODS90479S2 W3TODS90479S3)
capture egen  W3CTO90479Wk = rowtotal(W3TTOS90479S2 W3TTOS90479S3)
capture egen  W3COD90480Wk = rowtotal(W3TODS90480S2 W3TODS90480S3)
capture egen  W3CTO90480Wk = rowtotal(W3TTOS90480S2 W3TTOS90480S3)
capture egen  W3CTO90481Wk = rowtotal(W3TTOS90481S2 W3TTOS90481S3)
capture egen  W3COD90481Wk = rowtotal(W3TODS90481S2 W3TODS90481S3)
capture egen  W3CTO90482Wk = rowtotal(W3TTOS90482S2 W3TTOS90482S3)
capture egen  W3COD90482Wk = rowtotal(W3TODS90482S2 W3TODS90482S3)
capture egen  W3COD90483Wk = rowtotal(W3TODS90483S2 W3TODS90483S3)
capture egen  W3CTO90483Wk = rowtotal(W3TTOS90483S2 W3TTOS90483S3)
capture egen  W3COD90484Wk = rowtotal(W3TODS90484S2 W3TODS90484S3)
capture egen  W3CTO90484Wk = rowtotal(W3TTOS90484S2 W3TTOS90484S3)
capture egen  W3COD90485Wk = rowtotal(W3TODS90485S2 W3TODS90485S3)
capture egen  W3CTO90485Wk = rowtotal(W3TTOS90485S2 W3TTOS90485S3)
capture egen  W3COD90486Wk = rowtotal(W3TODS90486S2 W3TODS90486S3)
capture egen  W3CTO90486Wk = rowtotal(W3TTOS90486S2 W3TTOS90486S3)
capture egen  W3COD90487Wk = rowtotal(W3TODS90487S2 W3TODS90487S3)
capture egen  W3CTO90487Wk = rowtotal(W3TTOS90487S2 W3TTOS90487S3)
capture egen  W3COD90488Wk = rowtotal(W3TODS90488S2 W3TODS90488S3)
capture egen  W3CTO90488Wk = rowtotal(W3TTOS90488S2 W3TTOS90488S3)
capture egen  W3CTO90489Wk = rowtotal(W3TTOS90489S2 W3TTOS90489S3)
capture egen  W3COD90489Wk = rowtotal(W3TODS90489S2 W3TODS90489S3)
capture egen  W3CTO90490Wk = rowtotal(W3TTOS90490S2 W3TTOS90490S3)
capture egen  W3COD90490Wk = rowtotal(W3TODS90490S2 W3TODS90490S3)
capture egen  W3CTO90491Wk = rowtotal(W3TTOS90491S2 W3TTOS90491S3)
capture egen  W3COD90491Wk = rowtotal(W3TODS90491S2 W3TODS90491S3)
capture egen  W3COD90492Wk = rowtotal(W3TODS90492S2 W3TODS90492S3)
capture egen  W3CTO90492Wk = rowtotal(W3TTOS90492S2 W3TTOS90492S3)
capture egen  W3COD90493Wk = rowtotal(W3TODS90493S2 W3TODS90493S3)
capture egen  W3CTO90493Wk = rowtotal(W3TTOS90493S2 W3TTOS90493S3)
capture egen  W3COD90494Wk = rowtotal(W3TODS90494S2 W3TODS90494S3)
capture egen  W3CTO90494Wk = rowtotal(W3TTOS90494S2 W3TTOS90494S3)
capture egen  W3COD90498Wk = rowtotal(W3TODS90498S2 W3TODS90498S3)
capture egen  W3CTO90498Wk = rowtotal(W3TTOS90498S2 W3TTOS90498S3)
capture egen  W3CTO90510Wk = rowtotal(W3TTOS90510S2 W3TTOS90510S3)
capture egen  W3COD90510Wk = rowtotal(W3TODS90510S2 W3TODS90510S3)
capture egen  W3COD90511Wk = rowtotal(W3TODS90511S2 W3TODS90511S3)
capture egen  W3CTO90511Wk = rowtotal(W3TTOS90511S2 W3TTOS90511S3)
capture egen  W3COD90512Wk = rowtotal(W3TODS90512S2 W3TODS90512S3)
capture egen  W3CTO90512Wk = rowtotal(W3TTOS90512S2 W3TTOS90512S3)
capture egen  W3CTO90513Wk = rowtotal(W3TTOS90513S2 W3TTOS90513S3)
capture egen  W3COD90513Wk = rowtotal(W3TODS90513S2 W3TODS90513S3)
capture egen  W3CTO90514Wk = rowtotal(W3TTOS90514S2 W3TTOS90514S3)
capture egen  W3COD90514Wk = rowtotal(W3TODS90514S2 W3TODS90514S3)
capture egen  W3CTO90516Wk = rowtotal(W3TTOS90516S2 W3TTOS90516S3)
capture egen  W3COD90516Wk = rowtotal(W3TODS90516S2 W3TODS90516S3)
capture egen  W3CTO90517Wk = rowtotal(W3TTOS90517S2 W3TTOS90517S3)
capture egen  W3COD90517Wk = rowtotal(W3TODS90517S2 W3TODS90517S3)
capture egen  W3CTO90518Wk = rowtotal(W3TTOS90518S2 W3TTOS90518S3)
capture egen  W3COD90518Wk = rowtotal(W3TODS90518S2 W3TODS90518S3)
capture egen  W3CTO90519Wk = rowtotal(W3TTOS90519S2 W3TTOS90519S3)
capture egen  W3COD90519Wk = rowtotal(W3TODS90519S2 W3TODS90519S3)
capture egen  W3CTO90520Wk = rowtotal(W3TTOS90520S2 W3TTOS90520S3)
capture egen  W3COD90520Wk = rowtotal(W3TODS90520S2 W3TODS90520S3)
capture egen  W3COD90521Wk = rowtotal(W3TODS90521S2 W3TODS90521S3)
capture egen  W3CTO90521Wk = rowtotal(W3TTOS90521S2 W3TTOS90521S3)
capture egen  W3CTO90522Wk = rowtotal(W3TTOS90522S2 W3TTOS90522S3)
capture egen  W3COD90522Wk = rowtotal(W3TODS90522S2 W3TODS90522S3)
capture egen  W3CTO90523Wk = rowtotal(W3TTOS90523S2 W3TTOS90523S3)
capture egen  W3COD90523Wk = rowtotal(W3TODS90523S2 W3TODS90523S3)
capture egen  W3COD90524Wk = rowtotal(W3TODS90524S2 W3TODS90524S3)
capture egen  W3CTO90524Wk = rowtotal(W3TTOS90524S2 W3TTOS90524S3)
capture egen  W3CTO90525Wk = rowtotal(W3TTOS90525S2 W3TTOS90525S3)
capture egen  W3COD90525Wk = rowtotal(W3TODS90525S2 W3TODS90525S3)
capture egen  W3CTO90526Wk = rowtotal(W3TTOS90526S2 W3TTOS90526S3)
capture egen  W3COD90526Wk = rowtotal(W3TODS90526S2 W3TODS90526S3)
capture egen  W3CTO90527Wk = rowtotal(W3TTOS90527S2 W3TTOS90527S3)
capture egen  W3COD90527Wk = rowtotal(W3TODS90527S2 W3TODS90527S3)
capture egen  W3COD90528Wk = rowtotal(W3TODS90528S2 W3TODS90528S3)
capture egen  W3CTO90528Wk = rowtotal(W3TTOS90528S2 W3TTOS90528S3)
capture egen  W3COD90529Wk = rowtotal(W3TODS90529S2 W3TODS90529S3)
capture egen  W3CTO90529Wk = rowtotal(W3TTOS90529S2 W3TTOS90529S3)
capture egen  W3COD90530Wk = rowtotal(W3TODS90530S2 W3TODS90530S3)
capture egen  W3CTO90530Wk = rowtotal(W3TTOS90530S2 W3TTOS90530S3)
capture egen  W3COD90531Wk = rowtotal(W3TODS90531S2 W3TODS90531S3)
capture egen  W3CTO90531Wk = rowtotal(W3TTOS90531S2 W3TTOS90531S3)
capture egen  W3CTO90532Wk = rowtotal(W3TTOS90532S2 W3TTOS90532S3)
capture egen  W3COD90532Wk = rowtotal(W3TODS90532S2 W3TODS90532S3)
capture egen  W3COD90533Wk = rowtotal(W3TODS90533S2 W3TODS90533S3)
capture egen  W3CTO90533Wk = rowtotal(W3TTOS90533S2 W3TTOS90533S3)
capture egen  W3COD90534Wk = rowtotal(W3TODS90534S2 W3TODS90534S3)
capture egen  W3CTO90534Wk = rowtotal(W3TTOS90534S2 W3TTOS90534S3)
capture egen  W3CTO90535Wk = rowtotal(W3TTOS90535S2 W3TTOS90535S3)
capture egen  W3COD90535Wk = rowtotal(W3TODS90535S2 W3TODS90535S3)
capture egen  W3COD90536Wk = rowtotal(W3TODS90536S2 W3TODS90536S3)
capture egen  W3CTO90536Wk = rowtotal(W3TTOS90536S2 W3TTOS90536S3)
capture egen  W3CTO90537Wk = rowtotal(W3TTOS90537S2 W3TTOS90537S3)
capture egen  W3COD90537Wk = rowtotal(W3TODS90537S2 W3TODS90537S3)


* Saving
rename SUBJECTID SUBJECTIDW3
rename IP IPW3
sort PAC
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W3/WorkingData/DurationData/W3S1234_Working.dta", replace


**************************************************************************************************
**************************************************************************************************
*										W	E	E	K	 4
**************************************************************************************************
**************************************************************************************************

set more off
clear all
* Set Working Directory (Uncomment it, don't delet it)
cd "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W4/WorkingData/DurationData"

**************************************************************************************************
*											W4S1
**************************************************************************************************


*Open W4S1 and save a Working Copy (We wanna keep a copy of the original data)
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W4/WorkingData/DurationData/W4S1.dta", replace
destring, replace
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W4/WorkingData/DurationData/W4S1_Working.dta", replace

* From Excel to STATA everything enters as lower case. Lets reverse it to its original: Upper Case
rename *, upper

* Now lets keep what we need
keep ///
DATE FOD_A_3754 GRP_20553 GRP_20554 Q_5967_DUR_32186 Q_5967_SEQ_32186 Q_5967_VAL_32186 SUBJECT_ID ///
TIME TIME_BEGIN_FLOWPHASE TIME_BEGIN_SUBSTAGE TIME_END_FLOWPHASE TOD_A_3754 TOTAL_FLOW_ACCESSED ///
TTO_A_3754 WORDS_A_3754

*rename SUBJECT_ID to PAC
rename Q_5967_VAL_32186 PAC

* Adding Prefixes and Suffixes
foreach x of var * {
rename `x' W4`x'
} 

foreach x of var * {
rename `x' `x'S1
}

* Renaming SUBJECT_ID (no pre nor su fixes, we need that to merge on it)
rename W4SUBJECT_IDS1 SUBJECTID

* Renaming SUBJECT_ID (no pre nor su fixes, we need that to merge on it)
rename W4PACS1 PAC

* Eliminating ALL underscores
foreach v of var *_* { 
	local V : subinstr local v "_" "", all
	capture rename `v' `V' 
	if _rc di as txt "problem with `v'"
} 

*saving
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W4/WorkingData/DurationData/W4S1_Working.dta", replace

**************************************************************************************************
*											W4S2
**************************************************************************************************

*Open W4S2 and save a Working Copy (We wanna keep a copy of the original data)
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W4/WorkingData/DurationData/W4S2.dta", replace
destring, replace
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W4/WorkingData/DurationData/W4S2_Working.dta", replace

* From Excel to STATA everything enters as lower case. Lets reverse it to its original: Upper Case
rename *, upper

* Now lets keep what we need
keep ///
DATE FOD_A_3757 FOD_A_3758 FOD_A_3759 FOD_A_3760 FOD_A_3761 FOD_A_3762 FOD_A_3763 FOD_A_3764 FOD_A_3765 ///
FOD_A_3766 FOD_A_3767 FOD_A_3768 FOD_S_90693 FOD_S_90694 FOD_S_90707 FOD_S_90708 FOD_S_90722 FOD_S_90723  ///
FOD_S_90735 FOD_S_90736 FOD_S_90778 FOD_S_90779 FOD_S_90780 FOD_S_90781 FOD_S_90782 FOD_S_90783 FOD_S_90784 ///
FOD_S_90785 FOD_S_90786 FOD_S_90787 FOD_S_90788 FOD_S_90789 FOD_S_90790 FOD_S_90791 FOD_S_90792 FOD_S_90793 ///
FOD_S_90794 FOD_S_90795 FOD_S_90796 FOD_S_90797 FOD_S_90798 FOD_S_90799 FOD_S_90800 FOD_S_90801 FOD_S_90802 ///
FOD_S_90803 FOD_S_90804 FOD_S_90805 FOD_S_90806 FOD_S_90807 GRP_20484 GRP_20485 GRP_20486 GRP_20487 GRP_20488 ///
GRP_20489 GRP_20490 GRP_20491 GRP_20492 GRP_20493 GRP_20494 GRP_20495 GRP_20496 GRP_20497 GRP_20498 GRP_20499 ///
SUBJECT_ID TIME TIME_BEGIN_FLOWPHASE TIME_BEGIN_SUBSTAGE TIME_END_FLOWPHASE TOD_A_3757 TOD_A_3758 TOD_A_3759 ///
TOD_A_3760 TOD_A_3761 TOD_A_3762 TOD_A_3763 TOD_A_3764 TOD_A_3765 TOD_A_3766 TOD_A_3767 TOD_A_3768 TOD_S_90693 ///
TOD_S_90694 TOD_S_90707 TOD_S_90708 TOD_S_90722 TOD_S_90723 TOD_S_90735 TOD_S_90736 TOD_S_90778 TOD_S_90779 ///
TOD_S_90780 TOD_S_90781 TOD_S_90782 TOD_S_90783 TOD_S_90784 TOD_S_90785 TOD_S_90786 TOD_S_90787 TOD_S_90788 ///
TOD_S_90789 TOD_S_90790 TOD_S_90791 TOD_S_90792 TOD_S_90793 TOD_S_90794 TOD_S_90795 TOD_S_90796 TOD_S_90797 ///
TOD_S_90798 TOD_S_90799 TOD_S_90800 TOD_S_90801 TOD_S_90802 TOD_S_90803 TOD_S_90804 TOD_S_90805 TOD_S_90806 ///
TOD_S_90807 TOTAL_FLOW_ACCESSED TTO_A_3757 TTO_A_3758 TTO_A_3759 TTO_A_3760 TTO_A_3761 TTO_A_3762 TTO_A_3763 ///
TTO_A_3764 TTO_A_3765 TTO_A_3766 TTO_A_3767 TTO_A_3768 TTO_S_90693 TTO_S_90694 TTO_S_90707 TTO_S_90708 ///
TTO_S_90722 TTO_S_90723 TTO_S_90735 TTO_S_90736 TTO_S_90778 TTO_S_90779 TTO_S_90780 TTO_S_90781 TTO_S_90782 ///
TTO_S_90783 TTO_S_90784 TTO_S_90785 TTO_S_90786 TTO_S_90787 TTO_S_90788 TTO_S_90789 TTO_S_90790 TTO_S_90791 ///
TTO_S_90792 TTO_S_90793 TTO_S_90794 TTO_S_90795 TTO_S_90796 TTO_S_90797 TTO_S_90798 TTO_S_90799 TTO_S_90800 ///
TTO_S_90801 TTO_S_90802 TTO_S_90803 TTO_S_90804 TTO_S_90805 TTO_S_90806 TTO_S_90807 WORDS_A_3757 WORDS_A_3758 ///
WORDS_A_3759 WORDS_A_3760 WORDS_A_3761 WORDS_A_3762 WORDS_A_3763 WORDS_A_3764 WORDS_A_3765 WORDS_A_3766 ///
WORDS_A_3767 WORDS_A_3768 

* Adding Prefixes and Suffixes
foreach x of var * {
rename `x' W4`x'
}
 
foreach x of var * {
rename `x' `x'S2
}

* Renaming SUBJECT_ID (no pre nor su fixes, we need that to merge on it)
rename W4SUBJECT_IDS2 SUBJECT_ID 

* Eliminating ALL underscores
foreach v of var *_* { 
	local V : subinstr local v "_" "", all
	capture rename `v' `V' 
	if _rc di as txt "problem with `v'"
} 

*saving
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W4/WorkingData/DurationData/W4S2_Working.dta", replace

**************************************************************************************************
*											W4S3
**************************************************************************************************

*Open W4S3 and save a Working Copy (We wanna keep a copy of the original data)
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W4/WorkingData/DurationData/W4S3.dta", replace
destring, replace
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W4/WorkingData/DurationData/W4S3_Working.dta", replace

* From Excel to STATA everything enters as lower case. Lets reverse it to its original: Upper Case
rename *, upper

* Now lets keep what we need
keep ///
DATE FOD_A_3755 FOD_A_3756 FOD_S_90611 FOD_S_90612 FOD_S_90613 FOD_S_90614 FOD_S_90615 FOD_S_90617 FOD_S_90619 ///
FOD_S_90620 FOD_S_90621 FOD_S_90622 FOD_S_90623 FOD_S_90624 FOD_S_90625 FOD_S_90626 FOD_S_90627 FOD_S_90630 ///
FOD_S_90631 FOD_S_90632 FOD_S_90634 FOD_S_90635 FOD_S_90636 FOD_S_90637 FOD_S_90638 FOD_S_90639 FOD_S_90640 ///
FOD_S_90641 FOD_S_90642 FOD_S_90643 FOD_S_90644 FOD_S_90645 FOD_S_90646 FOD_S_90647 FOD_S_90648 FOD_S_90649 ///
FOD_S_90650 FOD_S_90651 FOD_S_90652 FOD_S_90653 FOD_S_90654 FOD_S_90655 FOD_S_90656 FOD_S_90657 FOD_S_90658 ///
FOD_S_90659 FOD_S_90660 FOD_S_90661 FOD_S_90662 FOD_S_90663 FOD_S_90664 FOD_S_90665 FOD_S_90666 FOD_S_90667 ///
FOD_S_90668 FOD_S_90669 FOD_S_90671 FOD_S_90672 FOD_S_90674 FOD_S_90675 FOD_S_90678 FOD_S_90679 FOD_S_90680 ///
FOD_S_90681 FOD_S_90683 FOD_S_90684 FOD_S_90685 FOD_S_90686 FOD_S_90687 FOD_S_90688 FOD_S_90689 FOD_S_90690 ///
FOD_S_90691 FOD_S_90692 FOD_S_90693 FOD_S_90694 FOD_S_90695 FOD_S_90696 FOD_S_90697 FOD_S_90698 FOD_S_90699 ///
FOD_S_90700 FOD_S_90701 FOD_S_90702 FOD_S_90703 FOD_S_90704 FOD_S_90705 FOD_S_90706 FOD_S_90707 FOD_S_90708 ///
FOD_S_90709 FOD_S_90710 FOD_S_90711 FOD_S_90712 FOD_S_90713 FOD_S_90714 FOD_S_90715 FOD_S_90716 FOD_S_90717 ///
FOD_S_90718 FOD_S_90719 FOD_S_90720 FOD_S_90721 FOD_S_90722 FOD_S_90723 FOD_S_90724 FOD_S_90725 FOD_S_90726 ///
FOD_S_90727 FOD_S_90728 FOD_S_90729 FOD_S_90730 FOD_S_90731 FOD_S_90732 FOD_S_90733 FOD_S_90734 FOD_S_90735 ///
FOD_S_90736 FOD_S_90737 FOD_S_90738 FOD_S_90739 FOD_S_90740 FOD_S_90741 FOD_S_90742 FOD_S_90743 FOD_S_90744 ///
FOD_S_90745 FOD_S_90746 FOD_S_90747 FOD_S_90750 FOD_S_90751 FOD_S_90752 FOD_S_90753 FOD_S_90754 FOD_S_90757 ///
FOD_S_90758 FOD_S_90759 FOD_S_90760 FOD_S_90761 FOD_S_90762 FOD_S_90763 FOD_S_90764 FOD_S_90766 FOD_S_90767 ///
FOD_S_90768 FOD_S_90769 FOD_S_90770 FOD_S_90771 FOD_S_90772 FOD_S_90773 FOD_S_90774 FOD_S_90778 FOD_S_90779 ///
FOD_S_90780 FOD_S_90781 FOD_S_90782 FOD_S_90783 FOD_S_90784 FOD_S_90785 FOD_S_90786 FOD_S_90787 FOD_S_90788 ///
FOD_S_90789 FOD_S_90790 FOD_S_90791 FOD_S_90792 FOD_S_90793 FOD_S_90794 FOD_S_90795 FOD_S_90796 FOD_S_90797 ///
FOD_S_90798 FOD_S_90799 FOD_S_90800 FOD_S_90801 FOD_S_90802 FOD_S_90803 FOD_S_90804 FOD_S_90805 FOD_S_90806 ///
FOD_S_90807 GRP_20483 GRP_20484 GRP_20485 GRP_20486 GRP_20487 GRP_20488 GRP_20489 GRP_20490 GRP_20491 ///
GRP_20492 GRP_20493 GRP_20494 GRP_20495 GRP_20496 GRP_20497 GRP_20498 GRP_20499 GRP_20500 GRP_20501 ///
GRP_20502 GRP_20503 GRP_20504 GRP_20507 GRP_20508 GRP_20509 GRP_20510 GRP_20511 GRP_20512 GRP_20513 ///
GRP_20514 GRP_20515 GRP_20516 GRP_20517 GRP_20518 GRP_20519 GRP_20520 GRP_20522 GRP_20523 GRP_20524 ///
GRP_20527 GRP_20528 GRP_20529 GRP_20530 GRP_20531 GRP_20532 GRP_20534 GRP_20535 GRP_20536 GRP_20537 ///
GRP_20538 GRP_20539 GRP_20540 GRP_20541 GRP_20542 GRP_20543 GRP_20544 GRP_20545 GRP_20548 GRP_20549 ///
GRP_20550 SUBJECT_ID TIME TIME_BEGIN_FLOWPHASE TIME_BEGIN_SUBSTAGE TIME_END_FLOWPHASE TOD_A_3755 TOD_A_3756 ///
TOD_S_90611 TOD_S_90612 TOD_S_90613 TOD_S_90614 TOD_S_90615 TOD_S_90617 TOD_S_90619 TOD_S_90620 TOD_S_90621 ///
TOD_S_90622 TOD_S_90623 TOD_S_90624 TOD_S_90625 TOD_S_90626 TOD_S_90627 TOD_S_90630 TOD_S_90631 TOD_S_90632 ///
TOD_S_90634 TOD_S_90635 TOD_S_90636 TOD_S_90637 TOD_S_90638 TOD_S_90639 TOD_S_90640 TOD_S_90641 TOD_S_90642 ///
TOD_S_90643 TOD_S_90644 TOD_S_90645 TOD_S_90646 TOD_S_90647 TOD_S_90648 TOD_S_90649 TOD_S_90650 TOD_S_90651 ///
TOD_S_90652 TOD_S_90653 TOD_S_90654 TOD_S_90655 TOD_S_90656 TOD_S_90657 TOD_S_90658 TOD_S_90659 TOD_S_90660 ///
TOD_S_90661 TOD_S_90662 TOD_S_90663 TOD_S_90664 TOD_S_90665 TOD_S_90666 TOD_S_90667 TOD_S_90668 TOD_S_90669 ///
TOD_S_90671 TOD_S_90672 TOD_S_90674 TOD_S_90675 TOD_S_90678 TOD_S_90679 TOD_S_90680 TOD_S_90681 TOD_S_90683 ///
TOD_S_90684 TOD_S_90685 TOD_S_90686 TOD_S_90687 TOD_S_90688 TOD_S_90689 TOD_S_90690 TOD_S_90691 TOD_S_90692 ///
TOD_S_90693 TOD_S_90694 TOD_S_90695 TOD_S_90696 TOD_S_90697 TOD_S_90698 TOD_S_90699 TOD_S_90700 TOD_S_90701 ///
TOD_S_90702 TOD_S_90703 TOD_S_90704 TOD_S_90705 TOD_S_90706 TOD_S_90707 TOD_S_90708 TOD_S_90709 TOD_S_90710 ///
TOD_S_90711 TOD_S_90712 TOD_S_90713 TOD_S_90714 TOD_S_90715 TOD_S_90716 TOD_S_90717 TOD_S_90718 TOD_S_90719 ///
TOD_S_90720 TOD_S_90721 TOD_S_90722 TOD_S_90723 TOD_S_90724 TOD_S_90725 TOD_S_90726 TOD_S_90727 TOD_S_90728 ///
TOD_S_90729 TOD_S_90730 TOD_S_90731 TOD_S_90732 TOD_S_90733 TOD_S_90734 TOD_S_90735 TOD_S_90736 TOD_S_90737 ///
TOD_S_90738 TOD_S_90739 TOD_S_90740 TOD_S_90741 TOD_S_90742 TOD_S_90743 TOD_S_90744 TOD_S_90745 TOD_S_90746 ///
TOD_S_90747 TOD_S_90750 TOD_S_90751 TOD_S_90752 TOD_S_90753 TOD_S_90754 TOD_S_90757 TOD_S_90758 TOD_S_90759 ///
TOD_S_90760 TOD_S_90761 TOD_S_90762 TOD_S_90763 TOD_S_90764 TOD_S_90766 TOD_S_90767 TOD_S_90768 TOD_S_90769 ///
TOD_S_90770 TOD_S_90771 TOD_S_90772 TOD_S_90773 TOD_S_90774 TOD_S_90778 TOD_S_90779 TOD_S_90780 TOD_S_90781 ///
TOD_S_90782 TOD_S_90783 TOD_S_90784 TOD_S_90785 TOD_S_90786 TOD_S_90787 TOD_S_90788 TOD_S_90789 TOD_S_90790 ///
TOD_S_90791 TOD_S_90792 TOD_S_90793 TOD_S_90794 TOD_S_90795 TOD_S_90796 TOD_S_90797 TOD_S_90798 TOD_S_90799 ///
TOD_S_90800 TOD_S_90801 TOD_S_90802 TOD_S_90803 TOD_S_90804 TOD_S_90805 TOD_S_90806 TOD_S_90807 TOTAL_FLOW_ACCESSED ///
TTO_A_3755 TTO_A_3756 TTO_S_90611 TTO_S_90612 TTO_S_90613 TTO_S_90614 TTO_S_90615 TTO_S_90617 TTO_S_90619 ///
TTO_S_90620 TTO_S_90621 TTO_S_90622 TTO_S_90623 TTO_S_90624 TTO_S_90625 TTO_S_90626 TTO_S_90627 TTO_S_90630 ///
TTO_S_90631 TTO_S_90632 TTO_S_90634 TTO_S_90635 TTO_S_90636 TTO_S_90637 TTO_S_90638 TTO_S_90639 TTO_S_90640 ///
TTO_S_90641 TTO_S_90642 TTO_S_90643 TTO_S_90644 TTO_S_90645 TTO_S_90646 TTO_S_90647 TTO_S_90648 TTO_S_90649 ///
TTO_S_90650 TTO_S_90651 TTO_S_90652 TTO_S_90653 TTO_S_90654 TTO_S_90655 TTO_S_90656 TTO_S_90657 TTO_S_90658 ///
TTO_S_90659 TTO_S_90660 TTO_S_90661 TTO_S_90662 TTO_S_90663 TTO_S_90664 TTO_S_90665 TTO_S_90666 TTO_S_90667 ///
TTO_S_90668 TTO_S_90669 TTO_S_90671 TTO_S_90672 TTO_S_90674 TTO_S_90675 TTO_S_90678 TTO_S_90679 TTO_S_90680 ///
TTO_S_90681 TTO_S_90683 TTO_S_90684 TTO_S_90685 TTO_S_90686 TTO_S_90687 TTO_S_90688 TTO_S_90689 TTO_S_90690 ///
TTO_S_90691 TTO_S_90692 TTO_S_90693 TTO_S_90694 TTO_S_90695 TTO_S_90696 TTO_S_90697 TTO_S_90698 TTO_S_90699 ///
TTO_S_90700 TTO_S_90701 TTO_S_90702 TTO_S_90703 TTO_S_90704 TTO_S_90705 TTO_S_90706 TTO_S_90707 TTO_S_90708 ///
TTO_S_90709 TTO_S_90710 TTO_S_90711 TTO_S_90712 TTO_S_90713 TTO_S_90714 TTO_S_90715 TTO_S_90716 TTO_S_90717 ///
TTO_S_90718 TTO_S_90719 TTO_S_90720 TTO_S_90721 TTO_S_90722 TTO_S_90723 TTO_S_90724 TTO_S_90725 TTO_S_90726 ///
TTO_S_90727 TTO_S_90728 TTO_S_90729 TTO_S_90730 TTO_S_90731 TTO_S_90732 TTO_S_90733 TTO_S_90734 TTO_S_90735 ///
TTO_S_90736 TTO_S_90737 TTO_S_90738 TTO_S_90739 TTO_S_90740 TTO_S_90741 TTO_S_90742 TTO_S_90743 TTO_S_90744 ///
TTO_S_90745 TTO_S_90746 TTO_S_90747 TTO_S_90750 TTO_S_90751 TTO_S_90752 TTO_S_90753 TTO_S_90754 TTO_S_90757 ///
TTO_S_90758 TTO_S_90759 TTO_S_90760 TTO_S_90761 TTO_S_90762 TTO_S_90763 TTO_S_90764 TTO_S_90766 TTO_S_90767 ///
TTO_S_90768 TTO_S_90769 TTO_S_90770 TTO_S_90771 TTO_S_90772 TTO_S_90773 TTO_S_90774 TTO_S_90778 TTO_S_90779 ///
TTO_S_90780 TTO_S_90781 TTO_S_90782 TTO_S_90783 TTO_S_90784 TTO_S_90785 TTO_S_90786 TTO_S_90787 TTO_S_90788 ///
TTO_S_90789 TTO_S_90790 TTO_S_90791 TTO_S_90792 TTO_S_90793 TTO_S_90794 TTO_S_90795 TTO_S_90796 TTO_S_90797 ///
TTO_S_90798 TTO_S_90799 TTO_S_90800 TTO_S_90801 TTO_S_90802 TTO_S_90803 TTO_S_90804 TTO_S_90805 TTO_S_90806 ///
TTO_S_90807 WORDS_A_3755 WORDS_A_3756


* Adding Prefixes and Suffixes
foreach x of var * {
rename `x' W4`x'
}
 
foreach x of var * {
rename `x' `x'S3
}

* Renaming SUBJECT_ID (no pre nor su fixes, we need that to merge on it)
rename W4SUBJECT_IDS3 SUBJECT_ID 

* Eliminating ALL underscores
foreach v of var *_* { 
	local V : subinstr local v "_" "", all
	capture rename `v' `V' 
	if _rc di as txt "problem with `v'"
} 

*saving
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W4/WorkingData/DurationData/W4S3_Working.dta", replace

**************************************************************************************************
*											W4S4
**************************************************************************************************


*Open W4S4 and save a Working Copy (We wanna keep a copy of the original data)
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W4/WorkingData/DurationData/W4S4.dta", replace
destring, replace
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W4/WorkingData/DurationData/W4S4_Working.dta", replace

* From Excel to STATA everything enters as lower case. Lets reverse it to its original: Upper Case
rename *, upper

* Now lets keep what we need
keep ///
DATE FOD_A_3753 GRP_20505 GRP_20506 Q_5972_DUR_32348 Q_5972_DUR_32349 Q_5972_DUR_32350 Q_5972_SEQ_32348 ///
Q_5972_SEQ_32349 Q_5972_SEQ_32350 Q_5972_VAL_32348 Q_5972_VAL_32349 Q_5972_VAL_32350 SUBJECT_ID ///
TIME TIME_BEGIN_FLOWPHASE TIME_BEGIN_SUBSTAGE TIME_END_FLOWPHASE TOD_A_3753 TOTAL_FLOW_ACCESSED ///
TTO_A_3753 WORDS_A_3753 

* Adding Prefixes and Suffixes
foreach x of var * {
rename `x' W4`x'
}
 
foreach x of var * {
rename `x' `x'S4
}

* Renaming SUBJECT_ID (no pre nor su fixes, we need that to merge on it)
rename W4SUBJECT_IDS4 SUBJECT_ID 

* Eliminating ALL underscores
foreach v of var *_* { 
	local V : subinstr local v "_" "", all
	capture rename `v' `V' 
	if _rc di as txt "problem with `v'"
} 

*saving
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W4/WorkingData/DurationData/W4S4_Working.dta", replace

**************************************************************************************************
*							M	E	R	G	I	N	G	 		W	4
**************************************************************************************************

clear all

* Merge W4S2 with W4S1
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W4/WorkingData/DurationData/W4S2_Working.dta", replace
merge 1:m SUBJECTID using "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W4/WorkingData/DurationData/W4S1_Working.dta"
drop _merge
* Save W4S12
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W4/WorkingData/DurationData/W4S12_Working.dta", replace

**************************************************************************************************
clear all

* Merge W4S3 with W4S4
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W4/WorkingData/DurationData/W4S4_Working.dta", replace
merge 1:m SUBJECTID using "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W4/WorkingData/DurationData/W4S3_Working.dta"
drop _merge
* Save W4S34
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W4/WorkingData/DurationData/W4S34_Working.dta", replace

**************************************************************************************************
clear all

* Merge W4S12 with W4S34
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W4/WorkingData/DurationData/W4S12_Working.dta", replace
merge 1:m SUBJECTID using "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W4/WorkingData/DurationData/W4S34_Working.dta"
drop _merge
* Save W4S1234
order *, alpha


*Dropping things we won't need...
drop W4DATES2 W4DATES3 W4DATES4 W4TOTALFLOWACCESSEDS1 W4TOTALFLOWACCESSEDS4 W4TIMES2 W4TIMES3 W4TIMES4


* labeling

label variable W4FODA3753S4 "That's it for this Week"
label variable W4FODA3754S1 "Whoops -- Not a Valid Subject ID"
label variable W4FODA3755S3 "Substage2and3BetwNoIntD&R"
label variable W4FODA3756S3 "Substage2and3BetwIntD&R"
label variable W4FODA3757S2 "WelcomeWk4DIntImp"
label variable W4FODA3758S2 "WelcomeWk4DIntNot"
label variable W4FODA3759S2 "WelcomeWk4DNoIntImp"
label variable W4FODA3760S2 "WelcomeWk4DNoIntNot"
label variable W4FODA3761S2 "WelcomeWk4RIntImp"
label variable W4FODA3762S2 "WelcomeWk4RIntNot"
label variable W4FODA3763S2 "WelcomeWk4RNoIntImp"
label variable W4FODA3764S2 "WelcomeWk4RNoIntNot"
label variable W4FODA3765S2 "Week4M4DemRaceSalientForcedViewing"
label variable W4FODA3766S2 "Week4M4DemRaceNotSalientForcedView"
label variable W4FODA3767S2 "Week4M4RepRaceSalientForcedViewing"
label variable W4FODA3768S2 "Week4M4RepRaceNotSalientForcedView"
label variable W4GRP20483S3 "RAltMediaHotAirBlog"
label variable W4GRP20484S2 "D02IntMainImp"
label variable W4GRP20485S2 "D04NoIntMainImp"
label variable W4GRP20486S2 "D06IntMainNot"
label variable W4GRP20487S2 "D08NoIntMainNot"
label variable W4GRP20488S2 "D01IntDiverseImp"
label variable W4GRP20489S2 "D03NoIntDiverseImp"
label variable W4GRP20490S2 "D05IntDiverseNot"
label variable W4GRP20491S2 "D07NoIntDiverseNot"
label variable W4GRP20492S2 "R09IntDiverseImp"
label variable W4GRP20493S2 "R10IntMainImp"
label variable W4GRP20494S2 "R11NoIntDiverseImp"
label variable W4GRP20495S2 "R12NoIntMainImp"
label variable W4GRP20496S2 "R13IntDiverseNot"
label variable W4GRP20497S2 "R14IntMainNot"
label variable W4GRP20498S2 "R15NoIntDiverseNot"
label variable W4GRP20499S2 "R16NoIntMainNot"
label variable W4GRP20500S3 "DMediaABCNews"
label variable W4GRP20501S3 "DMediaWireServices"
label variable W4GRP20502S3 "DMediaCBSNews"
label variable W4GRP20503S3 "DMediaCNNNews"
label variable W4GRP20504S3 "RAltMediaHuffPost"
label variable W4GRP20505S4 "DEndGroupQuestions"
label variable W4GRP20506S4 "REndGroupQuestions"
label variable W4GRP20507S3 "DMediaNBCNews"
label variable W4GRP20508S3 "DMediaNYT"
label variable W4GRP20509S3 "DMediaWSJ"
label variable W4GRP20510S3 "DAltMediaFoxNews"
label variable W4GRP20511S3 "DAltMediaHotAirBlog"
label variable W4GRP20512S3 "DAltMediaHuffPost"
label variable W4GRP20513S3 "DAltMediaMSNBCNews"
label variable W4GRP20514S3 "DCandSmithAllMediaWebpage"
label variable W4GRP20515S3 "DCandWilsonAllMediaWebpage"
label variable W4GRP20516S3 "RCandJonesAllMediaWebpage"
label variable W4GRP20517S3 "RCandWilliamsAllMediaWebpage"
label variable W4GRP20518S3 "DEndorsementsAllMedia"
label variable W4GRP20519S3 "REndorsementsAllMedia"
label variable W4GRP20520S3 "DAltMediaLatinoSources"
label variable W4GRP20522S3 "DOnlyMainMediaABC"
label variable W4GRP20523S3 "DOnlyMainMediaWireServices"
label variable W4GRP20524S3 "DOnlyMainMediaCBS"
label variable W4GRP20527S3 "DOnlyMainMediaNYT"
label variable W4GRP20528S3 "DOnlyMainMediaWSJ"
label variable W4GRP20529S3 "DCandWilsonOnlyMainWebpage"
label variable W4GRP20530S3 "DCandSmithOnlyMainWebpage"
label variable W4GRP20531S3 "DEndorsementsOnlyMain"
label variable W4GRP20532S3 "RCandJonesOnlyMainWebpage"
label variable W4GRP20534S3 "REndorsementsOnlyMain"
label variable W4GRP20535S3 "RAltMediaAfricanAmericanSources"
label variable W4GRP20536S3 "RAltMediaFoxNews"
label variable W4GRP20537S3 "RAltMediaLatinoSources"
label variable W4GRP20538S3 "RAltMediaMSNBCNews"
label variable W4GRP20539S3 "RMediaABCNews"
label variable W4GRP20540S3 "RMediaCBSNews"
label variable W4GRP20541S3 "RMediaCNNNews"
label variable W4GRP20542S3 "RMediaNYT"
label variable W4GRP20543S3 "RMediaWireServices"
label variable W4GRP20544S3 "RMediaWSJ"
label variable W4GRP20545S3 "RMediaNBCNews"
label variable W4GRP20548S3 "ROnlyMainMediaNYT"
label variable W4GRP20549S3 "ROnlyMainMediaWireServices"
label variable W4GRP20550S3 "ROnlyMainMediaWSJ"
label variable W4GRP20553S1 "BeginGroup"
label variable W4GRP20554S1 "BeginGroupRepeated"
label variable W4Q5967DUR32186S1 "Subject Sign-in"
label variable W4Q5972DUR32348S4 "Wk4GatheringEase"
label variable W4Q5972DUR32349S4 "WkrAmountofInfo"
label variable W4Q5972DUR32350S4 "Wk4TypeofInfo"
label variable W4FODS90611S3 "Wk2DEndorsementAFLCIO"
label variable W4FODS90612S3 "Wk2DEndorsementChamberofCommerce"
label variable W4FODS90613S3 "Wk2REndorsemChamberofCommerceEndorsement"
label variable W4FODS90614S3 "Wk2REndorsementAFLCIO"
label variable W4FODS90615S3 "wk2d1CBSHUFEcon2"
label variable W4FODS90617S3 "wk2d1REUROOTEcon18"
label variable W4FODS90619S3 "wk2d2ABCABCEcon37"
label variable W4FODS90620S3 "wk2d2APAPEcon42"
label variable W4FODS90621S3 "wk2d2NYTNYTEcon54"
label variable W4FODS90622S3 "wk2d2NBCNBCEcon62"
label variable W4FODS90623S3 "wk2r2CBSCBSEcon66"
label variable W4FODS90624S3 "wk2r2APAPEcon78"
label variable W4FODS90625S3 "wk2r2REUREUEcon82"
label variable W4FODS90626S3 "wk2r2WSJWSJEcon94"
label variable W4FODS90627S3 "wk2r1WSJHUFEcon110"
label variable W4FODS90630S3 "wk2r1APFOXEcon126"
label variable W4FODS90631S3 "wk2d3CBSHUFEcon2"
label variable W4FODS90632S3 "wk2d3NBCFOXEcon10"
label variable W4FODS90634S3 "wk2d3CNNUNIEcon22"
label variable W4FODS90635S3 "wk2r3WSJHUFEcon110"
label variable W4FODS90636S3 "wk2r3ABCROOTEcon118"
label variable W4FODS90637S3 "wk2r3NBCUNIEcon122"
label variable W4FODS90638S3 "wk2r3APFOXEcon126"
label variable W4FODS90639S3 "Wk1RWilliamsSlogan"
label variable W4FODS90640S3 "Wk1RWilliamsPersonality"
label variable W4FODS90641S3 "Wk1RWilliamsFamily"
label variable W4FODS90642S3 "Wk1RWilliamsExperience"
label variable W4FODS90643S3 "Wk1RWilliamsCandidatePicture"
label variable W4FODS90644S3 "Wk1RWilliamsBackground"
label variable W4FODS90645S3 "Wk1RJonesSlogan"
label variable W4FODS90646S3 "Wk1RJonesPersonality"
label variable W4FODS90647S3 "Wk1RJonesFamily"
label variable W4FODS90648S3 "Wk1RJonesExperience"
label variable W4FODS90649S3 "Wk1RJonesCandidatePicture"
label variable W4FODS90650S3 "Wk1RJonesBackground"
label variable W4FODS90651S3 "Wk1DWilsonSlogan"
label variable W4FODS90652S3 "Wk1DWilsonPersonality"
label variable W4FODS90653S3 "Wk1DWilsonFamily"
label variable W4FODS90654S3 "Wk1DWilsonExperience"
label variable W4FODS90655S3 "Wk1DWilsonCandidatePicture"
label variable W4FODS90656S3 "Wk1DWilsonBackground"
label variable W4FODS90657S3 "Wk1DSmithSlogan"
label variable W4FODS90658S3 "Wk1DSmithPersonality"
label variable W4FODS90659S3 "Wk1DSmithFamily"
label variable W4FODS90660S3 "Wk1DSmithExperience"
label variable W4FODS90661S3 "Wk1DSmithCandidatePicture"
label variable W4FODS90662S3 "Wk1DSmithBackground"
label variable W4FODS90663S3 "SmithEducation"
label variable W4FODS90664S3 "SmithExperience"
label variable W4FODS90665S3 "SmithFamily"
label variable W4FODS90666S3 "JonesExperience"
label variable W4FODS90667S3 "SmithReligion"
label variable W4FODS90668S3 "JonesEducation"
label variable W4FODS90669S3 "JonesFamily"
label variable W4FODS90671S3 "JonesReligion"
label variable W4FODS90672S3 "WilsonEducation"
label variable W4FODS90674S3 "WilsonExperience"
label variable W4FODS90675S3 "WilsonFamily"
label variable W4FODS90678S3 "WilliamsFamily"
label variable W4FODS90679S3 "WilliamsExperience"
label variable W4FODS90680S3 "WilliamsEducation"
label variable W4FODS90681S3 "WilsonReligion"
label variable W4FODS90683S3 "wk2DSmithJobs"
label variable W4FODS90684S3 "wk2DSmithEconPhil"
label variable W4FODS90685S3 "Wk2RJonesJobs"
label variable W4FODS90686S3 "wk2DWilsonJobs"
label variable W4FODS90687S3 "wk2DWilsonEconPhil"
label variable W4FODS90688S3 "wk2RJonesEconPhil"
label variable W4FODS90689S3 "Wk2RWilliamsJobs"
label variable W4FODS90690S3 "wk2RWilliamsEconPhil"
label variable W4FODS90691S3 "wk3DSmithEduc"
label variable W4FODS90692S3 "wk6DSmithHealth"
label variable W4FODS90693S2 "wk4DSmithChina"
label variable W4FODS90694S2 "wk4DSmithDefense"
label variable W4FODS90695S3 "wk5DSmithAbortion"
label variable W4FODS90696S3 "wk5DSmithGay"
label variable W4FODS90697S3 "wk6DSmithTaxes"
label variable W4FODS90698S3 "wk7DSmithAffirm"
label variable W4FODS90699S3 "wk7DSmithImmigration"
label variable W4FODS90700S3 "wk8DSmithAfghan"
label variable W4FODS90701S3 "wk8DSmithMil"
label variable W4FODS90702S3 "wk9DSmithDeathPen"
label variable W4FODS90703S3 "wk9DSmithStemCells"
label variable W4FODS90704S3 "wk3DSmithSocPhil"
label variable W4FODS90705S3 "wk3DWilsonEduc"
label variable W4FODS90706S3 "wk6DWilsonHealth"
label variable W4FODS90707S2 "wk4DWilsonChina"
label variable W4FODS90708S2 "wk4DWilsonDefense"
label variable W4FODS90709S3 "wk5DWilsonAbortion"
label variable W4FODS90710S3 "wk5DWilsonGay"
label variable W4FODS90711S3 "wk6DWilsonTaxes"
label variable W4FODS90712S3 "wk7DWilsonAffirm"
label variable W4FODS90713S3 "wk7DWilsonImmigration"
label variable W4FODS90714S3 "wk8DWilsonAfghan"
label variable W4FODS90715S3 "wk8DWilsonMil"
label variable W4FODS90716S3 "wk9DWilsonDeathPen"
label variable W4FODS90717S3 "wk9DWilsonStemCells"
label variable W4FODS90718S3 "wk7RJonesImmigration"
label variable W4FODS90719S3 "wk3DWilsonSocPhil"
label variable W4FODS90720S3 "wk3RWilliamsEduc"
label variable W4FODS90721S3 "wk3RWilliamsSocPhil"
label variable W4FODS90722S2 "wk4RWilliamsChina"
label variable W4FODS90723S2 "wk4RWilliamsDefense"
label variable W4FODS90724S3 "wk5RWilliamsAbortion"
label variable W4FODS90725S3 "wk5RWilliamsGay"
label variable W4FODS90726S3 "wk6RWilliamsTaxes"
label variable W4FODS90727S3 "wk7RWilliamsAffirm"
label variable W4FODS90728S3 "wk7RWilliamsImmigration"
label variable W4FODS90729S3 "wk8RWilliamsAfghan"
label variable W4FODS90730S3 "wk8RWilliamsMil"
label variable W4FODS90731S3 "wk9RWilliamsDeathPen"
label variable W4FODS90732S3 "wk9RWilliamsStemCells"
label variable W4FODS90733S3 "wk3RJonesEduc"
label variable W4FODS90734S3 "wk3RJonesSocPhil"
label variable W4FODS90735S2 "wk4RJonesChina"
label variable W4FODS90736S2 "wk4RJonesDefense"
label variable W4FODS90737S3 "wk5RJonesAbortion"
label variable W4FODS90738S3 "wk5RJonesGay"
label variable W4FODS90739S3 "wk6RJonesHealth"
label variable W4FODS90740S3 "wk8JRonesAfghan"
label variable W4FODS90741S3 "wk6RJonesTaxes"
label variable W4FODS90742S3 "wk7RJonesAffirm"
label variable W4FODS90743S3 "wk9RJonesStemCells"
label variable W4FODS90744S3 "wk8RJonesMil"
label variable W4FODS90745S3 "wk9RJonesDeathPen"
label variable W4FODS90746S3 "wk6RWilliamsHealth"
label variable W4FODS90747S3 "wk3d1APROOT16"
label variable W4FODS90750S3 "Wk3DEndorsementAFT"
label variable W4FODS90751S3 "Wk3DEndorsementFAIR"
label variable W4FODS90752S3 "wk3d1ABCHOT8"
label variable W4FODS90753S3 "Wk3REndorsementFAIR"
label variable W4FODS90754S3 "Wk3REndorsementAFT"
label variable W4FODS90757S3 "wk3d1NYTMSN28"
label variable W4FODS90758S3 "wk3d2CBSCBS36"
label variable W4FODS90759S3 "wk3d2REUREU48"
label variable W4FODS90760S3 "wk3d2WSJWSJ60"
label variable W4FODS90761S3 "wk3d2NBCNBC64"
label variable W4FODS90762S3 "wk3d3ABCHOT8"
label variable W4FODS90763S3 "wk3r2ABCABC72"
label variable W4FODS90764S3 "wk3d3NBCUNI12"
label variable W4FODS90766S3 "wk3d3NYTMSN28"
label variable W4FODS90767S3 "wk3r2APAP80"
label variable W4FODS90768S3 "wk3r3REUBET100"
label variable W4FODS90769S3 "wk3r3CNNLAT101"
label variable W4FODS90770S3 "wk3r2NYTNYT92"
label variable W4FODS90771S3 "wk3r2WSJWSJ96"
label variable W4FODS90772S3 "wk3r3CBSFOX116"
label variable W4FODS90773S3 "wk3r3NBCHUF124"
label variable W4FODS90774S3 "wk3r1REUBET100"
label variable W4FODS90778S2 "wk4d1CBSFOXFor3"
label variable W4FODS90779S2 "wk4d1ABCHUFFor7"
label variable W4FODS90780S2 "wk4d1CNNBETFor23"
label variable W4FODS90781S2 "wk4d1WSJLATFor31"
label variable W4FODS90782S2 "wk4d2APAPFor43"
label variable W4FODS90783S2 "wk4d2REUREUFor47"
label variable W4FODS90784S2 "wk4d2NYTNYTFor55"
label variable W4FODS90785S2 "wk4d2NBCNBCFor63"
label variable W4FODS90786S2 "wk4d3CBSFOXFor3"
label variable W4FODS90787S2 "wk4d3ABCHUFFor7"
label variable W4FODS90788S2 "wk4d3CNNBETFor23"
label variable W4FODS90789S2 "wk4d3WSJLATFor31"
label variable W4FODS90790S2 "wk4r2ABCABCFor71"
label variable W4FODS90791S2 "wk4r2NBCNBCFor75"
label variable W4FODS90792S2 "wk4r2REUREUFor83"
label variable W4FODS90793S2 "wk4r2NYTNYTFor91"
label variable W4FODS90794S2 "wk4r1CNNROOTFor103"
label variable W4FODS90795S2 "wk4r1WSJHOTFor111"
label variable W4FODS90796S2 "wk4r1CBSMSNFor115"
label variable W4FODS90797S2 "wk4r1APLATFor127"
label variable W4FODS90798S2 "wk4r3CNNROOTFor103"
label variable W4FODS90799S2 "wk4r3WSJHOTFor111"
label variable W4FODS90800S2 "wk4r3CBSMSNFor115"
label variable W4FODS90801S2 "wk4r3APLATFor127"
label variable W4FODS90802S2 "Wk4DEndorsementNCLR"
label variable W4FODS90803S2 "Wk4DEndorsementHeritage"
label variable W4FODS90804S2 "Wk4DEndorsementVFW"
label variable W4FODS90805S2 "Wk4REndorsementNCLR"
label variable W4FODS90806S2 "Wk4REndorsementHeritage"
label variable W4FODS90807S2 "WK4REndorsementVFW"
label variable W4TODA3753S4 "That's it for this Week"
label variable W4TTOA3753S4 "That's it for this Week"
label variable W4WORDSA3753S4 "That's it for this Week"
label variable W4TODA3754S1 "Whoops -- Not a Valid Subject ID"
label variable W4TTOA3754S1 "Whoops -- Not a Valid Subject ID"
label variable W4WORDSA3754S1 "Whoops -- Not a Valid Subject ID"
label variable W4TODA3755S3 "Substage2and3BetwNoIntD&R"
label variable W4TTOA3755S3 "Substage2and3BetwNoIntD&R"
label variable W4WORDSA3755S3 "Substage2and3BetwNoIntD&R"
label variable W4TODA3756S3 "Substage2and3BetwIntD&R"
label variable W4TTOA3756S3 "Substage2and3BetwIntD&R"
label variable W4WORDSA3756S3 "Substage2and3BetwIntD&R"
label variable W4TODA3757S2 "WelcomeWk4DIntImp"
label variable W4TTOA3757S2 "WelcomeWk4DIntImp"
label variable W4WORDSA3757S2 "WelcomeWk4DIntImp"
label variable W4TODA3758S2 "WelcomeWk4DIntNot"
label variable W4TTOA3758S2 "WelcomeWk4DIntNot"
label variable W4WORDSA3758S2 "WelcomeWk4DIntNot"
label variable W4TODA3759S2 "WelcomeWk4DNoIntImp"
label variable W4TTOA3759S2 "WelcomeWk4DNoIntImp"
label variable W4WORDSA3759S2 "WelcomeWk4DNoIntImp"
label variable W4TODA3760S2 "WelcomeWk4DNoIntNot"
label variable W4TTOA3760S2 "WelcomeWk4DNoIntNot"
label variable W4WORDSA3760S2 "WelcomeWk4DNoIntNot"
label variable W4TODA3761S2 "WelcomeWk4RIntImp"
label variable W4TTOA3761S2 "WelcomeWk4RIntImp"
label variable W4WORDSA3761S2 "WelcomeWk4RIntImp"
label variable W4TODA3762S2 "WelcomeWk4RIntNot"
label variable W4TTOA3762S2 "WelcomeWk4RIntNot"
label variable W4WORDSA3762S2 "WelcomeWk4RIntNot"
label variable W4TODA3763S2 "WelcomeWk4RNoIntImp"
label variable W4TTOA3763S2 "WelcomeWk4RNoIntImp"
label variable W4WORDSA3763S2 "WelcomeWk4RNoIntImp"
label variable W4TODA3764S2 "WelcomeWk4RNoIntNot"
label variable W4TTOA3764S2 "WelcomeWk4RNoIntNot"
label variable W4WORDSA3764S2 "WelcomeWk4RNoIntNot"
label variable W4TODA3765S2 "Week4M4DemRaceSalientForcedViewing"
label variable W4TTOA3765S2 "Week4M4DemRaceSalientForcedViewing"
label variable W4WORDSA3765S2 "Week4M4DemRaceSalientForcedViewing"
label variable W4TODA3766S2 "Week4M4DemRaceNotSalientForcedView"
label variable W4TTOA3766S2 "Week4M4DemRaceNotSalientForcedView"
label variable W4WORDSA3766S2 "Week4M4DemRaceNotSalientForcedView"
label variable W4TODA3767S2 "Week4M4RepRaceSalientForcedViewing"
label variable W4TTOA3767S2 "Week4M4RepRaceSalientForcedViewing"
label variable W4WORDSA3767S2 "Week4M4RepRaceSalientForcedViewing"
label variable W4TODA3768S2 "Week4M4RepRaceNotSalientForcedView"
label variable W4TTOA3768S2 "Week4M4RepRaceNotSalientForcedView"
label variable W4WORDSA3768S2 "Week4M4RepRaceNotSalientForcedView"
label variable W4GRP20484S3 "D02IntMainImp"
label variable W4GRP20485S3 "D04NoIntMainImp"
label variable W4GRP20486S3 "D06IntMainNot"
label variable W4GRP20487S3 "D08NoIntMainNot"
label variable W4GRP20488S3 "D01IntDiverseImp"
label variable W4GRP20489S3 "D03NoIntDiverseImp"
label variable W4GRP20490S3 "D05IntDiverseNot"
label variable W4GRP20491S3 "D07NoIntDiverseNot"
label variable W4GRP20492S3 "R09IntDiverseImp"
label variable W4GRP20493S3 "R10IntMainImp"
label variable W4GRP20494S3 "R11NoIntDiverseImp"
label variable W4GRP20495S3 "R12NoIntMainImp"
label variable W4GRP20496S3 "R13IntDiverseNot"
label variable W4GRP20497S3 "R14IntMainNot"
label variable W4GRP20498S3 "R15NoIntDiverseNot"
label variable W4GRP20499S3 "R16NoIntMainNot"
label variable W4Q5967SEQ32186S1 "Subject Sign-in"
label variable W4Q5972SEQ32348S4 "Wk4GatheringEase"
label variable W4Q5972VAL32348S4 "Wk4GatheringEase"
label variable W4Q5972SEQ32349S4 "WkrAmountofInfo"
label variable W4Q5972VAL32349S4 "WkrAmountofInfo"
label variable W4Q5972SEQ32350S4 "Wk4TypeofInfo"
label variable W4Q5972VAL32350S4 "Wk4TypeofInfo"
label variable W4TODS90611S3 "Wk2DEndorsementAFLCIO"
label variable W4TTOS90611S3 "Wk2DEndorsementAFLCIO"
label variable W4TODS90612S3 "Wk2DEndorsementChamberofCommerce"
label variable W4TTOS90612S3 "Wk2DEndorsementChamberofCommerce"
label variable W4TODS90613S3 "Wk2REndorsemChamberofCommerceEndorsement"
label variable W4TTOS90613S3 "Wk2REndorsemChamberofCommerceEndorsement"
label variable W4TODS90614S3 "Wk2REndorsementAFLCIO"
label variable W4TTOS90614S3 "Wk2REndorsementAFLCIO"
label variable W4TODS90615S3 "wk2d1CBSHUFEcon2"
label variable W4TTOS90615S3 "wk2d1CBSHUFEcon2"
label variable W4TODS90617S3 "wk2d1REUROOTEcon18"
label variable W4TTOS90617S3 "wk2d1REUROOTEcon18"
label variable W4TODS90619S3 "wk2d2ABCABCEcon37"
label variable W4TTOS90619S3 "wk2d2ABCABCEcon37"
label variable W4TODS90620S3 "wk2d2APAPEcon42"
label variable W4TTOS90620S3 "wk2d2APAPEcon42"
label variable W4TODS90621S3 "wk2d2NYTNYTEcon54"
label variable W4TTOS90621S3 "wk2d2NYTNYTEcon54"
label variable W4TODS90622S3 "wk2d2NBCNBCEcon62"
label variable W4TTOS90622S3 "wk2d2NBCNBCEcon62"
label variable W4TODS90623S3 "wk2r2CBSCBSEcon66"
label variable W4TTOS90623S3 "wk2r2CBSCBSEcon66"
label variable W4TODS90624S3 "wk2r2APAPEcon78"
label variable W4TTOS90624S3 "wk2r2APAPEcon78"
label variable W4TODS90625S3 "wk2r2REUREUEcon82"
label variable W4TTOS90625S3 "wk2r2REUREUEcon82"
label variable W4TODS90626S3 "wk2r2WSJWSJEcon94"
label variable W4TTOS90626S3 "wk2r2WSJWSJEcon94"
label variable W4TODS90627S3 "wk2r1WSJHUFEcon110"
label variable W4TTOS90627S3 "wk2r1WSJHUFEcon110"
label variable W4TODS90630S3 "wk2r1APFOXEcon126"
label variable W4TTOS90630S3 "wk2r1APFOXEcon126"
label variable W4TODS90631S3 "wk2d3CBSHUFEcon2"
label variable W4TTOS90631S3 "wk2d3CBSHUFEcon2"
label variable W4TODS90632S3 "wk2d3NBCFOXEcon10"
label variable W4TTOS90632S3 "wk2d3NBCFOXEcon10"
label variable W4TODS90634S3 "wk2d3CNNUNIEcon22"
label variable W4TTOS90634S3 "wk2d3CNNUNIEcon22"
label variable W4TODS90635S3 "wk2r3WSJHUFEcon110"
label variable W4TTOS90635S3 "wk2r3WSJHUFEcon110"
label variable W4TODS90636S3 "wk2r3ABCROOTEcon118"
label variable W4TTOS90636S3 "wk2r3ABCROOTEcon118"
label variable W4TODS90637S3 "wk2r3NBCUNIEcon122"
label variable W4TTOS90637S3 "wk2r3NBCUNIEcon122"
label variable W4TODS90638S3 "wk2r3APFOXEcon126"
label variable W4TTOS90638S3 "wk2r3APFOXEcon126"
label variable W4TODS90639S3 "Wk1RWilliamsSlogan"
label variable W4TTOS90639S3 "Wk1RWilliamsSlogan"
label variable W4TODS90640S3 "Wk1RWilliamsPersonality"
label variable W4TTOS90640S3 "Wk1RWilliamsPersonality"
label variable W4TODS90641S3 "Wk1RWilliamsFamily"
label variable W4TTOS90641S3 "Wk1RWilliamsFamily"
label variable W4TODS90642S3 "Wk1RWilliamsExperience"
label variable W4TTOS90642S3 "Wk1RWilliamsExperience"
label variable W4TODS90643S3 "Wk1RWilliamsCandidatePicture"
label variable W4TTOS90643S3 "Wk1RWilliamsCandidatePicture"
label variable W4TODS90644S3 "Wk1RWilliamsBackground"
label variable W4TTOS90644S3 "Wk1RWilliamsBackground"
label variable W4TODS90645S3 "Wk1RJonesSlogan"
label variable W4TTOS90645S3 "Wk1RJonesSlogan"
label variable W4TODS90646S3 "Wk1RJonesPersonality"
label variable W4TTOS90646S3 "Wk1RJonesPersonality"
label variable W4TODS90647S3 "Wk1RJonesFamily"
label variable W4TTOS90647S3 "Wk1RJonesFamily"
label variable W4TODS90648S3 "Wk1RJonesExperience"
label variable W4TTOS90648S3 "Wk1RJonesExperience"
label variable W4TODS90649S3 "Wk1RJonesCandidatePicture"
label variable W4TTOS90649S3 "Wk1RJonesCandidatePicture"
label variable W4TODS90650S3 "Wk1RJonesBackground"
label variable W4TTOS90650S3 "Wk1RJonesBackground"
label variable W4TODS90651S3 "Wk1DWilsonSlogan"
label variable W4TTOS90651S3 "Wk1DWilsonSlogan"
label variable W4TODS90652S3 "Wk1DWilsonPersonality"
label variable W4TTOS90652S3 "Wk1DWilsonPersonality"
label variable W4TODS90653S3 "Wk1DWilsonFamily"
label variable W4TTOS90653S3 "Wk1DWilsonFamily"
label variable W4TODS90654S3 "Wk1DWilsonExperience"
label variable W4TTOS90654S3 "Wk1DWilsonExperience"
label variable W4TODS90655S3 "Wk1DWilsonCandidatePicture"
label variable W4TTOS90655S3 "Wk1DWilsonCandidatePicture"
label variable W4TODS90656S3 "Wk1DWilsonBackground"
label variable W4TTOS90656S3 "Wk1DWilsonBackground"
label variable W4TODS90657S3 "Wk1DSmithSlogan"
label variable W4TTOS90657S3 "Wk1DSmithSlogan"
label variable W4TODS90658S3 "Wk1DSmithPersonality"
label variable W4TTOS90658S3 "Wk1DSmithPersonality"
label variable W4TODS90659S3 "Wk1DSmithFamily"
label variable W4TTOS90659S3 "Wk1DSmithFamily"
label variable W4TODS90660S3 "Wk1DSmithExperience"
label variable W4TTOS90660S3 "Wk1DSmithExperience"
label variable W4TODS90661S3 "Wk1DSmithCandidatePicture"
label variable W4TTOS90661S3 "Wk1DSmithCandidatePicture"
label variable W4TODS90662S3 "Wk1DSmithBackground"
label variable W4TTOS90662S3 "Wk1DSmithBackground"
label variable W4TODS90663S3 "SmithEducation"
label variable W4TTOS90663S3 "SmithEducation"
label variable W4TODS90664S3 "SmithExperience"
label variable W4TTOS90664S3 "SmithExperience"
label variable W4TODS90665S3 "SmithFamily"
label variable W4TTOS90665S3 "SmithFamily"
label variable W4TODS90666S3 "JonesExperience"
label variable W4TTOS90666S3 "JonesExperience"
label variable W4TODS90667S3 "SmithReligion"
label variable W4TTOS90667S3 "SmithReligion"
label variable W4TODS90668S3 "JonesEducation"
label variable W4TTOS90668S3 "JonesEducation"
label variable W4TODS90669S3 "JonesFamily"
label variable W4TTOS90669S3 "JonesFamily"
label variable W4TODS90671S3 "JonesReligion"
label variable W4TTOS90671S3 "JonesReligion"
label variable W4TODS90672S3 "WilsonEducation"
label variable W4TTOS90672S3 "WilsonEducation"
label variable W4TODS90674S3 "WilsonExperience"
label variable W4TTOS90674S3 "WilsonExperience"
label variable W4TODS90675S3 "WilsonFamily"
label variable W4TTOS90675S3 "WilsonFamily"
label variable W4TODS90678S3 "WilliamsFamily"
label variable W4TTOS90678S3 "WilliamsFamily"
label variable W4TODS90679S3 "WilliamsExperience"
label variable W4TTOS90679S3 "WilliamsExperience"
label variable W4TODS90680S3 "WilliamsEducation"
label variable W4TTOS90680S3 "WilliamsEducation"
label variable W4TODS90681S3 "WilsonReligion"
label variable W4TTOS90681S3 "WilsonReligion"
label variable W4TODS90683S3 "wk2DSmithJobs"
label variable W4TTOS90683S3 "wk2DSmithJobs"
label variable W4TODS90684S3 "wk2DSmithEconPhil"
label variable W4TTOS90684S3 "wk2DSmithEconPhil"
label variable W4TODS90685S3 "Wk2RJonesJobs"
label variable W4TTOS90685S3 "Wk2RJonesJobs"
label variable W4TODS90686S3 "wk2DWilsonJobs"
label variable W4TTOS90686S3 "wk2DWilsonJobs"
label variable W4TODS90687S3 "wk2DWilsonEconPhil"
label variable W4TTOS90687S3 "wk2DWilsonEconPhil"
label variable W4TODS90688S3 "wk2RJonesEconPhil"
label variable W4TTOS90688S3 "wk2RJonesEconPhil"
label variable W4TODS90689S3 "Wk2RWilliamsJobs"
label variable W4TTOS90689S3 "Wk2RWilliamsJobs"
label variable W4TODS90690S3 "wk2RWilliamsEconPhil"
label variable W4TTOS90690S3 "wk2RWilliamsEconPhil"
label variable W4TODS90691S3 "wk3DSmithEduc"
label variable W4TTOS90691S3 "wk3DSmithEduc"
label variable W4TODS90692S3 "wk6DSmithHealth"
label variable W4TTOS90692S3 "wk6DSmithHealth"
label variable W4FODS90693S3 "wk4DSmithChina"
label variable W4TODS90693S2 "wk4DSmithChina"
label variable W4TODS90693S3 "wk4DSmithChina"
label variable W4TTOS90693S2 "wk4DSmithChina"
label variable W4TTOS90693S3 "wk4DSmithChina"
label variable W4FODS90694S3 "wk4DSmithDefense"
label variable W4TODS90694S2 "wk4DSmithDefense"
label variable W4TODS90694S3 "wk4DSmithDefense"
label variable W4TTOS90694S2 "wk4DSmithDefense"
label variable W4TTOS90694S3 "wk4DSmithDefense"
label variable W4TODS90695S3 "wk5DSmithAbortion"
label variable W4TTOS90695S3 "wk5DSmithAbortion"
label variable W4TODS90696S3 "wk5DSmithGay"
label variable W4TTOS90696S3 "wk5DSmithGay"
label variable W4TODS90697S3 "wk6DSmithTaxes"
label variable W4TTOS90697S3 "wk6DSmithTaxes"
label variable W4TODS90698S3 "wk7DSmithAffirm"
label variable W4TTOS90698S3 "wk7DSmithAffirm"
label variable W4TODS90699S3 "wk7DSmithImmigration"
label variable W4TTOS90699S3 "wk7DSmithImmigration"
label variable W4TODS90700S3 "wk8DSmithAfghan"
label variable W4TTOS90700S3 "wk8DSmithAfghan"
label variable W4TODS90701S3 "wk8DSmithMil"
label variable W4TTOS90701S3 "wk8DSmithMil"
label variable W4TODS90702S3 "wk9DSmithDeathPen"
label variable W4TTOS90702S3 "wk9DSmithDeathPen"
label variable W4TODS90703S3 "wk9DSmithStemCells"
label variable W4TTOS90703S3 "wk9DSmithStemCells"
label variable W4TODS90704S3 "wk3DSmithSocPhil"
label variable W4TTOS90704S3 "wk3DSmithSocPhil"
label variable W4TODS90705S3 "wk3DWilsonEduc"
label variable W4TTOS90705S3 "wk3DWilsonEduc"
label variable W4TODS90706S3 "wk6DWilsonHealth"
label variable W4TTOS90706S3 "wk6DWilsonHealth"
label variable W4FODS90707S3 "wk4DWilsonChina"
label variable W4TODS90707S2 "wk4DWilsonChina"
label variable W4TODS90707S3 "wk4DWilsonChina"
label variable W4TTOS90707S2 "wk4DWilsonChina"
label variable W4TTOS90707S3 "wk4DWilsonChina"
label variable W4FODS90708S3 "wk4DWilsonDefense"
label variable W4TODS90708S2 "wk4DWilsonDefense"
label variable W4TODS90708S3 "wk4DWilsonDefense"
label variable W4TTOS90708S2 "wk4DWilsonDefense"
label variable W4TTOS90708S3 "wk4DWilsonDefense"
label variable W4TODS90709S3 "wk5DWilsonAbortion"
label variable W4TTOS90709S3 "wk5DWilsonAbortion"
label variable W4TODS90710S3 "wk5DWilsonGay"
label variable W4TTOS90710S3 "wk5DWilsonGay"
label variable W4TODS90711S3 "wk6DWilsonTaxes"
label variable W4TTOS90711S3 "wk6DWilsonTaxes"
label variable W4TODS90712S3 "wk7DWilsonAffirm"
label variable W4TTOS90712S3 "wk7DWilsonAffirm"
label variable W4TODS90713S3 "wk7DWilsonImmigration"
label variable W4TTOS90713S3 "wk7DWilsonImmigration"
label variable W4TODS90714S3 "wk8DWilsonAfghan"
label variable W4TTOS90714S3 "wk8DWilsonAfghan"
label variable W4TODS90715S3 "wk8DWilsonMil"
label variable W4TTOS90715S3 "wk8DWilsonMil"
label variable W4TODS90716S3 "wk9DWilsonDeathPen"
label variable W4TTOS90716S3 "wk9DWilsonDeathPen"
label variable W4TODS90717S3 "wk9DWilsonStemCells"
label variable W4TTOS90717S3 "wk9DWilsonStemCells"
label variable W4TODS90718S3 "wk7RJonesImmigration"
label variable W4TTOS90718S3 "wk7RJonesImmigration"
label variable W4TODS90719S3 "wk3DWilsonSocPhil"
label variable W4TTOS90719S3 "wk3DWilsonSocPhil"
label variable W4TODS90720S3 "wk3RWilliamsEduc"
label variable W4TTOS90720S3 "wk3RWilliamsEduc"
label variable W4TODS90721S3 "wk3RWilliamsSocPhil"
label variable W4TTOS90721S3 "wk3RWilliamsSocPhil"
label variable W4FODS90722S3 "wk4RWilliamsChina"
label variable W4TODS90722S2 "wk4RWilliamsChina"
label variable W4TODS90722S3 "wk4RWilliamsChina"
label variable W4TTOS90722S2 "wk4RWilliamsChina"
label variable W4TTOS90722S3 "wk4RWilliamsChina"
label variable W4FODS90723S3 "wk4RWilliamsDefense"
label variable W4TODS90723S2 "wk4RWilliamsDefense"
label variable W4TODS90723S3 "wk4RWilliamsDefense"
label variable W4TTOS90723S2 "wk4RWilliamsDefense"
label variable W4TTOS90723S3 "wk4RWilliamsDefense"
label variable W4TODS90724S3 "wk5RWilliamsAbortion"
label variable W4TTOS90724S3 "wk5RWilliamsAbortion"
label variable W4TODS90725S3 "wk5RWilliamsGay"
label variable W4TTOS90725S3 "wk5RWilliamsGay"
label variable W4TODS90726S3 "wk6RWilliamsTaxes"
label variable W4TTOS90726S3 "wk6RWilliamsTaxes"
label variable W4TODS90727S3 "wk7RWilliamsAffirm"
label variable W4TTOS90727S3 "wk7RWilliamsAffirm"
label variable W4TODS90728S3 "wk7RWilliamsImmigration"
label variable W4TTOS90728S3 "wk7RWilliamsImmigration"
label variable W4TODS90729S3 "wk8RWilliamsAfghan"
label variable W4TTOS90729S3 "wk8RWilliamsAfghan"
label variable W4TODS90730S3 "wk8RWilliamsMil"
label variable W4TTOS90730S3 "wk8RWilliamsMil"
label variable W4TODS90731S3 "wk9RWilliamsDeathPen"
label variable W4TTOS90731S3 "wk9RWilliamsDeathPen"
label variable W4TODS90732S3 "wk9RWilliamsStemCells"
label variable W4TTOS90732S3 "wk9RWilliamsStemCells"
label variable W4TODS90733S3 "wk3RJonesEduc"
label variable W4TTOS90733S3 "wk3RJonesEduc"
label variable W4TODS90734S3 "wk3RJonesSocPhil"
label variable W4TTOS90734S3 "wk3RJonesSocPhil"
label variable W4FODS90735S3 "wk4RJonesChina"
label variable W4TODS90735S2 "wk4RJonesChina"
label variable W4TODS90735S3 "wk4RJonesChina"
label variable W4TTOS90735S2 "wk4RJonesChina"
label variable W4TTOS90735S3 "wk4RJonesChina"
label variable W4FODS90736S3 "wk4RJonesDefense"
label variable W4TODS90736S2 "wk4RJonesDefense"
label variable W4TODS90736S3 "wk4RJonesDefense"
label variable W4TTOS90736S2 "wk4RJonesDefense"
label variable W4TTOS90736S3 "wk4RJonesDefense"
label variable W4TODS90737S3 "wk5RJonesAbortion"
label variable W4TTOS90737S3 "wk5RJonesAbortion"
label variable W4TODS90738S3 "wk5RJonesGay"
label variable W4TTOS90738S3 "wk5RJonesGay"
label variable W4TODS90739S3 "wk6RJonesHealth"
label variable W4TTOS90739S3 "wk6RJonesHealth"
label variable W4TODS90740S3 "wk8JRonesAfghan"
label variable W4TTOS90740S3 "wk8JRonesAfghan"
label variable W4TODS90741S3 "wk6RJonesTaxes"
label variable W4TTOS90741S3 "wk6RJonesTaxes"
label variable W4TODS90742S3 "wk7RJonesAffirm"
label variable W4TTOS90742S3 "wk7RJonesAffirm"
label variable W4TODS90743S3 "wk9RJonesStemCells"
label variable W4TTOS90743S3 "wk9RJonesStemCells"
label variable W4TODS90744S3 "wk8RJonesMil"
label variable W4TTOS90744S3 "wk8RJonesMil"
label variable W4TODS90745S3 "wk9RJonesDeathPen"
label variable W4TTOS90745S3 "wk9RJonesDeathPen"
label variable W4TODS90746S3 "wk6RWilliamsHealth"
label variable W4TTOS90746S3 "wk6RWilliamsHealth"
label variable W4TODS90747S3 "wk3d1APROOT16"
label variable W4TTOS90747S3 "wk3d1APROOT16"
label variable W4TODS90750S3 "Wk3DEndorsementAFT"
label variable W4TTOS90750S3 "Wk3DEndorsementAFT"
label variable W4TODS90751S3 "Wk3DEndorsementFAIR"
label variable W4TTOS90751S3 "Wk3DEndorsementFAIR"
label variable W4TODS90752S3 "wk3d1ABCHOT8"
label variable W4TTOS90752S3 "wk3d1ABCHOT8"
label variable W4TODS90753S3 "Wk3REndorsementFAIR"
label variable W4TTOS90753S3 "Wk3REndorsementFAIR"
label variable W4TODS90754S3 "Wk3REndorsementAFT"
label variable W4TTOS90754S3 "Wk3REndorsementAFT"
label variable W4TODS90757S3 "wk3d1NYTMSN28"
label variable W4TTOS90757S3 "wk3d1NYTMSN28"
label variable W4TODS90758S3 "wk3d2CBSCBS36"
label variable W4TTOS90758S3 "wk3d2CBSCBS36"
label variable W4TODS90759S3 "wk3d2REUREU48"
label variable W4TTOS90759S3 "wk3d2REUREU48"
label variable W4TODS90760S3 "wk3d2WSJWSJ60"
label variable W4TTOS90760S3 "wk3d2WSJWSJ60"
label variable W4TODS90761S3 "wk3d2NBCNBC64"
label variable W4TTOS90761S3 "wk3d2NBCNBC64"
label variable W4TODS90762S3 "wk3d3ABCHOT8"
label variable W4TTOS90762S3 "wk3d3ABCHOT8"
label variable W4TODS90763S3 "wk3r2ABCABC72"
label variable W4TTOS90763S3 "wk3r2ABCABC72"
label variable W4TODS90764S3 "wk3d3NBCUNI12"
label variable W4TTOS90764S3 "wk3d3NBCUNI12"
label variable W4TODS90766S3 "wk3d3NYTMSN28"
label variable W4TTOS90766S3 "wk3d3NYTMSN28"
label variable W4TODS90767S3 "wk3r2APAP80"
label variable W4TTOS90767S3 "wk3r2APAP80"
label variable W4TODS90768S3 "wk3r3REUBET100"
label variable W4TTOS90768S3 "wk3r3REUBET100"
label variable W4TODS90769S3 "wk3r3CNNLAT101"
label variable W4TTOS90769S3 "wk3r3CNNLAT101"
label variable W4TODS90770S3 "wk3r2NYTNYT92"
label variable W4TTOS90770S3 "wk3r2NYTNYT92"
label variable W4TODS90771S3 "wk3r2WSJWSJ96"
label variable W4TTOS90771S3 "wk3r2WSJWSJ96"
label variable W4TODS90772S3 "wk3r3CBSFOX116"
label variable W4TTOS90772S3 "wk3r3CBSFOX116"
label variable W4TODS90773S3 "wk3r3NBCHUF124"
label variable W4TTOS90773S3 "wk3r3NBCHUF124"
label variable W4TODS90774S3 "wk3r1REUBET100"
label variable W4TTOS90774S3 "wk3r1REUBET100"
label variable W4FODS90778S3 "wk4d1CBSFOXFor3"
label variable W4TODS90778S2 "wk4d1CBSFOXFor3"
label variable W4TODS90778S3 "wk4d1CBSFOXFor3"
label variable W4TTOS90778S2 "wk4d1CBSFOXFor3"
label variable W4TTOS90778S3 "wk4d1CBSFOXFor3"
label variable W4FODS90779S3 "wk4d1ABCHUFFor7"
label variable W4TODS90779S2 "wk4d1ABCHUFFor7"
label variable W4TODS90779S3 "wk4d1ABCHUFFor7"
label variable W4TTOS90779S2 "wk4d1ABCHUFFor7"
label variable W4TTOS90779S3 "wk4d1ABCHUFFor7"
label variable W4FODS90780S3 "wk4d1CNNBETFor23"
label variable W4TODS90780S2 "wk4d1CNNBETFor23"
label variable W4TODS90780S3 "wk4d1CNNBETFor23"
label variable W4TTOS90780S2 "wk4d1CNNBETFor23"
label variable W4TTOS90780S3 "wk4d1CNNBETFor23"
label variable W4FODS90781S3 "wk4d1WSJLATFor31"
label variable W4TODS90781S2 "wk4d1WSJLATFor31"
label variable W4TODS90781S3 "wk4d1WSJLATFor31"
label variable W4TTOS90781S2 "wk4d1WSJLATFor31"
label variable W4TTOS90781S3 "wk4d1WSJLATFor31"
label variable W4FODS90782S3 "wk4d2APAPFor43"
label variable W4TODS90782S2 "wk4d2APAPFor43"
label variable W4TODS90782S3 "wk4d2APAPFor43"
label variable W4TTOS90782S2 "wk4d2APAPFor43"
label variable W4TTOS90782S3 "wk4d2APAPFor43"
label variable W4FODS90783S3 "wk4d2REUREUFor47"
label variable W4TODS90783S2 "wk4d2REUREUFor47"
label variable W4TODS90783S3 "wk4d2REUREUFor47"
label variable W4TTOS90783S2 "wk4d2REUREUFor47"
label variable W4TTOS90783S3 "wk4d2REUREUFor47"
label variable W4FODS90784S3 "wk4d2NYTNYTFor55"
label variable W4TODS90784S2 "wk4d2NYTNYTFor55"
label variable W4TODS90784S3 "wk4d2NYTNYTFor55"
label variable W4TTOS90784S2 "wk4d2NYTNYTFor55"
label variable W4TTOS90784S3 "wk4d2NYTNYTFor55"
label variable W4FODS90785S3 "wk4d2NBCNBCFor63"
label variable W4TODS90785S2 "wk4d2NBCNBCFor63"
label variable W4TODS90785S3 "wk4d2NBCNBCFor63"
label variable W4TTOS90785S2 "wk4d2NBCNBCFor63"
label variable W4TTOS90785S3 "wk4d2NBCNBCFor63"
label variable W4FODS90786S3 "wk4d3CBSFOXFor3"
label variable W4TODS90786S2 "wk4d3CBSFOXFor3"
label variable W4TODS90786S3 "wk4d3CBSFOXFor3"
label variable W4TTOS90786S2 "wk4d3CBSFOXFor3"
label variable W4TTOS90786S3 "wk4d3CBSFOXFor3"
label variable W4FODS90787S3 "wk4d3ABCHUFFor7"
label variable W4TODS90787S2 "wk4d3ABCHUFFor7"
label variable W4TODS90787S3 "wk4d3ABCHUFFor7"
label variable W4TTOS90787S2 "wk4d3ABCHUFFor7"
label variable W4TTOS90787S3 "wk4d3ABCHUFFor7"
label variable W4FODS90788S3 "wk4d3CNNBETFor23"
label variable W4TODS90788S2 "wk4d3CNNBETFor23"
label variable W4TODS90788S3 "wk4d3CNNBETFor23"
label variable W4TTOS90788S2 "wk4d3CNNBETFor23"
label variable W4TTOS90788S3 "wk4d3CNNBETFor23"
label variable W4FODS90789S3 "wk4d3WSJLATFor31"
label variable W4TODS90789S2 "wk4d3WSJLATFor31"
label variable W4TODS90789S3 "wk4d3WSJLATFor31"
label variable W4TTOS90789S2 "wk4d3WSJLATFor31"
label variable W4TTOS90789S3 "wk4d3WSJLATFor31"
label variable W4FODS90790S3 "wk4r2ABCABCFor71"
label variable W4TODS90790S2 "wk4r2ABCABCFor71"
label variable W4TODS90790S3 "wk4r2ABCABCFor71"
label variable W4TTOS90790S2 "wk4r2ABCABCFor71"
label variable W4TTOS90790S3 "wk4r2ABCABCFor71"
label variable W4FODS90791S3 "wk4r2NBCNBCFor75"
label variable W4TODS90791S2 "wk4r2NBCNBCFor75"
label variable W4TODS90791S3 "wk4r2NBCNBCFor75"
label variable W4TTOS90791S2 "wk4r2NBCNBCFor75"
label variable W4TTOS90791S3 "wk4r2NBCNBCFor75"
label variable W4FODS90792S3 "wk4r2REUREUFor83"
label variable W4TODS90792S2 "wk4r2REUREUFor83"
label variable W4TODS90792S3 "wk4r2REUREUFor83"
label variable W4TTOS90792S2 "wk4r2REUREUFor83"
label variable W4TTOS90792S3 "wk4r2REUREUFor83"
label variable W4FODS90793S3 "wk4r2NYTNYTFor91"
label variable W4TODS90793S2 "wk4r2NYTNYTFor91"
label variable W4TODS90793S3 "wk4r2NYTNYTFor91"
label variable W4TTOS90793S2 "wk4r2NYTNYTFor91"
label variable W4TTOS90793S3 "wk4r2NYTNYTFor91"
label variable W4FODS90794S3 "wk4r1CNNROOTFor103"
label variable W4TODS90794S2 "wk4r1CNNROOTFor103"
label variable W4TODS90794S3 "wk4r1CNNROOTFor103"
label variable W4TTOS90794S2 "wk4r1CNNROOTFor103"
label variable W4TTOS90794S3 "wk4r1CNNROOTFor103"
label variable W4FODS90795S3 "wk4r1WSJHOTFor111"
label variable W4TODS90795S2 "wk4r1WSJHOTFor111"
label variable W4TODS90795S3 "wk4r1WSJHOTFor111"
label variable W4TTOS90795S2 "wk4r1WSJHOTFor111"
label variable W4TTOS90795S3 "wk4r1WSJHOTFor111"
label variable W4FODS90796S3 "wk4r1CBSMSNFor115"
label variable W4TODS90796S2 "wk4r1CBSMSNFor115"
label variable W4TODS90796S3 "wk4r1CBSMSNFor115"
label variable W4TTOS90796S2 "wk4r1CBSMSNFor115"
label variable W4TTOS90796S3 "wk4r1CBSMSNFor115"
label variable W4FODS90797S3 "wk4r1APLATFor127"
label variable W4TODS90797S2 "wk4r1APLATFor127"
label variable W4TODS90797S3 "wk4r1APLATFor127"
label variable W4TTOS90797S2 "wk4r1APLATFor127"
label variable W4TTOS90797S3 "wk4r1APLATFor127"
label variable W4FODS90798S3 "wk4r3CNNROOTFor103"
label variable W4TODS90798S2 "wk4r3CNNROOTFor103"
label variable W4TODS90798S3 "wk4r3CNNROOTFor103"
label variable W4TTOS90798S2 "wk4r3CNNROOTFor103"
label variable W4TTOS90798S3 "wk4r3CNNROOTFor103"
label variable W4FODS90799S3 "wk4r3WSJHOTFor111"
label variable W4TODS90799S2 "wk4r3WSJHOTFor111"
label variable W4TODS90799S3 "wk4r3WSJHOTFor111"
label variable W4TTOS90799S2 "wk4r3WSJHOTFor111"
label variable W4TTOS90799S3 "wk4r3WSJHOTFor111"
label variable W4FODS90800S3 "wk4r3CBSMSNFor115"
label variable W4TODS90800S2 "wk4r3CBSMSNFor115"
label variable W4TODS90800S3 "wk4r3CBSMSNFor115"
label variable W4TTOS90800S2 "wk4r3CBSMSNFor115"
label variable W4TTOS90800S3 "wk4r3CBSMSNFor115"
label variable W4FODS90801S3 "wk4r3APLATFor127"
label variable W4TODS90801S2 "wk4r3APLATFor127"
label variable W4TODS90801S3 "wk4r3APLATFor127"
label variable W4TTOS90801S2 "wk4r3APLATFor127"
label variable W4TTOS90801S3 "wk4r3APLATFor127"
label variable W4FODS90802S3 "Wk4DEndorsementNCLR"
label variable W4TODS90802S2 "Wk4DEndorsementNCLR"
label variable W4TODS90802S3 "Wk4DEndorsementNCLR"
label variable W4TTOS90802S2 "Wk4DEndorsementNCLR"
label variable W4TTOS90802S3 "Wk4DEndorsementNCLR"
label variable W4FODS90803S3 "Wk4DEndorsementHeritage"
label variable W4TODS90803S2 "Wk4DEndorsementHeritage"
label variable W4TODS90803S3 "Wk4DEndorsementHeritage"
label variable W4TTOS90803S2 "Wk4DEndorsementHeritage"
label variable W4TTOS90803S3 "Wk4DEndorsementHeritage"
label variable W4FODS90804S3 "Wk4DEndorsementVFW"
label variable W4TODS90804S2 "Wk4DEndorsementVFW"
label variable W4TODS90804S3 "Wk4DEndorsementVFW"
label variable W4TTOS90804S2 "Wk4DEndorsementVFW"
label variable W4TTOS90804S3 "Wk4DEndorsementVFW"
label variable W4FODS90805S3 "Wk4REndorsementNCLR"
label variable W4TODS90805S2 "Wk4REndorsementNCLR"
label variable W4TODS90805S3 "Wk4REndorsementNCLR"
label variable W4TTOS90805S2 "Wk4REndorsementNCLR"
label variable W4TTOS90805S3 "Wk4REndorsementNCLR"
label variable W4FODS90806S3 "Wk4REndorsementHeritage"
label variable W4TODS90806S2 "Wk4REndorsementHeritage"
label variable W4TODS90806S3 "Wk4REndorsementHeritage"
label variable W4TTOS90806S2 "Wk4REndorsementHeritage"
label variable W4TTOS90806S3 "Wk4REndorsementHeritage"
label variable W4FODS90807S3 "WK4REndorsementVFW"
label variable W4TODS90807S2 "WK4REndorsementVFW"
label variable W4TODS90807S3 "WK4REndorsementVFW"
label variable W4TTOS90807S2 "WK4REndorsementVFW"
label variable W4TTOS90807S3 "WK4REndorsementVFW"


* Merge W4S1234 with IPW4 (IP ADDRESS)
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W4/WorkingData/DurationData/W4S1234_Working.dta", replace
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W4/WorkingData/DurationData/W4S1234_Working.dta", replace
merge 1:m SUBJECTID using "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W4/IP/IPW4.dta"
drop _merge

* Duplicate Check
capture drop DUPW4
sort PAC
quietly by PAC: gen DUPW4 = cond(_N==1,0,_n)

* Generating week indicator
capture drop WEEK4
gen WEEK4 = 1

* Generating Date Variable
capture drop year month day
nsplit W4DATES1, digits(4 2 2) generate(year month day)
capture drop DATEW4b
gen DATEW4b = mdy(month, day, year)
capture drop date1
gen date1 = 19724
format %td date1
format %td DATEW4b
capture drop DATEW4a
gen DATEW4a = DATEW4b - date1
capture drop date1 year month day W4DATES1 W4DATES2 W4DATES3 W4DATES4

* ORDERING
order PAC IP DUPW4 DATEW4a DATEW4b W4TIMES1 WEEK4
sort PAC, stable

* Dropping Duplicates
drop if PAC == .
drop if SUBJECTID == 100535
drop if SUBJECTID == 100464
drop if SUBJECTID == 100362
drop if SUBJECTID == 100443
drop if SUBJECTID == 100841
replace PAC= 100824 if SUBJECTID == 101585
drop if SUBJECTID == 102855
drop if SUBJECTID == 103793
drop if SUBJECTID == 103060
drop if SUBJECTID == 102950
drop if SUBJECTID == 102863
drop if SUBJECTID == 103135
replace PAC= 108277  if IP == "50.134.64.50"

* Building Cumulat.

capture egen  W4CTO90611Wk = rowtotal(W4TTOS90611S2 W4TTOS90611S3)
capture egen  W4COD90611Wk = rowtotal(W4TODS90611S2 W4TODS90611S3)
capture egen  W4COD90612Wk = rowtotal(W4TODS90612S2 W4TODS90612S3)
capture egen  W4CTO90612Wk = rowtotal(W4TTOS90612S2 W4TTOS90612S3)
capture egen  W4COD90613Wk = rowtotal(W4TODS90613S2 W4TODS90613S3)
capture egen  W4CTO90613Wk = rowtotal(W4TTOS90613S2 W4TTOS90613S3)
capture egen  W4COD90614Wk = rowtotal(W4TODS90614S2 W4TODS90614S3)
capture egen  W4CTO90614Wk = rowtotal(W4TTOS90614S2 W4TTOS90614S3)
capture egen  W4CTO90615Wk = rowtotal(W4TTOS90615S2 W4TTOS90615S3)
capture egen  W4COD90615Wk = rowtotal(W4TODS90615S2 W4TODS90615S3)
capture egen  W4CTO90617Wk = rowtotal(W4TTOS90617S2 W4TTOS90617S3)
capture egen  W4COD90617Wk = rowtotal(W4TODS90617S2 W4TODS90617S3)
capture egen  W4COD90619Wk = rowtotal(W4TODS90619S2 W4TODS90619S3)
capture egen  W4CTO90619Wk = rowtotal(W4TTOS90619S2 W4TTOS90619S3)
capture egen  W4COD90620Wk = rowtotal(W4TODS90620S2 W4TODS90620S3)
capture egen  W4CTO90620Wk = rowtotal(W4TTOS90620S2 W4TTOS90620S3)
capture egen  W4COD90621Wk = rowtotal(W4TODS90621S2 W4TODS90621S3)
capture egen  W4CTO90621Wk = rowtotal(W4TTOS90621S2 W4TTOS90621S3)
capture egen  W4COD90622Wk = rowtotal(W4TODS90622S2 W4TODS90622S3)
capture egen  W4CTO90622Wk = rowtotal(W4TTOS90622S2 W4TTOS90622S3)
capture egen  W4CTO90623Wk = rowtotal(W4TTOS90623S2 W4TTOS90623S3)
capture egen  W4COD90623Wk = rowtotal(W4TODS90623S2 W4TODS90623S3)
capture egen  W4CTO90624Wk = rowtotal(W4TTOS90624S2 W4TTOS90624S3)
capture egen  W4COD90624Wk = rowtotal(W4TODS90624S2 W4TODS90624S3)
capture egen  W4COD90625Wk = rowtotal(W4TODS90625S2 W4TODS90625S3)
capture egen  W4CTO90625Wk = rowtotal(W4TTOS90625S2 W4TTOS90625S3)
capture egen  W4CTO90626Wk = rowtotal(W4TTOS90626S2 W4TTOS90626S3)
capture egen  W4COD90626Wk = rowtotal(W4TODS90626S2 W4TODS90626S3)
capture egen  W4COD90627Wk = rowtotal(W4TODS90627S2 W4TODS90627S3)
capture egen  W4CTO90627Wk = rowtotal(W4TTOS90627S2 W4TTOS90627S3)
capture egen  W4CTO90630Wk = rowtotal(W4TTOS90630S2 W4TTOS90630S3)
capture egen  W4COD90630Wk = rowtotal(W4TODS90630S2 W4TODS90630S3)
capture egen  W4CTO90631Wk = rowtotal(W4TTOS90631S2 W4TTOS90631S3)
capture egen  W4COD90631Wk = rowtotal(W4TODS90631S2 W4TODS90631S3)
capture egen  W4COD90632Wk = rowtotal(W4TODS90632S2 W4TODS90632S3)
capture egen  W4CTO90632Wk = rowtotal(W4TTOS90632S2 W4TTOS90632S3)
capture egen  W4COD90634Wk = rowtotal(W4TODS90634S2 W4TODS90634S3)
capture egen  W4CTO90634Wk = rowtotal(W4TTOS90634S2 W4TTOS90634S3)
capture egen  W4COD90635Wk = rowtotal(W4TODS90635S2 W4TODS90635S3)
capture egen  W4CTO90635Wk = rowtotal(W4TTOS90635S2 W4TTOS90635S3)
capture egen  W4COD90636Wk = rowtotal(W4TODS90636S2 W4TODS90636S3)
capture egen  W4CTO90636Wk = rowtotal(W4TTOS90636S2 W4TTOS90636S3)
capture egen  W4COD90637Wk = rowtotal(W4TODS90637S2 W4TODS90637S3)
capture egen  W4CTO90637Wk = rowtotal(W4TTOS90637S2 W4TTOS90637S3)
capture egen  W4COD90638Wk = rowtotal(W4TODS90638S2 W4TODS90638S3)
capture egen  W4CTO90638Wk = rowtotal(W4TTOS90638S2 W4TTOS90638S3)
capture egen  W4CTO90639Wk = rowtotal(W4TTOS90639S2 W4TTOS90639S3)
capture egen  W4COD90639Wk = rowtotal(W4TODS90639S2 W4TODS90639S3)
capture egen  W4COD90640Wk = rowtotal(W4TODS90640S2 W4TODS90640S3)
capture egen  W4CTO90640Wk = rowtotal(W4TTOS90640S2 W4TTOS90640S3)
capture egen  W4CTO90641Wk = rowtotal(W4TTOS90641S2 W4TTOS90641S3)
capture egen  W4COD90641Wk = rowtotal(W4TODS90641S2 W4TODS90641S3)
capture egen  W4COD90642Wk = rowtotal(W4TODS90642S2 W4TODS90642S3)
capture egen  W4CTO90642Wk = rowtotal(W4TTOS90642S2 W4TTOS90642S3)
capture egen  W4COD90643Wk = rowtotal(W4TODS90643S2 W4TODS90643S3)
capture egen  W4CTO90643Wk = rowtotal(W4TTOS90643S2 W4TTOS90643S3)
capture egen  W4CTO90644Wk = rowtotal(W4TTOS90644S2 W4TTOS90644S3)
capture egen  W4COD90644Wk = rowtotal(W4TODS90644S2 W4TODS90644S3)
capture egen  W4CTO90645Wk = rowtotal(W4TTOS90645S2 W4TTOS90645S3)
capture egen  W4COD90645Wk = rowtotal(W4TODS90645S2 W4TODS90645S3)
capture egen  W4CTO90646Wk = rowtotal(W4TTOS90646S2 W4TTOS90646S3)
capture egen  W4COD90646Wk = rowtotal(W4TODS90646S2 W4TODS90646S3)
capture egen  W4COD90647Wk = rowtotal(W4TODS90647S2 W4TODS90647S3)
capture egen  W4CTO90647Wk = rowtotal(W4TTOS90647S2 W4TTOS90647S3)
capture egen  W4CTO90648Wk = rowtotal(W4TTOS90648S2 W4TTOS90648S3)
capture egen  W4COD90648Wk = rowtotal(W4TODS90648S2 W4TODS90648S3)
capture egen  W4CTO90649Wk = rowtotal(W4TTOS90649S2 W4TTOS90649S3)
capture egen  W4COD90649Wk = rowtotal(W4TODS90649S2 W4TODS90649S3)
capture egen  W4CTO90650Wk = rowtotal(W4TTOS90650S2 W4TTOS90650S3)
capture egen  W4COD90650Wk = rowtotal(W4TODS90650S2 W4TODS90650S3)
capture egen  W4COD90651Wk = rowtotal(W4TODS90651S2 W4TODS90651S3)
capture egen  W4CTO90651Wk = rowtotal(W4TTOS90651S2 W4TTOS90651S3)
capture egen  W4COD90652Wk = rowtotal(W4TODS90652S2 W4TODS90652S3)
capture egen  W4CTO90652Wk = rowtotal(W4TTOS90652S2 W4TTOS90652S3)
capture egen  W4COD90653Wk = rowtotal(W4TODS90653S2 W4TODS90653S3)
capture egen  W4CTO90653Wk = rowtotal(W4TTOS90653S2 W4TTOS90653S3)
capture egen  W4COD90654Wk = rowtotal(W4TODS90654S2 W4TODS90654S3)
capture egen  W4CTO90654Wk = rowtotal(W4TTOS90654S2 W4TTOS90654S3)
capture egen  W4CTO90655Wk = rowtotal(W4TTOS90655S2 W4TTOS90655S3)
capture egen  W4COD90655Wk = rowtotal(W4TODS90655S2 W4TODS90655S3)
capture egen  W4CTO90656Wk = rowtotal(W4TTOS90656S2 W4TTOS90656S3)
capture egen  W4COD90656Wk = rowtotal(W4TODS90656S2 W4TODS90656S3)
capture egen  W4COD90657Wk = rowtotal(W4TODS90657S2 W4TODS90657S3)
capture egen  W4CTO90657Wk = rowtotal(W4TTOS90657S2 W4TTOS90657S3)
capture egen  W4COD90658Wk = rowtotal(W4TODS90658S2 W4TODS90658S3)
capture egen  W4CTO90658Wk = rowtotal(W4TTOS90658S2 W4TTOS90658S3)
capture egen  W4COD90659Wk = rowtotal(W4TODS90659S2 W4TODS90659S3)
capture egen  W4CTO90659Wk = rowtotal(W4TTOS90659S2 W4TTOS90659S3)
capture egen  W4CTO90660Wk = rowtotal(W4TTOS90660S2 W4TTOS90660S3)
capture egen  W4COD90660Wk = rowtotal(W4TODS90660S2 W4TODS90660S3)
capture egen  W4COD90661Wk = rowtotal(W4TODS90661S2 W4TODS90661S3)
capture egen  W4CTO90661Wk = rowtotal(W4TTOS90661S2 W4TTOS90661S3)
capture egen  W4CTO90662Wk = rowtotal(W4TTOS90662S2 W4TTOS90662S3)
capture egen  W4COD90662Wk = rowtotal(W4TODS90662S2 W4TODS90662S3)
capture egen  W4COD90663Wk = rowtotal(W4TODS90663S2 W4TODS90663S3)
capture egen  W4CTO90663Wk = rowtotal(W4TTOS90663S2 W4TTOS90663S3)
capture egen  W4CTO90664Wk = rowtotal(W4TTOS90664S2 W4TTOS90664S3)
capture egen  W4COD90664Wk = rowtotal(W4TODS90664S2 W4TODS90664S3)
capture egen  W4COD90665Wk = rowtotal(W4TODS90665S2 W4TODS90665S3)
capture egen  W4CTO90665Wk = rowtotal(W4TTOS90665S2 W4TTOS90665S3)
capture egen  W4COD90666Wk = rowtotal(W4TODS90666S2 W4TODS90666S3)
capture egen  W4CTO90666Wk = rowtotal(W4TTOS90666S2 W4TTOS90666S3)
capture egen  W4COD90667Wk = rowtotal(W4TODS90667S2 W4TODS90667S3)
capture egen  W4CTO90667Wk = rowtotal(W4TTOS90667S2 W4TTOS90667S3)
capture egen  W4CTO90668Wk = rowtotal(W4TTOS90668S2 W4TTOS90668S3)
capture egen  W4COD90668Wk = rowtotal(W4TODS90668S2 W4TODS90668S3)
capture egen  W4CTO90669Wk = rowtotal(W4TTOS90669S2 W4TTOS90669S3)
capture egen  W4COD90669Wk = rowtotal(W4TODS90669S2 W4TODS90669S3)
capture egen  W4COD90671Wk = rowtotal(W4TODS90671S2 W4TODS90671S3)
capture egen  W4CTO90671Wk = rowtotal(W4TTOS90671S2 W4TTOS90671S3)
capture egen  W4CTO90672Wk = rowtotal(W4TTOS90672S2 W4TTOS90672S3)
capture egen  W4COD90672Wk = rowtotal(W4TODS90672S2 W4TODS90672S3)
capture egen  W4COD90674Wk = rowtotal(W4TODS90674S2 W4TODS90674S3)
capture egen  W4CTO90674Wk = rowtotal(W4TTOS90674S2 W4TTOS90674S3)
capture egen  W4COD90675Wk = rowtotal(W4TODS90675S2 W4TODS90675S3)
capture egen  W4CTO90675Wk = rowtotal(W4TTOS90675S2 W4TTOS90675S3)
capture egen  W4COD90678Wk = rowtotal(W4TODS90678S2 W4TODS90678S3)
capture egen  W4CTO90678Wk = rowtotal(W4TTOS90678S2 W4TTOS90678S3)
capture egen  W4CTO90679Wk = rowtotal(W4TTOS90679S2 W4TTOS90679S3)
capture egen  W4COD90679Wk = rowtotal(W4TODS90679S2 W4TODS90679S3)
capture egen  W4CTO90680Wk = rowtotal(W4TTOS90680S2 W4TTOS90680S3)
capture egen  W4COD90680Wk = rowtotal(W4TODS90680S2 W4TODS90680S3)
capture egen  W4COD90681Wk = rowtotal(W4TODS90681S2 W4TODS90681S3)
capture egen  W4CTO90681Wk = rowtotal(W4TTOS90681S2 W4TTOS90681S3)
capture egen  W4COD90683Wk = rowtotal(W4TODS90683S2 W4TODS90683S3)
capture egen  W4CTO90683Wk = rowtotal(W4TTOS90683S2 W4TTOS90683S3)
capture egen  W4COD90684Wk = rowtotal(W4TODS90684S2 W4TODS90684S3)
capture egen  W4CTO90684Wk = rowtotal(W4TTOS90684S2 W4TTOS90684S3)
capture egen  W4COD90685Wk = rowtotal(W4TODS90685S2 W4TODS90685S3)
capture egen  W4CTO90685Wk = rowtotal(W4TTOS90685S2 W4TTOS90685S3)
capture egen  W4CTO90686Wk = rowtotal(W4TTOS90686S2 W4TTOS90686S3)
capture egen  W4COD90686Wk = rowtotal(W4TODS90686S2 W4TODS90686S3)
capture egen  W4COD90687Wk = rowtotal(W4TODS90687S2 W4TODS90687S3)
capture egen  W4CTO90687Wk = rowtotal(W4TTOS90687S2 W4TTOS90687S3)
capture egen  W4COD90688Wk = rowtotal(W4TODS90688S2 W4TODS90688S3)
capture egen  W4CTO90688Wk = rowtotal(W4TTOS90688S2 W4TTOS90688S3)
capture egen  W4CTO90689Wk = rowtotal(W4TTOS90689S2 W4TTOS90689S3)
capture egen  W4COD90689Wk = rowtotal(W4TODS90689S2 W4TODS90689S3)
capture egen  W4COD90690Wk = rowtotal(W4TODS90690S2 W4TODS90690S3)
capture egen  W4CTO90690Wk = rowtotal(W4TTOS90690S2 W4TTOS90690S3)
capture egen  W4CTO90691Wk = rowtotal(W4TTOS90691S2 W4TTOS90691S3)
capture egen  W4COD90691Wk = rowtotal(W4TODS90691S2 W4TODS90691S3)
capture egen  W4COD90692Wk = rowtotal(W4TODS90692S2 W4TODS90692S3)
capture egen  W4CTO90692Wk = rowtotal(W4TTOS90692S2 W4TTOS90692S3)
capture egen  W4CTO90693Wk = rowtotal(W4TTOS90693S2 W4TTOS90693S3)
capture egen  W4COD90693Wk = rowtotal(W4TODS90693S2 W4TODS90693S3)
capture egen  W4COD90694Wk = rowtotal(W4TODS90694S2 W4TODS90694S3)
capture egen  W4CTO90694Wk = rowtotal(W4TTOS90694S2 W4TTOS90694S3)
capture egen  W4CTO90695Wk = rowtotal(W4TTOS90695S2 W4TTOS90695S3)
capture egen  W4COD90695Wk = rowtotal(W4TODS90695S2 W4TODS90695S3)
capture egen  W4CTO90696Wk = rowtotal(W4TTOS90696S2 W4TTOS90696S3)
capture egen  W4COD90696Wk = rowtotal(W4TODS90696S2 W4TODS90696S3)
capture egen  W4COD90697Wk = rowtotal(W4TODS90697S2 W4TODS90697S3)
capture egen  W4CTO90697Wk = rowtotal(W4TTOS90697S2 W4TTOS90697S3)
capture egen  W4CTO90698Wk = rowtotal(W4TTOS90698S2 W4TTOS90698S3)
capture egen  W4COD90698Wk = rowtotal(W4TODS90698S2 W4TODS90698S3)
capture egen  W4CTO90699Wk = rowtotal(W4TTOS90699S2 W4TTOS90699S3)
capture egen  W4COD90699Wk = rowtotal(W4TODS90699S2 W4TODS90699S3)
capture egen  W4COD90700Wk = rowtotal(W4TODS90700S2 W4TODS90700S3)
capture egen  W4CTO90700Wk = rowtotal(W4TTOS90700S2 W4TTOS90700S3)
capture egen  W4COD90701Wk = rowtotal(W4TODS90701S2 W4TODS90701S3)
capture egen  W4CTO90701Wk = rowtotal(W4TTOS90701S2 W4TTOS90701S3)
capture egen  W4COD90702Wk = rowtotal(W4TODS90702S2 W4TODS90702S3)
capture egen  W4CTO90702Wk = rowtotal(W4TTOS90702S2 W4TTOS90702S3)
capture egen  W4CTO90703Wk = rowtotal(W4TTOS90703S2 W4TTOS90703S3)
capture egen  W4COD90703Wk = rowtotal(W4TODS90703S2 W4TODS90703S3)
capture egen  W4COD90704Wk = rowtotal(W4TODS90704S2 W4TODS90704S3)
capture egen  W4CTO90704Wk = rowtotal(W4TTOS90704S2 W4TTOS90704S3)
capture egen  W4COD90705Wk = rowtotal(W4TODS90705S2 W4TODS90705S3)
capture egen  W4CTO90705Wk = rowtotal(W4TTOS90705S2 W4TTOS90705S3)
capture egen  W4CTO90706Wk = rowtotal(W4TTOS90706S2 W4TTOS90706S3)
capture egen  W4COD90706Wk = rowtotal(W4TODS90706S2 W4TODS90706S3)
capture egen  W4CTO90707Wk = rowtotal(W4TTOS90707S2 W4TTOS90707S3)
capture egen  W4COD90707Wk = rowtotal(W4TODS90707S2 W4TODS90707S3)
capture egen  W4COD90708Wk = rowtotal(W4TODS90708S2 W4TODS90708S3)
capture egen  W4CTO90708Wk = rowtotal(W4TTOS90708S2 W4TTOS90708S3)
capture egen  W4CTO90709Wk = rowtotal(W4TTOS90709S2 W4TTOS90709S3)
capture egen  W4COD90709Wk = rowtotal(W4TODS90709S2 W4TODS90709S3)
capture egen  W4COD90710Wk = rowtotal(W4TODS90710S2 W4TODS90710S3)
capture egen  W4CTO90710Wk = rowtotal(W4TTOS90710S2 W4TTOS90710S3)
capture egen  W4COD90711Wk = rowtotal(W4TODS90711S2 W4TODS90711S3)
capture egen  W4CTO90711Wk = rowtotal(W4TTOS90711S2 W4TTOS90711S3)
capture egen  W4COD90712Wk = rowtotal(W4TODS90712S2 W4TODS90712S3)
capture egen  W4CTO90712Wk = rowtotal(W4TTOS90712S2 W4TTOS90712S3)
capture egen  W4COD90713Wk = rowtotal(W4TODS90713S2 W4TODS90713S3)
capture egen  W4CTO90713Wk = rowtotal(W4TTOS90713S2 W4TTOS90713S3)
capture egen  W4CTO90714Wk = rowtotal(W4TTOS90714S2 W4TTOS90714S3)
capture egen  W4COD90714Wk = rowtotal(W4TODS90714S2 W4TODS90714S3)
capture egen  W4CTO90715Wk = rowtotal(W4TTOS90715S2 W4TTOS90715S3)
capture egen  W4COD90715Wk = rowtotal(W4TODS90715S2 W4TODS90715S3)
capture egen  W4COD90716Wk = rowtotal(W4TODS90716S2 W4TODS90716S3)
capture egen  W4CTO90716Wk = rowtotal(W4TTOS90716S2 W4TTOS90716S3)
capture egen  W4COD90717Wk = rowtotal(W4TODS90717S2 W4TODS90717S3)
capture egen  W4CTO90717Wk = rowtotal(W4TTOS90717S2 W4TTOS90717S3)
capture egen  W4CTO90718Wk = rowtotal(W4TTOS90718S2 W4TTOS90718S3)
capture egen  W4COD90718Wk = rowtotal(W4TODS90718S2 W4TODS90718S3)
capture egen  W4COD90719Wk = rowtotal(W4TODS90719S2 W4TODS90719S3)
capture egen  W4CTO90719Wk = rowtotal(W4TTOS90719S2 W4TTOS90719S3)
capture egen  W4COD90720Wk = rowtotal(W4TODS90720S2 W4TODS90720S3)
capture egen  W4CTO90720Wk = rowtotal(W4TTOS90720S2 W4TTOS90720S3)
capture egen  W4COD90721Wk = rowtotal(W4TODS90721S2 W4TODS90721S3)
capture egen  W4CTO90721Wk = rowtotal(W4TTOS90721S2 W4TTOS90721S3)
capture egen  W4CTO90722Wk = rowtotal(W4TTOS90722S2 W4TTOS90722S3)
capture egen  W4COD90722Wk = rowtotal(W4TODS90722S2 W4TODS90722S3)
capture egen  W4COD90723Wk = rowtotal(W4TODS90723S2 W4TODS90723S3)
capture egen  W4CTO90723Wk = rowtotal(W4TTOS90723S2 W4TTOS90723S3)
capture egen  W4CTO90724Wk = rowtotal(W4TTOS90724S2 W4TTOS90724S3)
capture egen  W4COD90724Wk = rowtotal(W4TODS90724S2 W4TODS90724S3)
capture egen  W4CTO90725Wk = rowtotal(W4TTOS90725S2 W4TTOS90725S3)
capture egen  W4COD90725Wk = rowtotal(W4TODS90725S2 W4TODS90725S3)
capture egen  W4COD90726Wk = rowtotal(W4TODS90726S2 W4TODS90726S3)
capture egen  W4CTO90726Wk = rowtotal(W4TTOS90726S2 W4TTOS90726S3)
capture egen  W4CTO90727Wk = rowtotal(W4TTOS90727S2 W4TTOS90727S3)
capture egen  W4COD90727Wk = rowtotal(W4TODS90727S2 W4TODS90727S3)
capture egen  W4CTO90728Wk = rowtotal(W4TTOS90728S2 W4TTOS90728S3)
capture egen  W4COD90728Wk = rowtotal(W4TODS90728S2 W4TODS90728S3)
capture egen  W4COD90729Wk = rowtotal(W4TODS90729S2 W4TODS90729S3)
capture egen  W4CTO90729Wk = rowtotal(W4TTOS90729S2 W4TTOS90729S3)
capture egen  W4CTO90730Wk = rowtotal(W4TTOS90730S2 W4TTOS90730S3)
capture egen  W4COD90730Wk = rowtotal(W4TODS90730S2 W4TODS90730S3)
capture egen  W4COD90731Wk = rowtotal(W4TODS90731S2 W4TODS90731S3)
capture egen  W4CTO90731Wk = rowtotal(W4TTOS90731S2 W4TTOS90731S3)
capture egen  W4CTO90732Wk = rowtotal(W4TTOS90732S2 W4TTOS90732S3)
capture egen  W4COD90732Wk = rowtotal(W4TODS90732S2 W4TODS90732S3)
capture egen  W4CTO90733Wk = rowtotal(W4TTOS90733S2 W4TTOS90733S3)
capture egen  W4COD90733Wk = rowtotal(W4TODS90733S2 W4TODS90733S3)
capture egen  W4CTO90734Wk = rowtotal(W4TTOS90734S2 W4TTOS90734S3)
capture egen  W4COD90734Wk = rowtotal(W4TODS90734S2 W4TODS90734S3)
capture egen  W4CTO90735Wk = rowtotal(W4TTOS90735S2 W4TTOS90735S3)
capture egen  W4COD90735Wk = rowtotal(W4TODS90735S2 W4TODS90735S3)
capture egen  W4CTO90736Wk = rowtotal(W4TTOS90736S2 W4TTOS90736S3)
capture egen  W4COD90736Wk = rowtotal(W4TODS90736S2 W4TODS90736S3)
capture egen  W4COD90737Wk = rowtotal(W4TODS90737S2 W4TODS90737S3)
capture egen  W4CTO90737Wk = rowtotal(W4TTOS90737S2 W4TTOS90737S3)
capture egen  W4CTO90738Wk = rowtotal(W4TTOS90738S2 W4TTOS90738S3)
capture egen  W4COD90738Wk = rowtotal(W4TODS90738S2 W4TODS90738S3)
capture egen  W4COD90739Wk = rowtotal(W4TODS90739S2 W4TODS90739S3)
capture egen  W4CTO90739Wk = rowtotal(W4TTOS90739S2 W4TTOS90739S3)
capture egen  W4COD90740Wk = rowtotal(W4TODS90740S2 W4TODS90740S3)
capture egen  W4CTO90740Wk = rowtotal(W4TTOS90740S2 W4TTOS90740S3)
capture egen  W4CTO90741Wk = rowtotal(W4TTOS90741S2 W4TTOS90741S3)
capture egen  W4COD90741Wk = rowtotal(W4TODS90741S2 W4TODS90741S3)
capture egen  W4COD90742Wk = rowtotal(W4TODS90742S2 W4TODS90742S3)
capture egen  W4CTO90742Wk = rowtotal(W4TTOS90742S2 W4TTOS90742S3)
capture egen  W4CTO90743Wk = rowtotal(W4TTOS90743S2 W4TTOS90743S3)
capture egen  W4COD90743Wk = rowtotal(W4TODS90743S2 W4TODS90743S3)
capture egen  W4COD90744Wk = rowtotal(W4TODS90744S2 W4TODS90744S3)
capture egen  W4CTO90744Wk = rowtotal(W4TTOS90744S2 W4TTOS90744S3)
capture egen  W4CTO90745Wk = rowtotal(W4TTOS90745S2 W4TTOS90745S3)
capture egen  W4COD90745Wk = rowtotal(W4TODS90745S2 W4TODS90745S3)
capture egen  W4CTO90746Wk = rowtotal(W4TTOS90746S2 W4TTOS90746S3)
capture egen  W4COD90746Wk = rowtotal(W4TODS90746S2 W4TODS90746S3)
capture egen  W4COD90747Wk = rowtotal(W4TODS90747S2 W4TODS90747S3)
capture egen  W4CTO90747Wk = rowtotal(W4TTOS90747S2 W4TTOS90747S3)
capture egen  W4CTO90750Wk = rowtotal(W4TTOS90750S2 W4TTOS90750S3)
capture egen  W4COD90750Wk = rowtotal(W4TODS90750S2 W4TODS90750S3)
capture egen  W4COD90751Wk = rowtotal(W4TODS90751S2 W4TODS90751S3)
capture egen  W4CTO90751Wk = rowtotal(W4TTOS90751S2 W4TTOS90751S3)
capture egen  W4COD90752Wk = rowtotal(W4TODS90752S2 W4TODS90752S3)
capture egen  W4CTO90752Wk = rowtotal(W4TTOS90752S2 W4TTOS90752S3)
capture egen  W4CTO90753Wk = rowtotal(W4TTOS90753S2 W4TTOS90753S3)
capture egen  W4COD90753Wk = rowtotal(W4TODS90753S2 W4TODS90753S3)
capture egen  W4COD90754Wk = rowtotal(W4TODS90754S2 W4TODS90754S3)
capture egen  W4CTO90754Wk = rowtotal(W4TTOS90754S2 W4TTOS90754S3)
capture egen  W4COD90757Wk = rowtotal(W4TODS90757S2 W4TODS90757S3)
capture egen  W4CTO90757Wk = rowtotal(W4TTOS90757S2 W4TTOS90757S3)
capture egen  W4CTO90758Wk = rowtotal(W4TTOS90758S2 W4TTOS90758S3)
capture egen  W4COD90758Wk = rowtotal(W4TODS90758S2 W4TODS90758S3)
capture egen  W4COD90759Wk = rowtotal(W4TODS90759S2 W4TODS90759S3)
capture egen  W4CTO90759Wk = rowtotal(W4TTOS90759S2 W4TTOS90759S3)
capture egen  W4CTO90760Wk = rowtotal(W4TTOS90760S2 W4TTOS90760S3)
capture egen  W4COD90760Wk = rowtotal(W4TODS90760S2 W4TODS90760S3)
capture egen  W4COD90761Wk = rowtotal(W4TODS90761S2 W4TODS90761S3)
capture egen  W4CTO90761Wk = rowtotal(W4TTOS90761S2 W4TTOS90761S3)
capture egen  W4CTO90762Wk = rowtotal(W4TTOS90762S2 W4TTOS90762S3)
capture egen  W4COD90762Wk = rowtotal(W4TODS90762S2 W4TODS90762S3)
capture egen  W4COD90763Wk = rowtotal(W4TODS90763S2 W4TODS90763S3)
capture egen  W4CTO90763Wk = rowtotal(W4TTOS90763S2 W4TTOS90763S3)
capture egen  W4CTO90764Wk = rowtotal(W4TTOS90764S2 W4TTOS90764S3)
capture egen  W4COD90764Wk = rowtotal(W4TODS90764S2 W4TODS90764S3)
capture egen  W4CTO90766Wk = rowtotal(W4TTOS90766S2 W4TTOS90766S3)
capture egen  W4COD90766Wk = rowtotal(W4TODS90766S2 W4TODS90766S3)
capture egen  W4COD90767Wk = rowtotal(W4TODS90767S2 W4TODS90767S3)
capture egen  W4CTO90767Wk = rowtotal(W4TTOS90767S2 W4TTOS90767S3)
capture egen  W4CTO90768Wk = rowtotal(W4TTOS90768S2 W4TTOS90768S3)
capture egen  W4COD90768Wk = rowtotal(W4TODS90768S2 W4TODS90768S3)
capture egen  W4CTO90769Wk = rowtotal(W4TTOS90769S2 W4TTOS90769S3)
capture egen  W4COD90769Wk = rowtotal(W4TODS90769S2 W4TODS90769S3)
capture egen  W4COD90770Wk = rowtotal(W4TODS90770S2 W4TODS90770S3)
capture egen  W4CTO90770Wk = rowtotal(W4TTOS90770S2 W4TTOS90770S3)
capture egen  W4CTO90771Wk = rowtotal(W4TTOS90771S2 W4TTOS90771S3)
capture egen  W4COD90771Wk = rowtotal(W4TODS90771S2 W4TODS90771S3)
capture egen  W4CTO90772Wk = rowtotal(W4TTOS90772S2 W4TTOS90772S3)
capture egen  W4COD90772Wk = rowtotal(W4TODS90772S2 W4TODS90772S3)
capture egen  W4CTO90773Wk = rowtotal(W4TTOS90773S2 W4TTOS90773S3)
capture egen  W4COD90773Wk = rowtotal(W4TODS90773S2 W4TODS90773S3)
capture egen  W4CTO90774Wk = rowtotal(W4TTOS90774S2 W4TTOS90774S3)
capture egen  W4COD90774Wk = rowtotal(W4TODS90774S2 W4TODS90774S3)
capture egen  W4CTO90778Wk = rowtotal(W4TTOS90778S2 W4TTOS90778S3)
capture egen  W4COD90778Wk = rowtotal(W4TODS90778S2 W4TODS90778S3)
capture egen  W4CTO90779Wk = rowtotal(W4TTOS90779S2 W4TTOS90779S3)
capture egen  W4COD90779Wk = rowtotal(W4TODS90779S2 W4TODS90779S3)
capture egen  W4CTO90780Wk = rowtotal(W4TTOS90780S2 W4TTOS90780S3)
capture egen  W4COD90780Wk = rowtotal(W4TODS90780S2 W4TODS90780S3)
capture egen  W4COD90781Wk = rowtotal(W4TODS90781S2 W4TODS90781S3)
capture egen  W4CTO90781Wk = rowtotal(W4TTOS90781S2 W4TTOS90781S3)
capture egen  W4CTO90782Wk = rowtotal(W4TTOS90782S2 W4TTOS90782S3)
capture egen  W4COD90782Wk = rowtotal(W4TODS90782S2 W4TODS90782S3)
capture egen  W4COD90783Wk = rowtotal(W4TODS90783S2 W4TODS90783S3)
capture egen  W4CTO90783Wk = rowtotal(W4TTOS90783S2 W4TTOS90783S3)
capture egen  W4COD90784Wk = rowtotal(W4TODS90784S2 W4TODS90784S3)
capture egen  W4CTO90784Wk = rowtotal(W4TTOS90784S2 W4TTOS90784S3)
capture egen  W4CTO90785Wk = rowtotal(W4TTOS90785S2 W4TTOS90785S3)
capture egen  W4COD90785Wk = rowtotal(W4TODS90785S2 W4TODS90785S3)
capture egen  W4CTO90786Wk = rowtotal(W4TTOS90786S2 W4TTOS90786S3)
capture egen  W4COD90786Wk = rowtotal(W4TODS90786S2 W4TODS90786S3)
capture egen  W4CTO90787Wk = rowtotal(W4TTOS90787S2 W4TTOS90787S3)
capture egen  W4COD90787Wk = rowtotal(W4TODS90787S2 W4TODS90787S3)
capture egen  W4COD90788Wk = rowtotal(W4TODS90788S2 W4TODS90788S3)
capture egen  W4CTO90788Wk = rowtotal(W4TTOS90788S2 W4TTOS90788S3)
capture egen  W4COD90789Wk = rowtotal(W4TODS90789S2 W4TODS90789S3)
capture egen  W4CTO90789Wk = rowtotal(W4TTOS90789S2 W4TTOS90789S3)
capture egen  W4COD90790Wk = rowtotal(W4TODS90790S2 W4TODS90790S3)
capture egen  W4CTO90790Wk = rowtotal(W4TTOS90790S2 W4TTOS90790S3)
capture egen  W4CTO90791Wk = rowtotal(W4TTOS90791S2 W4TTOS90791S3)
capture egen  W4COD90791Wk = rowtotal(W4TODS90791S2 W4TODS90791S3)
capture egen  W4COD90792Wk = rowtotal(W4TODS90792S2 W4TODS90792S3)
capture egen  W4CTO90792Wk = rowtotal(W4TTOS90792S2 W4TTOS90792S3)
capture egen  W4CTO90793Wk = rowtotal(W4TTOS90793S2 W4TTOS90793S3)
capture egen  W4COD90793Wk = rowtotal(W4TODS90793S2 W4TODS90793S3)
capture egen  W4COD90794Wk = rowtotal(W4TODS90794S2 W4TODS90794S3)
capture egen  W4CTO90794Wk = rowtotal(W4TTOS90794S2 W4TTOS90794S3)
capture egen  W4COD90795Wk = rowtotal(W4TODS90795S2 W4TODS90795S3)
capture egen  W4CTO90795Wk = rowtotal(W4TTOS90795S2 W4TTOS90795S3)
capture egen  W4COD90796Wk = rowtotal(W4TODS90796S2 W4TODS90796S3)
capture egen  W4CTO90796Wk = rowtotal(W4TTOS90796S2 W4TTOS90796S3)
capture egen  W4CTO90797Wk = rowtotal(W4TTOS90797S2 W4TTOS90797S3)
capture egen  W4COD90797Wk = rowtotal(W4TODS90797S2 W4TODS90797S3)
capture egen  W4COD90798Wk = rowtotal(W4TODS90798S2 W4TODS90798S3)
capture egen  W4CTO90798Wk = rowtotal(W4TTOS90798S2 W4TTOS90798S3)
capture egen  W4CTO90799Wk = rowtotal(W4TTOS90799S2 W4TTOS90799S3)
capture egen  W4COD90799Wk = rowtotal(W4TODS90799S2 W4TODS90799S3)
capture egen  W4CTO90800Wk = rowtotal(W4TTOS90800S2 W4TTOS90800S3)
capture egen  W4COD90800Wk = rowtotal(W4TODS90800S2 W4TODS90800S3)
capture egen  W4CTO90801Wk = rowtotal(W4TTOS90801S2 W4TTOS90801S3)
capture egen  W4COD90801Wk = rowtotal(W4TODS90801S2 W4TODS90801S3)
capture egen  W4COD90802Wk = rowtotal(W4TODS90802S2 W4TODS90802S3)
capture egen  W4CTO90802Wk = rowtotal(W4TTOS90802S2 W4TTOS90802S3)
capture egen  W4COD90803Wk = rowtotal(W4TODS90803S2 W4TODS90803S3)
capture egen  W4CTO90803Wk = rowtotal(W4TTOS90803S2 W4TTOS90803S3)
capture egen  W4CTO90804Wk = rowtotal(W4TTOS90804S2 W4TTOS90804S3)
capture egen  W4COD90804Wk = rowtotal(W4TODS90804S2 W4TODS90804S3)
capture egen  W4COD90805Wk = rowtotal(W4TODS90805S2 W4TODS90805S3)
capture egen  W4CTO90805Wk = rowtotal(W4TTOS90805S2 W4TTOS90805S3)
capture egen  W4COD90806Wk = rowtotal(W4TODS90806S2 W4TODS90806S3)
capture egen  W4CTO90806Wk = rowtotal(W4TTOS90806S2 W4TTOS90806S3)
capture egen  W4CTO90807Wk = rowtotal(W4TTOS90807S2 W4TTOS90807S3)
capture egen  W4COD90807Wk = rowtotal(W4TODS90807S2 W4TODS90807S3)


* Saving
rename SUBJECTID SUBJECTIDW4
rename IP IPW4
sort PAC
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W4/WorkingData/DurationData/W4S1234_Working.dta", replace

**************************************************************************************************
**************************************************************************************************
*										W	E	E	K	 5
**************************************************************************************************
**************************************************************************************************

set more off
clear all
* Set Working Directory (comment it with a "*", don't delet it)
cd "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W5/WorkingData"

**************************************************************************************************
*											W5S1
**************************************************************************************************


*Open W5S1 and save a Working Copy (We wanna keep a copy of the original data)
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W5/WorkingData/W5S1.dta", replace
destring, replace
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W5/WorkingData/W5S1_Working.dta", replace

* From Excel to STATA everything enters as lower case. Lets reverse it to its original: Upper Case
rename *, upper

* Now lets keep what we need
keep ///
DATE FOD_A_3770 GRP_20625 GRP_20626 Q_5977_DUR_32224 Q_5977_SEQ_32224 Q_5977_VAL_32224 ///
SUBJECT_ID TIME TIME_BEGIN_FLOWPHASE TIME_BEGIN_SUBSTAGE TIME_END_FLOWPHASE TOD_A_3770 ///
TOTAL_FLOW_ACCESSED TTO_A_3770 WORDS_A_3770

*rename SUBJECT_ID to PAC
rename Q_5977_VAL_32224 PAC

* Adding Prefixes and Suffixes
foreach x of var * {
rename `x' W5`x'
} 

foreach x of var * {
rename `x' `x'S1
}

* Renaming SUBJECT_ID (no pre nor su fixes, we need that to merge on it)
rename W5SUBJECT_IDS1 SUBJECTID

* Renaming SUBJECT_ID (no pre nor su fixes, we need that to merge on it)
rename W5PACS1 PAC

* Eliminating ALL underscores
foreach v of var *_* { 
	local V : subinstr local v "_" "", all
	capture rename `v' `V' 
	if _rc di as txt "problem with `v'"
} 

*saving
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W5/WorkingData/W5S1_Working.dta", replace

**************************************************************************************************
*											W5S2
**************************************************************************************************

*Open W5S2 and save a Working Copy (We wanna keep a copy of the original data)
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W5/WorkingData/W5S2.dta", replace
destring, replace
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W5/WorkingData/W5S2_Working.dta", replace

* From Excel to STATA everything enters as lower case. Lets reverse it to its original: Upper Case
rename *, upper

* Now lets keep what we need
keep ///
DATE FOD_A_3773 FOD_A_3774 FOD_A_3775 FOD_A_3776 FOD_A_3777 FOD_A_3778 FOD_A_3779 FOD_A_3780 ///
FOD_S_90892 FOD_S_90893 FOD_S_90906 FOD_S_90907 FOD_S_90921 FOD_S_90922 FOD_S_90934 FOD_S_90935 ///
FOD_S_91002 FOD_S_91003 FOD_S_91004 FOD_S_91005 FOD_S_91006 FOD_S_91007 FOD_S_91008 FOD_S_91009 ///
FOD_S_91010 FOD_S_91011 FOD_S_91012 FOD_S_91013 FOD_S_91014 FOD_S_91015 FOD_S_91016 FOD_S_91017 ///
FOD_S_91018 FOD_S_91019 FOD_S_91020 FOD_S_91022 FOD_S_91023 FOD_S_91024 FOD_S_91025 FOD_S_91026 ///
FOD_S_91027 FOD_S_91028 FOD_S_91029 FOD_S_91030 FOD_S_91031 FOD_S_91032 FOD_S_91033 FOD_S_91034 ///
GRP_20556 GRP_20557 GRP_20558 GRP_20559 GRP_20560 GRP_20561 GRP_20562 GRP_20563 GRP_20564  ///
GRP_20565 GRP_20566 GRP_20567 GRP_20568 GRP_20569 GRP_20570 GRP_20571 SUBJECT_ID TIME TIME_BEGIN_FLOWPHASE ///
TIME_BEGIN_SUBSTAGE TIME_END_FLOWPHASE TOD_A_3773 TOD_A_3774 TOD_A_3775 TOD_A_3776 TOD_A_3777 ///
TOD_A_3778 TOD_A_3779 TOD_A_3780 TOD_S_90892 TOD_S_90893 TOD_S_90906 TOD_S_90907 TOD_S_90921 ///
TOD_S_90922 TOD_S_90934 TOD_S_90935 TOD_S_91002 TOD_S_91003 TOD_S_91004 TOD_S_91005 TOD_S_91006 ///
TOD_S_91007 TOD_S_91008 TOD_S_91009 TOD_S_91010 TOD_S_91011 TOD_S_91012 TOD_S_91013 TOD_S_91014 ///
TOD_S_91015 TOD_S_91016 TOD_S_91017 TOD_S_91018 TOD_S_91019 TOD_S_91020 TOD_S_91022 TOD_S_91023 ///
TOD_S_91024 TOD_S_91025 TOD_S_91026 TOD_S_91027 TOD_S_91028 TOD_S_91029 TOD_S_91030 TOD_S_91031 ///
TOD_S_91032 TOD_S_91033 TOD_S_91034 TOTAL_FLOW_ACCESSED TTO_A_3773 TTO_A_3774 TTO_A_3775 TTO_A_3776 ///
TTO_A_3777 TTO_A_3778 TTO_A_3779 TTO_A_3780 TTO_S_90892 TTO_S_90893 TTO_S_90906 TTO_S_90907 ///
TTO_S_90921 TTO_S_90922 TTO_S_90934 TTO_S_90935 TTO_S_91002 TTO_S_91003 TTO_S_91004 TTO_S_91005 ///
TTO_S_91006 TTO_S_91007 TTO_S_91008 TTO_S_91009 TTO_S_91010 TTO_S_91011 TTO_S_91012 TTO_S_91013 ///
TTO_S_91014 TTO_S_91015 TTO_S_91016 TTO_S_91017 TTO_S_91018 TTO_S_91019 TTO_S_91020 TTO_S_91022  ///
TTO_S_91023 TTO_S_91024 TTO_S_91025 TTO_S_91026 TTO_S_91027 TTO_S_91028 TTO_S_91029 TTO_S_91030 ///
TTO_S_91031 TTO_S_91032 TTO_S_91033 TTO_S_91034 WORDS_A_3773 WORDS_A_3774 WORDS_A_3775 WORDS_A_3776 ///
WORDS_A_3777 WORDS_A_3778 WORDS_A_3779 WORDS_A_3780 

* Adding Prefixes and Suffixes
foreach x of var * {
rename `x' W5`x'
}
 
foreach x of var * {
rename `x' `x'S2
}

* Renaming SUBJECT_ID (no pre nor su fixes, we need that to merge on it)
rename W5SUBJECT_IDS2 SUBJECT_ID 

* Eliminating ALL underscores
foreach v of var *_* { 
	local V : subinstr local v "_" "", all
	capture rename `v' `V' 
	if _rc di as txt "problem with `v'"
} 

*saving
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W5/WorkingData/W5S2_Working.dta", replace

**************************************************************************************************
*											W5S3
**************************************************************************************************

*Open W5S3 and save a Working Copy (We wanna keep a copy of the original data)
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W5/WorkingData/W5S3.dta", replace
destring, replace
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W5/WorkingData/W5S3_Working.dta", replace

* From Excel to STATA everything enters as lower case. Lets reverse it to its original: Upper Case
rename *, upper

* Now lets keep what we need
keep ///
DATE FOD_A_3771 FOD_A_3772 FOD_S_90808 FOD_S_90809 FOD_S_90810 FOD_S_90811 FOD_S_90812 FOD_S_90813 ///
FOD_S_90814 FOD_S_90815 FOD_S_90816 FOD_S_90817 FOD_S_90818 FOD_S_90819 FOD_S_90820 FOD_S_90821 ///
FOD_S_90822 FOD_S_90823 FOD_S_90824 FOD_S_90825 FOD_S_90826 FOD_S_90827 FOD_S_90828 FOD_S_90829 ///
FOD_S_90835 FOD_S_90836 FOD_S_90837 FOD_S_90838 FOD_S_90839 FOD_S_90840 FOD_S_90841 FOD_S_90842 ///
FOD_S_90843 FOD_S_90844 FOD_S_90845 FOD_S_90846 FOD_S_90847 FOD_S_90848 FOD_S_90849 FOD_S_90850 ///
FOD_S_90851 FOD_S_90852 FOD_S_90853 FOD_S_90854 FOD_S_90855 FOD_S_90856 FOD_S_90857 FOD_S_90858 ///
FOD_S_90859 FOD_S_90860 FOD_S_90861 FOD_S_90862 FOD_S_90863 FOD_S_90864 FOD_S_90865 FOD_S_90866 ///
FOD_S_90868 FOD_S_90869 FOD_S_90871 FOD_S_90872 FOD_S_90873 FOD_S_90876 FOD_S_90877 FOD_S_90878 ///
FOD_S_90880 FOD_S_90881 FOD_S_90883 FOD_S_90884 FOD_S_90886 FOD_S_90887 FOD_S_90888 FOD_S_90889 ///
FOD_S_90890 FOD_S_90892 FOD_S_90893 FOD_S_90894 FOD_S_90895 FOD_S_90896 FOD_S_90897 FOD_S_90898 ///
FOD_S_90899 FOD_S_90900 FOD_S_90901 FOD_S_90902 FOD_S_90903 FOD_S_90904 FOD_S_90905 FOD_S_90906 ///
FOD_S_90907 FOD_S_90908 FOD_S_90909 FOD_S_90910 FOD_S_90911 FOD_S_90912 FOD_S_90913 FOD_S_90914 ///
FOD_S_90915 FOD_S_90916 FOD_S_90917 FOD_S_90918 FOD_S_90919 FOD_S_90920 FOD_S_90921 FOD_S_90922 ///
FOD_S_90923 FOD_S_90924 FOD_S_90925 FOD_S_90926 FOD_S_90927 FOD_S_90929 FOD_S_90931 FOD_S_90932 ///
FOD_S_90933 FOD_S_90934 FOD_S_90935 FOD_S_90936 FOD_S_90938 FOD_S_90940 FOD_S_90941 FOD_S_90942 ///
FOD_S_90943 FOD_S_90944 FOD_S_90945 FOD_S_90946 FOD_S_90947 FOD_S_90948 FOD_S_90949 FOD_S_90950 ///
FOD_S_90951 FOD_S_90952 FOD_S_90953 FOD_S_90954 FOD_S_90955 FOD_S_90956 FOD_S_90957 FOD_S_90961 ///
FOD_S_90964 FOD_S_90965 FOD_S_90966 FOD_S_90968 FOD_S_90969 FOD_S_90970 FOD_S_90971 FOD_S_90972 ///
FOD_S_90973 FOD_S_90974 FOD_S_90976 FOD_S_90977 FOD_S_90978 FOD_S_90979 FOD_S_90980 FOD_S_90981 ///
FOD_S_90984 FOD_S_90985 FOD_S_90986 FOD_S_90987 FOD_S_90988 FOD_S_90989 FOD_S_90990 FOD_S_90991 ///
FOD_S_90996 FOD_S_90997 FOD_S_90998 FOD_S_90999 FOD_S_91000 FOD_S_91002 FOD_S_91003 FOD_S_91004 ///
FOD_S_91005 FOD_S_91006 FOD_S_91007 FOD_S_91008 FOD_S_91009 FOD_S_91010 FOD_S_91011 FOD_S_91012 ///
FOD_S_91013 FOD_S_91014 FOD_S_91015 FOD_S_91016 FOD_S_91017 FOD_S_91018 FOD_S_91019 FOD_S_91020 ///
FOD_S_91022 FOD_S_91023 FOD_S_91024 FOD_S_91025 FOD_S_91026 FOD_S_91027 FOD_S_91028 FOD_S_91029 ///
FOD_S_91030 FOD_S_91031 FOD_S_91032 GRP_20556 GRP_20557 GRP_20558 GRP_20559 GRP_20560 GRP_20561 ///
GRP_20562 GRP_20563 GRP_20564 GRP_20565 GRP_20566 GRP_20567 GRP_20568 GRP_20569 GRP_20570  ///
GRP_20571 GRP_20575 GRP_20580 GRP_20581 GRP_20582 GRP_20583 GRP_20584 GRP_20586 GRP_20587 ///
GRP_20588 GRP_20590 GRP_20594 GRP_20595 GRP_20596 GRP_20597 GRP_20598 GRP_20599 GRP_20601 ///
GRP_20602 GRP_20603 GRP_20604 GRP_20605 GRP_20606 GRP_20608 GRP_20614 GRP_20616 GRP_20618 ///
GRP_20619 GRP_20620 GRP_20621 GRP_20622 GRP_20623 GRP_20624 SUBJECT_ID TIME TIME_BEGIN_FLOWPHASE ///
TIME_BEGIN_SUBSTAGE TIME_END_FLOWPHASE TOD_A_3771 TOD_A_3772 TOD_S_90808 TOD_S_90809 TOD_S_90810 ///
TOD_S_90811 TOD_S_90812 TOD_S_90813 TOD_S_90814 TOD_S_90815 TOD_S_90816 TOD_S_90817 TOD_S_90818 ///
TOD_S_90819 TOD_S_90820 TOD_S_90821 TOD_S_90822 TOD_S_90823 TOD_S_90824 TOD_S_90825 TOD_S_90826 ///
TOD_S_90827 TOD_S_90828 TOD_S_90829 TOD_S_90835 TOD_S_90836 TOD_S_90837 TOD_S_90838 TOD_S_90839 ///
TOD_S_90840 TOD_S_90841 TOD_S_90842 TOD_S_90843 TOD_S_90844 TOD_S_90845 TOD_S_90846 TOD_S_90847 ///
TOD_S_90848 TOD_S_90849 TOD_S_90850 TOD_S_90851 TOD_S_90852 TOD_S_90853 TOD_S_90854 TOD_S_90855 ///
TOD_S_90856 TOD_S_90857 TOD_S_90858 TOD_S_90859 TOD_S_90860 TOD_S_90861 TOD_S_90862 TOD_S_90863 ///
TOD_S_90864 TOD_S_90865 TOD_S_90866 TOD_S_90868 TOD_S_90869 TOD_S_90871 TOD_S_90872 TOD_S_90873 ///
TOD_S_90876 TOD_S_90877 TOD_S_90878 TOD_S_90880 TOD_S_90881 TOD_S_90883 TOD_S_90884 TOD_S_90886 ///
TOD_S_90887 TOD_S_90888 TOD_S_90889 TOD_S_90890 TOD_S_90892 TOD_S_90893 TOD_S_90894 TOD_S_90895 ///
TOD_S_90896 TOD_S_90897 TOD_S_90898 TOD_S_90899 TOD_S_90900 TOD_S_90901 TOD_S_90902 TOD_S_90903 ///
TOD_S_90904 TOD_S_90905 TOD_S_90906 TOD_S_90907 TOD_S_90908 TOD_S_90909 TOD_S_90910 TOD_S_90911 ///
TOD_S_90912 TOD_S_90913 TOD_S_90914 TOD_S_90915 TOD_S_90916 TOD_S_90917 TOD_S_90918 TOD_S_90919 ///
TOD_S_90920 TOD_S_90921 TOD_S_90922 TOD_S_90923 TOD_S_90924 TOD_S_90925 TOD_S_90926 TOD_S_90927 ///
TOD_S_90929 TOD_S_90931 TOD_S_90932 TOD_S_90933 TOD_S_90934 TOD_S_90935 TOD_S_90936 TOD_S_90938 ///
TOD_S_90940 TOD_S_90941 TOD_S_90942 TOD_S_90943 TOD_S_90944 TOD_S_90945 TOD_S_90946 TOD_S_90947 ///
TOD_S_90948 TOD_S_90949 TOD_S_90950 TOD_S_90951 TOD_S_90952 TOD_S_90953 TOD_S_90954 TOD_S_90955 ///
TOD_S_90956 TOD_S_90957 TOD_S_90961 TOD_S_90964 TOD_S_90965 TOD_S_90966 TOD_S_90968 TOD_S_90969 ///
TOD_S_90970 TOD_S_90971 TOD_S_90972 TOD_S_90973 TOD_S_90974 TOD_S_90976 TOD_S_90977 TOD_S_90978 ///
TOD_S_90979 TOD_S_90980 TOD_S_90981 TOD_S_90984 TOD_S_90985 TOD_S_90986 TOD_S_90987 TOD_S_90988 ///
TOD_S_90989 TOD_S_90990 TOD_S_90991 TOD_S_90996 TOD_S_90997 TOD_S_90998 TOD_S_90999 TOD_S_91000 ///
TOD_S_91002 TOD_S_91003 TOD_S_91004 TOD_S_91005 TOD_S_91006 TOD_S_91007 TOD_S_91008 TOD_S_91009 ///
TOD_S_91010 TOD_S_91011 TOD_S_91012 TOD_S_91013 TOD_S_91014 TOD_S_91015 TOD_S_91016 TOD_S_91017 ///
TOD_S_91018 TOD_S_91019 TOD_S_91020 TOD_S_91022 TOD_S_91023 TOD_S_91024 TOD_S_91025 TOD_S_91026 ///
TOD_S_91027 TOD_S_91028 TOD_S_91029 TOD_S_91030 TOD_S_91031 TOD_S_91032 TOTAL_FLOW_ACCESSED ///
TTO_A_3771 TTO_A_3772 TTO_S_90808 TTO_S_90809 TTO_S_90810 TTO_S_90811 TTO_S_90812 TTO_S_90813 ///
TTO_S_90814 TTO_S_90815 TTO_S_90816 TTO_S_90817 TTO_S_90818 TTO_S_90819 TTO_S_90820 TTO_S_90821 ///
TTO_S_90822 TTO_S_90823 TTO_S_90824 TTO_S_90825 TTO_S_90826 TTO_S_90827 TTO_S_90828 TTO_S_90829 ///
TTO_S_90835 TTO_S_90836 TTO_S_90837 TTO_S_90838 TTO_S_90839 TTO_S_90840 TTO_S_90841 TTO_S_90842 ///
TTO_S_90843 TTO_S_90844 TTO_S_90845 TTO_S_90846 TTO_S_90847 TTO_S_90848 TTO_S_90849 TTO_S_90850 ///
TTO_S_90851 TTO_S_90852 TTO_S_90853 TTO_S_90854 TTO_S_90855 TTO_S_90856 TTO_S_90857 TTO_S_90858 ///
TTO_S_90859 TTO_S_90860 TTO_S_90861 TTO_S_90862 TTO_S_90863 TTO_S_90864 TTO_S_90865 TTO_S_90866 ///
TTO_S_90868 TTO_S_90869 TTO_S_90871 TTO_S_90872 TTO_S_90873 TTO_S_90876 TTO_S_90877 TTO_S_90878 ///
TTO_S_90880 TTO_S_90881 TTO_S_90883 TTO_S_90884 TTO_S_90886 TTO_S_90887 TTO_S_90888 TTO_S_90889 ///
TTO_S_90890 TTO_S_90892 TTO_S_90893 TTO_S_90894 TTO_S_90895 TTO_S_90896 TTO_S_90897 TTO_S_90898 ///
TTO_S_90899 TTO_S_90900 TTO_S_90901 TTO_S_90902 TTO_S_90903 TTO_S_90904 TTO_S_90905 TTO_S_90906 ///
TTO_S_90907 TTO_S_90908 TTO_S_90909 TTO_S_90910 TTO_S_90911 TTO_S_90912 TTO_S_90913 TTO_S_90914 ///
TTO_S_90915 TTO_S_90916 TTO_S_90917 TTO_S_90918 TTO_S_90919 TTO_S_90920 TTO_S_90921 TTO_S_90922 ///
TTO_S_90923 TTO_S_90924 TTO_S_90925 TTO_S_90926 TTO_S_90927 TTO_S_90929 TTO_S_90931 TTO_S_90932 ///
TTO_S_90933 TTO_S_90934 TTO_S_90935 TTO_S_90936 TTO_S_90938 TTO_S_90940 TTO_S_90941 TTO_S_90942 ///
TTO_S_90943 TTO_S_90944 TTO_S_90945 TTO_S_90946 TTO_S_90947 TTO_S_90948 TTO_S_90949 TTO_S_90950 ///
TTO_S_90951 TTO_S_90952 TTO_S_90953 TTO_S_90954 TTO_S_90955 TTO_S_90956 TTO_S_90957 TTO_S_90961 ///
TTO_S_90964 TTO_S_90965 TTO_S_90966 TTO_S_90968 TTO_S_90969 TTO_S_90970 TTO_S_90971 TTO_S_90972 ///
TTO_S_90973 TTO_S_90974 TTO_S_90976 TTO_S_90977 TTO_S_90978 TTO_S_90979 TTO_S_90980 TTO_S_90981 ///
TTO_S_90984 TTO_S_90985 TTO_S_90986 TTO_S_90987 TTO_S_90988 TTO_S_90989 TTO_S_90990 TTO_S_90991 ///
TTO_S_90996 TTO_S_90997 TTO_S_90998 TTO_S_90999 TTO_S_91000 TTO_S_91002 TTO_S_91003 TTO_S_91004 ///
TTO_S_91005 TTO_S_91006 TTO_S_91007 TTO_S_91008 TTO_S_91009 TTO_S_91010 TTO_S_91011 TTO_S_91012  ///
TTO_S_91013 TTO_S_91014 TTO_S_91015 TTO_S_91016 TTO_S_91017 TTO_S_91018 TTO_S_91019 TTO_S_91020 ///
TTO_S_91022 TTO_S_91023 TTO_S_91024 TTO_S_91025 TTO_S_91026 TTO_S_91027 TTO_S_91028 TTO_S_91029 ///
TTO_S_91030 TTO_S_91031 TTO_S_91032 WORDS_A_3771 WORDS_A_3772

* Adding Prefixes and Suffixes
foreach x of var * {
rename `x' W5`x'
}
 
foreach x of var * {
rename `x' `x'S3
}

* Renaming SUBJECT_ID (no pre nor su fixes, we need that to merge on it)
rename W5SUBJECT_IDS3 SUBJECT_ID 

* Eliminating ALL underscores
foreach v of var *_* { 
	local V : subinstr local v "_" "", all
	capture rename `v' `V' 
	if _rc di as txt "problem with `v'"
} 

*saving
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W5/WorkingData/W5S3_Working.dta", replace

**************************************************************************************************
*											W5S4
**************************************************************************************************

*Open W5S4 and save a Working Copy (We wanna keep a copy of the original data)
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W5/WorkingData/W5S4.dta", replace
destring, replace
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W5/WorkingData/W5S4_Working.dta", replace

* From Excel to STATA everything enters as lower case. Lets reverse it to its original: Upper Case
rename *, upper

* Now lets keep what we need
keep ///
DATE FOD_A_3769 GRP_20577 GRP_20578 Q_5980_DUR_32222 Q_5980_DUR_32223 Q_5980_DUR_32236 Q_5980_SEQ_32222 ///
Q_5980_SEQ_32223 Q_5980_SEQ_32236 Q_5980_VAL_32222 Q_5980_VAL_32223 Q_5980_VAL_32236 Q_5982_DUR_32227 ///
Q_5982_DUR_32228 Q_5982_DUR_32237 Q_5982_SEQ_32227 Q_5982_SEQ_32228 Q_5982_SEQ_32237 Q_5982_VAL_32227 ///
Q_5982_VAL_32228 Q_5982_VAL_32237 Q_6017_DUR_32222 Q_6017_DUR_32223 Q_6017_DUR_32236 Q_6017_SEQ_32222 ///
Q_6017_SEQ_32223 Q_6017_SEQ_32236 Q_6017_VAL_32222 Q_6017_VAL_32223 Q_6017_VAL_32236 Q_6018_DUR_32227 ///
Q_6018_DUR_32228 Q_6018_DUR_32237 Q_6018_SEQ_32227 Q_6018_SEQ_32228 Q_6018_SEQ_32237 Q_6018_VAL_32227 ///
Q_6018_VAL_32228 Q_6018_VAL_32237 SUBJECT_ID TIME TIME_BEGIN_FLOWPHASE TIME_BEGIN_SUBSTAGE TIME_END_FLOWPHASE ///
TOD_A_3769 TOTAL_FLOW_ACCESSED TTO_A_3769 WORDS_A_3769

* Adding Prefixes and Suffixes
foreach x of var * {
rename `x' W5`x'
}
 
foreach x of var * {
rename `x' `x'S4
}

* Renaming SUBJECT_ID (no pre nor su fixes, we need that to merge on it)
rename W5SUBJECT_IDS4 SUBJECT_ID 

* Eliminating ALL underscores
foreach v of var *_* { 
	local V : subinstr local v "_" "", all
	capture rename `v' `V' 
	if _rc di as txt "problem with `v'"
} 

*saving
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W5/WorkingData/W5S4_Working.dta", replace


**************************************************************************************************
*							M	E	R	G	I	N	G	 		W	5
**************************************************************************************************

clear all

* Merge W5S2 with W5S1
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W5/WorkingData/W5S2_Working.dta", replace
merge 1:m SUBJECTID using "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W5/WorkingData/W5S1_Working.dta"
drop _merge
* Save W5S12
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W5/WorkingData/W5S12_Working.dta", replace

**************************************************************************************************
clear all

* Merge W5S3 with W5S4
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W5/WorkingData/W5S4_Working.dta", replace
merge 1:m SUBJECTID using "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W5/WorkingData/W5S3_Working.dta"
drop _merge
* Save W5S34
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W5/WorkingData/W5S34_Working.dta", replace

**************************************************************************************************
clear all

* Merge W5S12 with W5S34
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W5/WorkingData/W5S12_Working.dta", replace
merge 1:m SUBJECTID using "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W5/WorkingData/W5S34_Working.dta"
drop _merge
* Save W5S1234
order *, alpha


*Dropping things we won't need...
drop W5DATES2 W5DATES3 W5DATES4 W5TOTALFLOWACCESSEDS1 W5TOTALFLOWACCESSEDS4 W5TIMES2 W5TIMES3 W5TIMES4


* labeling


label variable W5TODA3769S4 "That's it for this Week"
label variable W5FODA3770S1 "Whoops -- Not a Valid Subject ID"
label variable W5FODA3771S3 "Substage2and3BetwNoIntD&R"
label variable W5TTOA3772S3 "Substage2and3BetwIntD&R"
label variable W5WORDSA3773S2 "WelcomeWk5DIntImp"
label variable W5WORDSA3774S2 "WelcomeWk5DIntNot"
label variable W5FODA3775S2 "WelcomeWk5DNoIntImp"
label variable W5TTOA3776S2 "WelcomeWk5DNoIntNot"
label variable W5WORDSA3777S2 "WelcomeWk5RIntImp"
label variable W5FODA3778S2 "WelcomeWk5RIntNot"
label variable W5TTOA3779S2 "WelcomeWk5RNoIntImp"
label variable W5FODA3780S2 "WelcomeWk5RNoIntNot"
label variable W5GRP20556S2 "D02IntMainImp"
label variable W5GRP20557S2 "D04NoIntMainImp"
label variable W5GRP20558S2 "D06IntMainNot"
label variable W5GRP20559S2 "D08NoIntMainNot"
label variable W5GRP20560S3 "D01IntDiverseImp"
label variable W5GRP20561S3 "D03NoIntDiverseImp"
label variable W5GRP20562S3 "D05IntDiverseNot"
label variable W5GRP20563S2 "D07NoIntDiverseNot"
label variable W5GRP20564S3 "R09IntDiverseImp"
label variable W5GRP20565S3 "R10IntMainImp"
label variable W5GRP20566S2 "R11NoIntDiverseImp"
label variable W5GRP20567S2 "R12NoIntMainImp"
label variable W5GRP20568S2 "R13IntDiverseNot"
label variable W5GRP20569S3 "R14IntMainNot"
label variable W5GRP20570S2 "R15NoIntDiverseNot"
label variable W5GRP20571S2 "R16NoIntMainNot"
label variable W5GRP20575S3 "DMediaCNNNews"
label variable W5GRP20577S4 "DEndGroupQuestions"
label variable W5GRP20578S4 "REndGroupQuestions"
label variable W5GRP20580S3 "DMediaNYT"
label variable W5GRP20581S3 "DMediaWSJ"
label variable W5GRP20582S3 "DAltMediaFoxNews"
label variable W5GRP20583S3 "DAltMediaHotAirBlog"
label variable W5GRP20584S3 "DAltMediaHuffPost"
label variable W5GRP20586S3 "DCandSmithAllMediaWebpage"
label variable W5GRP20587S3 "DCandWilsonAllMediaWebpage"
label variable W5GRP20588S3 "RCandJonesAllMediaWebpage"
label variable W5GRP20590S3 "DEndorsementsAllMedia"
label variable W5GRP20594S3 "DOnlyMainMediaABC"
label variable W5GRP20595S3 "DOnlyMainMediaWireServices"
label variable W5GRP20596S3 "DOnlyMainMediaCBS"
label variable W5GRP20597S3 "DOnlyMainMediaCNN"
label variable W5GRP20598S3 "DOnlyMainMediaNBC"
label variable W5GRP20599S3 "DOnlyMainMediaNYT"
label variable W5GRP20601S3 "DCandWilsonOnlyMainWebpage"
label variable W5GRP20602S3 "DCandSmithOnlyMainWebpage"
label variable W5GRP20603S3 "DEndorsementsOnlyMain"
label variable W5GRP20604S3 "RCandJonesOnlyMainWebpage"
label variable W5GRP20605S3 "RCandWilliamsOnlyMainWebpage"
label variable W5GRP20606S3 "REndorsementsOnlyMain"
label variable W5GRP20608S3 "RAltMediaFoxNews"
label variable W5GRP20614S3 "RMediaNYT"
label variable W5GRP20616S3 "RMediaWSJ"
label variable W5GRP20618S3 "ROnlyMainMediaABC"
label variable W5GRP20619S3 "ROnlyMainMediaCBS"
label variable W5GRP20620S3 "ROnlyMainMediaNYT"
label variable W5GRP20621S3 "ROnlyMainMediaWireServices"
label variable W5GRP20622S3 "ROnlyMainMediaWSJ"
label variable W5GRP20623S3 "ROnlyMainMediaCNN"
label variable W5GRP20624S3 "ROnlyMainMediaNBC"
label variable W5GRP20625S1 "BeginGroup"
label variable W5GRP20626S1 "BeginGroupRepeated"
label variable W5Q6017SEQ32222S4 "Wk1DemSmithFT"
label variable W5Q5980DUR32223S4 "Wk1DemWilsonFT"
label variable W5Q5977SEQ32224S1 "Subject Sign-in"
label variable W5Q5982VAL32227S4 "Wk1RepWilliamsFT"
label variable W5Q5982VAL32228S4 "Wk1RepJonesFT"
label variable W5Q6017DUR32236S4 "Wk5DemVtChoice"
label variable W5Q5982DUR32237S4 "Wk5RepVtChoice"
label variable W5FODS90808S3 "Wk2DEndorsementAFLCIO"
label variable W5FODS90809S3 "Wk2DEndorsementChamberofCommerce"
label variable W5TODS90810S3 "Wk2REndorsemChamberofCommerceEndorsement"
label variable W5TTOS90811S3 "Wk2REndorsementAFLCIO"
label variable W5FODS90812S3 "wk2d1CBSHUFEcon2"
label variable W5TTOS90813S3 "wk2d1NBCFOXEcon10"
label variable W5TODS90814S3 "wk2d1REUROOTEcon18"
label variable W5TODS90815S3 "wk2d1CNNUNIEcon22"
label variable W5TODS90816S3 "wk2d2ABCABCEcon37"
label variable W5TODS90817S3 "wk2d2APAPEcon42"
label variable W5TODS90818S3 "wk2d2NYTNYTEcon54"
label variable W5TODS90819S3 "wk2d2NBCNBCEcon62"
label variable W5FODS90820S3 "wk2r2CBSCBSEcon66"
label variable W5TODS90821S3 "wk2r2APAPEcon78"
label variable W5TTOS90822S3 "wk2r2REUREUEcon82"
label variable W5FODS90823S3 "wk2r2WSJWSJEcon94"
label variable W5TTOS90824S3 "wk2r1WSJHUFEcon110"
label variable W5TODS90825S3 "wk2r1ABCROOTEcon118"
label variable W5TODS90826S3 "wk2r1NBCUNIEcon122"
label variable W5TODS90827S3 "wk2r1APFOXEcon126"
label variable W5TODS90828S3 "wk2d3CBSHUFEcon2"
label variable W5FODS90829S3 "wk2d3NBCFOXEcon10"
label variable W5TODS90835S3 "wk2r3APFOXEcon126"
label variable W5TTOS90836S3 "Wk1RWilliamsSlogan"
label variable W5FODS90837S3 "Wk1RWilliamsPersonality"
label variable W5TTOS90838S3 "Wk1RWilliamsFamily"
label variable W5FODS90839S3 "Wk1RWilliamsExperience"
label variable W5FODS90840S3 "Wk1RWilliamsCandidatePicture"
label variable W5FODS90841S3 "Wk1RWilliamsBackground"
label variable W5TTOS90842S3 "Wk1RJonesSlogan"
label variable W5TTOS90843S3 "Wk1RJonesPersonality"
label variable W5FODS90844S3 "Wk1RJonesFamily"
label variable W5FODS90845S3 "Wk1RJonesExperience"
label variable W5TODS90846S3 "Wk1RJonesCandidatePicture"
label variable W5TODS90847S3 "Wk1RJonesBackground"
label variable W5TODS90848S3 "Wk1DWilsonSlogan"
label variable W5TODS90849S3 "Wk1DWilsonPersonality"
label variable W5TTOS90850S3 "Wk1DWilsonFamily"
label variable W5TTOS90851S3 "Wk1DWilsonExperience"
label variable W5TODS90852S3 "Wk1DWilsonCandidatePicture"
label variable W5TODS90853S3 "Wk1DWilsonBackground"
label variable W5TTOS90854S3 "Wk1DSmithSlogan"
label variable W5TODS90855S3 "Wk1DSmithPersonality"
label variable W5FODS90856S3 "Wk1DSmithFamily"
label variable W5TODS90857S3 "Wk1DSmithExperience"
label variable W5TTOS90858S3 "Wk1DSmithCandidatePicture"
label variable W5FODS90859S3 "Wk1DSmithBackground"
label variable W5TODS90860S3 "SmithEducation"
label variable W5FODS90861S3 "SmithExperience"
label variable W5FODS90862S3 "SmithFamily"
label variable W5TODS90863S3 "JonesExperience"
label variable W5FODS90864S3 "SmithReligion"
label variable W5TTOS90865S3 "JonesEducation"
label variable W5FODS90866S3 "JonesFamily"
label variable W5TTOS90868S3 "JonesReligion"
label variable W5TODS90869S3 "WilsonEducation"
label variable W5FODS90871S3 "WilsonExperience"
label variable W5TODS90872S3 "WilsonFamily"
label variable W5FODS90873S3 "WilliamsReligion"
label variable W5TTOS90876S3 "WilliamsExperience"
label variable W5FODS90877S3 "WilliamsEducation"
label variable W5FODS90878S3 "WilsonReligion"
label variable W5TTOS90880S3 "wk2DSmithJobs"
label variable W5TTOS90881S3 "wk2DSmithEconPhil"
label variable W5FODS90883S3 "wk2DWilsonJobs"
label variable W5TODS90884S3 "wk2DWilsonEconPhil"
label variable W5TTOS90886S3 "Wk2RWilliamsJobs"
label variable W5FODS90887S3 "wk2RWilliamsEconPhil"
label variable W5TODS90888S3 "wk3DSmithEduc"
label variable W5TTOS90889S3 "wk6DSmithHealth"
label variable W5FODS90890S3 "wk4DSmithChina"
label variable W5TODS90892S3 "wk5DSmithAbortion"
label variable W5TTOS90893S2 "wk5DSmithGay"
label variable W5TODS90894S3 "wk6DSmithTaxes"
label variable W5TTOS90895S3 "wk7DSmithAffirm"
label variable W5TTOS90896S3 "wk7DSmithImmigration"
label variable W5TTOS90897S3 "wk8DSmithAfghan"
label variable W5FODS90898S3 "wk8DSmithMil"
label variable W5TTOS90899S3 "wk9DSmithDeathPen"
label variable W5TTOS90900S3 "wk9DSmithStemCells"
label variable W5TODS90901S3 "wk3DSmithSocPhil"
label variable W5TTOS90902S3 "wk3DWilsonEduc"
label variable W5TTOS90903S3 "wk6DWilsonHealth"
label variable W5TODS90904S3 "wk4DWilsonChina"
label variable W5TTOS90905S3 "wk4DWilsonDefense"
label variable W5TTOS90906S2 "wk5DWilsonAbortion"
label variable W5TODS90907S2 "wk5DWilsonGay"
label variable W5TODS90908S3 "wk6DWilsonTaxes"
label variable W5TODS90909S3 "wk7DWilsonAffirm"
label variable W5TTOS90910S3 "wk7DWilsonImmigration"
label variable W5TTOS90911S3 "wk8DWilsonAfghan"
label variable W5FODS90912S3 "wk8DWilsonMil"
label variable W5TTOS90913S3 "wk9DWilsonDeathPen"
label variable W5TODS90914S3 "wk9DWilsonStemCells"
label variable W5FODS90915S3 "wk7RJonesImmigration"
label variable W5FODS90916S3 "wk3DWilsonSocPhil"
label variable W5FODS90917S3 "wk3RWilliamsEduc"
label variable W5TODS90918S3 "wk3RWilliamsSocPhil"
label variable W5TODS90919S3 "wk4RWilliamsChina"
label variable W5FODS90920S3 "wk4RWilliamsDefense"
label variable W5TTOS90921S3 "wk5RWilliamsAbortion"
label variable W5FODS90922S2 "wk5RWilliamsGay"
label variable W5FODS90923S3 "wk6RWilliamsTaxes"
label variable W5FODS90924S3 "wk7RWilliamsAffirm"
label variable W5TODS90925S3 "wk7RWilliamsImmigration"
label variable W5TTOS90926S3 "wk8RWilliamsAfghan"
label variable W5FODS90927S3 "wk8RWilliamsMil"
label variable W5FODS90929S3 "wk9RWilliamsStemCells"
label variable W5TODS90931S3 "wk3RJonesSocPhil"
label variable W5TTOS90932S3 "wk4RJonesChina"
label variable W5TTOS90933S3 "wk4RJonesDefense"
label variable W5TODS90934S3 "wk5RJonesAbortion"
label variable W5FODS90935S2 "wk5RJonesGay"
label variable W5TODS90936S3 "wk6RJonesHealth"
label variable W5FODS90938S3 "wk6RJonesTaxes"
label variable W5FODS90940S3 "wk9RJonesStemCells"
label variable W5FODS90941S3 "wk8RJonesMil"
label variable W5TTOS90942S3 "wk9RJonesDeathPen"
label variable W5FODS90943S3 "wk6RWilliamsHealth"
label variable W5TTOS90944S3 "wk3d1APROOT16"
label variable W5TODS90945S3 "Wk3DEndorsementAFT"
label variable W5FODS90946S3 "Wk3DEndorsementFAIR"
label variable W5TTOS90947S3 "wk3d1ABCHOT8"
label variable W5TODS90948S3 "Wk3REndorsementFAIR"
label variable W5TTOS90949S3 "Wk3REndorsementAFT"
label variable W5FODS90950S3 "wk3d1NBCUNI12"
label variable W5FODS90951S3 "wk3d1NYTMSN28"
label variable W5FODS90952S3 "wk3d2CBSCBS36"
label variable W5TTOS90953S3 "wk3d2REUREU48"
label variable W5TTOS90954S3 "wk3d2WSJWSJ60"
label variable W5FODS90955S3 "wk3d2NBCNBC64"
label variable W5TODS90956S3 "wk3d3ABCHOT8"
label variable W5FODS90957S3 "wk3r2ABCABC72"
label variable W5TODS90961S3 "wk3r2APAP80"
label variable W5TTOS90964S3 "wk3r2NYTNYT92"
label variable W5TODS90965S3 "wk3r2WSJWSJ96"
label variable W5TTOS90966S3 "wk3r3CBSFOX116"
label variable W5TTOS90968S3 "wk3r1REUBET100"
label variable W5TTOS90969S3 "wk3r1CNNLAT101"
label variable W5FODS90970S3 "wk3r1CBSFOX116"
label variable W5FODS90971S3 "wk3r1NBCHUF124"
label variable W5TODS90972S3 "wk4d1CBSFOXFor3"
label variable W5TTOS90973S3 "wk4d1ABCHUFFor7"
label variable W5TTOS90974S3 "wk4d1CNNBETFor23"
label variable W5TTOS90976S3 "wk4d2APAPFor43"
label variable W5TODS90977S3 "wk4d2REUREUFor47"
label variable W5FODS90978S3 "wk4d2NYTNYTFor55"
label variable W5FODS90979S3 "wk4d2NBCNBCFor63"
label variable W5TTOS90980S3 "wk4d3CBSFOXFor3"
label variable W5FODS90981S3 "wk4d3ABCHUFFor7"
label variable W5FODS90984S3 "wk4r2ABCABCFor71"
label variable W5FODS90985S3 "wk4r2NBCNBCFor75"
label variable W5FODS90986S3 "wk4r2REUREUFor83"
label variable W5FODS90987S3 "wk4r2NYTNYTFor91"
label variable W5TTOS90988S3 "wk4r1CNNROOTFor103"
label variable W5FODS90989S3 "wk4r1WSJHOTFor111"
label variable W5FODS90990S3 "wk4r1CBSMSNFor115"
label variable W5TODS90991S3 "wk4r1APLATFor127"
label variable W5FODS90996S3 "Wk4DEndorsementNCLR"
label variable W5FODS90997S3 "Wk4DEndorsementHeritage"
label variable W5TODS90998S3 "Wk4DEndorsementVFW"
label variable W5FODS90999S3 "Wk4REndorsementNCLR"
label variable W5TODS91000S3 "Wk4REndorsementHeritage"
label variable W5FODS91002S3 "Wk5DEndorsementHumanRtsCamp"
label variable W5TTOS91003S3 "Wk5DEndorsementFamResearchCouncil"
label variable W5TODS91004S3 "Wk5REndorsementHumanRtsCamp"
label variable W5FODS91005S2 "Wk5DEndorsementNRL"
label variable W5FODS91006S3 "Wk5REndorsementNRL"
label variable W5FODS91007S2 "Wk5REndorsementFamResearchCouncil"
label variable W5FODS91008S2 "wk5r1WSJBETCult109"
label variable W5FODS91009S3 "wk5d1ABCHUFCult5"
label variable W5TODS91010S2 "wk5d1NBCHOTCult9"
label variable W5TODS91011S2 "wk5d1CNNLATCult21"
label variable W5TTOS91012S2 "wk5d1NYTBETCult25"
label variable W5TODS91013S3 "wk5d2CBSCBSCult33"
label variable W5FODS91014S3 "wk5d2APAPCult41"
label variable W5TODS91015S2 "wk5d2REUREUCult45"
label variable W5TTOS91016S3 "wk5d2WSJWSJCult57"
label variable W5FODS91017S3 "wk5d3ABCHUFCult5"
label variable W5TODS91018S3 "wk5d3NBCHOTCult9"
label variable W5TTOS91019S3 "wk5d3CNNLATCult21"
label variable W5FODS91020S3 "wk5d3NYTBETCult25"
label variable W5TTOS91022S2 "wk5r1ABCHOTCult117"
label variable W5TODS91023S3 "wk5r1NBCLATCult121"
label variable W5TTOS91024S3 "wk5r1APMSNCult125"
label variable W5FODS91025S2 "wk5r2CBSCBSCult65"
label variable W5TODS91026S3 "wk5r2REUREUCult81"
label variable W5FODS91027S2 "wk5r2CNNCNNCult85"
label variable W5FODS91028S3 "wk5r2NYTNYTCult89"
label variable W5TODS91029S3 "wk5r3WSJBETCult109"
label variable W5TODS91030S3 "wk5r3ABCHOTCult117"
label variable W5FODS91031S2 "wk5r3NBCLATCult121"
label variable W5FODS91032S3 "wk5r3APMSNCult125"
label variable W5TTOS91033S2 "Wk5ForcedViewingRaceSalient"
label variable W5FODS91034S2 "Wk5ForcedViewingRaceNotSalient"
label variable W5TTOA3769S4 "That's it for this Week"
label variable W5FODA3769S4 "That's it for this Week"
label variable W5WORDSA3769S4 "That's it for this Week"
label variable W5WORDSA3770S1 "Whoops -- Not a Valid Subject ID"
label variable W5TODA3770S1 "Whoops -- Not a Valid Subject ID"
label variable W5TTOA3770S1 "Whoops -- Not a Valid Subject ID"
label variable W5TODA3771S3 "Substage2and3BetwNoIntD&R"
label variable W5TTOA3771S3 "Substage2and3BetwNoIntD&R"
label variable W5WORDSA3771S3 "Substage2and3BetwNoIntD&R"
label variable W5WORDSA3772S3 "Substage2and3BetwIntD&R"
label variable W5TODA3772S3 "Substage2and3BetwIntD&R"
label variable W5FODA3772S3 "Substage2and3BetwIntD&R"
label variable W5FODA3773S2 "WelcomeWk5DIntImp"
label variable W5TODA3773S2 "WelcomeWk5DIntImp"
label variable W5TTOA3773S2 "WelcomeWk5DIntImp"
label variable W5FODA3774S2 "WelcomeWk5DIntNot"
label variable W5TODA3774S2 "WelcomeWk5DIntNot"
label variable W5TTOA3774S2 "WelcomeWk5DIntNot"
label variable W5TTOA3775S2 "WelcomeWk5DNoIntImp"
label variable W5TODA3775S2 "WelcomeWk5DNoIntImp"
label variable W5WORDSA3775S2 "WelcomeWk5DNoIntImp"
label variable W5TODA3776S2 "WelcomeWk5DNoIntNot"
label variable W5WORDSA3776S2 "WelcomeWk5DNoIntNot"
label variable W5FODA3776S2 "WelcomeWk5DNoIntNot"
label variable W5TTOA3777S2 "WelcomeWk5RIntImp"
label variable W5FODA3777S2 "WelcomeWk5RIntImp"
label variable W5TODA3777S2 "WelcomeWk5RIntImp"
label variable W5TODA3778S2 "WelcomeWk5RIntNot"
label variable W5TTOA3778S2 "WelcomeWk5RIntNot"
label variable W5WORDSA3778S2 "WelcomeWk5RIntNot"
label variable W5TODA3779S2 "WelcomeWk5RNoIntImp"
label variable W5WORDSA3779S2 "WelcomeWk5RNoIntImp"
label variable W5FODA3779S2 "WelcomeWk5RNoIntImp"
label variable W5TTOA3780S2 "WelcomeWk5RNoIntNot"
label variable W5WORDSA3780S2 "WelcomeWk5RNoIntNot"
label variable W5TODA3780S2 "WelcomeWk5RNoIntNot"
label variable W5GRP20556S3 "D02IntMainImp"
label variable W5GRP20557S3 "D04NoIntMainImp"
label variable W5GRP20558S3 "D06IntMainNot"
label variable W5GRP20559S3 "D08NoIntMainNot"
label variable W5GRP20560S2 "D01IntDiverseImp"
label variable W5GRP20561S2 "D03NoIntDiverseImp"
label variable W5GRP20562S2 "D05IntDiverseNot"
label variable W5GRP20563S3 "D07NoIntDiverseNot"
label variable W5GRP20564S2 "R09IntDiverseImp"
label variable W5GRP20565S2 "R10IntMainImp"
label variable W5GRP20566S3 "R11NoIntDiverseImp"
label variable W5GRP20567S3 "R12NoIntMainImp"
label variable W5GRP20568S3 "R13IntDiverseNot"
label variable W5GRP20569S2 "R14IntMainNot"
label variable W5GRP20570S3 "R15NoIntDiverseNot"
label variable W5GRP20571S3 "R16NoIntMainNot"
label variable W5Q5980SEQ32222S4 "Wk1DemSmithFT"
label variable W5Q6017DUR32222S4 "Wk1DemSmithFT"
label variable W5Q5980VAL32222S4 "Wk1DemSmithFT"
label variable W5Q6017VAL32222S4 "Wk1DemSmithFT"
label variable W5Q5980DUR32222S4 "Wk1DemSmithFT"
label variable W5Q6017SEQ32223S4 "Wk1DemWilsonFT"
label variable W5Q5980SEQ32223S4 "Wk1DemWilsonFT"
label variable W5Q6017VAL32223S4 "Wk1DemWilsonFT"
label variable W5Q5980VAL32223S4 "Wk1DemWilsonFT"
label variable W5Q6017DUR32223S4 "Wk1DemWilsonFT"
label variable W5Q5977DUR32224S1 "Subject Sign-in"
label variable W5Q6018DUR32227S4 "Wk1RepWilliamsFT"
label variable W5Q6018VAL32227S4 "Wk1RepWilliamsFT"
label variable W5Q6018SEQ32227S4 "Wk1RepWilliamsFT"
label variable W5Q5982DUR32227S4 "Wk1RepWilliamsFT"
label variable W5Q5982SEQ32227S4 "Wk1RepWilliamsFT"
label variable W5Q5982SEQ32228S4 "Wk1RepJonesFT"
label variable W5Q6018SEQ32228S4 "Wk1RepJonesFT"
label variable W5Q6018VAL32228S4 "Wk1RepJonesFT"
label variable W5Q6018DUR32228S4 "Wk1RepJonesFT"
label variable W5Q5982DUR32228S4 "Wk1RepJonesFT"
label variable W5Q6017SEQ32236S4 "Wk5DemVtChoice"
label variable W5Q6017VAL32236S4 "Wk5DemVtChoice"
label variable W5Q5980SEQ32236S4 "Wk5DemVtChoice"
label variable W5Q5980DUR32236S4 "Wk5DemVtChoice"
label variable W5Q5980VAL32236S4 "Wk5DemVtChoice"
label variable W5Q6018DUR32237S4 "Wk5RepVtChoice"
label variable W5Q5982SEQ32237S4 "Wk5RepVtChoice"
label variable W5Q6018VAL32237S4 "Wk5RepVtChoice"
label variable W5Q6018SEQ32237S4 "Wk5RepVtChoice"
label variable W5Q5982VAL32237S4 "Wk5RepVtChoice"
label variable W5TODS90808S3 "Wk2DEndorsementAFLCIO"
label variable W5TTOS90808S3 "Wk2DEndorsementAFLCIO"
label variable W5TTOS90809S3 "Wk2DEndorsementChamberofCommerce"
label variable W5TODS90809S3 "Wk2DEndorsementChamberofCommerce"
label variable W5FODS90810S3 "Wk2REndorsemChamberofCommerceEndorsement"
label variable W5TTOS90810S3 "Wk2REndorsemChamberofCommerceEndorsement"
label variable W5TODS90811S3 "Wk2REndorsementAFLCIO"
label variable W5FODS90811S3 "Wk2REndorsementAFLCIO"
label variable W5TODS90812S3 "wk2d1CBSHUFEcon2"
label variable W5TTOS90812S3 "wk2d1CBSHUFEcon2"
label variable W5FODS90813S3 "wk2d1NBCFOXEcon10"
label variable W5TODS90813S3 "wk2d1NBCFOXEcon10"
label variable W5FODS90814S3 "wk2d1REUROOTEcon18"
label variable W5TTOS90814S3 "wk2d1REUROOTEcon18"
label variable W5FODS90815S3 "wk2d1CNNUNIEcon22"
label variable W5TTOS90815S3 "wk2d1CNNUNIEcon22"
label variable W5FODS90816S3 "wk2d2ABCABCEcon37"
label variable W5TTOS90816S3 "wk2d2ABCABCEcon37"
label variable W5FODS90817S3 "wk2d2APAPEcon42"
label variable W5TTOS90817S3 "wk2d2APAPEcon42"
label variable W5FODS90818S3 "wk2d2NYTNYTEcon54"
label variable W5TTOS90818S3 "wk2d2NYTNYTEcon54"
label variable W5FODS90819S3 "wk2d2NBCNBCEcon62"
label variable W5TTOS90819S3 "wk2d2NBCNBCEcon62"
label variable W5TTOS90820S3 "wk2r2CBSCBSEcon66"
label variable W5TODS90820S3 "wk2r2CBSCBSEcon66"
label variable W5FODS90821S3 "wk2r2APAPEcon78"
label variable W5TTOS90821S3 "wk2r2APAPEcon78"
label variable W5TODS90822S3 "wk2r2REUREUEcon82"
label variable W5FODS90822S3 "wk2r2REUREUEcon82"
label variable W5TODS90823S3 "wk2r2WSJWSJEcon94"
label variable W5TTOS90823S3 "wk2r2WSJWSJEcon94"
label variable W5TODS90824S3 "wk2r1WSJHUFEcon110"
label variable W5FODS90824S3 "wk2r1WSJHUFEcon110"
label variable W5FODS90825S3 "wk2r1ABCROOTEcon118"
label variable W5TTOS90825S3 "wk2r1ABCROOTEcon118"
label variable W5FODS90826S3 "wk2r1NBCUNIEcon122"
label variable W5TTOS90826S3 "wk2r1NBCUNIEcon122"
label variable W5TTOS90827S3 "wk2r1APFOXEcon126"
label variable W5FODS90827S3 "wk2r1APFOXEcon126"
label variable W5FODS90828S3 "wk2d3CBSHUFEcon2"
label variable W5TTOS90828S3 "wk2d3CBSHUFEcon2"
label variable W5TTOS90829S3 "wk2d3NBCFOXEcon10"
label variable W5TODS90829S3 "wk2d3NBCFOXEcon10"
label variable W5FODS90835S3 "wk2r3APFOXEcon126"
label variable W5TTOS90835S3 "wk2r3APFOXEcon126"
label variable W5TODS90836S3 "Wk1RWilliamsSlogan"
label variable W5FODS90836S3 "Wk1RWilliamsSlogan"
label variable W5TTOS90837S3 "Wk1RWilliamsPersonality"
label variable W5TODS90837S3 "Wk1RWilliamsPersonality"
label variable W5TODS90838S3 "Wk1RWilliamsFamily"
label variable W5FODS90838S3 "Wk1RWilliamsFamily"
label variable W5TTOS90839S3 "Wk1RWilliamsExperience"
label variable W5TODS90839S3 "Wk1RWilliamsExperience"
label variable W5TTOS90840S3 "Wk1RWilliamsCandidatePicture"
label variable W5TODS90840S3 "Wk1RWilliamsCandidatePicture"
label variable W5TODS90841S3 "Wk1RWilliamsBackground"
label variable W5TTOS90841S3 "Wk1RWilliamsBackground"
label variable W5FODS90842S3 "Wk1RJonesSlogan"
label variable W5TODS90842S3 "Wk1RJonesSlogan"
label variable W5TODS90843S3 "Wk1RJonesPersonality"
label variable W5FODS90843S3 "Wk1RJonesPersonality"
label variable W5TODS90844S3 "Wk1RJonesFamily"
label variable W5TTOS90844S3 "Wk1RJonesFamily"
label variable W5TODS90845S3 "Wk1RJonesExperience"
label variable W5TTOS90845S3 "Wk1RJonesExperience"
label variable W5TTOS90846S3 "Wk1RJonesCandidatePicture"
label variable W5FODS90846S3 "Wk1RJonesCandidatePicture"
label variable W5FODS90847S3 "Wk1RJonesBackground"
label variable W5TTOS90847S3 "Wk1RJonesBackground"
label variable W5FODS90848S3 "Wk1DWilsonSlogan"
label variable W5TTOS90848S3 "Wk1DWilsonSlogan"
label variable W5FODS90849S3 "Wk1DWilsonPersonality"
label variable W5TTOS90849S3 "Wk1DWilsonPersonality"
label variable W5FODS90850S3 "Wk1DWilsonFamily"
label variable W5TODS90850S3 "Wk1DWilsonFamily"
label variable W5TODS90851S3 "Wk1DWilsonExperience"
label variable W5FODS90851S3 "Wk1DWilsonExperience"
label variable W5TTOS90852S3 "Wk1DWilsonCandidatePicture"
label variable W5FODS90852S3 "Wk1DWilsonCandidatePicture"
label variable W5FODS90853S3 "Wk1DWilsonBackground"
label variable W5TTOS90853S3 "Wk1DWilsonBackground"
label variable W5TODS90854S3 "Wk1DSmithSlogan"
label variable W5FODS90854S3 "Wk1DSmithSlogan"
label variable W5TTOS90855S3 "Wk1DSmithPersonality"
label variable W5FODS90855S3 "Wk1DSmithPersonality"
label variable W5TODS90856S3 "Wk1DSmithFamily"
label variable W5TTOS90856S3 "Wk1DSmithFamily"
label variable W5FODS90857S3 "Wk1DSmithExperience"
label variable W5TTOS90857S3 "Wk1DSmithExperience"
label variable W5TODS90858S3 "Wk1DSmithCandidatePicture"
label variable W5FODS90858S3 "Wk1DSmithCandidatePicture"
label variable W5TODS90859S3 "Wk1DSmithBackground"
label variable W5TTOS90859S3 "Wk1DSmithBackground"
label variable W5TTOS90860S3 "SmithEducation"
label variable W5FODS90860S3 "SmithEducation"
label variable W5TTOS90861S3 "SmithExperience"
label variable W5TODS90861S3 "SmithExperience"
label variable W5TODS90862S3 "SmithFamily"
label variable W5TTOS90862S3 "SmithFamily"
label variable W5FODS90863S3 "JonesExperience"
label variable W5TTOS90863S3 "JonesExperience"
label variable W5TODS90864S3 "SmithReligion"
label variable W5TTOS90864S3 "SmithReligion"
label variable W5FODS90865S3 "JonesEducation"
label variable W5TODS90865S3 "JonesEducation"
label variable W5TODS90866S3 "JonesFamily"
label variable W5TTOS90866S3 "JonesFamily"
label variable W5TODS90868S3 "JonesReligion"
label variable W5FODS90868S3 "JonesReligion"
label variable W5FODS90869S3 "WilsonEducation"
label variable W5TTOS90869S3 "WilsonEducation"
label variable W5TODS90871S3 "WilsonExperience"
label variable W5TTOS90871S3 "WilsonExperience"
label variable W5FODS90872S3 "WilsonFamily"
label variable W5TTOS90872S3 "WilsonFamily"
label variable W5TTOS90873S3 "WilliamsReligion"
label variable W5TODS90873S3 "WilliamsReligion"
label variable W5TODS90876S3 "WilliamsExperience"
label variable W5FODS90876S3 "WilliamsExperience"
label variable W5TTOS90877S3 "WilliamsEducation"
label variable W5TODS90877S3 "WilliamsEducation"
label variable W5TODS90878S3 "WilsonReligion"
label variable W5TTOS90878S3 "WilsonReligion"
label variable W5TODS90880S3 "wk2DSmithJobs"
label variable W5FODS90880S3 "wk2DSmithJobs"
label variable W5TODS90881S3 "wk2DSmithEconPhil"
label variable W5FODS90881S3 "wk2DSmithEconPhil"
label variable W5TTOS90883S3 "wk2DWilsonJobs"
label variable W5TODS90883S3 "wk2DWilsonJobs"
label variable W5FODS90884S3 "wk2DWilsonEconPhil"
label variable W5TTOS90884S3 "wk2DWilsonEconPhil"
label variable W5TODS90886S3 "Wk2RWilliamsJobs"
label variable W5FODS90886S3 "Wk2RWilliamsJobs"
label variable W5TODS90887S3 "wk2RWilliamsEconPhil"
label variable W5TTOS90887S3 "wk2RWilliamsEconPhil"
label variable W5TTOS90888S3 "wk3DSmithEduc"
label variable W5FODS90888S3 "wk3DSmithEduc"
label variable W5FODS90889S3 "wk6DSmithHealth"
label variable W5TODS90889S3 "wk6DSmithHealth"
label variable W5TTOS90890S3 "wk4DSmithChina"
label variable W5TODS90890S3 "wk4DSmithChina"
label variable W5TTOS90892S3 "wk5DSmithAbortion"
label variable W5TTOS90892S2 "wk5DSmithAbortion"
label variable W5TODS90892S2 "wk5DSmithAbortion"
label variable W5FODS90892S3 "wk5DSmithAbortion"
label variable W5FODS90892S2 "wk5DSmithAbortion"
label variable W5TODS90893S3 "wk5DSmithGay"
label variable W5TTOS90893S3 "wk5DSmithGay"
label variable W5FODS90893S2 "wk5DSmithGay"
label variable W5FODS90893S3 "wk5DSmithGay"
label variable W5TODS90893S2 "wk5DSmithGay"
label variable W5FODS90894S3 "wk6DSmithTaxes"
label variable W5TTOS90894S3 "wk6DSmithTaxes"
label variable W5FODS90895S3 "wk7DSmithAffirm"
label variable W5TODS90895S3 "wk7DSmithAffirm"
label variable W5FODS90896S3 "wk7DSmithImmigration"
label variable W5TODS90896S3 "wk7DSmithImmigration"
label variable W5FODS90897S3 "wk8DSmithAfghan"
label variable W5TODS90897S3 "wk8DSmithAfghan"
label variable W5TTOS90898S3 "wk8DSmithMil"
label variable W5TODS90898S3 "wk8DSmithMil"
label variable W5TODS90899S3 "wk9DSmithDeathPen"
label variable W5FODS90899S3 "wk9DSmithDeathPen"
label variable W5TODS90900S3 "wk9DSmithStemCells"
label variable W5FODS90900S3 "wk9DSmithStemCells"
label variable W5TTOS90901S3 "wk3DSmithSocPhil"
label variable W5FODS90901S3 "wk3DSmithSocPhil"
label variable W5FODS90902S3 "wk3DWilsonEduc"
label variable W5TODS90902S3 "wk3DWilsonEduc"
label variable W5FODS90903S3 "wk6DWilsonHealth"
label variable W5TODS90903S3 "wk6DWilsonHealth"
label variable W5FODS90904S3 "wk4DWilsonChina"
label variable W5TTOS90904S3 "wk4DWilsonChina"
label variable W5TODS90905S3 "wk4DWilsonDefense"
label variable W5FODS90905S3 "wk4DWilsonDefense"
label variable W5TODS90906S3 "wk5DWilsonAbortion"
label variable W5TTOS90906S3 "wk5DWilsonAbortion"
label variable W5TODS90906S2 "wk5DWilsonAbortion"
label variable W5FODS90906S2 "wk5DWilsonAbortion"
label variable W5FODS90906S3 "wk5DWilsonAbortion"
label variable W5FODS90907S3 "wk5DWilsonGay"
label variable W5TODS90907S3 "wk5DWilsonGay"
label variable W5FODS90907S2 "wk5DWilsonGay"
label variable W5TTOS90907S2 "wk5DWilsonGay"
label variable W5TTOS90907S3 "wk5DWilsonGay"
label variable W5FODS90908S3 "wk6DWilsonTaxes"
label variable W5TTOS90908S3 "wk6DWilsonTaxes"
label variable W5TTOS90909S3 "wk7DWilsonAffirm"
label variable W5FODS90909S3 "wk7DWilsonAffirm"
label variable W5FODS90910S3 "wk7DWilsonImmigration"
label variable W5TODS90910S3 "wk7DWilsonImmigration"
label variable W5TODS90911S3 "wk8DWilsonAfghan"
label variable W5FODS90911S3 "wk8DWilsonAfghan"
label variable W5TTOS90912S3 "wk8DWilsonMil"
label variable W5TODS90912S3 "wk8DWilsonMil"
label variable W5TODS90913S3 "wk9DWilsonDeathPen"
label variable W5FODS90913S3 "wk9DWilsonDeathPen"
label variable W5FODS90914S3 "wk9DWilsonStemCells"
label variable W5TTOS90914S3 "wk9DWilsonStemCells"
label variable W5TODS90915S3 "wk7RJonesImmigration"
label variable W5TTOS90915S3 "wk7RJonesImmigration"
label variable W5TTOS90916S3 "wk3DWilsonSocPhil"
label variable W5TODS90916S3 "wk3DWilsonSocPhil"
label variable W5TODS90917S3 "wk3RWilliamsEduc"
label variable W5TTOS90917S3 "wk3RWilliamsEduc"
label variable W5TTOS90918S3 "wk3RWilliamsSocPhil"
label variable W5FODS90918S3 "wk3RWilliamsSocPhil"
label variable W5TTOS90919S3 "wk4RWilliamsChina"
label variable W5FODS90919S3 "wk4RWilliamsChina"
label variable W5TODS90920S3 "wk4RWilliamsDefense"
label variable W5TTOS90920S3 "wk4RWilliamsDefense"
label variable W5FODS90921S3 "wk5RWilliamsAbortion"
label variable W5TODS90921S2 "wk5RWilliamsAbortion"
label variable W5TTOS90921S2 "wk5RWilliamsAbortion"
label variable W5TODS90921S3 "wk5RWilliamsAbortion"
label variable W5FODS90921S2 "wk5RWilliamsAbortion"
label variable W5TODS90922S2 "wk5RWilliamsGay"
label variable W5FODS90922S3 "wk5RWilliamsGay"
label variable W5TTOS90922S2 "wk5RWilliamsGay"
label variable W5TODS90922S3 "wk5RWilliamsGay"
label variable W5TTOS90922S3 "wk5RWilliamsGay"
label variable W5TODS90923S3 "wk6RWilliamsTaxes"
label variable W5TTOS90923S3 "wk6RWilliamsTaxes"
label variable W5TTOS90924S3 "wk7RWilliamsAffirm"
label variable W5TODS90924S3 "wk7RWilliamsAffirm"
label variable W5FODS90925S3 "wk7RWilliamsImmigration"
label variable W5TTOS90925S3 "wk7RWilliamsImmigration"
label variable W5FODS90926S3 "wk8RWilliamsAfghan"
label variable W5TODS90926S3 "wk8RWilliamsAfghan"
label variable W5TTOS90927S3 "wk8RWilliamsMil"
label variable W5TODS90927S3 "wk8RWilliamsMil"
label variable W5TTOS90929S3 "wk9RWilliamsStemCells"
label variable W5TODS90929S3 "wk9RWilliamsStemCells"
label variable W5FODS90931S3 "wk3RJonesSocPhil"
label variable W5TTOS90931S3 "wk3RJonesSocPhil"
label variable W5TODS90932S3 "wk4RJonesChina"
label variable W5FODS90932S3 "wk4RJonesChina"
label variable W5FODS90933S3 "wk4RJonesDefense"
label variable W5TODS90933S3 "wk4RJonesDefense"
label variable W5TODS90934S2 "wk5RJonesAbortion"
label variable W5FODS90934S3 "wk5RJonesAbortion"
label variable W5TTOS90934S3 "wk5RJonesAbortion"
label variable W5FODS90934S2 "wk5RJonesAbortion"
label variable W5TTOS90934S2 "wk5RJonesAbortion"
label variable W5TTOS90935S3 "wk5RJonesGay"
label variable W5TODS90935S3 "wk5RJonesGay"
label variable W5TTOS90935S2 "wk5RJonesGay"
label variable W5FODS90935S3 "wk5RJonesGay"
label variable W5TODS90935S2 "wk5RJonesGay"
label variable W5TTOS90936S3 "wk6RJonesHealth"
label variable W5FODS90936S3 "wk6RJonesHealth"
label variable W5TTOS90938S3 "wk6RJonesTaxes"
label variable W5TODS90938S3 "wk6RJonesTaxes"
label variable W5TODS90940S3 "wk9RJonesStemCells"
label variable W5TTOS90940S3 "wk9RJonesStemCells"
label variable W5TODS90941S3 "wk8RJonesMil"
label variable W5TTOS90941S3 "wk8RJonesMil"
label variable W5FODS90942S3 "wk9RJonesDeathPen"
label variable W5TODS90942S3 "wk9RJonesDeathPen"
label variable W5TTOS90943S3 "wk6RWilliamsHealth"
label variable W5TODS90943S3 "wk6RWilliamsHealth"
label variable W5FODS90944S3 "wk3d1APROOT16"
label variable W5TODS90944S3 "wk3d1APROOT16"
label variable W5FODS90945S3 "Wk3DEndorsementAFT"
label variable W5TTOS90945S3 "Wk3DEndorsementAFT"
label variable W5TODS90946S3 "Wk3DEndorsementFAIR"
label variable W5TTOS90946S3 "Wk3DEndorsementFAIR"
label variable W5FODS90947S3 "wk3d1ABCHOT8"
label variable W5TODS90947S3 "wk3d1ABCHOT8"
label variable W5TTOS90948S3 "Wk3REndorsementFAIR"
label variable W5FODS90948S3 "Wk3REndorsementFAIR"
label variable W5TODS90949S3 "Wk3REndorsementAFT"
label variable W5FODS90949S3 "Wk3REndorsementAFT"
label variable W5TODS90950S3 "wk3d1NBCUNI12"
label variable W5TTOS90950S3 "wk3d1NBCUNI12"
label variable W5TODS90951S3 "wk3d1NYTMSN28"
label variable W5TTOS90951S3 "wk3d1NYTMSN28"
label variable W5TODS90952S3 "wk3d2CBSCBS36"
label variable W5TTOS90952S3 "wk3d2CBSCBS36"
label variable W5FODS90953S3 "wk3d2REUREU48"
label variable W5TODS90953S3 "wk3d2REUREU48"
label variable W5FODS90954S3 "wk3d2WSJWSJ60"
label variable W5TODS90954S3 "wk3d2WSJWSJ60"
label variable W5TODS90955S3 "wk3d2NBCNBC64"
label variable W5TTOS90955S3 "wk3d2NBCNBC64"
label variable W5FODS90956S3 "wk3d3ABCHOT8"
label variable W5TTOS90956S3 "wk3d3ABCHOT8"
label variable W5TTOS90957S3 "wk3r2ABCABC72"
label variable W5TODS90957S3 "wk3r2ABCABC72"
label variable W5TTOS90961S3 "wk3r2APAP80"
label variable W5FODS90961S3 "wk3r2APAP80"
label variable W5FODS90964S3 "wk3r2NYTNYT92"
label variable W5TODS90964S3 "wk3r2NYTNYT92"
label variable W5TTOS90965S3 "wk3r2WSJWSJ96"
label variable W5FODS90965S3 "wk3r2WSJWSJ96"
label variable W5FODS90966S3 "wk3r3CBSFOX116"
label variable W5TODS90966S3 "wk3r3CBSFOX116"
label variable W5TODS90968S3 "wk3r1REUBET100"
label variable W5FODS90968S3 "wk3r1REUBET100"
label variable W5FODS90969S3 "wk3r1CNNLAT101"
label variable W5TODS90969S3 "wk3r1CNNLAT101"
label variable W5TODS90970S3 "wk3r1CBSFOX116"
label variable W5TTOS90970S3 "wk3r1CBSFOX116"
label variable W5TTOS90971S3 "wk3r1NBCHUF124"
label variable W5TODS90971S3 "wk3r1NBCHUF124"
label variable W5FODS90972S3 "wk4d1CBSFOXFor3"
label variable W5TTOS90972S3 "wk4d1CBSFOXFor3"
label variable W5TODS90973S3 "wk4d1ABCHUFFor7"
label variable W5FODS90973S3 "wk4d1ABCHUFFor7"
label variable W5TODS90974S3 "wk4d1CNNBETFor23"
label variable W5FODS90974S3 "wk4d1CNNBETFor23"
label variable W5FODS90976S3 "wk4d2APAPFor43"
label variable W5TODS90976S3 "wk4d2APAPFor43"
label variable W5FODS90977S3 "wk4d2REUREUFor47"
label variable W5TTOS90977S3 "wk4d2REUREUFor47"
label variable W5TODS90978S3 "wk4d2NYTNYTFor55"
label variable W5TTOS90978S3 "wk4d2NYTNYTFor55"
label variable W5TODS90979S3 "wk4d2NBCNBCFor63"
label variable W5TTOS90979S3 "wk4d2NBCNBCFor63"
label variable W5FODS90980S3 "wk4d3CBSFOXFor3"
label variable W5TODS90980S3 "wk4d3CBSFOXFor3"
label variable W5TODS90981S3 "wk4d3ABCHUFFor7"
label variable W5TTOS90981S3 "wk4d3ABCHUFFor7"
label variable W5TODS90984S3 "wk4r2ABCABCFor71"
label variable W5TTOS90984S3 "wk4r2ABCABCFor71"
label variable W5TTOS90985S3 "wk4r2NBCNBCFor75"
label variable W5TODS90985S3 "wk4r2NBCNBCFor75"
label variable W5TODS90986S3 "wk4r2REUREUFor83"
label variable W5TTOS90986S3 "wk4r2REUREUFor83"
label variable W5TODS90987S3 "wk4r2NYTNYTFor91"
label variable W5TTOS90987S3 "wk4r2NYTNYTFor91"
label variable W5FODS90988S3 "wk4r1CNNROOTFor103"
label variable W5TODS90988S3 "wk4r1CNNROOTFor103"
label variable W5TTOS90989S3 "wk4r1WSJHOTFor111"
label variable W5TODS90989S3 "wk4r1WSJHOTFor111"
label variable W5TTOS90990S3 "wk4r1CBSMSNFor115"
label variable W5TODS90990S3 "wk4r1CBSMSNFor115"
label variable W5TTOS90991S3 "wk4r1APLATFor127"
label variable W5FODS90991S3 "wk4r1APLATFor127"
label variable W5TODS90996S3 "Wk4DEndorsementNCLR"
label variable W5TTOS90996S3 "Wk4DEndorsementNCLR"
label variable W5TODS90997S3 "Wk4DEndorsementHeritage"
label variable W5TTOS90997S3 "Wk4DEndorsementHeritage"
label variable W5FODS90998S3 "Wk4DEndorsementVFW"
label variable W5TTOS90998S3 "Wk4DEndorsementVFW"
label variable W5TODS90999S3 "Wk4REndorsementNCLR"
label variable W5TTOS90999S3 "Wk4REndorsementNCLR"
label variable W5FODS91000S3 "Wk4REndorsementHeritage"
label variable W5TTOS91000S3 "Wk4REndorsementHeritage"
label variable W5TODS91002S3 "Wk5DEndorsementHumanRtsCamp"
label variable W5TTOS91002S3 "Wk5DEndorsementHumanRtsCamp"
label variable W5TODS91002S2 "Wk5DEndorsementHumanRtsCamp"
label variable W5FODS91002S2 "Wk5DEndorsementHumanRtsCamp"
label variable W5TTOS91002S2 "Wk5DEndorsementHumanRtsCamp"
label variable W5FODS91003S2 "Wk5DEndorsementFamResearchCouncil"
label variable W5TTOS91003S2 "Wk5DEndorsementFamResearchCouncil"
label variable W5TODS91003S2 "Wk5DEndorsementFamResearchCouncil"
label variable W5TODS91003S3 "Wk5DEndorsementFamResearchCouncil"
label variable W5FODS91003S3 "Wk5DEndorsementFamResearchCouncil"
label variable W5FODS91004S2 "Wk5REndorsementHumanRtsCamp"
label variable W5TTOS91004S2 "Wk5REndorsementHumanRtsCamp"
label variable W5TTOS91004S3 "Wk5REndorsementHumanRtsCamp"
label variable W5FODS91004S3 "Wk5REndorsementHumanRtsCamp"
label variable W5TODS91004S2 "Wk5REndorsementHumanRtsCamp"
label variable W5TTOS91005S2 "Wk5DEndorsementNRL"
label variable W5TTOS91005S3 "Wk5DEndorsementNRL"
label variable W5TODS91005S2 "Wk5DEndorsementNRL"
label variable W5FODS91005S3 "Wk5DEndorsementNRL"
label variable W5TODS91005S3 "Wk5DEndorsementNRL"
label variable W5TODS91006S3 "Wk5REndorsementNRL"
label variable W5TTOS91006S2 "Wk5REndorsementNRL"
label variable W5FODS91006S2 "Wk5REndorsementNRL"
label variable W5TTOS91006S3 "Wk5REndorsementNRL"
label variable W5TODS91006S2 "Wk5REndorsementNRL"
label variable W5TTOS91007S3 "Wk5REndorsementFamResearchCouncil"
label variable W5FODS91007S3 "Wk5REndorsementFamResearchCouncil"
label variable W5TTOS91007S2 "Wk5REndorsementFamResearchCouncil"
label variable W5TODS91007S3 "Wk5REndorsementFamResearchCouncil"
label variable W5TODS91007S2 "Wk5REndorsementFamResearchCouncil"
label variable W5TTOS91008S2 "wk5r1WSJBETCult109"
label variable W5TTOS91008S3 "wk5r1WSJBETCult109"
label variable W5FODS91008S3 "wk5r1WSJBETCult109"
label variable W5TODS91008S3 "wk5r1WSJBETCult109"
label variable W5TODS91008S2 "wk5r1WSJBETCult109"
label variable W5TTOS91009S2 "wk5d1ABCHUFCult5"
label variable W5TODS91009S3 "wk5d1ABCHUFCult5"
label variable W5FODS91009S2 "wk5d1ABCHUFCult5"
label variable W5TODS91009S2 "wk5d1ABCHUFCult5"
label variable W5TTOS91009S3 "wk5d1ABCHUFCult5"
label variable W5FODS91010S3 "wk5d1NBCHOTCult9"
label variable W5TTOS91010S3 "wk5d1NBCHOTCult9"
label variable W5TODS91010S3 "wk5d1NBCHOTCult9"
label variable W5FODS91010S2 "wk5d1NBCHOTCult9"
label variable W5TTOS91010S2 "wk5d1NBCHOTCult9"
label variable W5TTOS91011S2 "wk5d1CNNLATCult21"
label variable W5TTOS91011S3 "wk5d1CNNLATCult21"
label variable W5FODS91011S3 "wk5d1CNNLATCult21"
label variable W5FODS91011S2 "wk5d1CNNLATCult21"
label variable W5TODS91011S3 "wk5d1CNNLATCult21"
label variable W5FODS91012S2 "wk5d1NYTBETCult25"
label variable W5FODS91012S3 "wk5d1NYTBETCult25"
label variable W5TODS91012S3 "wk5d1NYTBETCult25"
label variable W5TODS91012S2 "wk5d1NYTBETCult25"
label variable W5TTOS91012S3 "wk5d1NYTBETCult25"
label variable W5FODS91013S2 "wk5d2CBSCBSCult33"
label variable W5TTOS91013S2 "wk5d2CBSCBSCult33"
label variable W5TODS91013S2 "wk5d2CBSCBSCult33"
label variable W5FODS91013S3 "wk5d2CBSCBSCult33"
label variable W5TTOS91013S3 "wk5d2CBSCBSCult33"
label variable W5TTOS91014S3 "wk5d2APAPCult41"
label variable W5TODS91014S2 "wk5d2APAPCult41"
label variable W5TODS91014S3 "wk5d2APAPCult41"
label variable W5TTOS91014S2 "wk5d2APAPCult41"
label variable W5FODS91014S2 "wk5d2APAPCult41"
label variable W5FODS91015S2 "wk5d2REUREUCult45"
label variable W5FODS91015S3 "wk5d2REUREUCult45"
label variable W5TTOS91015S3 "wk5d2REUREUCult45"
label variable W5TTOS91015S2 "wk5d2REUREUCult45"
label variable W5TODS91015S3 "wk5d2REUREUCult45"
label variable W5FODS91016S2 "wk5d2WSJWSJCult57"
label variable W5TODS91016S3 "wk5d2WSJWSJCult57"
label variable W5TTOS91016S2 "wk5d2WSJWSJCult57"
label variable W5TODS91016S2 "wk5d2WSJWSJCult57"
label variable W5FODS91016S3 "wk5d2WSJWSJCult57"
label variable W5TTOS91017S2 "wk5d3ABCHUFCult5"
label variable W5TTOS91017S3 "wk5d3ABCHUFCult5"
label variable W5FODS91017S2 "wk5d3ABCHUFCult5"
label variable W5TODS91017S3 "wk5d3ABCHUFCult5"
label variable W5TODS91017S2 "wk5d3ABCHUFCult5"
label variable W5FODS91018S2 "wk5d3NBCHOTCult9"
label variable W5TTOS91018S3 "wk5d3NBCHOTCult9"
label variable W5FODS91018S3 "wk5d3NBCHOTCult9"
label variable W5TTOS91018S2 "wk5d3NBCHOTCult9"
label variable W5TODS91018S2 "wk5d3NBCHOTCult9"
label variable W5TODS91019S2 "wk5d3CNNLATCult21"
label variable W5FODS91019S2 "wk5d3CNNLATCult21"
label variable W5TTOS91019S2 "wk5d3CNNLATCult21"
label variable W5FODS91019S3 "wk5d3CNNLATCult21"
label variable W5TODS91019S3 "wk5d3CNNLATCult21"
label variable W5TTOS91020S2 "wk5d3NYTBETCult25"
label variable W5TTOS91020S3 "wk5d3NYTBETCult25"
label variable W5TODS91020S2 "wk5d3NYTBETCult25"
label variable W5TODS91020S3 "wk5d3NYTBETCult25"
label variable W5FODS91020S2 "wk5d3NYTBETCult25"
label variable W5TODS91022S2 "wk5r1ABCHOTCult117"
label variable W5TODS91022S3 "wk5r1ABCHOTCult117"
label variable W5FODS91022S3 "wk5r1ABCHOTCult117"
label variable W5FODS91022S2 "wk5r1ABCHOTCult117"
label variable W5TTOS91022S3 "wk5r1ABCHOTCult117"
label variable W5FODS91023S3 "wk5r1NBCLATCult121"
label variable W5TTOS91023S3 "wk5r1NBCLATCult121"
label variable W5FODS91023S2 "wk5r1NBCLATCult121"
label variable W5TTOS91023S2 "wk5r1NBCLATCult121"
label variable W5TODS91023S2 "wk5r1NBCLATCult121"
label variable W5TTOS91024S2 "wk5r1APMSNCult125"
label variable W5TODS91024S3 "wk5r1APMSNCult125"
label variable W5FODS91024S2 "wk5r1APMSNCult125"
label variable W5FODS91024S3 "wk5r1APMSNCult125"
label variable W5TODS91024S2 "wk5r1APMSNCult125"
label variable W5TODS91025S3 "wk5r2CBSCBSCult65"
label variable W5FODS91025S3 "wk5r2CBSCBSCult65"
label variable W5TTOS91025S3 "wk5r2CBSCBSCult65"
label variable W5TODS91025S2 "wk5r2CBSCBSCult65"
label variable W5TTOS91025S2 "wk5r2CBSCBSCult65"
label variable W5FODS91026S3 "wk5r2REUREUCult81"
label variable W5FODS91026S2 "wk5r2REUREUCult81"
label variable W5TTOS91026S3 "wk5r2REUREUCult81"
label variable W5TODS91026S2 "wk5r2REUREUCult81"
label variable W5TTOS91026S2 "wk5r2REUREUCult81"
label variable W5TTOS91027S2 "wk5r2CNNCNNCult85"
label variable W5TODS91027S2 "wk5r2CNNCNNCult85"
label variable W5FODS91027S3 "wk5r2CNNCNNCult85"
label variable W5TODS91027S3 "wk5r2CNNCNNCult85"
label variable W5TTOS91027S3 "wk5r2CNNCNNCult85"
label variable W5TODS91028S2 "wk5r2NYTNYTCult89"
label variable W5TTOS91028S2 "wk5r2NYTNYTCult89"
label variable W5TODS91028S3 "wk5r2NYTNYTCult89"
label variable W5TTOS91028S3 "wk5r2NYTNYTCult89"
label variable W5FODS91028S2 "wk5r2NYTNYTCult89"
label variable W5TODS91029S2 "wk5r3WSJBETCult109"
label variable W5FODS91029S2 "wk5r3WSJBETCult109"
label variable W5FODS91029S3 "wk5r3WSJBETCult109"
label variable W5TTOS91029S2 "wk5r3WSJBETCult109"
label variable W5TTOS91029S3 "wk5r3WSJBETCult109"
label variable W5FODS91030S3 "wk5r3ABCHOTCult117"
label variable W5TODS91030S2 "wk5r3ABCHOTCult117"
label variable W5TTOS91030S2 "wk5r3ABCHOTCult117"
label variable W5TTOS91030S3 "wk5r3ABCHOTCult117"
label variable W5FODS91030S2 "wk5r3ABCHOTCult117"
label variable W5FODS91031S3 "wk5r3NBCLATCult121"
label variable W5TODS91031S2 "wk5r3NBCLATCult121"
label variable W5TODS91031S3 "wk5r3NBCLATCult121"
label variable W5TTOS91031S3 "wk5r3NBCLATCult121"
label variable W5TTOS91031S2 "wk5r3NBCLATCult121"
label variable W5TODS91032S3 "wk5r3APMSNCult125"
label variable W5FODS91032S2 "wk5r3APMSNCult125"
label variable W5TTOS91032S2 "wk5r3APMSNCult125"
label variable W5TTOS91032S3 "wk5r3APMSNCult125"
label variable W5TODS91032S2 "wk5r3APMSNCult125"
label variable W5FODS91033S2 "Wk5ForcedViewingRaceSalient"
label variable W5TODS91033S2 "Wk5ForcedViewingRaceSalient"
label variable W5TODS91034S2 "Wk5ForcedViewingRaceNotSalient"
label variable W5TTOS91034S2 "Wk5ForcedViewingRaceNotSalient"

* Merge W5S1234 with IPW5 (IP ADDRESS)
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W5/WorkingData/W5S1234_Working.dta", replace
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W5/WorkingData/W5S1234_Working.dta", replace
merge 1:m SUBJECTID using "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W5/IP/IPW5.dta"
drop _merge

* Duplicate Check
capture drop DUPW5
sort PAC
quietly by PAC: gen DUPW5 = cond(_N==1,0,_n)

* Generating week indicator
capture drop WEEK5
gen WEEK5 = 1

* Generating Date Variable
capture drop year month day
nsplit W5DATES1, digits(4 2 2) generate(year month day)
capture drop DATEW5b
gen DATEW5b = mdy(month, day, year)
capture drop date1
gen date1 = 19724
format %td date1
format %td DATEW5b
capture drop DATEW5a
gen DATEW5a = DATEW5b - date1
capture drop date1 year month day W5DATES1 W5DATES2 W5DATES3 W5DATES4

* ORDERING
order PAC IP DUPW5 DATEW5a DATEW5b W5TIMES1 WEEK5
sort PAC, stable

* Droppping Duplicates
drop if PAC == .
drop if SUBJECTID == 103443
drop if SUBJECTID == 102962
drop if SUBJECTID == 103796
drop if SUBJECTID == 103800
drop if SUBJECTID == 102756
drop if SUBJECTID == 102749
drop if SUBJECTID == 102758
replace PAC= 108277 if IP == "50.134.64.50"
replace PAC= 108155 if IP == "173.30.163.100"
replace PAC= 108648 if IP == "72.225.41.203"


* Build Cumulat.

capture egen  W5COD90808Wk = rowtotal(W5TODS90808S2 W5TODS90808S3)
capture egen  W5COD90808Wk = rowtotal(W5TTOS90808S2 W5TTOS90808S3)
capture egen  W5COD90809Wk = rowtotal(W5TTOS90809S2 W5TTOS90809S3)
capture egen  W5COD90809Wk = rowtotal(W5TODS90809S2 W5TODS90809S3)
capture egen  W5COD90810Wk = rowtotal(W5TODS90810S2 W5TODS90810S3)
capture egen  W5COD90810Wk = rowtotal(W5TTOS90810S2 W5TTOS90810S3)
capture egen  W5COD90811Wk = rowtotal(W5TTOS90811S2 W5TTOS90811S3)
capture egen  W5COD90811Wk = rowtotal(W5TODS90811S2 W5TODS90811S3)
capture egen  W5COD90812Wk = rowtotal(W5TTOS90812S2 W5TTOS90812S3)
capture egen  W5COD90812Wk = rowtotal(W5TODS90812S2 W5TODS90812S3)
capture egen  W5COD90813Wk = rowtotal(W5TTOS90813S2 W5TTOS90813S3)
capture egen  W5COD90813Wk = rowtotal(W5TODS90813S2 W5TODS90813S3)
capture egen  W5COD90814Wk = rowtotal(W5TODS90814S2 W5TODS90814S3)
capture egen  W5COD90814Wk = rowtotal(W5TTOS90814S2 W5TTOS90814S3)
capture egen  W5COD90815Wk = rowtotal(W5TTOS90815S2 W5TTOS90815S3)
capture egen  W5COD90815Wk = rowtotal(W5TODS90815S2 W5TODS90815S3)
capture egen  W5COD90816Wk = rowtotal(W5TODS90816S2 W5TODS90816S3)
capture egen  W5COD90816Wk = rowtotal(W5TTOS90816S2 W5TTOS90816S3)
capture egen  W5COD90817Wk = rowtotal(W5TTOS90817S2 W5TTOS90817S3)
capture egen  W5COD90817Wk = rowtotal(W5TODS90817S2 W5TODS90817S3)
capture egen  W5COD90818Wk = rowtotal(W5TTOS90818S2 W5TTOS90818S3)
capture egen  W5COD90818Wk = rowtotal(W5TODS90818S2 W5TODS90818S3)
capture egen  W5COD90819Wk = rowtotal(W5TTOS90819S2 W5TTOS90819S3)
capture egen  W5COD90819Wk = rowtotal(W5TODS90819S2 W5TODS90819S3)
capture egen  W5COD90820Wk = rowtotal(W5TODS90820S2 W5TODS90820S3)
capture egen  W5COD90820Wk = rowtotal(W5TTOS90820S2 W5TTOS90820S3)
capture egen  W5COD90821Wk = rowtotal(W5TODS90821S2 W5TODS90821S3)
capture egen  W5COD90821Wk = rowtotal(W5TTOS90821S2 W5TTOS90821S3)
capture egen  W5COD90822Wk = rowtotal(W5TTOS90822S2 W5TTOS90822S3)
capture egen  W5COD90822Wk = rowtotal(W5TODS90822S2 W5TODS90822S3)
capture egen  W5COD90823Wk = rowtotal(W5TTOS90823S2 W5TTOS90823S3)
capture egen  W5COD90823Wk = rowtotal(W5TODS90823S2 W5TODS90823S3)
capture egen  W5COD90824Wk = rowtotal(W5TODS90824S2 W5TODS90824S3)
capture egen  W5COD90824Wk = rowtotal(W5TTOS90824S2 W5TTOS90824S3)
capture egen  W5COD90825Wk = rowtotal(W5TODS90825S2 W5TODS90825S3)
capture egen  W5COD90825Wk = rowtotal(W5TTOS90825S2 W5TTOS90825S3)
capture egen  W5COD90826Wk = rowtotal(W5TODS90826S2 W5TODS90826S3)
capture egen  W5COD90826Wk = rowtotal(W5TTOS90826S2 W5TTOS90826S3)
capture egen  W5COD90827Wk = rowtotal(W5TODS90827S2 W5TODS90827S3)
capture egen  W5COD90827Wk = rowtotal(W5TTOS90827S2 W5TTOS90827S3)
capture egen  W5COD90828Wk = rowtotal(W5TTOS90828S2 W5TTOS90828S3)
capture egen  W5COD90828Wk = rowtotal(W5TODS90828S2 W5TODS90828S3)
capture egen  W5COD90829Wk = rowtotal(W5TTOS90829S2 W5TTOS90829S3)
capture egen  W5COD90829Wk = rowtotal(W5TODS90829S2 W5TODS90829S3)
capture egen  W5COD90835Wk = rowtotal(W5TODS90835S2 W5TODS90835S3)
capture egen  W5COD90835Wk = rowtotal(W5TTOS90835S2 W5TTOS90835S3)
capture egen  W5COD90836Wk = rowtotal(W5TODS90836S2 W5TODS90836S3)
capture egen  W5COD90836Wk = rowtotal(W5TTOS90836S2 W5TTOS90836S3)
capture egen  W5COD90837Wk = rowtotal(W5TTOS90837S2 W5TTOS90837S3)
capture egen  W5COD90837Wk = rowtotal(W5TODS90837S2 W5TODS90837S3)
capture egen  W5COD90838Wk = rowtotal(W5TTOS90838S2 W5TTOS90838S3)
capture egen  W5COD90838Wk = rowtotal(W5TODS90838S2 W5TODS90838S3)
capture egen  W5COD90839Wk = rowtotal(W5TODS90839S2 W5TODS90839S3)
capture egen  W5COD90839Wk = rowtotal(W5TTOS90839S2 W5TTOS90839S3)
capture egen  W5COD90840Wk = rowtotal(W5TTOS90840S2 W5TTOS90840S3)
capture egen  W5COD90840Wk = rowtotal(W5TODS90840S2 W5TODS90840S3)
capture egen  W5COD90841Wk = rowtotal(W5TTOS90841S2 W5TTOS90841S3)
capture egen  W5COD90841Wk = rowtotal(W5TODS90841S2 W5TODS90841S3)
capture egen  W5COD90842Wk = rowtotal(W5TTOS90842S2 W5TTOS90842S3)
capture egen  W5COD90842Wk = rowtotal(W5TODS90842S2 W5TODS90842S3)
capture egen  W5COD90843Wk = rowtotal(W5TTOS90843S2 W5TTOS90843S3)
capture egen  W5COD90843Wk = rowtotal(W5TODS90843S2 W5TODS90843S3)
capture egen  W5COD90844Wk = rowtotal(W5TODS90844S2 W5TODS90844S3)
capture egen  W5COD90844Wk = rowtotal(W5TTOS90844S2 W5TTOS90844S3)
capture egen  W5COD90845Wk = rowtotal(W5TTOS90845S2 W5TTOS90845S3)
capture egen  W5COD90845Wk = rowtotal(W5TODS90845S2 W5TODS90845S3)
capture egen  W5COD90846Wk = rowtotal(W5TODS90846S2 W5TODS90846S3)
capture egen  W5COD90846Wk = rowtotal(W5TTOS90846S2 W5TTOS90846S3)
capture egen  W5COD90847Wk = rowtotal(W5TTOS90847S2 W5TTOS90847S3)
capture egen  W5COD90847Wk = rowtotal(W5TODS90847S2 W5TODS90847S3)
capture egen  W5COD90848Wk = rowtotal(W5TTOS90848S2 W5TTOS90848S3)
capture egen  W5COD90848Wk = rowtotal(W5TODS90848S2 W5TODS90848S3)
capture egen  W5COD90849Wk = rowtotal(W5TTOS90849S2 W5TTOS90849S3)
capture egen  W5COD90849Wk = rowtotal(W5TODS90849S2 W5TODS90849S3)
capture egen  W5COD90850Wk = rowtotal(W5TTOS90850S2 W5TTOS90850S3)
capture egen  W5COD90850Wk = rowtotal(W5TODS90850S2 W5TODS90850S3)
capture egen  W5COD90851Wk = rowtotal(W5TTOS90851S2 W5TTOS90851S3)
capture egen  W5COD90851Wk = rowtotal(W5TODS90851S2 W5TODS90851S3)
capture egen  W5COD90852Wk = rowtotal(W5TTOS90852S2 W5TTOS90852S3)
capture egen  W5COD90852Wk = rowtotal(W5TODS90852S2 W5TODS90852S3)
capture egen  W5COD90853Wk = rowtotal(W5TODS90853S2 W5TODS90853S3)
capture egen  W5COD90853Wk = rowtotal(W5TTOS90853S2 W5TTOS90853S3)
capture egen  W5COD90854Wk = rowtotal(W5TTOS90854S2 W5TTOS90854S3)
capture egen  W5COD90854Wk = rowtotal(W5TODS90854S2 W5TODS90854S3)
capture egen  W5COD90855Wk = rowtotal(W5TTOS90855S2 W5TTOS90855S3)
capture egen  W5COD90855Wk = rowtotal(W5TODS90855S2 W5TODS90855S3)
capture egen  W5COD90856Wk = rowtotal(W5TODS90856S2 W5TODS90856S3)
capture egen  W5COD90856Wk = rowtotal(W5TTOS90856S2 W5TTOS90856S3)
capture egen  W5COD90857Wk = rowtotal(W5TODS90857S2 W5TODS90857S3)
capture egen  W5COD90857Wk = rowtotal(W5TTOS90857S2 W5TTOS90857S3)
capture egen  W5COD90858Wk = rowtotal(W5TODS90858S2 W5TODS90858S3)
capture egen  W5COD90858Wk = rowtotal(W5TTOS90858S2 W5TTOS90858S3)
capture egen  W5COD90859Wk = rowtotal(W5TTOS90859S2 W5TTOS90859S3)
capture egen  W5COD90859Wk = rowtotal(W5TODS90859S2 W5TODS90859S3)
capture egen  W5COD90860Wk = rowtotal(W5TTOS90860S2 W5TTOS90860S3)
capture egen  W5COD90860Wk = rowtotal(W5TODS90860S2 W5TODS90860S3)
capture egen  W5COD90861Wk = rowtotal(W5TODS90861S2 W5TODS90861S3)
capture egen  W5COD90861Wk = rowtotal(W5TTOS90861S2 W5TTOS90861S3)
capture egen  W5COD90862Wk = rowtotal(W5TODS90862S2 W5TODS90862S3)
capture egen  W5COD90862Wk = rowtotal(W5TTOS90862S2 W5TTOS90862S3)
capture egen  W5COD90863Wk = rowtotal(W5TODS90863S2 W5TODS90863S3)
capture egen  W5COD90863Wk = rowtotal(W5TTOS90863S2 W5TTOS90863S3)
capture egen  W5COD90864Wk = rowtotal(W5TODS90864S2 W5TODS90864S3)
capture egen  W5COD90864Wk = rowtotal(W5TTOS90864S2 W5TTOS90864S3)
capture egen  W5COD90865Wk = rowtotal(W5TODS90865S2 W5TODS90865S3)
capture egen  W5COD90865Wk = rowtotal(W5TTOS90865S2 W5TTOS90865S3)
capture egen  W5COD90866Wk = rowtotal(W5TTOS90866S2 W5TTOS90866S3)
capture egen  W5COD90866Wk = rowtotal(W5TODS90866S2 W5TODS90866S3)
capture egen  W5COD90868Wk = rowtotal(W5TTOS90868S2 W5TTOS90868S3)
capture egen  W5COD90868Wk = rowtotal(W5TODS90868S2 W5TODS90868S3)
capture egen  W5COD90869Wk = rowtotal(W5TODS90869S2 W5TODS90869S3)
capture egen  W5COD90869Wk = rowtotal(W5TTOS90869S2 W5TTOS90869S3)
capture egen  W5COD90871Wk = rowtotal(W5TODS90871S2 W5TODS90871S3)
capture egen  W5COD90871Wk = rowtotal(W5TTOS90871S2 W5TTOS90871S3)
capture egen  W5COD90872Wk = rowtotal(W5TTOS90872S2 W5TTOS90872S3)
capture egen  W5COD90872Wk = rowtotal(W5TODS90872S2 W5TODS90872S3)
capture egen  W5COD90873Wk = rowtotal(W5TTOS90873S2 W5TTOS90873S3)
capture egen  W5COD90873Wk = rowtotal(W5TODS90873S2 W5TODS90873S3)
capture egen  W5COD90876Wk = rowtotal(W5TODS90876S2 W5TODS90876S3)
capture egen  W5COD90876Wk = rowtotal(W5TTOS90876S2 W5TTOS90876S3)
capture egen  W5COD90877Wk = rowtotal(W5TODS90877S2 W5TODS90877S3)
capture egen  W5COD90877Wk = rowtotal(W5TTOS90877S2 W5TTOS90877S3)
capture egen  W5COD90878Wk = rowtotal(W5TODS90878S2 W5TODS90878S3)
capture egen  W5COD90878Wk = rowtotal(W5TTOS90878S2 W5TTOS90878S3)
capture egen  W5COD90880Wk = rowtotal(W5TTOS90880S2 W5TTOS90880S3)
capture egen  W5COD90880Wk = rowtotal(W5TODS90880S2 W5TODS90880S3)
capture egen  W5COD90881Wk = rowtotal(W5TTOS90881S2 W5TTOS90881S3)
capture egen  W5COD90881Wk = rowtotal(W5TODS90881S2 W5TODS90881S3)
capture egen  W5COD90883Wk = rowtotal(W5TTOS90883S2 W5TTOS90883S3)
capture egen  W5COD90883Wk = rowtotal(W5TODS90883S2 W5TODS90883S3)
capture egen  W5COD90884Wk = rowtotal(W5TTOS90884S2 W5TTOS90884S3)
capture egen  W5COD90884Wk = rowtotal(W5TODS90884S2 W5TODS90884S3)
capture egen  W5COD90886Wk = rowtotal(W5TODS90886S2 W5TODS90886S3)
capture egen  W5COD90886Wk = rowtotal(W5TTOS90886S2 W5TTOS90886S3)
capture egen  W5COD90887Wk = rowtotal(W5TODS90887S2 W5TODS90887S3)
capture egen  W5COD90887Wk = rowtotal(W5TTOS90887S2 W5TTOS90887S3)
capture egen  W5COD90888Wk = rowtotal(W5TODS90888S2 W5TODS90888S3)
capture egen  W5COD90888Wk = rowtotal(W5TTOS90888S2 W5TTOS90888S3)
capture egen  W5COD90889Wk = rowtotal(W5TTOS90889S2 W5TTOS90889S3)
capture egen  W5COD90889Wk = rowtotal(W5TODS90889S2 W5TODS90889S3)
capture egen  W5COD90890Wk = rowtotal(W5TTOS90890S2 W5TTOS90890S3)
capture egen  W5COD90890Wk = rowtotal(W5TODS90890S2 W5TODS90890S3)
capture egen  W5COD90892Wk = rowtotal(W5TODS90892S2 W5TODS90892S3)
capture egen  W5COD90892Wk = rowtotal(W5TTOS90892S2 W5TTOS90892S3)
capture egen  W5COD90893Wk = rowtotal(W5TODS90893S2 W5TODS90893S3)
capture egen  W5COD90893Wk = rowtotal(W5TTOS90893S2 W5TTOS90893S3)
capture egen  W5COD90894Wk = rowtotal(W5TTOS90894S2 W5TTOS90894S3)
capture egen  W5COD90894Wk = rowtotal(W5TODS90894S2 W5TODS90894S3)
capture egen  W5COD90895Wk = rowtotal(W5TTOS90895S2 W5TTOS90895S3)
capture egen  W5COD90895Wk = rowtotal(W5TODS90895S2 W5TODS90895S3)
capture egen  W5COD90896Wk = rowtotal(W5TTOS90896S2 W5TTOS90896S3)
capture egen  W5COD90896Wk = rowtotal(W5TODS90896S2 W5TODS90896S3)
capture egen  W5COD90897Wk = rowtotal(W5TTOS90897S2 W5TTOS90897S3)
capture egen  W5COD90897Wk = rowtotal(W5TODS90897S2 W5TODS90897S3)
capture egen  W5COD90898Wk = rowtotal(W5TODS90898S2 W5TODS90898S3)
capture egen  W5COD90898Wk = rowtotal(W5TTOS90898S2 W5TTOS90898S3)
capture egen  W5COD90899Wk = rowtotal(W5TODS90899S2 W5TODS90899S3)
capture egen  W5COD90899Wk = rowtotal(W5TTOS90899S2 W5TTOS90899S3)
capture egen  W5COD90900Wk = rowtotal(W5TTOS90900S2 W5TTOS90900S3)
capture egen  W5COD90900Wk = rowtotal(W5TODS90900S2 W5TODS90900S3)
capture egen  W5COD90901Wk = rowtotal(W5TTOS90901S2 W5TTOS90901S3)
capture egen  W5COD90901Wk = rowtotal(W5TODS90901S2 W5TODS90901S3)
capture egen  W5COD90902Wk = rowtotal(W5TODS90902S2 W5TODS90902S3)
capture egen  W5COD90902Wk = rowtotal(W5TTOS90902S2 W5TTOS90902S3)
capture egen  W5COD90903Wk = rowtotal(W5TTOS90903S2 W5TTOS90903S3)
capture egen  W5COD90903Wk = rowtotal(W5TODS90903S2 W5TODS90903S3)
capture egen  W5COD90904Wk = rowtotal(W5TODS90904S2 W5TODS90904S3)
capture egen  W5COD90904Wk = rowtotal(W5TTOS90904S2 W5TTOS90904S3)
capture egen  W5COD90905Wk = rowtotal(W5TODS90905S2 W5TODS90905S3)
capture egen  W5COD90905Wk = rowtotal(W5TTOS90905S2 W5TTOS90905S3)
capture egen  W5COD90906Wk = rowtotal(W5TTOS90906S2 W5TTOS90906S3)
capture egen  W5COD90906Wk = rowtotal(W5TODS90906S2 W5TODS90906S3)
capture egen  W5COD90907Wk = rowtotal(W5TODS90907S2 W5TODS90907S3)
capture egen  W5COD90907Wk = rowtotal(W5TTOS90907S2 W5TTOS90907S3)
capture egen  W5COD90908Wk = rowtotal(W5TTOS90908S2 W5TTOS90908S3)
capture egen  W5COD90908Wk = rowtotal(W5TODS90908S2 W5TODS90908S3)
capture egen  W5COD90909Wk = rowtotal(W5TTOS90909S2 W5TTOS90909S3)
capture egen  W5COD90909Wk = rowtotal(W5TODS90909S2 W5TODS90909S3)
capture egen  W5COD90910Wk = rowtotal(W5TTOS90910S2 W5TTOS90910S3)
capture egen  W5COD90910Wk = rowtotal(W5TODS90910S2 W5TODS90910S3)
capture egen  W5COD90911Wk = rowtotal(W5TODS90911S2 W5TODS90911S3)
capture egen  W5COD90911Wk = rowtotal(W5TTOS90911S2 W5TTOS90911S3)
capture egen  W5COD90912Wk = rowtotal(W5TTOS90912S2 W5TTOS90912S3)
capture egen  W5COD90912Wk = rowtotal(W5TODS90912S2 W5TODS90912S3)
capture egen  W5COD90913Wk = rowtotal(W5TODS90913S2 W5TODS90913S3)
capture egen  W5COD90913Wk = rowtotal(W5TTOS90913S2 W5TTOS90913S3)
capture egen  W5COD90914Wk = rowtotal(W5TTOS90914S2 W5TTOS90914S3)
capture egen  W5COD90914Wk = rowtotal(W5TODS90914S2 W5TODS90914S3)
capture egen  W5COD90915Wk = rowtotal(W5TODS90915S2 W5TODS90915S3)
capture egen  W5COD90915Wk = rowtotal(W5TTOS90915S2 W5TTOS90915S3)
capture egen  W5COD90916Wk = rowtotal(W5TODS90916S2 W5TODS90916S3)
capture egen  W5COD90916Wk = rowtotal(W5TTOS90916S2 W5TTOS90916S3)
capture egen  W5COD90917Wk = rowtotal(W5TTOS90917S2 W5TTOS90917S3)
capture egen  W5COD90917Wk = rowtotal(W5TODS90917S2 W5TODS90917S3)
capture egen  W5COD90918Wk = rowtotal(W5TTOS90918S2 W5TTOS90918S3)
capture egen  W5COD90918Wk = rowtotal(W5TODS90918S2 W5TODS90918S3)
capture egen  W5COD90919Wk = rowtotal(W5TODS90919S2 W5TODS90919S3)
capture egen  W5COD90919Wk = rowtotal(W5TTOS90919S2 W5TTOS90919S3)
capture egen  W5COD90920Wk = rowtotal(W5TTOS90920S2 W5TTOS90920S3)
capture egen  W5COD90920Wk = rowtotal(W5TODS90920S2 W5TODS90920S3)
capture egen  W5COD90921Wk = rowtotal(W5TODS90921S2 W5TODS90921S3)
capture egen  W5COD90921Wk = rowtotal(W5TTOS90921S2 W5TTOS90921S3)
capture egen  W5COD90922Wk = rowtotal(W5TTOS90922S2 W5TTOS90922S3)
capture egen  W5COD90922Wk = rowtotal(W5TODS90922S2 W5TODS90922S3)
capture egen  W5COD90923Wk = rowtotal(W5TODS90923S2 W5TODS90923S3)
capture egen  W5COD90923Wk = rowtotal(W5TTOS90923S2 W5TTOS90923S3)
capture egen  W5COD90924Wk = rowtotal(W5TTOS90924S2 W5TTOS90924S3)
capture egen  W5COD90924Wk = rowtotal(W5TODS90924S2 W5TODS90924S3)
capture egen  W5COD90925Wk = rowtotal(W5TTOS90925S2 W5TTOS90925S3)
capture egen  W5COD90925Wk = rowtotal(W5TODS90925S2 W5TODS90925S3)
capture egen  W5COD90926Wk = rowtotal(W5TTOS90926S2 W5TTOS90926S3)
capture egen  W5COD90926Wk = rowtotal(W5TODS90926S2 W5TODS90926S3)
capture egen  W5COD90927Wk = rowtotal(W5TODS90927S2 W5TODS90927S3)
capture egen  W5COD90927Wk = rowtotal(W5TTOS90927S2 W5TTOS90927S3)
capture egen  W5COD90929Wk = rowtotal(W5TODS90929S2 W5TODS90929S3)
capture egen  W5COD90929Wk = rowtotal(W5TTOS90929S2 W5TTOS90929S3)
capture egen  W5COD90931Wk = rowtotal(W5TODS90931S2 W5TODS90931S3)
capture egen  W5COD90931Wk = rowtotal(W5TTOS90931S2 W5TTOS90931S3)
capture egen  W5COD90932Wk = rowtotal(W5TODS90932S2 W5TODS90932S3)
capture egen  W5COD90932Wk = rowtotal(W5TTOS90932S2 W5TTOS90932S3)
capture egen  W5COD90933Wk = rowtotal(W5TTOS90933S2 W5TTOS90933S3)
capture egen  W5COD90933Wk = rowtotal(W5TODS90933S2 W5TODS90933S3)
capture egen  W5COD90934Wk = rowtotal(W5TODS90934S2 W5TODS90934S3)
capture egen  W5COD90934Wk = rowtotal(W5TTOS90934S2 W5TTOS90934S3)
capture egen  W5COD90935Wk = rowtotal(W5TTOS90935S2 W5TTOS90935S3)
capture egen  W5COD90935Wk = rowtotal(W5TODS90935S2 W5TODS90935S3)
capture egen  W5COD90936Wk = rowtotal(W5TODS90936S2 W5TODS90936S3)
capture egen  W5COD90936Wk = rowtotal(W5TTOS90936S2 W5TTOS90936S3)
capture egen  W5COD90938Wk = rowtotal(W5TODS90938S2 W5TODS90938S3)
capture egen  W5COD90938Wk = rowtotal(W5TTOS90938S2 W5TTOS90938S3)
capture egen  W5COD90940Wk = rowtotal(W5TODS90940S2 W5TODS90940S3)
capture egen  W5COD90940Wk = rowtotal(W5TTOS90940S2 W5TTOS90940S3)
capture egen  W5COD90941Wk = rowtotal(W5TODS90941S2 W5TODS90941S3)
capture egen  W5COD90941Wk = rowtotal(W5TTOS90941S2 W5TTOS90941S3)
capture egen  W5COD90942Wk = rowtotal(W5TODS90942S2 W5TODS90942S3)
capture egen  W5COD90942Wk = rowtotal(W5TTOS90942S2 W5TTOS90942S3)
capture egen  W5COD90943Wk = rowtotal(W5TTOS90943S2 W5TTOS90943S3)
capture egen  W5COD90943Wk = rowtotal(W5TODS90943S2 W5TODS90943S3)
capture egen  W5COD90944Wk = rowtotal(W5TODS90944S2 W5TODS90944S3)
capture egen  W5COD90944Wk = rowtotal(W5TTOS90944S2 W5TTOS90944S3)
capture egen  W5COD90945Wk = rowtotal(W5TODS90945S2 W5TODS90945S3)
capture egen  W5COD90945Wk = rowtotal(W5TTOS90945S2 W5TTOS90945S3)
capture egen  W5COD90946Wk = rowtotal(W5TTOS90946S2 W5TTOS90946S3)
capture egen  W5COD90946Wk = rowtotal(W5TODS90946S2 W5TODS90946S3)
capture egen  W5COD90947Wk = rowtotal(W5TTOS90947S2 W5TTOS90947S3)
capture egen  W5COD90947Wk = rowtotal(W5TODS90947S2 W5TODS90947S3)
capture egen  W5COD90948Wk = rowtotal(W5TODS90948S2 W5TODS90948S3)
capture egen  W5COD90948Wk = rowtotal(W5TTOS90948S2 W5TTOS90948S3)
capture egen  W5COD90949Wk = rowtotal(W5TTOS90949S2 W5TTOS90949S3)
capture egen  W5COD90949Wk = rowtotal(W5TODS90949S2 W5TODS90949S3)
capture egen  W5COD90950Wk = rowtotal(W5TODS90950S2 W5TODS90950S3)
capture egen  W5COD90950Wk = rowtotal(W5TTOS90950S2 W5TTOS90950S3)
capture egen  W5COD90951Wk = rowtotal(W5TTOS90951S2 W5TTOS90951S3)
capture egen  W5COD90951Wk = rowtotal(W5TODS90951S2 W5TODS90951S3)
capture egen  W5COD90952Wk = rowtotal(W5TTOS90952S2 W5TTOS90952S3)
capture egen  W5COD90952Wk = rowtotal(W5TODS90952S2 W5TODS90952S3)
capture egen  W5COD90953Wk = rowtotal(W5TTOS90953S2 W5TTOS90953S3)
capture egen  W5COD90953Wk = rowtotal(W5TODS90953S2 W5TODS90953S3)
capture egen  W5COD90954Wk = rowtotal(W5TTOS90954S2 W5TTOS90954S3)
capture egen  W5COD90954Wk = rowtotal(W5TODS90954S2 W5TODS90954S3)
capture egen  W5COD90955Wk = rowtotal(W5TTOS90955S2 W5TTOS90955S3)
capture egen  W5COD90955Wk = rowtotal(W5TODS90955S2 W5TODS90955S3)
capture egen  W5COD90956Wk = rowtotal(W5TTOS90956S2 W5TTOS90956S3)
capture egen  W5COD90956Wk = rowtotal(W5TODS90956S2 W5TODS90956S3)
capture egen  W5COD90957Wk = rowtotal(W5TODS90957S2 W5TODS90957S3)
capture egen  W5COD90957Wk = rowtotal(W5TTOS90957S2 W5TTOS90957S3)
capture egen  W5COD90961Wk = rowtotal(W5TODS90961S2 W5TODS90961S3)
capture egen  W5COD90961Wk = rowtotal(W5TTOS90961S2 W5TTOS90961S3)
capture egen  W5COD90964Wk = rowtotal(W5TODS90964S2 W5TODS90964S3)
capture egen  W5COD90964Wk = rowtotal(W5TTOS90964S2 W5TTOS90964S3)
capture egen  W5COD90965Wk = rowtotal(W5TODS90965S2 W5TODS90965S3)
capture egen  W5COD90965Wk = rowtotal(W5TTOS90965S2 W5TTOS90965S3)
capture egen  W5COD90966Wk = rowtotal(W5TTOS90966S2 W5TTOS90966S3)
capture egen  W5COD90966Wk = rowtotal(W5TODS90966S2 W5TODS90966S3)
capture egen  W5COD90968Wk = rowtotal(W5TODS90968S2 W5TODS90968S3)
capture egen  W5COD90968Wk = rowtotal(W5TTOS90968S2 W5TTOS90968S3)
capture egen  W5COD90969Wk = rowtotal(W5TODS90969S2 W5TODS90969S3)
capture egen  W5COD90969Wk = rowtotal(W5TTOS90969S2 W5TTOS90969S3)
capture egen  W5COD90970Wk = rowtotal(W5TTOS90970S2 W5TTOS90970S3)
capture egen  W5COD90970Wk = rowtotal(W5TODS90970S2 W5TODS90970S3)
capture egen  W5COD90971Wk = rowtotal(W5TTOS90971S2 W5TTOS90971S3)
capture egen  W5COD90971Wk = rowtotal(W5TODS90971S2 W5TODS90971S3)
capture egen  W5COD90972Wk = rowtotal(W5TODS90972S2 W5TODS90972S3)
capture egen  W5COD90972Wk = rowtotal(W5TTOS90972S2 W5TTOS90972S3)
capture egen  W5COD90973Wk = rowtotal(W5TODS90973S2 W5TODS90973S3)
capture egen  W5COD90973Wk = rowtotal(W5TTOS90973S2 W5TTOS90973S3)
capture egen  W5COD90974Wk = rowtotal(W5TODS90974S2 W5TODS90974S3)
capture egen  W5COD90974Wk = rowtotal(W5TTOS90974S2 W5TTOS90974S3)
capture egen  W5COD90976Wk = rowtotal(W5TODS90976S2 W5TODS90976S3)
capture egen  W5COD90976Wk = rowtotal(W5TTOS90976S2 W5TTOS90976S3)
capture egen  W5COD90977Wk = rowtotal(W5TODS90977S2 W5TODS90977S3)
capture egen  W5COD90977Wk = rowtotal(W5TTOS90977S2 W5TTOS90977S3)
capture egen  W5COD90978Wk = rowtotal(W5TTOS90978S2 W5TTOS90978S3)
capture egen  W5COD90978Wk = rowtotal(W5TODS90978S2 W5TODS90978S3)
capture egen  W5COD90979Wk = rowtotal(W5TODS90979S2 W5TODS90979S3)
capture egen  W5COD90979Wk = rowtotal(W5TTOS90979S2 W5TTOS90979S3)
capture egen  W5COD90980Wk = rowtotal(W5TODS90980S2 W5TODS90980S3)
capture egen  W5COD90980Wk = rowtotal(W5TTOS90980S2 W5TTOS90980S3)
capture egen  W5COD90981Wk = rowtotal(W5TODS90981S2 W5TODS90981S3)
capture egen  W5COD90981Wk = rowtotal(W5TTOS90981S2 W5TTOS90981S3)
capture egen  W5COD90984Wk = rowtotal(W5TODS90984S2 W5TODS90984S3)
capture egen  W5COD90984Wk = rowtotal(W5TTOS90984S2 W5TTOS90984S3)
capture egen  W5COD90985Wk = rowtotal(W5TODS90985S2 W5TODS90985S3)
capture egen  W5COD90985Wk = rowtotal(W5TTOS90985S2 W5TTOS90985S3)
capture egen  W5COD90986Wk = rowtotal(W5TTOS90986S2 W5TTOS90986S3)
capture egen  W5COD90986Wk = rowtotal(W5TODS90986S2 W5TODS90986S3)
capture egen  W5COD90987Wk = rowtotal(W5TODS90987S2 W5TODS90987S3)
capture egen  W5COD90987Wk = rowtotal(W5TTOS90987S2 W5TTOS90987S3)
capture egen  W5COD90988Wk = rowtotal(W5TODS90988S2 W5TODS90988S3)
capture egen  W5COD90988Wk = rowtotal(W5TTOS90988S2 W5TTOS90988S3)
capture egen  W5COD90989Wk = rowtotal(W5TODS90989S2 W5TODS90989S3)
capture egen  W5COD90989Wk = rowtotal(W5TTOS90989S2 W5TTOS90989S3)
capture egen  W5COD90990Wk = rowtotal(W5TODS90990S2 W5TODS90990S3)
capture egen  W5COD90990Wk = rowtotal(W5TTOS90990S2 W5TTOS90990S3)
capture egen  W5COD90991Wk = rowtotal(W5TODS90991S2 W5TODS90991S3)
capture egen  W5COD90991Wk = rowtotal(W5TTOS90991S2 W5TTOS90991S3)
capture egen  W5COD90996Wk = rowtotal(W5TTOS90996S2 W5TTOS90996S3)
capture egen  W5COD90996Wk = rowtotal(W5TODS90996S2 W5TODS90996S3)
capture egen  W5COD90997Wk = rowtotal(W5TODS90997S2 W5TODS90997S3)
capture egen  W5COD90997Wk = rowtotal(W5TTOS90997S2 W5TTOS90997S3)
capture egen  W5COD90998Wk = rowtotal(W5TTOS90998S2 W5TTOS90998S3)
capture egen  W5COD90998Wk = rowtotal(W5TODS90998S2 W5TODS90998S3)
capture egen  W5COD90999Wk = rowtotal(W5TTOS90999S2 W5TTOS90999S3)
capture egen  W5COD90999Wk = rowtotal(W5TODS90999S2 W5TODS90999S3)
capture egen  W5COD91000Wk = rowtotal(W5TODS91000S2 W5TODS91000S3)
capture egen  W5COD91000Wk = rowtotal(W5TTOS91000S2 W5TTOS91000S3)
capture egen  W5COD91002Wk = rowtotal(W5TODS91002S2 W5TODS91002S3)
capture egen  W5COD91002Wk = rowtotal(W5TTOS91002S2 W5TTOS91002S3)
capture egen  W5COD91003Wk = rowtotal(W5TTOS91003S2 W5TTOS91003S3)
capture egen  W5COD91003Wk = rowtotal(W5TODS91003S2 W5TODS91003S3)
capture egen  W5COD91004Wk = rowtotal(W5TTOS91004S2 W5TTOS91004S3)
capture egen  W5COD91004Wk = rowtotal(W5TODS91004S2 W5TODS91004S3)
capture egen  W5COD91005Wk = rowtotal(W5TTOS91005S2 W5TTOS91005S3)
capture egen  W5COD91005Wk = rowtotal(W5TODS91005S2 W5TODS91005S3)
capture egen  W5COD91006Wk = rowtotal(W5TTOS91006S2 W5TTOS91006S3)
capture egen  W5COD91006Wk = rowtotal(W5TODS91006S2 W5TODS91006S3)
capture egen  W5COD91007Wk = rowtotal(W5TODS91007S2 W5TODS91007S3)
capture egen  W5COD91007Wk = rowtotal(W5TTOS91007S2 W5TTOS91007S3)
capture egen  W5COD91008Wk = rowtotal(W5TTOS91008S2 W5TTOS91008S3)
capture egen  W5COD91008Wk = rowtotal(W5TODS91008S2 W5TODS91008S3)
capture egen  W5COD91009Wk = rowtotal(W5TODS91009S2 W5TODS91009S3)
capture egen  W5COD91009Wk = rowtotal(W5TTOS91009S2 W5TTOS91009S3)
capture egen  W5COD91010Wk = rowtotal(W5TODS91010S2 W5TODS91010S3)
capture egen  W5COD91010Wk = rowtotal(W5TTOS91010S2 W5TTOS91010S3)
capture egen  W5COD91011Wk = rowtotal(W5TTOS91011S2 W5TTOS91011S3)
capture egen  W5COD91011Wk = rowtotal(W5TODS91011S2 W5TODS91011S3)
capture egen  W5COD91012Wk = rowtotal(W5TTOS91012S2 W5TTOS91012S3)
capture egen  W5COD91012Wk = rowtotal(W5TODS91012S2 W5TODS91012S3)
capture egen  W5COD91013Wk = rowtotal(W5TTOS91013S2 W5TTOS91013S3)
capture egen  W5COD91013Wk = rowtotal(W5TODS91013S2 W5TODS91013S3)
capture egen  W5COD91014Wk = rowtotal(W5TTOS91014S2 W5TTOS91014S3)
capture egen  W5COD91014Wk = rowtotal(W5TODS91014S2 W5TODS91014S3)
capture egen  W5COD91015Wk = rowtotal(W5TTOS91015S2 W5TTOS91015S3)
capture egen  W5COD91015Wk = rowtotal(W5TODS91015S2 W5TODS91015S3)
capture egen  W5COD91016Wk = rowtotal(W5TTOS91016S2 W5TTOS91016S3)
capture egen  W5COD91016Wk = rowtotal(W5TODS91016S2 W5TODS91016S3)
capture egen  W5COD91017Wk = rowtotal(W5TTOS91017S2 W5TTOS91017S3)
capture egen  W5COD91017Wk = rowtotal(W5TODS91017S2 W5TODS91017S3)
capture egen  W5COD91018Wk = rowtotal(W5TTOS91018S2 W5TTOS91018S3)
capture egen  W5COD91018Wk = rowtotal(W5TODS91018S2 W5TODS91018S3)
capture egen  W5COD91019Wk = rowtotal(W5TTOS91019S2 W5TTOS91019S3)
capture egen  W5COD91019Wk = rowtotal(W5TODS91019S2 W5TODS91019S3)
capture egen  W5COD91020Wk = rowtotal(W5TODS91020S2 W5TODS91020S3)
capture egen  W5COD91020Wk = rowtotal(W5TTOS91020S2 W5TTOS91020S3)
capture egen  W5COD91022Wk = rowtotal(W5TODS91022S2 W5TODS91022S3)
capture egen  W5COD91022Wk = rowtotal(W5TTOS91022S2 W5TTOS91022S3)
capture egen  W5COD91023Wk = rowtotal(W5TODS91023S2 W5TODS91023S3)
capture egen  W5COD91023Wk = rowtotal(W5TTOS91023S2 W5TTOS91023S3)
capture egen  W5COD91024Wk = rowtotal(W5TODS91024S2 W5TODS91024S3)
capture egen  W5COD91024Wk = rowtotal(W5TTOS91024S2 W5TTOS91024S3)
capture egen  W5COD91025Wk = rowtotal(W5TODS91025S2 W5TODS91025S3)
capture egen  W5COD91025Wk = rowtotal(W5TTOS91025S2 W5TTOS91025S3)
capture egen  W5COD91026Wk = rowtotal(W5TODS91026S2 W5TODS91026S3)
capture egen  W5COD91026Wk = rowtotal(W5TTOS91026S2 W5TTOS91026S3)
capture egen  W5COD91027Wk = rowtotal(W5TODS91027S2 W5TODS91027S3)
capture egen  W5COD91027Wk = rowtotal(W5TTOS91027S2 W5TTOS91027S3)
capture egen  W5COD91028Wk = rowtotal(W5TTOS91028S2 W5TTOS91028S3)
capture egen  W5COD91028Wk = rowtotal(W5TODS91028S2 W5TODS91028S3)
capture egen  W5COD91029Wk = rowtotal(W5TODS91029S2 W5TODS91029S3)
capture egen  W5COD91029Wk = rowtotal(W5TTOS91029S2 W5TTOS91029S3)
capture egen  W5COD91030Wk = rowtotal(W5TTOS91030S2 W5TTOS91030S3)
capture egen  W5COD91030Wk = rowtotal(W5TODS91030S2 W5TODS91030S3)
capture egen  W5COD91031Wk = rowtotal(W5TODS91031S2 W5TODS91031S3)
capture egen  W5COD91031Wk = rowtotal(W5TTOS91031S2 W5TTOS91031S3)
capture egen  W5COD91032Wk = rowtotal(W5TTOS91032S2 W5TTOS91032S3)
capture egen  W5COD91032Wk = rowtotal(W5TODS91032S2 W5TODS91032S3)

* Saving
rename SUBJECTID SUBJECTIDW5
rename IP IPW5
sort PAC
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W5/WorkingData/W5S1234_Working.dta", replace

**************************************************************************************************
**************************************************************************************************
*										W	E	E	K	 6
**************************************************************************************************
**************************************************************************************************

set more off
clear all
* Set Working Directory (comment it with a "*", don't delet it)
cd "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W6/WorkingData"

**************************************************************************************************
*											W6S1
**************************************************************************************************


*Open W6S1 and save a Working Copy (We wanna keep a copy of the original data)
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W6/WorkingData/W6S1.dta", replace
destring, replace
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W6/WorkingData/W6S1_Working.dta", replace

* From Excel to STATA everything enters as lower case. Lets reverse it to its original: Upper Case
rename *, upper

* Now lets keep what we need
keep ///
DATE FOD_A_3786 GRP_20697 GRP_20698 Q_5983_DUR_32242 Q_5983_SEQ_32242 Q_5983_VAL_32242 SUBJECT_ID ///
TIME TIME_BEGIN_FLOWPHASE TIME_BEGIN_SUBSTAGE TIME_END_FLOWPHASE TOD_A_3786 TOTAL_FLOW_ACCESSED ///
TTO_A_3786 WORDS_A_3786

*rename SUBJECT_ID to PAC
rename Q_5983_VAL_32242 PAC

* Adding Prefixes and Suffixes
foreach x of var * {
rename `x' W6`x'
} 

foreach x of var * {
rename `x' `x'S1
}

* Renaming SUBJECT_ID (no pre nor su fixes, we need that to merge on it)
rename W6SUBJECT_IDS1 SUBJECTID

* Renaming SUBJECT_ID (no pre nor su fixes, we need that to merge on it)
rename W6PACS1 PAC

* Eliminating ALL underscores
foreach v of var *_* { 
	local V : subinstr local v "_" "", all
	capture rename `v' `V' 
	if _rc di as txt "problem with `v'"
} 

*saving
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W6/WorkingData/W6S1_Working.dta", replace


**************************************************************************************************
*											W6S2
**************************************************************************************************

*Open W6S2 and save a Working Copy (We wanna keep a copy of the original data)
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W6/WorkingData/W6S2.dta", replace
destring, replace
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W6/WorkingData/W6S2_Working.dta", replace

* From Excel to STATA everything enters as lower case. Lets reverse it to its original: Upper Case
rename *, upper

* Now lets keep what we need
keep ///
DATE	FOD_A_3789	FOD_A_3790	FOD_A_3791	FOD_A_3792	FOD_A_3793	FOD_A_3794	FOD_A_3795	FOD_A_3796	 ///
FOD_S_91116	FOD_S_91121	FOD_S_91130	FOD_S_91135	FOD_S_91150	FOD_S_91163	FOD_S_91165	FOD_S_91170	FOD_S_91248	 ///
FOD_S_91262	FOD_S_91263	FOD_S_91264	FOD_S_91265	FOD_S_91266	FOD_S_91267	FOD_S_91268	FOD_S_91269	FOD_S_91270	 ///
FOD_S_91271	FOD_S_91272	FOD_S_91273	FOD_S_91274	FOD_S_91275	FOD_S_91276	FOD_S_91277	FOD_S_91278	FOD_S_91280	 ///
FOD_S_91281	FOD_S_91282	FOD_S_91283	FOD_S_91284	FOD_S_91285	FOD_S_91286	FOD_S_91287	FOD_S_91288	FOD_S_91289	 ///
FOD_S_91290	FOD_S_91291	FOD_S_91292	FOD_S_91293	FOD_S_91294	FOD_S_91295	GRP_20628	GRP_20629	GRP_20630	 ///
GRP_20631	GRP_20632	GRP_20633	GRP_20634	GRP_20635	GRP_20636	GRP_20637	GRP_20638	GRP_20639	 ///
GRP_20640	GRP_20641	GRP_20642	GRP_20643	SUBJECT_ID	TIME	TIME_BEGIN_FLOWPHASE	TIME_BEGIN_SUBSTAGE	 ///
TIME_END_FLOWPHASE	TOD_A_3789	TOD_A_3790	TOD_A_3791	TOD_A_3792	TOD_A_3793	TOD_A_3794	TOD_A_3795	 ///
TOD_A_3796	TOD_S_91116	TOD_S_91121	TOD_S_91130	TOD_S_91135	TOD_S_91150	TOD_S_91163	TOD_S_91165	TOD_S_91170	 ///
TOD_S_91248	TOD_S_91262	TOD_S_91263	TOD_S_91264	TOD_S_91265	TOD_S_91266	TOD_S_91267	TOD_S_91268	TOD_S_91269	 ///
TOD_S_91270	TOD_S_91271	TOD_S_91272	TOD_S_91273	TOD_S_91274	TOD_S_91275	TOD_S_91276	TOD_S_91277	TOD_S_91278	 ///
TOD_S_91280	TOD_S_91281	TOD_S_91282	TOD_S_91283	TOD_S_91284	TOD_S_91285	TOD_S_91286	TOD_S_91287	TOD_S_91288	 ///
TOD_S_91289	TOD_S_91290	TOD_S_91291	TOD_S_91292	TOD_S_91293	TOD_S_91294	TOD_S_91295	TOTAL_FLOW_ACCESSED	 ///
TTO_A_3789	TTO_A_3790	TTO_A_3791	TTO_A_3792	TTO_A_3793	TTO_A_3794	TTO_A_3795	TTO_A_3796	TTO_S_91116	 ///
TTO_S_91121	TTO_S_91130	TTO_S_91135	TTO_S_91150	TTO_S_91163	TTO_S_91165	TTO_S_91170	TTO_S_91248	TTO_S_91262	 ///
TTO_S_91263	TTO_S_91264	TTO_S_91265	TTO_S_91266	TTO_S_91267	TTO_S_91268	TTO_S_91269	TTO_S_91270	TTO_S_91271	 ///
TTO_S_91272	TTO_S_91273	TTO_S_91274	TTO_S_91275	TTO_S_91276	TTO_S_91277	TTO_S_91278	TTO_S_91280	TTO_S_91281	 ///
TTO_S_91282	TTO_S_91283	TTO_S_91284	TTO_S_91285	TTO_S_91286	TTO_S_91287	TTO_S_91288	TTO_S_91289	TTO_S_91290	 ///
TTO_S_91291	TTO_S_91292	TTO_S_91293	TTO_S_91294	TTO_S_91295	WORDS_A_3789	WORDS_A_3790	WORDS_A_3791	 ///
WORDS_A_3792	WORDS_A_3793	WORDS_A_3794	WORDS_A_3795	WORDS_A_3796


* Adding Prefixes and Suffixes
foreach x of var * {
rename `x' W6`x'
}
 
foreach x of var * {
rename `x' `x'S2
}

* Renaming SUBJECT_ID (no pre nor su fixes, we need that to merge on it)
rename W6SUBJECT_IDS2 SUBJECT_ID 

* Eliminating ALL underscores
foreach v of var *_* { 
	local V : subinstr local v "_" "", all
	capture rename `v' `V' 
	if _rc di as txt "problem with `v'"
} 

*saving
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W6/WorkingData/W6S2_Working.dta", replace


**************************************************************************************************
*											W6S3
**************************************************************************************************

*Open W6S3 and save a Working Copy (We wanna keep a copy of the original data)
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W6/WorkingData/W6S3.dta", replace
destring, replace
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W6/WorkingData/W6S3_Working.dta", replace

* From Excel to STATA everything enters as lower case. Lets reverse it to its original: Upper Case
rename *, upper

* Now lets keep what we need
keep ///
DATE	FOD_A_3787	FOD_A_3788	FOD_S_91035	FOD_S_91036	FOD_S_91037	FOD_S_91038	FOD_S_91042	FOD_S_91043	 ///
FOD_S_91044	FOD_S_91045	FOD_S_91046	FOD_S_91048	FOD_S_91049	FOD_S_91050	FOD_S_91051	FOD_S_91052	FOD_S_91053	 ///
FOD_S_91054	FOD_S_91055	FOD_S_91056	FOD_S_91057	FOD_S_91058	FOD_S_91061	FOD_S_91064	FOD_S_91068	FOD_S_91069	 ///
FOD_S_91070	FOD_S_91071	FOD_S_91074	FOD_S_91075	FOD_S_91076	FOD_S_91077	FOD_S_91078	FOD_S_91079	FOD_S_91080	 ///
FOD_S_91081	FOD_S_91082	FOD_S_91083	FOD_S_91084	FOD_S_91085	FOD_S_91086	FOD_S_91087	FOD_S_91088	FOD_S_91089	 ///
FOD_S_91090	FOD_S_91091	FOD_S_91092	FOD_S_91093	FOD_S_91095	FOD_S_91096	FOD_S_91098	FOD_S_91099	FOD_S_91100	 ///
FOD_S_91102	FOD_S_91103	FOD_S_91105	FOD_S_91107	FOD_S_91108	FOD_S_91109	FOD_S_91110	FOD_S_91111	FOD_S_91112	 ///
FOD_S_91113	FOD_S_91114	FOD_S_91115	FOD_S_91116	FOD_S_91117	FOD_S_91118	FOD_S_91119	FOD_S_91120	FOD_S_91121	 ///
FOD_S_91122	FOD_S_91123	FOD_S_91124	FOD_S_91125	FOD_S_91126	FOD_S_91127	FOD_S_91128	FOD_S_91129	FOD_S_91130	 ///
FOD_S_91131	FOD_S_91132	FOD_S_91133	FOD_S_91134	FOD_S_91135	FOD_S_91136	FOD_S_91137	FOD_S_91138	FOD_S_91139	 ///
FOD_S_91140	FOD_S_91141	FOD_S_91142	FOD_S_91143	FOD_S_91144	FOD_S_91145	FOD_S_91146	FOD_S_91147	FOD_S_91148	 ///
FOD_S_91149	FOD_S_91150	FOD_S_91151	FOD_S_91153	FOD_S_91154	FOD_S_91155	FOD_S_91157	FOD_S_91158	FOD_S_91159	 ///
FOD_S_91160	FOD_S_91161	FOD_S_91162	FOD_S_91163	FOD_S_91164	FOD_S_91165	FOD_S_91167	FOD_S_91168	FOD_S_91169	 ///
FOD_S_91170	FOD_S_91172	FOD_S_91173	FOD_S_91174	FOD_S_91175	FOD_S_91176	FOD_S_91178	FOD_S_91179	FOD_S_91180	 ///
FOD_S_91181	FOD_S_91182	FOD_S_91183	FOD_S_91184	FOD_S_91185	FOD_S_91186	FOD_S_91187	FOD_S_91188	FOD_S_91190	 ///
FOD_S_91191	FOD_S_91192	FOD_S_91195	FOD_S_91196	FOD_S_91197	FOD_S_91200	FOD_S_91201	FOD_S_91203	FOD_S_91204	 ///
FOD_S_91205	FOD_S_91206	FOD_S_91207	FOD_S_91208	FOD_S_91209	FOD_S_91210	FOD_S_91211	FOD_S_91212	FOD_S_91213	 ///
FOD_S_91214	FOD_S_91217	FOD_S_91218	FOD_S_91221	FOD_S_91222	FOD_S_91223	FOD_S_91224	FOD_S_91225	FOD_S_91226	 ///
FOD_S_91227	FOD_S_91228	FOD_S_91229	FOD_S_91230	FOD_S_91231	FOD_S_91232	FOD_S_91233	FOD_S_91234	FOD_S_91236	 ///
FOD_S_91238	FOD_S_91239	FOD_S_91240	FOD_S_91241	FOD_S_91242	FOD_S_91243	FOD_S_91244	FOD_S_91245	FOD_S_91246	 ///
FOD_S_91247	FOD_S_91248	FOD_S_91249	FOD_S_91250	FOD_S_91251	FOD_S_91253	FOD_S_91255	FOD_S_91258	FOD_S_91259	 ///
FOD_S_91262	FOD_S_91263	FOD_S_91264	FOD_S_91265	FOD_S_91266	FOD_S_91267	FOD_S_91268	FOD_S_91269	FOD_S_91270	 ///
FOD_S_91271	FOD_S_91272	FOD_S_91273	FOD_S_91274	FOD_S_91275	FOD_S_91276	FOD_S_91277	FOD_S_91278	FOD_S_91280	 ///
FOD_S_91281	FOD_S_91282	FOD_S_91283	FOD_S_91284	FOD_S_91285	FOD_S_91290	FOD_S_91291	FOD_S_91292	FOD_S_91293	 ///
FOD_S_91294	FOD_S_91295	GRP_20628	GRP_20629	GRP_20630	GRP_20631	GRP_20632	GRP_20633	GRP_20634	 ///
GRP_20635	GRP_20636	GRP_20637	GRP_20638	GRP_20639	GRP_20640	GRP_20641	GRP_20642	GRP_20643	 ///
GRP_20644	GRP_20645	GRP_20646	GRP_20647	GRP_20651	GRP_20652	GRP_20653	GRP_20654	GRP_20655	 ///
GRP_20656	GRP_20657	GRP_20658	GRP_20659	GRP_20660	GRP_20662	GRP_20663	GRP_20664	GRP_20665	 ///
GRP_20666	GRP_20669	GRP_20671	GRP_20673	GRP_20674	GRP_20675	GRP_20676	GRP_20677	GRP_20678	 ///
GRP_20681	GRP_20682	GRP_20686	GRP_20690	GRP_20691	GRP_20692	GRP_20693	GRP_20694	GRP_20695	 ///
GRP_20696	SUBJECT_ID	TIME	TIME_BEGIN_FLOWPHASE	TIME_BEGIN_SUBSTAGE	TIME_END_FLOWPHASE	TOD_A_3787	 ///
TOD_A_3788	TOD_S_91035	TOD_S_91036	TOD_S_91037	TOD_S_91038	TOD_S_91042	TOD_S_91043	TOD_S_91044	TOD_S_91045	 ///
TOD_S_91046	TOD_S_91048	TOD_S_91049	TOD_S_91050	TOD_S_91051	TOD_S_91052	TOD_S_91053	TOD_S_91054	TOD_S_91055	 ///
TOD_S_91056	TOD_S_91057	TOD_S_91058	TOD_S_91061	TOD_S_91064	TOD_S_91068	TOD_S_91069	TOD_S_91070	TOD_S_91071	 ///
TOD_S_91074	TOD_S_91075	TOD_S_91076	TOD_S_91077	TOD_S_91078	TOD_S_91079	TOD_S_91080	TOD_S_91081	TOD_S_91082	 ///
TOD_S_91083	TOD_S_91084	TOD_S_91085	TOD_S_91086	TOD_S_91087	TOD_S_91088	TOD_S_91089	TOD_S_91090	TOD_S_91091	 ///
TOD_S_91092	TOD_S_91093	TOD_S_91095	TOD_S_91096	TOD_S_91098	TOD_S_91099	TOD_S_91100	TOD_S_91102	TOD_S_91103	 ///
TOD_S_91105	TOD_S_91107	TOD_S_91108	TOD_S_91109	TOD_S_91110	TOD_S_91111	TOD_S_91112	TOD_S_91113	TOD_S_91114	 ///
TOD_S_91115	TOD_S_91116	TOD_S_91117	TOD_S_91118	TOD_S_91119	TOD_S_91120	TOD_S_91121	TOD_S_91122	TOD_S_91123	 ///
TOD_S_91124	TOD_S_91125	TOD_S_91126	TOD_S_91127	TOD_S_91128	TOD_S_91129	TOD_S_91130	TOD_S_91131	TOD_S_91132	 ///
TOD_S_91133	TOD_S_91134	TOD_S_91135	TOD_S_91136	TOD_S_91137	TOD_S_91138	TOD_S_91139	TOD_S_91140	TOD_S_91141	 ///
TOD_S_91142	TOD_S_91143	TOD_S_91144	TOD_S_91145	TOD_S_91146	TOD_S_91147	TOD_S_91148	TOD_S_91149	TOD_S_91150	 ///
TOD_S_91151	TOD_S_91153	TOD_S_91154	TOD_S_91155	TOD_S_91157	TOD_S_91158	TOD_S_91159	TOD_S_91160	TOD_S_91161	 ///
TOD_S_91162	TOD_S_91163	TOD_S_91164	TOD_S_91165	TOD_S_91167	TOD_S_91168	TOD_S_91169	TOD_S_91170	TOD_S_91172	 ///
TOD_S_91173	TOD_S_91174	TOD_S_91175	TOD_S_91176	TOD_S_91178	TOD_S_91179	TOD_S_91180	TOD_S_91181	TOD_S_91182	 ///
TOD_S_91183	TOD_S_91184	TOD_S_91185	TOD_S_91186	TOD_S_91187	TOD_S_91188	TOD_S_91190	TOD_S_91191	TOD_S_91192	 ///
TOD_S_91195	TOD_S_91196	TOD_S_91197	TOD_S_91200	TOD_S_91201	TOD_S_91203	TOD_S_91204	TOD_S_91205	TOD_S_91206	 ///
TOD_S_91207	TOD_S_91208	TOD_S_91209	TOD_S_91210	TOD_S_91211	TOD_S_91212	TOD_S_91213	TOD_S_91214	TOD_S_91217	 ///
TOD_S_91218	TOD_S_91221	TOD_S_91222	TOD_S_91223	TOD_S_91224	TOD_S_91225	TOD_S_91226	TOD_S_91227	TOD_S_91228	 ///
TOD_S_91229	TOD_S_91230	TOD_S_91231	TOD_S_91232	TOD_S_91233	TOD_S_91234	TOD_S_91236	TOD_S_91238	TOD_S_91239	 ///
TOD_S_91240	TOD_S_91241	TOD_S_91242	TOD_S_91243	TOD_S_91244	TOD_S_91245	TOD_S_91246	TOD_S_91247	TOD_S_91248	 ///
TOD_S_91249	TOD_S_91250	TOD_S_91251	TOD_S_91253	TOD_S_91255	TOD_S_91258	TOD_S_91259	TOD_S_91262	TOD_S_91263	 ///
TOD_S_91264	TOD_S_91265	TOD_S_91266	TOD_S_91267	TOD_S_91268	TOD_S_91269	TOD_S_91270	TOD_S_91271	TOD_S_91272	 ///
TOD_S_91273	TOD_S_91274	TOD_S_91275	TOD_S_91276	TOD_S_91277	TOD_S_91278	TOD_S_91280	TOD_S_91281	TOD_S_91282	 ///
TOD_S_91283	TOD_S_91284	TOD_S_91285	TOD_S_91290	TOD_S_91291	TOD_S_91292	TOD_S_91293	TOD_S_91294	TOD_S_91295	 ///
TOTAL_FLOW_ACCESSED	TTO_A_3787	TTO_A_3788	TTO_S_91035	TTO_S_91036	TTO_S_91037	TTO_S_91038	TTO_S_91042	 ///
TTO_S_91043	TTO_S_91044	TTO_S_91045	TTO_S_91046	TTO_S_91048	TTO_S_91049	TTO_S_91050	TTO_S_91051	TTO_S_91052	 ///
TTO_S_91053	TTO_S_91054	TTO_S_91055	TTO_S_91056	TTO_S_91057	TTO_S_91058	TTO_S_91061	TTO_S_91064	TTO_S_91068	 ///
TTO_S_91069	TTO_S_91070	TTO_S_91071	TTO_S_91074	TTO_S_91075	TTO_S_91076	TTO_S_91077	TTO_S_91078	TTO_S_91079	 ///
TTO_S_91080	TTO_S_91081	TTO_S_91082	TTO_S_91083	TTO_S_91084	TTO_S_91085	TTO_S_91086	TTO_S_91087	TTO_S_91088	 ///
TTO_S_91089	TTO_S_91090	TTO_S_91091	TTO_S_91092	TTO_S_91093	TTO_S_91095	TTO_S_91096	TTO_S_91098	TTO_S_91099	 ///
TTO_S_91100	TTO_S_91102	TTO_S_91103	TTO_S_91105	TTO_S_91107	TTO_S_91108	TTO_S_91109	TTO_S_91110	TTO_S_91111	 ///
TTO_S_91112	TTO_S_91113	TTO_S_91114	TTO_S_91115	TTO_S_91116	TTO_S_91117	TTO_S_91118	TTO_S_91119	TTO_S_91120	 ///
TTO_S_91121	TTO_S_91122	TTO_S_91123	TTO_S_91124	TTO_S_91125	TTO_S_91126	TTO_S_91127	TTO_S_91128	TTO_S_91129	 ///
TTO_S_91130	TTO_S_91131	TTO_S_91132	TTO_S_91133	TTO_S_91134	TTO_S_91135	TTO_S_91136	TTO_S_91137	TTO_S_91138	 ///
TTO_S_91139	TTO_S_91140	TTO_S_91141	TTO_S_91142	TTO_S_91143	TTO_S_91144	TTO_S_91145	TTO_S_91146	TTO_S_91147	 ///
TTO_S_91148	TTO_S_91149	TTO_S_91150	TTO_S_91151	TTO_S_91153	TTO_S_91154	TTO_S_91155	TTO_S_91157	TTO_S_91158	 ///
TTO_S_91159	TTO_S_91160	TTO_S_91161	TTO_S_91162	TTO_S_91163	TTO_S_91164	TTO_S_91165	TTO_S_91167	TTO_S_91168	 ///
TTO_S_91169	TTO_S_91170	TTO_S_91172	TTO_S_91173	TTO_S_91174	TTO_S_91175	TTO_S_91176	TTO_S_91178	TTO_S_91179	 ///
TTO_S_91180	TTO_S_91181	TTO_S_91182	TTO_S_91183	TTO_S_91184	TTO_S_91185	TTO_S_91186	TTO_S_91187	TTO_S_91188	 ///
TTO_S_91190	TTO_S_91191	TTO_S_91192	TTO_S_91195	TTO_S_91196	TTO_S_91197	TTO_S_91200	TTO_S_91201	TTO_S_91203	 ///
TTO_S_91204	TTO_S_91205	TTO_S_91206	TTO_S_91207	TTO_S_91208	TTO_S_91209	TTO_S_91210	TTO_S_91211	TTO_S_91212	 ///
TTO_S_91213	TTO_S_91214	TTO_S_91217	TTO_S_91218	TTO_S_91221	TTO_S_91222	TTO_S_91223	TTO_S_91224	TTO_S_91225	 ///
TTO_S_91226	TTO_S_91227	TTO_S_91228	TTO_S_91229	TTO_S_91230	TTO_S_91231	TTO_S_91232	TTO_S_91233	TTO_S_91234	 ///
TTO_S_91236	TTO_S_91238	TTO_S_91239	TTO_S_91240	TTO_S_91241	TTO_S_91242	TTO_S_91243	TTO_S_91244	TTO_S_91245	 ///
TTO_S_91246	TTO_S_91247	TTO_S_91248	TTO_S_91249	TTO_S_91250	TTO_S_91251	TTO_S_91253	TTO_S_91255	TTO_S_91258	 ///
TTO_S_91259	TTO_S_91262	TTO_S_91263	TTO_S_91264	TTO_S_91265	TTO_S_91266	TTO_S_91267	TTO_S_91268	TTO_S_91269	 ///
TTO_S_91270	TTO_S_91271	TTO_S_91272	TTO_S_91273	TTO_S_91274	TTO_S_91275	TTO_S_91276	TTO_S_91277	TTO_S_91278	 ///
TTO_S_91280	TTO_S_91281	TTO_S_91282	TTO_S_91283	TTO_S_91284	TTO_S_91285	TTO_S_91290	TTO_S_91291	TTO_S_91292	 ///
TTO_S_91293	TTO_S_91294	TTO_S_91295	WORDS_A_3787	WORDS_A_3788 


* Adding Prefixes and Suffixes
foreach x of var * {
rename `x' W6`x'
}
 
foreach x of var * {
rename `x' `x'S3
}

* Renaming SUBJECT_ID (no pre nor su fixes, we need that to merge on it)
rename W6SUBJECT_IDS3 SUBJECT_ID 

* Eliminating ALL underscores
foreach v of var *_* { 
	local V : subinstr local v "_" "", all
	capture rename `v' `V' 
	if _rc di as txt "problem with `v'"
} 

*saving
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W6/WorkingData/W6S3_Working.dta", replace

**************************************************************************************************
*											W6S4
**************************************************************************************************

*Open W6S4 and save a Working Copy (We wanna keep a copy of the original data)
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W6/WorkingData/W6S4.dta", replace
destring, replace
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W6/WorkingData/W6S4_Working.dta", replace

* From Excel to STATA everything enters as lower case. Lets reverse it to its original: Upper Case
rename *, upper

* Now lets keep what we need
keep ///
DATE FOD_A_3785 GRP_20649 GRP_20650 Q_5986_DUR_32256 Q_5986_DUR_32259 Q_5986_SEQ_32256 Q_5986_SEQ_32259 ///
Q_5986_VAL_32256 Q_5986_VAL_32259 SUBJECT_ID TIME TIME_BEGIN_FLOWPHASE TIME_BEGIN_SUBSTAGE TIME_END_FLOWPHASE ///
TOD_A_3785 TOTAL_FLOW_ACCESSED TTO_A_3785 WORDS_A_3785

* Adding Prefixes and Suffixes
foreach x of var * {
rename `x' W6`x'
}
 
foreach x of var * {
rename `x' `x'S4
}

* Renaming SUBJECT_ID (no pre nor su fixes, we need that to merge on it)
rename W6SUBJECT_IDS4 SUBJECT_ID 

* Eliminating ALL underscores
foreach v of var *_* { 
	local V : subinstr local v "_" "", all
	capture rename `v' `V' 
	if _rc di as txt "problem with `v'"
} 

*saving
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W6/WorkingData/W6S4_Working.dta", replace

**************************************************************************************************
*							M	E	R	G	I	N	G	 		W	6
**************************************************************************************************

clear all

* Merge W6S2 with W6S1
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W6/WorkingData/W6S2_Working.dta", replace
merge 1:m SUBJECTID using "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W6/WorkingData/W6S1_Working.dta"
drop _merge
* Save W6S12
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W6/WorkingData/W6S12_Working.dta", replace

**************************************************************************************************
clear all

* Merge W6S3 with W6S4
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W6/WorkingData/W6S4_Working.dta", replace
merge 1:m SUBJECTID using "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W6/WorkingData/W6S3_Working.dta"
drop _merge
* Save W6S34
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W6/WorkingData/W6S34_Working.dta", replace

**************************************************************************************************
clear all

* Merge W6S12 with W6S34
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W6/WorkingData/W6S12_Working.dta", replace
merge 1:m SUBJECTID using "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W6/WorkingData/W6S34_Working.dta"
drop _merge
* Save W6S1234
order *, alpha


*Dropping things we won't need...
drop W6DATES2 W6DATES3 W6DATES4 W6TOTALFLOWACCESSEDS1 W6TOTALFLOWACCESSEDS4 W6TIMES2 W6TIMES3 W6TIMES4

* labeling

label variable W6FODA3785S4 "That's it for this Week"
label variable W6FODA3786S1 "Whoops -- Not a Valid Subject ID"
label variable W6FODA3787S3 "Substage2and3BetwNoIntD&R"
label variable W6FODA3788S3 "Substage2and3BetwIntD&R"
label variable W6FODA3789S2 "WelcomeWk6DIntImp"
label variable W6FODA3790S2 "WelcomeWk6DIntNot"
label variable W6FODA3791S2 "WelcomeWk6DNoIntImp"
label variable W6FODA3792S2 "WelcomeWk6DNoIntNot"
label variable W6FODA3793S2 "WelcomeWk6RIntImp"
label variable W6FODA3794S2 "WelcomeWk6RIntNot"
label variable W6FODA3795S2 "WelcomeWk6RNoIntImp"
label variable W6FODA3796S2 "WelcomeWk6RNoIntNot"
label variable W6GRP20628S2 "D02IntMainImp"
label variable W6GRP20629S2 "D04NoIntMainImp"
label variable W6GRP20630S2 "D06IntMainNot"
label variable W6GRP20631S2 "D08NoIntMainNot"
label variable W6GRP20632S2 "D01IntDiverseImp"
label variable W6GRP20633S2 "D03NoIntDiverseImp"
label variable W6GRP20634S2 "D05IntDiverseNot"
label variable W6GRP20635S2 "D07NoIntDiverseNot"
label variable W6GRP20636S2 "R09IntDiverseImp"
label variable W6GRP20637S2 "R10IntMainImp"
label variable W6GRP20638S2 "R11NoIntDiverseImp"
label variable W6GRP20639S2 "R12NoIntMainImp"
label variable W6GRP20640S2 "R13IntDiverseNot"
label variable W6GRP20641S2 "R14IntMainNot"
label variable W6GRP20642S2 "R15NoIntDiverseNot"
label variable W6GRP20643S2 "R16NoIntMainNot"
label variable W6GRP20644S3 "DMediaABCNews"
label variable W6GRP20645S3 "DMediaWireServices"
label variable W6GRP20646S3 "DMediaCBSNews"
label variable W6GRP20647S3 "DMediaCNNNews"
label variable W6GRP20649S4 "DEndGroupQuestions"
label variable W6GRP20650S4 "REndGroupQuestions"
label variable W6GRP20651S3 "DMediaNBCNews"
label variable W6GRP20652S3 "DMediaNYT"
label variable W6GRP20653S3 "DMediaWSJ"
label variable W6GRP20654S3 "DAltMediaFoxNews"
label variable W6GRP20655S3 "DAltMediaHotAirBlog"
label variable W6GRP20656S3 "DAltMediaHuffPost"
label variable W6GRP20657S3 "DAltMediaMSNBCNews"
label variable W6GRP20658S3 "DCandSmithAllMediaWebpage"
label variable W6GRP20659S3 "DCandWilsonAllMediaWebpage"
label variable W6GRP20660S3 "RCandJonesAllMediaWebpage"
label variable W6GRP20662S3 "DEndorsementsAllMedia"
label variable W6GRP20663S3 "REndorsementsAllMedia"
label variable W6GRP20664S3 "DAltMediaLatinoSources"
label variable W6GRP20665S3 "DAltMediaAfricanAmericanSources"
label variable W6GRP20666S3 "DOnlyMainMediaABC"
label variable W6GRP20669S3 "DOnlyMainMediaCNN"
label variable W6GRP20671S3 "DOnlyMainMediaNYT"
label variable W6GRP20673S3 "DCandWilsonOnlyMainWebpage"
label variable W6GRP20674S3 "DCandSmithOnlyMainWebpage"
label variable W6GRP20675S3 "DEndorsementsOnlyMain"
label variable W6GRP20676S3 "RCandJonesOnlyMainWebpage"
label variable W6GRP20677S3 "RCandWilliamsOnlyMainWebpage"
label variable W6GRP20678S3 "REndorsementsOnlyMain"
label variable W6GRP20681S3 "RAltMediaLatinoSources"
label variable W6GRP20682S3 "RAltMediaMSNBCNews"
label variable W6GRP20686S3 "RMediaNYT"
label variable W6GRP20690S3 "ROnlyMainMediaABC"
label variable W6GRP20691S3 "ROnlyMainMediaCBS"
label variable W6GRP20692S3 "ROnlyMainMediaNYT"
label variable W6GRP20693S3 "ROnlyMainMediaWireServices"
label variable W6GRP20694S3 "ROnlyMainMediaWSJ"
label variable W6GRP20695S3 "ROnlyMainMediaCNN"
label variable W6GRP20696S3 "ROnlyMainMediaNBC"
label variable W6GRP20697S1 "BeginGroup"
label variable W6GRP20698S1 "BeginGroupRepeated"
label variable W6Q5983DUR32242S1 "Subject Sign-in"
label variable W6Q5986DUR32256S4 "wk6RateMedia"
label variable W6Q5986DUR32259S4 "wk6RepresentativeMedia"
label variable W6FODS91035S3 "Wk2DEndorsementAFLCIO"
label variable W6FODS91036S3 "Wk2DEndorsementChamberofCommerce"
label variable W6FODS91037S3 "Wk2REndorsemChamberofCommerceEndorsement"
label variable W6FODS91038S3 "Wk2REndorsementAFLCIO"
label variable W6FODS91042S3 "wk2d1CNNUNIEcon22"
label variable W6FODS91043S3 "wk2d2ABCABCEcon37"
label variable W6FODS91044S3 "wk2d2APAPEcon42"
label variable W6FODS91045S3 "wk2d2NYTNYTEcon54"
label variable W6FODS91046S3 "wk2d2NBCNBCEcon62"
label variable W6FODS91048S3 "wk2r2APAPEcon78"
label variable W6FODS91049S3 "wk2r2REUREUEcon82"
label variable W6FODS91050S3 "wk2r2WSJWSJEcon94"
label variable W6FODS91051S3 "wk2r1WSJHUFEcon110"
label variable W6FODS91052S3 "wk2r1ABCROOTEcon118"
label variable W6FODS91053S3 "wk2r1NBCUNIEcon122"
label variable W6FODS91054S3 "wk2r1APFOXEcon126"
label variable W6FODS91055S3 "wk2d3CBSHUFEcon2"
label variable W6FODS91056S3 "wk2d3NBCFOXEcon10"
label variable W6FODS91057S3 "wk2d3REUROOTEcon18"
label variable W6FODS91058S3 "wk2d3CNNUNIEcon22"
label variable W6FODS91061S3 "wk2r3NBCUNIEcon122"
label variable W6FODS91064S3 "Wk1RWilliamsPersonality"
label variable W6FODS91068S3 "Wk1RWilliamsBackground"
label variable W6FODS91069S3 "Wk1RJonesSlogan"
label variable W6FODS91070S3 "Wk1RJonesPersonality"
label variable W6FODS91071S3 "Wk1RJonesFamily"
label variable W6FODS91074S3 "Wk1RJonesBackground"
label variable W6FODS91075S3 "Wk1DWilsonSlogan"
label variable W6FODS91076S3 "Wk1DWilsonPersonality"
label variable W6FODS91077S3 "Wk1DWilsonFamily"
label variable W6FODS91078S3 "Wk1DWilsonExperience"
label variable W6FODS91079S3 "Wk1DWilsonCandidatePicture"
label variable W6FODS91080S3 "Wk1DWilsonBackground"
label variable W6FODS91081S3 "Wk1DSmithSlogan"
label variable W6FODS91082S3 "Wk1DSmithPersonality"
label variable W6FODS91083S3 "Wk1DSmithFamily"
label variable W6FODS91084S3 "Wk1DSmithExperience"
label variable W6FODS91085S3 "Wk1DSmithCandidatePicture"
label variable W6FODS91086S3 "Wk1DSmithBackground"
label variable W6FODS91087S3 "SmithEducation"
label variable W6FODS91088S3 "SmithExperience"
label variable W6FODS91089S3 "SmithFamily"
label variable W6FODS91090S3 "JonesExperience"
label variable W6FODS91091S3 "SmithReligion"
label variable W6FODS91092S3 "JonesEducation"
label variable W6FODS91093S3 "JonesFamily"
label variable W6FODS91095S3 "JonesReligion"
label variable W6FODS91096S3 "WilsonEducation"
label variable W6FODS91098S3 "WilsonExperience"
label variable W6FODS91099S3 "WilsonFamily"
label variable W6FODS91100S3 "WilliamsReligion"
label variable W6FODS91102S3 "WilliamsFamily"
label variable W6FODS91103S3 "WilliamsExperience"
label variable W6FODS91105S3 "WilsonReligion"
label variable W6FODS91107S3 "wk2DSmithJobs"
label variable W6FODS91108S3 "wk2DSmithEconPhil"
label variable W6FODS91109S3 "Wk2RJonesJobs"
label variable W6FODS91110S3 "wk2DWilsonJobs"
label variable W6FODS91111S3 "wk2DWilsonEconPhil"
label variable W6FODS91112S3 "wk2RJonesEconPhil"
label variable W6FODS91113S3 "Wk2RWilliamsJobs"
label variable W6FODS91114S3 "wk2RWilliamsEconPhil"
label variable W6FODS91115S3 "wk3DSmithEduc"
label variable W6FODS91116S2 "wk6DSmithHealth"
label variable W6FODS91117S3 "wk4DSmithChina"
label variable W6FODS91118S3 "wk4DSmithDefense"
label variable W6FODS91119S3 "wk5DSmithAbortion"
label variable W6FODS91120S3 "wk5DSmithGay"
label variable W6FODS91121S2 "wk6DSmithTaxes"
label variable W6FODS91122S3 "wk7DSmithAffirm"
label variable W6FODS91123S3 "wk7DSmithImmigration"
label variable W6FODS91124S3 "wk8DSmithAfghan"
label variable W6FODS91125S3 "wk8DSmithMil"
label variable W6FODS91126S3 "wk9DSmithDeathPen"
label variable W6FODS91127S3 "wk9DSmithStemCells"
label variable W6FODS91128S3 "wk3DSmithSocPhil"
label variable W6FODS91129S3 "wk3DWilsonEduc"
label variable W6FODS91130S2 "wk6DWilsonHealth"
label variable W6FODS91131S3 "wk4DWilsonChina"
label variable W6FODS91132S3 "wk4DWilsonDefense"
label variable W6FODS91133S3 "wk5DWilsonAbortion"
label variable W6FODS91134S3 "wk5DWilsonGay"
label variable W6FODS91135S2 "wk6DWilsonTaxes"
label variable W6FODS91136S3 "wk7DWilsonAffirm"
label variable W6FODS91137S3 "wk7DWilsonImmigration"
label variable W6FODS91138S3 "wk8DWilsonAfghan"
label variable W6FODS91139S3 "wk8DWilsonMil"
label variable W6FODS91140S3 "wk9DWilsonDeathPen"
label variable W6FODS91141S3 "wk9DWilsonStemCells"
label variable W6FODS91142S3 "wk7RJonesImmigration"
label variable W6FODS91143S3 "wk3DWilsonSocPhil"
label variable W6FODS91144S3 "wk3RWilliamsEduc"
label variable W6FODS91145S3 "wk3RWilliamsSocPhil"
label variable W6FODS91146S3 "wk4RWilliamsChina"
label variable W6FODS91147S3 "wk4RWilliamsDefense"
label variable W6FODS91148S3 "wk5RWilliamsAbortion"
label variable W6FODS91149S3 "wk5RWilliamsGay"
label variable W6FODS91150S2 "wk6RWilliamsTaxes"
label variable W6FODS91151S3 "wk7RWilliamsAffirm"
label variable W6FODS91153S3 "wk8RWilliamsAfghan"
label variable W6FODS91154S3 "wk8RWilliamsMil"
label variable W6FODS91155S3 "wk9RWilliamsDeathPen"
label variable W6FODS91157S3 "wk3RJonesEduc"
label variable W6FODS91158S3 "wk3RJonesSocPhil"
label variable W6FODS91159S3 "wk4RJonesChina"
label variable W6FODS91160S3 "wk4RJonesDefense"
label variable W6FODS91161S3 "wk5RJonesAbortion"
label variable W6FODS91162S3 "wk5RJonesGay"
label variable W6FODS91163S2 "wk6RJonesHealth"
label variable W6FODS91164S3 "wk8JRonesAfghan"
label variable W6FODS91165S2 "wk6RJonesTaxes"
label variable W6FODS91167S3 "wk9RJonesStemCells"
label variable W6FODS91168S3 "wk8RJonesMil"
label variable W6FODS91169S3 "wk9RJonesDeathPen"
label variable W6FODS91170S2 "wk6RWilliamsHealth"
label variable W6FODS91172S3 "Wk3DEndorsementAFT"
label variable W6FODS91173S3 "Wk3DEndorsementFAIR"
label variable W6FODS91174S3 "wk3d1ABCHOT8"
label variable W6FODS91175S3 "Wk3REndorsementFAIR"
label variable W6FODS91176S3 "Wk3REndorsementAFT"
label variable W6FODS91178S3 "wk3d1NYTMSN28"
label variable W6FODS91179S3 "wk3d2CBSCBS36"
label variable W6FODS91180S3 "wk3d2REUREU48"
label variable W6FODS91181S3 "wk3d2WSJWSJ60"
label variable W6FODS91182S3 "wk3d2NBCNBC64"
label variable W6FODS91183S3 "wk3d3ABCHOT8"
label variable W6FODS91184S3 "wk3r2ABCABC72"
label variable W6FODS91185S3 "wk3d3NBCUNI12"
label variable W6FODS91186S3 "wk3d3APROOT16"
label variable W6FODS91187S3 "wk3d3NYTMSN28"
label variable W6FODS91188S3 "wk3r2APAP80"
label variable W6FODS91190S3 "wk3r3CNNLAT101"
label variable W6FODS91191S3 "wk3r2NYTNYT92"
label variable W6FODS91192S3 "wk3r2WSJWSJ96"
label variable W6FODS91195S3 "wk3r1REUBET100"
label variable W6FODS91196S3 "wk3r1CNNLAT101"
label variable W6FODS91197S3 "wk3r1CBSFOX116"
label variable W6FODS91200S3 "wk4d1ABCHUFFor7"
label variable W6FODS91201S3 "wk4d1CNNBETFor23"
label variable W6FODS91203S3 "wk4d2APAPFor43"
label variable W6FODS91204S3 "wk4d2REUREUFor47"
label variable W6FODS91205S3 "wk4d2NYTNYTFor55"
label variable W6FODS91206S3 "wk4d2NBCNBCFor63"
label variable W6FODS91207S3 "wk4d3CBSFOXFor3"
label variable W6FODS91208S3 "wk4d3ABCHUFFor7"
label variable W6FODS91209S3 "wk4d3CNNBETFor23"
label variable W6FODS91210S3 "wk4d3WSJLATFor31"
label variable W6FODS91211S3 "wk4r2ABCABCFor71"
label variable W6FODS91212S3 "wk4r2NBCNBCFor75"
label variable W6FODS91213S3 "wk4r2REUREUFor83"
label variable W6FODS91214S3 "wk4r2NYTNYTFor91"
label variable W6FODS91217S3 "wk4r1CBSMSNFor115"
label variable W6FODS91218S3 "wk4r1APLATFor127"
label variable W6FODS91221S3 "wk4r3CBSMSNFor115"
label variable W6FODS91222S3 "wk4r3APLATFor127"
label variable W6FODS91223S3 "Wk4DEndorsementNCLR"
label variable W6FODS91224S3 "Wk4DEndorsementHeritage"
label variable W6FODS91225S3 "Wk4DEndorsementVFW"
label variable W6FODS91226S3 "Wk4REndorsementNCLR"
label variable W6FODS91227S3 "Wk4REndorsementHeritage"
label variable W6FODS91228S3 "WK4REndorsementVFW"
label variable W6FODS91229S3 "Wk5DEndorsementHumanRtsCamp"
label variable W6FODS91230S3 "Wk5DEndorsementFamResearchCouncil"
label variable W6FODS91231S3 "Wk5REndorsementHumanRtsCamp"
label variable W6FODS91232S3 "Wk5DEndorsementNRL"
label variable W6FODS91233S3 "Wk5REndorsementNRL"
label variable W6FODS91234S3 "Wk5REndorsementFamResearchCouncil"
label variable W6FODS91236S3 "wk5d1ABCHUFCult5"
label variable W6FODS91238S3 "wk5d1CNNLATCult21"
label variable W6FODS91239S3 "wk5d1NYTBETCult25"
label variable W6FODS91240S3 "wk5d2CBSCBSCult33"
label variable W6FODS91241S3 "wk5d2APAPCult41"
label variable W6FODS91242S3 "wk5d2REUREUCult45"
label variable W6FODS91243S3 "wk5d2WSJWSJCult57"
label variable W6FODS91244S3 "wk5d3ABCHUFCult5"
label variable W6FODS91245S3 "wk5d3NBCHOTCult9"
label variable W6FODS91246S3 "wk5d3CNNLATCult21"
label variable W6FODS91247S3 "wk5d3NYTBETCult25"
label variable W6FODS91248S2 "wk6d3WSJLATEcon30"
label variable W6FODS91249S3 "wk5r1ABCHOTCult117"
label variable W6FODS91250S3 "wk5r1NBCLATCult121"
label variable W6FODS91251S3 "wk5r1APMSNCult125"
label variable W6FODS91253S3 "wk5r2REUREUCult81"
label variable W6FODS91255S3 "wk5r2NYTNYTCult89"
label variable W6FODS91258S3 "wk5r3NBCLATCult121"
label variable W6FODS91259S3 "wk5r3APMSNCult125"
label variable W6FODS91262S2 "wk6r2ABCABCEcon70"
label variable W6FODS91263S2 "wk6d1ABCMSNEcon6"
label variable W6FODS91264S2 "wk6r2NBCNBCEcon74"
label variable W6FODS91265S2 "wk6r2CNNCNNEcon86"
label variable W6FODS91266S2 "wk6r2CBSCBSEcon90"
label variable W6FODS91267S2 "wk6r1REULATEcon98"
label variable W6FODS91268S2 "wk6r1CNNMSNEcon102"
label variable W6FODS91269S2 "wk6r1NYTBETEcon106"
label variable W6FODS91270S2 "wk6d1APHOTEcon14"
label variable W6FODS91271S2 "wk6d1NYTBETEcon26"
label variable W6FODS91272S2 "wk6r1CBSHOTEcon114"
label variable W6FODS91273S2 "wk6d1WSJLATEcon30"
label variable W6FODS91274S2 "wk6r3REULATEcon98"
label variable W6FODS91275S2 "wk6r3NYTBETEcon106"
label variable W6FODS91276S2 "wk6r3CNNMSNEcon102"
label variable W6FODS91277S2 "wk6d3NYTBETEcon26"
label variable W6FODS91278S2 "wk6r3CBSHOTEcon114"
label variable W6FODS91280S2 "wk6d2CBSCBSEcon34"
label variable W6FODS91281S2 "wk6d2REUREUEcon46"
label variable W6FODS91282S2 "wk6d2CNNCNNEcon50"
label variable W6FODS91283S2 "wk6d2WSJWSJEcon58"
label variable W6FODS91284S2 "wk6d3ABCMSNEcon6"
label variable W6FODS91285S2 "wk6d3APHOTEcon14"
label variable W6FODS91286S2 "Wk6DxSmithScandal"
label variable W6FODS91287S2 "Wk6DxWilsonScandal"
label variable W6FODS91288S2 "Wk6RxJonesScandal"
label variable W6FODS91289S2 "Wk6RxWilliamsScandal"
label variable W6FODS91290S2 "Wk6DEndorsementADA"
label variable W6FODS91291S2 "Wk6DEndorsementNTU"
label variable W6FODS91292S2 "Wk6DEndorsementAFSCME"
label variable W6FODS91293S2 "Wk6REndorsementADA"
label variable W6FODS91294S2 "Wk6REndorsementNTU"
label variable W6FODS91295S2 "Wk6REndorsementAFSCME"
label variable W6TODA3785S4 "That's it for this Week"
label variable W6TTOA3785S4 "That's it for this Week"
label variable W6WORDSA3785S4 "That's it for this Week"
label variable W6TODA3786S1 "Whoops -- Not a Valid Subject ID"
label variable W6TTOA3786S1 "Whoops -- Not a Valid Subject ID"
label variable W6WORDSA3786S1 "Whoops -- Not a Valid Subject ID"
label variable W6TODA3787S3 "Substage2and3BetwNoIntD&R"
label variable W6TTOA3787S3 "Substage2and3BetwNoIntD&R"
label variable W6WORDSA3787S3 "Substage2and3BetwNoIntD&R"
label variable W6TODA3788S3 "Substage2and3BetwIntD&R"
label variable W6TTOA3788S3 "Substage2and3BetwIntD&R"
label variable W6WORDSA3788S3 "Substage2and3BetwIntD&R"
label variable W6TODA3789S2 "WelcomeWk6DIntImp"
label variable W6TTOA3789S2 "WelcomeWk6DIntImp"
label variable W6WORDSA3789S2 "WelcomeWk6DIntImp"
label variable W6TODA3790S2 "WelcomeWk6DIntNot"
label variable W6TTOA3790S2 "WelcomeWk6DIntNot"
label variable W6WORDSA3790S2 "WelcomeWk6DIntNot"
label variable W6TODA3791S2 "WelcomeWk6DNoIntImp"
label variable W6TTOA3791S2 "WelcomeWk6DNoIntImp"
label variable W6WORDSA3791S2 "WelcomeWk6DNoIntImp"
label variable W6TODA3792S2 "WelcomeWk6DNoIntNot"
label variable W6TTOA3792S2 "WelcomeWk6DNoIntNot"
label variable W6WORDSA3792S2 "WelcomeWk6DNoIntNot"
label variable W6TODA3793S2 "WelcomeWk6RIntImp"
label variable W6TTOA3793S2 "WelcomeWk6RIntImp"
label variable W6WORDSA3793S2 "WelcomeWk6RIntImp"
label variable W6TODA3794S2 "WelcomeWk6RIntNot"
label variable W6TTOA3794S2 "WelcomeWk6RIntNot"
label variable W6WORDSA3794S2 "WelcomeWk6RIntNot"
label variable W6TODA3795S2 "WelcomeWk6RNoIntImp"
label variable W6TTOA3795S2 "WelcomeWk6RNoIntImp"
label variable W6WORDSA3795S2 "WelcomeWk6RNoIntImp"
label variable W6TODA3796S2 "WelcomeWk6RNoIntNot"
label variable W6TTOA3796S2 "WelcomeWk6RNoIntNot"
label variable W6WORDSA3796S2 "WelcomeWk6RNoIntNot"
label variable W6GRP20628S3 "D02IntMainImp"
label variable W6GRP20629S3 "D04NoIntMainImp"
label variable W6GRP20630S3 "D06IntMainNot"
label variable W6GRP20631S3 "D08NoIntMainNot"
label variable W6GRP20632S3 "D01IntDiverseImp"
label variable W6GRP20633S3 "D03NoIntDiverseImp"
label variable W6GRP20634S3 "D05IntDiverseNot"
label variable W6GRP20635S3 "D07NoIntDiverseNot"
label variable W6GRP20636S3 "R09IntDiverseImp"
label variable W6GRP20637S3 "R10IntMainImp"
label variable W6GRP20638S3 "R11NoIntDiverseImp"
label variable W6GRP20639S3 "R12NoIntMainImp"
label variable W6GRP20640S3 "R13IntDiverseNot"
label variable W6GRP20641S3 "R14IntMainNot"
label variable W6GRP20642S3 "R15NoIntDiverseNot"
label variable W6GRP20643S3 "R16NoIntMainNot"
label variable W6Q5983SEQ32242S1 "Subject Sign-in"
label variable W6Q5986SEQ32256S4 "wk6RateMedia"
label variable W6Q5986VAL32256S4 "wk6RateMedia"
label variable W6Q5986SEQ32259S4 "wk6RepresentativeMedia"
label variable W6Q5986VAL32259S4 "wk6RepresentativeMedia"
label variable W6TODS91035S3 "Wk2DEndorsementAFLCIO"
label variable W6TTOS91035S3 "Wk2DEndorsementAFLCIO"
label variable W6TODS91036S3 "Wk2DEndorsementChamberofCommerce"
label variable W6TTOS91036S3 "Wk2DEndorsementChamberofCommerce"
label variable W6TODS91037S3 "Wk2REndorsemChamberofCommerceEndorsement"
label variable W6TTOS91037S3 "Wk2REndorsemChamberofCommerceEndorsement"
label variable W6TODS91038S3 "Wk2REndorsementAFLCIO"
label variable W6TTOS91038S3 "Wk2REndorsementAFLCIO"
label variable W6TODS91042S3 "wk2d1CNNUNIEcon22"
label variable W6TTOS91042S3 "wk2d1CNNUNIEcon22"
label variable W6TODS91043S3 "wk2d2ABCABCEcon37"
label variable W6TTOS91043S3 "wk2d2ABCABCEcon37"
label variable W6TODS91044S3 "wk2d2APAPEcon42"
label variable W6TTOS91044S3 "wk2d2APAPEcon42"
label variable W6TODS91045S3 "wk2d2NYTNYTEcon54"
label variable W6TTOS91045S3 "wk2d2NYTNYTEcon54"
label variable W6TODS91046S3 "wk2d2NBCNBCEcon62"
label variable W6TTOS91046S3 "wk2d2NBCNBCEcon62"
label variable W6TODS91048S3 "wk2r2APAPEcon78"
label variable W6TTOS91048S3 "wk2r2APAPEcon78"
label variable W6TODS91049S3 "wk2r2REUREUEcon82"
label variable W6TTOS91049S3 "wk2r2REUREUEcon82"
label variable W6TODS91050S3 "wk2r2WSJWSJEcon94"
label variable W6TTOS91050S3 "wk2r2WSJWSJEcon94"
label variable W6TODS91051S3 "wk2r1WSJHUFEcon110"
label variable W6TTOS91051S3 "wk2r1WSJHUFEcon110"
label variable W6TODS91052S3 "wk2r1ABCROOTEcon118"
label variable W6TTOS91052S3 "wk2r1ABCROOTEcon118"
label variable W6TODS91053S3 "wk2r1NBCUNIEcon122"
label variable W6TTOS91053S3 "wk2r1NBCUNIEcon122"
label variable W6TODS91054S3 "wk2r1APFOXEcon126"
label variable W6TTOS91054S3 "wk2r1APFOXEcon126"
label variable W6TODS91055S3 "wk2d3CBSHUFEcon2"
label variable W6TTOS91055S3 "wk2d3CBSHUFEcon2"
label variable W6TODS91056S3 "wk2d3NBCFOXEcon10"
label variable W6TTOS91056S3 "wk2d3NBCFOXEcon10"
label variable W6TODS91057S3 "wk2d3REUROOTEcon18"
label variable W6TTOS91057S3 "wk2d3REUROOTEcon18"
label variable W6TODS91058S3 "wk2d3CNNUNIEcon22"
label variable W6TTOS91058S3 "wk2d3CNNUNIEcon22"
label variable W6TODS91061S3 "wk2r3NBCUNIEcon122"
label variable W6TTOS91061S3 "wk2r3NBCUNIEcon122"
label variable W6TODS91064S3 "Wk1RWilliamsPersonality"
label variable W6TTOS91064S3 "Wk1RWilliamsPersonality"
label variable W6TODS91068S3 "Wk1RWilliamsBackground"
label variable W6TTOS91068S3 "Wk1RWilliamsBackground"
label variable W6TODS91069S3 "Wk1RJonesSlogan"
label variable W6TTOS91069S3 "Wk1RJonesSlogan"
label variable W6TODS91070S3 "Wk1RJonesPersonality"
label variable W6TTOS91070S3 "Wk1RJonesPersonality"
label variable W6TODS91071S3 "Wk1RJonesFamily"
label variable W6TTOS91071S3 "Wk1RJonesFamily"
label variable W6TODS91074S3 "Wk1RJonesBackground"
label variable W6TTOS91074S3 "Wk1RJonesBackground"
label variable W6TODS91075S3 "Wk1DWilsonSlogan"
label variable W6TTOS91075S3 "Wk1DWilsonSlogan"
label variable W6TODS91076S3 "Wk1DWilsonPersonality"
label variable W6TTOS91076S3 "Wk1DWilsonPersonality"
label variable W6TODS91077S3 "Wk1DWilsonFamily"
label variable W6TTOS91077S3 "Wk1DWilsonFamily"
label variable W6TODS91078S3 "Wk1DWilsonExperience"
label variable W6TTOS91078S3 "Wk1DWilsonExperience"
label variable W6TODS91079S3 "Wk1DWilsonCandidatePicture"
label variable W6TTOS91079S3 "Wk1DWilsonCandidatePicture"
label variable W6TODS91080S3 "Wk1DWilsonBackground"
label variable W6TTOS91080S3 "Wk1DWilsonBackground"
label variable W6TODS91081S3 "Wk1DSmithSlogan"
label variable W6TTOS91081S3 "Wk1DSmithSlogan"
label variable W6TODS91082S3 "Wk1DSmithPersonality"
label variable W6TTOS91082S3 "Wk1DSmithPersonality"
label variable W6TODS91083S3 "Wk1DSmithFamily"
label variable W6TTOS91083S3 "Wk1DSmithFamily"
label variable W6TODS91084S3 "Wk1DSmithExperience"
label variable W6TTOS91084S3 "Wk1DSmithExperience"
label variable W6TODS91085S3 "Wk1DSmithCandidatePicture"
label variable W6TTOS91085S3 "Wk1DSmithCandidatePicture"
label variable W6TODS91086S3 "Wk1DSmithBackground"
label variable W6TTOS91086S3 "Wk1DSmithBackground"
label variable W6TODS91087S3 "SmithEducation"
label variable W6TTOS91087S3 "SmithEducation"
label variable W6TODS91088S3 "SmithExperience"
label variable W6TTOS91088S3 "SmithExperience"
label variable W6TODS91089S3 "SmithFamily"
label variable W6TTOS91089S3 "SmithFamily"
label variable W6TODS91090S3 "JonesExperience"
label variable W6TTOS91090S3 "JonesExperience"
label variable W6TODS91091S3 "SmithReligion"
label variable W6TTOS91091S3 "SmithReligion"
label variable W6TODS91092S3 "JonesEducation"
label variable W6TTOS91092S3 "JonesEducation"
label variable W6TODS91093S3 "JonesFamily"
label variable W6TTOS91093S3 "JonesFamily"
label variable W6TODS91095S3 "JonesReligion"
label variable W6TTOS91095S3 "JonesReligion"
label variable W6TODS91096S3 "WilsonEducation"
label variable W6TTOS91096S3 "WilsonEducation"
label variable W6TODS91098S3 "WilsonExperience"
label variable W6TTOS91098S3 "WilsonExperience"
label variable W6TODS91099S3 "WilsonFamily"
label variable W6TTOS91099S3 "WilsonFamily"
label variable W6TODS91100S3 "WilliamsReligion"
label variable W6TTOS91100S3 "WilliamsReligion"
label variable W6TODS91102S3 "WilliamsFamily"
label variable W6TTOS91102S3 "WilliamsFamily"
label variable W6TODS91103S3 "WilliamsExperience"
label variable W6TTOS91103S3 "WilliamsExperience"
label variable W6TODS91105S3 "WilsonReligion"
label variable W6TTOS91105S3 "WilsonReligion"
label variable W6TODS91107S3 "wk2DSmithJobs"
label variable W6TTOS91107S3 "wk2DSmithJobs"
label variable W6TODS91108S3 "wk2DSmithEconPhil"
label variable W6TTOS91108S3 "wk2DSmithEconPhil"
label variable W6TODS91109S3 "Wk2RJonesJobs"
label variable W6TTOS91109S3 "Wk2RJonesJobs"
label variable W6TODS91110S3 "wk2DWilsonJobs"
label variable W6TTOS91110S3 "wk2DWilsonJobs"
label variable W6TODS91111S3 "wk2DWilsonEconPhil"
label variable W6TTOS91111S3 "wk2DWilsonEconPhil"
label variable W6TODS91112S3 "wk2RJonesEconPhil"
label variable W6TTOS91112S3 "wk2RJonesEconPhil"
label variable W6TODS91113S3 "Wk2RWilliamsJobs"
label variable W6TTOS91113S3 "Wk2RWilliamsJobs"
label variable W6TODS91114S3 "wk2RWilliamsEconPhil"
label variable W6TTOS91114S3 "wk2RWilliamsEconPhil"
label variable W6TODS91115S3 "wk3DSmithEduc"
label variable W6TTOS91115S3 "wk3DSmithEduc"
label variable W6FODS91116S3 "wk6DSmithHealth"
label variable W6TODS91116S2 "wk6DSmithHealth"
label variable W6TODS91116S3 "wk6DSmithHealth"
label variable W6TTOS91116S2 "wk6DSmithHealth"
label variable W6TTOS91116S3 "wk6DSmithHealth"
label variable W6TODS91117S3 "wk4DSmithChina"
label variable W6TTOS91117S3 "wk4DSmithChina"
label variable W6TODS91118S3 "wk4DSmithDefense"
label variable W6TTOS91118S3 "wk4DSmithDefense"
label variable W6TODS91119S3 "wk5DSmithAbortion"
label variable W6TTOS91119S3 "wk5DSmithAbortion"
label variable W6TODS91120S3 "wk5DSmithGay"
label variable W6TTOS91120S3 "wk5DSmithGay"
label variable W6FODS91121S3 "wk6DSmithTaxes"
label variable W6TODS91121S2 "wk6DSmithTaxes"
label variable W6TODS91121S3 "wk6DSmithTaxes"
label variable W6TTOS91121S2 "wk6DSmithTaxes"
label variable W6TTOS91121S3 "wk6DSmithTaxes"
label variable W6TODS91122S3 "wk7DSmithAffirm"
label variable W6TTOS91122S3 "wk7DSmithAffirm"
label variable W6TODS91123S3 "wk7DSmithImmigration"
label variable W6TTOS91123S3 "wk7DSmithImmigration"
label variable W6TODS91124S3 "wk8DSmithAfghan"
label variable W6TTOS91124S3 "wk8DSmithAfghan"
label variable W6TODS91125S3 "wk8DSmithMil"
label variable W6TTOS91125S3 "wk8DSmithMil"
label variable W6TODS91126S3 "wk9DSmithDeathPen"
label variable W6TTOS91126S3 "wk9DSmithDeathPen"
label variable W6TODS91127S3 "wk9DSmithStemCells"
label variable W6TTOS91127S3 "wk9DSmithStemCells"
label variable W6TODS91128S3 "wk3DSmithSocPhil"
label variable W6TTOS91128S3 "wk3DSmithSocPhil"
label variable W6TODS91129S3 "wk3DWilsonEduc"
label variable W6TTOS91129S3 "wk3DWilsonEduc"
label variable W6FODS91130S3 "wk6DWilsonHealth"
label variable W6TODS91130S2 "wk6DWilsonHealth"
label variable W6TODS91130S3 "wk6DWilsonHealth"
label variable W6TTOS91130S2 "wk6DWilsonHealth"
label variable W6TTOS91130S3 "wk6DWilsonHealth"
label variable W6TODS91131S3 "wk4DWilsonChina"
label variable W6TTOS91131S3 "wk4DWilsonChina"
label variable W6TODS91132S3 "wk4DWilsonDefense"
label variable W6TTOS91132S3 "wk4DWilsonDefense"
label variable W6TODS91133S3 "wk5DWilsonAbortion"
label variable W6TTOS91133S3 "wk5DWilsonAbortion"
label variable W6TODS91134S3 "wk5DWilsonGay"
label variable W6TTOS91134S3 "wk5DWilsonGay"
label variable W6FODS91135S3 "wk6DWilsonTaxes"
label variable W6TODS91135S2 "wk6DWilsonTaxes"
label variable W6TODS91135S3 "wk6DWilsonTaxes"
label variable W6TTOS91135S2 "wk6DWilsonTaxes"
label variable W6TTOS91135S3 "wk6DWilsonTaxes"
label variable W6TODS91136S3 "wk7DWilsonAffirm"
label variable W6TTOS91136S3 "wk7DWilsonAffirm"
label variable W6TODS91137S3 "wk7DWilsonImmigration"
label variable W6TTOS91137S3 "wk7DWilsonImmigration"
label variable W6TODS91138S3 "wk8DWilsonAfghan"
label variable W6TTOS91138S3 "wk8DWilsonAfghan"
label variable W6TODS91139S3 "wk8DWilsonMil"
label variable W6TTOS91139S3 "wk8DWilsonMil"
label variable W6TODS91140S3 "wk9DWilsonDeathPen"
label variable W6TTOS91140S3 "wk9DWilsonDeathPen"
label variable W6TODS91141S3 "wk9DWilsonStemCells"
label variable W6TTOS91141S3 "wk9DWilsonStemCells"
label variable W6TODS91142S3 "wk7RJonesImmigration"
label variable W6TTOS91142S3 "wk7RJonesImmigration"
label variable W6TODS91143S3 "wk3DWilsonSocPhil"
label variable W6TTOS91143S3 "wk3DWilsonSocPhil"
label variable W6TODS91144S3 "wk3RWilliamsEduc"
label variable W6TTOS91144S3 "wk3RWilliamsEduc"
label variable W6TODS91145S3 "wk3RWilliamsSocPhil"
label variable W6TTOS91145S3 "wk3RWilliamsSocPhil"
label variable W6TODS91146S3 "wk4RWilliamsChina"
label variable W6TTOS91146S3 "wk4RWilliamsChina"
label variable W6TODS91147S3 "wk4RWilliamsDefense"
label variable W6TTOS91147S3 "wk4RWilliamsDefense"
label variable W6TODS91148S3 "wk5RWilliamsAbortion"
label variable W6TTOS91148S3 "wk5RWilliamsAbortion"
label variable W6TODS91149S3 "wk5RWilliamsGay"
label variable W6TTOS91149S3 "wk5RWilliamsGay"
label variable W6FODS91150S3 "wk6RWilliamsTaxes"
label variable W6TODS91150S2 "wk6RWilliamsTaxes"
label variable W6TODS91150S3 "wk6RWilliamsTaxes"
label variable W6TTOS91150S2 "wk6RWilliamsTaxes"
label variable W6TTOS91150S3 "wk6RWilliamsTaxes"
label variable W6TODS91151S3 "wk7RWilliamsAffirm"
label variable W6TTOS91151S3 "wk7RWilliamsAffirm"
label variable W6TODS91153S3 "wk8RWilliamsAfghan"
label variable W6TTOS91153S3 "wk8RWilliamsAfghan"
label variable W6TODS91154S3 "wk8RWilliamsMil"
label variable W6TTOS91154S3 "wk8RWilliamsMil"
label variable W6TODS91155S3 "wk9RWilliamsDeathPen"
label variable W6TTOS91155S3 "wk9RWilliamsDeathPen"
label variable W6TODS91157S3 "wk3RJonesEduc"
label variable W6TTOS91157S3 "wk3RJonesEduc"
label variable W6TODS91158S3 "wk3RJonesSocPhil"
label variable W6TTOS91158S3 "wk3RJonesSocPhil"
label variable W6TODS91159S3 "wk4RJonesChina"
label variable W6TTOS91159S3 "wk4RJonesChina"
label variable W6TODS91160S3 "wk4RJonesDefense"
label variable W6TTOS91160S3 "wk4RJonesDefense"
label variable W6TODS91161S3 "wk5RJonesAbortion"
label variable W6TTOS91161S3 "wk5RJonesAbortion"
label variable W6TODS91162S3 "wk5RJonesGay"
label variable W6TTOS91162S3 "wk5RJonesGay"
label variable W6FODS91163S3 "wk6RJonesHealth"
label variable W6TODS91163S2 "wk6RJonesHealth"
label variable W6TODS91163S3 "wk6RJonesHealth"
label variable W6TTOS91163S2 "wk6RJonesHealth"
label variable W6TTOS91163S3 "wk6RJonesHealth"
label variable W6TODS91164S3 "wk8JRonesAfghan"
label variable W6TTOS91164S3 "wk8JRonesAfghan"
label variable W6FODS91165S3 "wk6RJonesTaxes"
label variable W6TODS91165S2 "wk6RJonesTaxes"
label variable W6TODS91165S3 "wk6RJonesTaxes"
label variable W6TTOS91165S2 "wk6RJonesTaxes"
label variable W6TTOS91165S3 "wk6RJonesTaxes"
label variable W6TODS91167S3 "wk9RJonesStemCells"
label variable W6TTOS91167S3 "wk9RJonesStemCells"
label variable W6TODS91168S3 "wk8RJonesMil"
label variable W6TTOS91168S3 "wk8RJonesMil"
label variable W6TODS91169S3 "wk9RJonesDeathPen"
label variable W6TTOS91169S3 "wk9RJonesDeathPen"
label variable W6FODS91170S3 "wk6RWilliamsHealth"
label variable W6TODS91170S2 "wk6RWilliamsHealth"
label variable W6TODS91170S3 "wk6RWilliamsHealth"
label variable W6TTOS91170S2 "wk6RWilliamsHealth"
label variable W6TTOS91170S3 "wk6RWilliamsHealth"
label variable W6TODS91172S3 "Wk3DEndorsementAFT"
label variable W6TTOS91172S3 "Wk3DEndorsementAFT"
label variable W6TODS91173S3 "Wk3DEndorsementFAIR"
label variable W6TTOS91173S3 "Wk3DEndorsementFAIR"
label variable W6TODS91174S3 "wk3d1ABCHOT8"
label variable W6TTOS91174S3 "wk3d1ABCHOT8"
label variable W6TODS91175S3 "Wk3REndorsementFAIR"
label variable W6TTOS91175S3 "Wk3REndorsementFAIR"
label variable W6TODS91176S3 "Wk3REndorsementAFT"
label variable W6TTOS91176S3 "Wk3REndorsementAFT"
label variable W6TODS91178S3 "wk3d1NYTMSN28"
label variable W6TTOS91178S3 "wk3d1NYTMSN28"
label variable W6TODS91179S3 "wk3d2CBSCBS36"
label variable W6TTOS91179S3 "wk3d2CBSCBS36"
label variable W6TODS91180S3 "wk3d2REUREU48"
label variable W6TTOS91180S3 "wk3d2REUREU48"
label variable W6TODS91181S3 "wk3d2WSJWSJ60"
label variable W6TTOS91181S3 "wk3d2WSJWSJ60"
label variable W6TODS91182S3 "wk3d2NBCNBC64"
label variable W6TTOS91182S3 "wk3d2NBCNBC64"
label variable W6TODS91183S3 "wk3d3ABCHOT8"
label variable W6TTOS91183S3 "wk3d3ABCHOT8"
label variable W6TODS91184S3 "wk3r2ABCABC72"
label variable W6TTOS91184S3 "wk3r2ABCABC72"
label variable W6TODS91185S3 "wk3d3NBCUNI12"
label variable W6TTOS91185S3 "wk3d3NBCUNI12"
label variable W6TODS91186S3 "wk3d3APROOT16"
label variable W6TTOS91186S3 "wk3d3APROOT16"
label variable W6TODS91187S3 "wk3d3NYTMSN28"
label variable W6TTOS91187S3 "wk3d3NYTMSN28"
label variable W6TODS91188S3 "wk3r2APAP80"
label variable W6TTOS91188S3 "wk3r2APAP80"
label variable W6TODS91190S3 "wk3r3CNNLAT101"
label variable W6TTOS91190S3 "wk3r3CNNLAT101"
label variable W6TODS91191S3 "wk3r2NYTNYT92"
label variable W6TTOS91191S3 "wk3r2NYTNYT92"
label variable W6TODS91192S3 "wk3r2WSJWSJ96"
label variable W6TTOS91192S3 "wk3r2WSJWSJ96"
label variable W6TODS91195S3 "wk3r1REUBET100"
label variable W6TTOS91195S3 "wk3r1REUBET100"
label variable W6TODS91196S3 "wk3r1CNNLAT101"
label variable W6TTOS91196S3 "wk3r1CNNLAT101"
label variable W6TODS91197S3 "wk3r1CBSFOX116"
label variable W6TTOS91197S3 "wk3r1CBSFOX116"
label variable W6TODS91200S3 "wk4d1ABCHUFFor7"
label variable W6TTOS91200S3 "wk4d1ABCHUFFor7"
label variable W6TODS91201S3 "wk4d1CNNBETFor23"
label variable W6TTOS91201S3 "wk4d1CNNBETFor23"
label variable W6TODS91203S3 "wk4d2APAPFor43"
label variable W6TTOS91203S3 "wk4d2APAPFor43"
label variable W6TODS91204S3 "wk4d2REUREUFor47"
label variable W6TTOS91204S3 "wk4d2REUREUFor47"
label variable W6TODS91205S3 "wk4d2NYTNYTFor55"
label variable W6TTOS91205S3 "wk4d2NYTNYTFor55"
label variable W6TODS91206S3 "wk4d2NBCNBCFor63"
label variable W6TTOS91206S3 "wk4d2NBCNBCFor63"
label variable W6TODS91207S3 "wk4d3CBSFOXFor3"
label variable W6TTOS91207S3 "wk4d3CBSFOXFor3"
label variable W6TODS91208S3 "wk4d3ABCHUFFor7"
label variable W6TTOS91208S3 "wk4d3ABCHUFFor7"
label variable W6TODS91209S3 "wk4d3CNNBETFor23"
label variable W6TTOS91209S3 "wk4d3CNNBETFor23"
label variable W6TODS91210S3 "wk4d3WSJLATFor31"
label variable W6TTOS91210S3 "wk4d3WSJLATFor31"
label variable W6TODS91211S3 "wk4r2ABCABCFor71"
label variable W6TTOS91211S3 "wk4r2ABCABCFor71"
label variable W6TODS91212S3 "wk4r2NBCNBCFor75"
label variable W6TTOS91212S3 "wk4r2NBCNBCFor75"
label variable W6TODS91213S3 "wk4r2REUREUFor83"
label variable W6TTOS91213S3 "wk4r2REUREUFor83"
label variable W6TODS91214S3 "wk4r2NYTNYTFor91"
label variable W6TTOS91214S3 "wk4r2NYTNYTFor91"
label variable W6TODS91217S3 "wk4r1CBSMSNFor115"
label variable W6TTOS91217S3 "wk4r1CBSMSNFor115"
label variable W6TODS91218S3 "wk4r1APLATFor127"
label variable W6TTOS91218S3 "wk4r1APLATFor127"
label variable W6TODS91221S3 "wk4r3CBSMSNFor115"
label variable W6TTOS91221S3 "wk4r3CBSMSNFor115"
label variable W6TODS91222S3 "wk4r3APLATFor127"
label variable W6TTOS91222S3 "wk4r3APLATFor127"
label variable W6TODS91223S3 "Wk4DEndorsementNCLR"
label variable W6TTOS91223S3 "Wk4DEndorsementNCLR"
label variable W6TODS91224S3 "Wk4DEndorsementHeritage"
label variable W6TTOS91224S3 "Wk4DEndorsementHeritage"
label variable W6TODS91225S3 "Wk4DEndorsementVFW"
label variable W6TTOS91225S3 "Wk4DEndorsementVFW"
label variable W6TODS91226S3 "Wk4REndorsementNCLR"
label variable W6TTOS91226S3 "Wk4REndorsementNCLR"
label variable W6TODS91227S3 "Wk4REndorsementHeritage"
label variable W6TTOS91227S3 "Wk4REndorsementHeritage"
label variable W6TODS91228S3 "WK4REndorsementVFW"
label variable W6TTOS91228S3 "WK4REndorsementVFW"
label variable W6TODS91229S3 "Wk5DEndorsementHumanRtsCamp"
label variable W6TTOS91229S3 "Wk5DEndorsementHumanRtsCamp"
label variable W6TODS91230S3 "Wk5DEndorsementFamResearchCouncil"
label variable W6TTOS91230S3 "Wk5DEndorsementFamResearchCouncil"
label variable W6TODS91231S3 "Wk5REndorsementHumanRtsCamp"
label variable W6TTOS91231S3 "Wk5REndorsementHumanRtsCamp"
label variable W6TODS91232S3 "Wk5DEndorsementNRL"
label variable W6TTOS91232S3 "Wk5DEndorsementNRL"
label variable W6TODS91233S3 "Wk5REndorsementNRL"
label variable W6TTOS91233S3 "Wk5REndorsementNRL"
label variable W6TODS91234S3 "Wk5REndorsementFamResearchCouncil"
label variable W6TTOS91234S3 "Wk5REndorsementFamResearchCouncil"
label variable W6TODS91236S3 "wk5d1ABCHUFCult5"
label variable W6TTOS91236S3 "wk5d1ABCHUFCult5"
label variable W6TODS91238S3 "wk5d1CNNLATCult21"
label variable W6TTOS91238S3 "wk5d1CNNLATCult21"
label variable W6TODS91239S3 "wk5d1NYTBETCult25"
label variable W6TTOS91239S3 "wk5d1NYTBETCult25"
label variable W6TODS91240S3 "wk5d2CBSCBSCult33"
label variable W6TTOS91240S3 "wk5d2CBSCBSCult33"
label variable W6TODS91241S3 "wk5d2APAPCult41"
label variable W6TTOS91241S3 "wk5d2APAPCult41"
label variable W6TODS91242S3 "wk5d2REUREUCult45"
label variable W6TTOS91242S3 "wk5d2REUREUCult45"
label variable W6TODS91243S3 "wk5d2WSJWSJCult57"
label variable W6TTOS91243S3 "wk5d2WSJWSJCult57"
label variable W6TODS91244S3 "wk5d3ABCHUFCult5"
label variable W6TTOS91244S3 "wk5d3ABCHUFCult5"
label variable W6TODS91245S3 "wk5d3NBCHOTCult9"
label variable W6TTOS91245S3 "wk5d3NBCHOTCult9"
label variable W6TODS91246S3 "wk5d3CNNLATCult21"
label variable W6TTOS91246S3 "wk5d3CNNLATCult21"
label variable W6TODS91247S3 "wk5d3NYTBETCult25"
label variable W6TTOS91247S3 "wk5d3NYTBETCult25"
label variable W6FODS91248S3 "wk6d3WSJLATEcon30"
label variable W6TODS91248S2 "wk6d3WSJLATEcon30"
label variable W6TODS91248S3 "wk6d3WSJLATEcon30"
label variable W6TTOS91248S2 "wk6d3WSJLATEcon30"
label variable W6TTOS91248S3 "wk6d3WSJLATEcon30"
label variable W6TODS91249S3 "wk5r1ABCHOTCult117"
label variable W6TTOS91249S3 "wk5r1ABCHOTCult117"
label variable W6TODS91250S3 "wk5r1NBCLATCult121"
label variable W6TTOS91250S3 "wk5r1NBCLATCult121"
label variable W6TODS91251S3 "wk5r1APMSNCult125"
label variable W6TTOS91251S3 "wk5r1APMSNCult125"
label variable W6TODS91253S3 "wk5r2REUREUCult81"
label variable W6TTOS91253S3 "wk5r2REUREUCult81"
label variable W6TODS91255S3 "wk5r2NYTNYTCult89"
label variable W6TTOS91255S3 "wk5r2NYTNYTCult89"
label variable W6TODS91258S3 "wk5r3NBCLATCult121"
label variable W6TTOS91258S3 "wk5r3NBCLATCult121"
label variable W6TODS91259S3 "wk5r3APMSNCult125"
label variable W6TTOS91259S3 "wk5r3APMSNCult125"
label variable W6FODS91262S3 "wk6r2ABCABCEcon70"
label variable W6TODS91262S2 "wk6r2ABCABCEcon70"
label variable W6TODS91262S3 "wk6r2ABCABCEcon70"
label variable W6TTOS91262S2 "wk6r2ABCABCEcon70"
label variable W6TTOS91262S3 "wk6r2ABCABCEcon70"
label variable W6FODS91263S3 "wk6d1ABCMSNEcon6"
label variable W6TODS91263S2 "wk6d1ABCMSNEcon6"
label variable W6TODS91263S3 "wk6d1ABCMSNEcon6"
label variable W6TTOS91263S2 "wk6d1ABCMSNEcon6"
label variable W6TTOS91263S3 "wk6d1ABCMSNEcon6"
label variable W6FODS91264S3 "wk6r2NBCNBCEcon74"
label variable W6TODS91264S2 "wk6r2NBCNBCEcon74"
label variable W6TODS91264S3 "wk6r2NBCNBCEcon74"
label variable W6TTOS91264S2 "wk6r2NBCNBCEcon74"
label variable W6TTOS91264S3 "wk6r2NBCNBCEcon74"
label variable W6FODS91265S3 "wk6r2CNNCNNEcon86"
label variable W6TODS91265S2 "wk6r2CNNCNNEcon86"
label variable W6TODS91265S3 "wk6r2CNNCNNEcon86"
label variable W6TTOS91265S2 "wk6r2CNNCNNEcon86"
label variable W6TTOS91265S3 "wk6r2CNNCNNEcon86"
label variable W6FODS91266S3 "wk6r2CBSCBSEcon90"
label variable W6TODS91266S2 "wk6r2CBSCBSEcon90"
label variable W6TODS91266S3 "wk6r2CBSCBSEcon90"
label variable W6TTOS91266S2 "wk6r2CBSCBSEcon90"
label variable W6TTOS91266S3 "wk6r2CBSCBSEcon90"
label variable W6FODS91267S3 "wk6r1REULATEcon98"
label variable W6TODS91267S2 "wk6r1REULATEcon98"
label variable W6TODS91267S3 "wk6r1REULATEcon98"
label variable W6TTOS91267S2 "wk6r1REULATEcon98"
label variable W6TTOS91267S3 "wk6r1REULATEcon98"
label variable W6FODS91268S3 "wk6r1CNNMSNEcon102"
label variable W6TODS91268S2 "wk6r1CNNMSNEcon102"
label variable W6TODS91268S3 "wk6r1CNNMSNEcon102"
label variable W6TTOS91268S2 "wk6r1CNNMSNEcon102"
label variable W6TTOS91268S3 "wk6r1CNNMSNEcon102"
label variable W6FODS91269S3 "wk6r1NYTBETEcon106"
label variable W6TODS91269S2 "wk6r1NYTBETEcon106"
label variable W6TODS91269S3 "wk6r1NYTBETEcon106"
label variable W6TTOS91269S2 "wk6r1NYTBETEcon106"
label variable W6TTOS91269S3 "wk6r1NYTBETEcon106"
label variable W6FODS91270S3 "wk6d1APHOTEcon14"
label variable W6TODS91270S2 "wk6d1APHOTEcon14"
label variable W6TODS91270S3 "wk6d1APHOTEcon14"
label variable W6TTOS91270S2 "wk6d1APHOTEcon14"
label variable W6TTOS91270S3 "wk6d1APHOTEcon14"
label variable W6FODS91271S3 "wk6d1NYTBETEcon26"
label variable W6TODS91271S2 "wk6d1NYTBETEcon26"
label variable W6TODS91271S3 "wk6d1NYTBETEcon26"
label variable W6TTOS91271S2 "wk6d1NYTBETEcon26"
label variable W6TTOS91271S3 "wk6d1NYTBETEcon26"
label variable W6FODS91272S3 "wk6r1CBSHOTEcon114"
label variable W6TODS91272S2 "wk6r1CBSHOTEcon114"
label variable W6TODS91272S3 "wk6r1CBSHOTEcon114"
label variable W6TTOS91272S2 "wk6r1CBSHOTEcon114"
label variable W6TTOS91272S3 "wk6r1CBSHOTEcon114"
label variable W6FODS91273S3 "wk6d1WSJLATEcon30"
label variable W6TODS91273S2 "wk6d1WSJLATEcon30"
label variable W6TODS91273S3 "wk6d1WSJLATEcon30"
label variable W6TTOS91273S2 "wk6d1WSJLATEcon30"
label variable W6TTOS91273S3 "wk6d1WSJLATEcon30"
label variable W6FODS91274S3 "wk6r3REULATEcon98"
label variable W6TODS91274S2 "wk6r3REULATEcon98"
label variable W6TODS91274S3 "wk6r3REULATEcon98"
label variable W6TTOS91274S2 "wk6r3REULATEcon98"
label variable W6TTOS91274S3 "wk6r3REULATEcon98"
label variable W6FODS91275S3 "wk6r3NYTBETEcon106"
label variable W6TODS91275S2 "wk6r3NYTBETEcon106"
label variable W6TODS91275S3 "wk6r3NYTBETEcon106"
label variable W6TTOS91275S2 "wk6r3NYTBETEcon106"
label variable W6TTOS91275S3 "wk6r3NYTBETEcon106"
label variable W6FODS91276S3 "wk6r3CNNMSNEcon102"
label variable W6TODS91276S2 "wk6r3CNNMSNEcon102"
label variable W6TODS91276S3 "wk6r3CNNMSNEcon102"
label variable W6TTOS91276S2 "wk6r3CNNMSNEcon102"
label variable W6TTOS91276S3 "wk6r3CNNMSNEcon102"
label variable W6FODS91277S3 "wk6d3NYTBETEcon26"
label variable W6TODS91277S2 "wk6d3NYTBETEcon26"
label variable W6TODS91277S3 "wk6d3NYTBETEcon26"
label variable W6TTOS91277S2 "wk6d3NYTBETEcon26"
label variable W6TTOS91277S3 "wk6d3NYTBETEcon26"
label variable W6FODS91278S3 "wk6r3CBSHOTEcon114"
label variable W6TODS91278S2 "wk6r3CBSHOTEcon114"
label variable W6TODS91278S3 "wk6r3CBSHOTEcon114"
label variable W6TTOS91278S2 "wk6r3CBSHOTEcon114"
label variable W6TTOS91278S3 "wk6r3CBSHOTEcon114"
label variable W6FODS91280S3 "wk6d2CBSCBSEcon34"
label variable W6TODS91280S2 "wk6d2CBSCBSEcon34"
label variable W6TODS91280S3 "wk6d2CBSCBSEcon34"
label variable W6TTOS91280S2 "wk6d2CBSCBSEcon34"
label variable W6TTOS91280S3 "wk6d2CBSCBSEcon34"
label variable W6FODS91281S3 "wk6d2REUREUEcon46"
label variable W6TODS91281S2 "wk6d2REUREUEcon46"
label variable W6TODS91281S3 "wk6d2REUREUEcon46"
label variable W6TTOS91281S2 "wk6d2REUREUEcon46"
label variable W6TTOS91281S3 "wk6d2REUREUEcon46"
label variable W6FODS91282S3 "wk6d2CNNCNNEcon50"
label variable W6TODS91282S2 "wk6d2CNNCNNEcon50"
label variable W6TODS91282S3 "wk6d2CNNCNNEcon50"
label variable W6TTOS91282S2 "wk6d2CNNCNNEcon50"
label variable W6TTOS91282S3 "wk6d2CNNCNNEcon50"
label variable W6FODS91283S3 "wk6d2WSJWSJEcon58"
label variable W6TODS91283S2 "wk6d2WSJWSJEcon58"
label variable W6TODS91283S3 "wk6d2WSJWSJEcon58"
label variable W6TTOS91283S2 "wk6d2WSJWSJEcon58"
label variable W6TTOS91283S3 "wk6d2WSJWSJEcon58"
label variable W6FODS91284S3 "wk6d3ABCMSNEcon6"
label variable W6TODS91284S2 "wk6d3ABCMSNEcon6"
label variable W6TODS91284S3 "wk6d3ABCMSNEcon6"
label variable W6TTOS91284S2 "wk6d3ABCMSNEcon6"
label variable W6TTOS91284S3 "wk6d3ABCMSNEcon6"
label variable W6FODS91285S3 "wk6d3APHOTEcon14"
label variable W6TODS91285S2 "wk6d3APHOTEcon14"
label variable W6TODS91285S3 "wk6d3APHOTEcon14"
label variable W6TTOS91285S2 "wk6d3APHOTEcon14"
label variable W6TTOS91285S3 "wk6d3APHOTEcon14"
label variable W6TODS91286S2 "Wk6DxSmithScandal"
label variable W6TTOS91286S2 "Wk6DxSmithScandal"
label variable W6TODS91287S2 "Wk6DxWilsonScandal"
label variable W6TTOS91287S2 "Wk6DxWilsonScandal"
label variable W6TODS91288S2 "Wk6RxJonesScandal"
label variable W6TTOS91288S2 "Wk6RxJonesScandal"
label variable W6TODS91289S2 "Wk6RxWilliamsScandal"
label variable W6TTOS91289S2 "Wk6RxWilliamsScandal"
label variable W6FODS91290S3 "Wk6DEndorsementADA"
label variable W6TODS91290S2 "Wk6DEndorsementADA"
label variable W6TODS91290S3 "Wk6DEndorsementADA"
label variable W6TTOS91290S2 "Wk6DEndorsementADA"
label variable W6TTOS91290S3 "Wk6DEndorsementADA"
label variable W6FODS91291S3 "Wk6DEndorsementNTU"
label variable W6TODS91291S2 "Wk6DEndorsementNTU"
label variable W6TODS91291S3 "Wk6DEndorsementNTU"
label variable W6TTOS91291S2 "Wk6DEndorsementNTU"
label variable W6TTOS91291S3 "Wk6DEndorsementNTU"
label variable W6FODS91292S3 "Wk6DEndorsementAFSCME"
label variable W6TODS91292S2 "Wk6DEndorsementAFSCME"
label variable W6TODS91292S3 "Wk6DEndorsementAFSCME"
label variable W6TTOS91292S2 "Wk6DEndorsementAFSCME"
label variable W6TTOS91292S3 "Wk6DEndorsementAFSCME"
label variable W6FODS91293S3 "Wk6REndorsementADA"
label variable W6TODS91293S2 "Wk6REndorsementADA"
label variable W6TODS91293S3 "Wk6REndorsementADA"
label variable W6TTOS91293S2 "Wk6REndorsementADA"
label variable W6TTOS91293S3 "Wk6REndorsementADA"
label variable W6FODS91294S3 "Wk6REndorsementNTU"
label variable W6TODS91294S2 "Wk6REndorsementNTU"
label variable W6TODS91294S3 "Wk6REndorsementNTU"
label variable W6TTOS91294S2 "Wk6REndorsementNTU"
label variable W6TTOS91294S3 "Wk6REndorsementNTU"
label variable W6FODS91295S3 "Wk6REndorsementAFSCME"
label variable W6TODS91295S2 "Wk6REndorsementAFSCME"
label variable W6TODS91295S3 "Wk6REndorsementAFSCME"
label variable W6TTOS91295S2 "Wk6REndorsementAFSCME"
label variable W6TTOS91295S3 "Wk6REndorsementAFSCME"

* Merge W6S1234 with IPW6 (IP ADRESS)
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W6/WorkingData/W6S1234_Working.dta", replace
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W6/WorkingData/W6S1234_Working.dta", replace
merge m:m SUBJECTID using "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W6/IP/IPW6.dta"
drop _merge

* Duplicate Check
capture drop DUPW6
sort PAC
quietly by PAC: gen DUPW6 = cond(_N==1,0,_n)

* Generating week indicator
capture drop WEEK6
gen WEEK6 = 1

* Generating Date Variable
capture drop year month day
nsplit W6DATES1, digits(4 2 2) generate(year month day)
capture drop DATEW6b
gen DATEW6b = mdy(month, day, year)
capture drop date1
gen date1 = 19724
format %td date1
format %td DATEW6b
capture drop DATEW6a
gen DATEW6a = DATEW6b - date1
capture drop date1 year month day W6DATES1 W6DATES2 W6DATES3 W6DATES4

* ORDERING
order PAC IP DUPW6 DATEW6a DATEW6b W6TIMES1 WEEK6
sort PAC, stable

* Dropping Duplicates
drop if PAC == .
drop if SUBJECTID == 100481
drop if SUBJECTID == 101069
drop if SUBJECTID == 100653
drop if SUBJECTID == 100445
drop if SUBJECTID == 100701
drop if SUBJECTID == 103435 & DUPW6 == 2
drop if SUBJECTID == 103967
replace PAC= 100829 if SUBJECTID == 103322
drop if SUBJECTID == 103647
replace PAC= 108188 if IP == "50.171.169.69"
replace PAC= 108277 if IP == "50.134.64.50"


* Build. Cumulat.

capture egen  W6CTO91035Wk = rowtotal(W6TTOS91035S2 W6TTOS91035S3)
capture egen  W6COD91035Wk = rowtotal(W6TODS91035S2 W6TODS91035S3)
capture egen  W6COD91036Wk = rowtotal(W6TODS91036S2 W6TODS91036S3)
capture egen  W6CTO91036Wk = rowtotal(W6TTOS91036S2 W6TTOS91036S3)
capture egen  W6CTO91037Wk = rowtotal(W6TTOS91037S2 W6TTOS91037S3)
capture egen  W6COD91037Wk = rowtotal(W6TODS91037S2 W6TODS91037S3)
capture egen  W6CTO91038Wk = rowtotal(W6TTOS91038S2 W6TTOS91038S3)
capture egen  W6COD91038Wk = rowtotal(W6TODS91038S2 W6TODS91038S3)
capture egen  W6COD91042Wk = rowtotal(W6TODS91042S2 W6TODS91042S3)
capture egen  W6CTO91042Wk = rowtotal(W6TTOS91042S2 W6TTOS91042S3)
capture egen  W6CTO91043Wk = rowtotal(W6TTOS91043S2 W6TTOS91043S3)
capture egen  W6COD91043Wk = rowtotal(W6TODS91043S2 W6TODS91043S3)
capture egen  W6CTO91044Wk = rowtotal(W6TTOS91044S2 W6TTOS91044S3)
capture egen  W6COD91044Wk = rowtotal(W6TODS91044S2 W6TODS91044S3)
capture egen  W6CTO91045Wk = rowtotal(W6TTOS91045S2 W6TTOS91045S3)
capture egen  W6COD91045Wk = rowtotal(W6TODS91045S2 W6TODS91045S3)
capture egen  W6COD91046Wk = rowtotal(W6TODS91046S2 W6TODS91046S3)
capture egen  W6CTO91046Wk = rowtotal(W6TTOS91046S2 W6TTOS91046S3)
capture egen  W6COD91048Wk = rowtotal(W6TODS91048S2 W6TODS91048S3)
capture egen  W6CTO91048Wk = rowtotal(W6TTOS91048S2 W6TTOS91048S3)
capture egen  W6COD91049Wk = rowtotal(W6TODS91049S2 W6TODS91049S3)
capture egen  W6CTO91049Wk = rowtotal(W6TTOS91049S2 W6TTOS91049S3)
capture egen  W6CTO91050Wk = rowtotal(W6TTOS91050S2 W6TTOS91050S3)
capture egen  W6COD91050Wk = rowtotal(W6TODS91050S2 W6TODS91050S3)
capture egen  W6COD91051Wk = rowtotal(W6TODS91051S2 W6TODS91051S3)
capture egen  W6CTO91051Wk = rowtotal(W6TTOS91051S2 W6TTOS91051S3)
capture egen  W6COD91052Wk = rowtotal(W6TODS91052S2 W6TODS91052S3)
capture egen  W6CTO91052Wk = rowtotal(W6TTOS91052S2 W6TTOS91052S3)
capture egen  W6COD91053Wk = rowtotal(W6TODS91053S2 W6TODS91053S3)
capture egen  W6CTO91053Wk = rowtotal(W6TTOS91053S2 W6TTOS91053S3)
capture egen  W6CTO91054Wk = rowtotal(W6TTOS91054S2 W6TTOS91054S3)
capture egen  W6COD91054Wk = rowtotal(W6TODS91054S2 W6TODS91054S3)
capture egen  W6COD91055Wk = rowtotal(W6TODS91055S2 W6TODS91055S3)
capture egen  W6CTO91055Wk = rowtotal(W6TTOS91055S2 W6TTOS91055S3)
capture egen  W6CTO91056Wk = rowtotal(W6TTOS91056S2 W6TTOS91056S3)
capture egen  W6COD91056Wk = rowtotal(W6TODS91056S2 W6TODS91056S3)
capture egen  W6COD91057Wk = rowtotal(W6TODS91057S2 W6TODS91057S3)
capture egen  W6CTO91057Wk = rowtotal(W6TTOS91057S2 W6TTOS91057S3)
capture egen  W6CTO91058Wk = rowtotal(W6TTOS91058S2 W6TTOS91058S3)
capture egen  W6COD91058Wk = rowtotal(W6TODS91058S2 W6TODS91058S3)
capture egen  W6CTO91061Wk = rowtotal(W6TTOS91061S2 W6TTOS91061S3)
capture egen  W6COD91061Wk = rowtotal(W6TODS91061S2 W6TODS91061S3)
capture egen  W6CTO91064Wk = rowtotal(W6TTOS91064S2 W6TTOS91064S3)
capture egen  W6COD91064Wk = rowtotal(W6TODS91064S2 W6TODS91064S3)
capture egen  W6CTO91068Wk = rowtotal(W6TTOS91068S2 W6TTOS91068S3)
capture egen  W6COD91068Wk = rowtotal(W6TODS91068S2 W6TODS91068S3)
capture egen  W6COD91069Wk = rowtotal(W6TODS91069S2 W6TODS91069S3)
capture egen  W6CTO91069Wk = rowtotal(W6TTOS91069S2 W6TTOS91069S3)
capture egen  W6CTO91070Wk = rowtotal(W6TTOS91070S2 W6TTOS91070S3)
capture egen  W6COD91070Wk = rowtotal(W6TODS91070S2 W6TODS91070S3)
capture egen  W6COD91071Wk = rowtotal(W6TODS91071S2 W6TODS91071S3)
capture egen  W6CTO91071Wk = rowtotal(W6TTOS91071S2 W6TTOS91071S3)
capture egen  W6CTO91074Wk = rowtotal(W6TTOS91074S2 W6TTOS91074S3)
capture egen  W6COD91074Wk = rowtotal(W6TODS91074S2 W6TODS91074S3)
capture egen  W6COD91075Wk = rowtotal(W6TODS91075S2 W6TODS91075S3)
capture egen  W6CTO91075Wk = rowtotal(W6TTOS91075S2 W6TTOS91075S3)
capture egen  W6CTO91076Wk = rowtotal(W6TTOS91076S2 W6TTOS91076S3)
capture egen  W6COD91076Wk = rowtotal(W6TODS91076S2 W6TODS91076S3)
capture egen  W6CTO91077Wk = rowtotal(W6TTOS91077S2 W6TTOS91077S3)
capture egen  W6COD91077Wk = rowtotal(W6TODS91077S2 W6TODS91077S3)
capture egen  W6CTO91078Wk = rowtotal(W6TTOS91078S2 W6TTOS91078S3)
capture egen  W6COD91078Wk = rowtotal(W6TODS91078S2 W6TODS91078S3)
capture egen  W6CTO91079Wk = rowtotal(W6TTOS91079S2 W6TTOS91079S3)
capture egen  W6COD91079Wk = rowtotal(W6TODS91079S2 W6TODS91079S3)
capture egen  W6CTO91080Wk = rowtotal(W6TTOS91080S2 W6TTOS91080S3)
capture egen  W6COD91080Wk = rowtotal(W6TODS91080S2 W6TODS91080S3)
capture egen  W6CTO91081Wk = rowtotal(W6TTOS91081S2 W6TTOS91081S3)
capture egen  W6COD91081Wk = rowtotal(W6TODS91081S2 W6TODS91081S3)
capture egen  W6CTO91082Wk = rowtotal(W6TTOS91082S2 W6TTOS91082S3)
capture egen  W6COD91082Wk = rowtotal(W6TODS91082S2 W6TODS91082S3)
capture egen  W6CTO91083Wk = rowtotal(W6TTOS91083S2 W6TTOS91083S3)
capture egen  W6COD91083Wk = rowtotal(W6TODS91083S2 W6TODS91083S3)
capture egen  W6COD91084Wk = rowtotal(W6TODS91084S2 W6TODS91084S3)
capture egen  W6CTO91084Wk = rowtotal(W6TTOS91084S2 W6TTOS91084S3)
capture egen  W6CTO91085Wk = rowtotal(W6TTOS91085S2 W6TTOS91085S3)
capture egen  W6COD91085Wk = rowtotal(W6TODS91085S2 W6TODS91085S3)
capture egen  W6COD91086Wk = rowtotal(W6TODS91086S2 W6TODS91086S3)
capture egen  W6CTO91086Wk = rowtotal(W6TTOS91086S2 W6TTOS91086S3)
capture egen  W6COD91087Wk = rowtotal(W6TODS91087S2 W6TODS91087S3)
capture egen  W6CTO91087Wk = rowtotal(W6TTOS91087S2 W6TTOS91087S3)
capture egen  W6CTO91088Wk = rowtotal(W6TTOS91088S2 W6TTOS91088S3)
capture egen  W6COD91088Wk = rowtotal(W6TODS91088S2 W6TODS91088S3)
capture egen  W6CTO91089Wk = rowtotal(W6TTOS91089S2 W6TTOS91089S3)
capture egen  W6COD91089Wk = rowtotal(W6TODS91089S2 W6TODS91089S3)
capture egen  W6COD91090Wk = rowtotal(W6TODS91090S2 W6TODS91090S3)
capture egen  W6CTO91090Wk = rowtotal(W6TTOS91090S2 W6TTOS91090S3)
capture egen  W6CTO91091Wk = rowtotal(W6TTOS91091S2 W6TTOS91091S3)
capture egen  W6COD91091Wk = rowtotal(W6TODS91091S2 W6TODS91091S3)
capture egen  W6COD91092Wk = rowtotal(W6TODS91092S2 W6TODS91092S3)
capture egen  W6CTO91092Wk = rowtotal(W6TTOS91092S2 W6TTOS91092S3)
capture egen  W6CTO91093Wk = rowtotal(W6TTOS91093S2 W6TTOS91093S3)
capture egen  W6COD91093Wk = rowtotal(W6TODS91093S2 W6TODS91093S3)
capture egen  W6CTO91095Wk = rowtotal(W6TTOS91095S2 W6TTOS91095S3)
capture egen  W6COD91095Wk = rowtotal(W6TODS91095S2 W6TODS91095S3)
capture egen  W6COD91096Wk = rowtotal(W6TODS91096S2 W6TODS91096S3)
capture egen  W6CTO91096Wk = rowtotal(W6TTOS91096S2 W6TTOS91096S3)
capture egen  W6COD91098Wk = rowtotal(W6TODS91098S2 W6TODS91098S3)
capture egen  W6CTO91098Wk = rowtotal(W6TTOS91098S2 W6TTOS91098S3)
capture egen  W6COD91099Wk = rowtotal(W6TODS91099S2 W6TODS91099S3)
capture egen  W6CTO91099Wk = rowtotal(W6TTOS91099S2 W6TTOS91099S3)
capture egen  W6CTO91100Wk = rowtotal(W6TTOS91100S2 W6TTOS91100S3)
capture egen  W6COD91100Wk = rowtotal(W6TODS91100S2 W6TODS91100S3)
capture egen  W6CTO91102Wk = rowtotal(W6TTOS91102S2 W6TTOS91102S3)
capture egen  W6COD91102Wk = rowtotal(W6TODS91102S2 W6TODS91102S3)
capture egen  W6COD91103Wk = rowtotal(W6TODS91103S2 W6TODS91103S3)
capture egen  W6CTO91103Wk = rowtotal(W6TTOS91103S2 W6TTOS91103S3)
capture egen  W6COD91105Wk = rowtotal(W6TODS91105S2 W6TODS91105S3)
capture egen  W6CTO91105Wk = rowtotal(W6TTOS91105S2 W6TTOS91105S3)
capture egen  W6COD91107Wk = rowtotal(W6TODS91107S2 W6TODS91107S3)
capture egen  W6CTO91107Wk = rowtotal(W6TTOS91107S2 W6TTOS91107S3)
capture egen  W6COD91108Wk = rowtotal(W6TODS91108S2 W6TODS91108S3)
capture egen  W6CTO91108Wk = rowtotal(W6TTOS91108S2 W6TTOS91108S3)
capture egen  W6CTO91109Wk = rowtotal(W6TTOS91109S2 W6TTOS91109S3)
capture egen  W6COD91109Wk = rowtotal(W6TODS91109S2 W6TODS91109S3)
capture egen  W6CTO91110Wk = rowtotal(W6TTOS91110S2 W6TTOS91110S3)
capture egen  W6COD91110Wk = rowtotal(W6TODS91110S2 W6TODS91110S3)
capture egen  W6COD91111Wk = rowtotal(W6TODS91111S2 W6TODS91111S3)
capture egen  W6CTO91111Wk = rowtotal(W6TTOS91111S2 W6TTOS91111S3)
capture egen  W6COD91112Wk = rowtotal(W6TODS91112S2 W6TODS91112S3)
capture egen  W6CTO91112Wk = rowtotal(W6TTOS91112S2 W6TTOS91112S3)
capture egen  W6COD91113Wk = rowtotal(W6TODS91113S2 W6TODS91113S3)
capture egen  W6CTO91113Wk = rowtotal(W6TTOS91113S2 W6TTOS91113S3)
capture egen  W6CTO91114Wk = rowtotal(W6TTOS91114S2 W6TTOS91114S3)
capture egen  W6COD91114Wk = rowtotal(W6TODS91114S2 W6TODS91114S3)
capture egen  W6CTO91115Wk = rowtotal(W6TTOS91115S2 W6TTOS91115S3)
capture egen  W6COD91115Wk = rowtotal(W6TODS91115S2 W6TODS91115S3)
capture egen  W6COD91116Wk = rowtotal(W6TODS91116S2 W6TODS91116S3)
capture egen  W6CTO91116Wk = rowtotal(W6TTOS91116S2 W6TTOS91116S3)
capture egen  W6CTO91117Wk = rowtotal(W6TTOS91117S2 W6TTOS91117S3)
capture egen  W6COD91117Wk = rowtotal(W6TODS91117S2 W6TODS91117S3)
capture egen  W6CTO91118Wk = rowtotal(W6TTOS91118S2 W6TTOS91118S3)
capture egen  W6COD91118Wk = rowtotal(W6TODS91118S2 W6TODS91118S3)
capture egen  W6CTO91119Wk = rowtotal(W6TTOS91119S2 W6TTOS91119S3)
capture egen  W6COD91119Wk = rowtotal(W6TODS91119S2 W6TODS91119S3)
capture egen  W6COD91120Wk = rowtotal(W6TODS91120S2 W6TODS91120S3)
capture egen  W6CTO91120Wk = rowtotal(W6TTOS91120S2 W6TTOS91120S3)
capture egen  W6CTO91121Wk = rowtotal(W6TTOS91121S2 W6TTOS91121S3)
capture egen  W6COD91121Wk = rowtotal(W6TODS91121S2 W6TODS91121S3)
capture egen  W6CTO91122Wk = rowtotal(W6TTOS91122S2 W6TTOS91122S3)
capture egen  W6COD91122Wk = rowtotal(W6TODS91122S2 W6TODS91122S3)
capture egen  W6COD91123Wk = rowtotal(W6TODS91123S2 W6TODS91123S3)
capture egen  W6CTO91123Wk = rowtotal(W6TTOS91123S2 W6TTOS91123S3)
capture egen  W6COD91124Wk = rowtotal(W6TODS91124S2 W6TODS91124S3)
capture egen  W6CTO91124Wk = rowtotal(W6TTOS91124S2 W6TTOS91124S3)
capture egen  W6COD91125Wk = rowtotal(W6TODS91125S2 W6TODS91125S3)
capture egen  W6CTO91125Wk = rowtotal(W6TTOS91125S2 W6TTOS91125S3)
capture egen  W6CTO91126Wk = rowtotal(W6TTOS91126S2 W6TTOS91126S3)
capture egen  W6COD91126Wk = rowtotal(W6TODS91126S2 W6TODS91126S3)
capture egen  W6CTO91127Wk = rowtotal(W6TTOS91127S2 W6TTOS91127S3)
capture egen  W6COD91127Wk = rowtotal(W6TODS91127S2 W6TODS91127S3)
capture egen  W6COD91128Wk = rowtotal(W6TODS91128S2 W6TODS91128S3)
capture egen  W6CTO91128Wk = rowtotal(W6TTOS91128S2 W6TTOS91128S3)
capture egen  W6COD91129Wk = rowtotal(W6TODS91129S2 W6TODS91129S3)
capture egen  W6CTO91129Wk = rowtotal(W6TTOS91129S2 W6TTOS91129S3)
capture egen  W6COD91130Wk = rowtotal(W6TODS91130S2 W6TODS91130S3)
capture egen  W6CTO91130Wk = rowtotal(W6TTOS91130S2 W6TTOS91130S3)
capture egen  W6COD91131Wk = rowtotal(W6TODS91131S2 W6TODS91131S3)
capture egen  W6CTO91131Wk = rowtotal(W6TTOS91131S2 W6TTOS91131S3)
capture egen  W6CTO91132Wk = rowtotal(W6TTOS91132S2 W6TTOS91132S3)
capture egen  W6COD91132Wk = rowtotal(W6TODS91132S2 W6TODS91132S3)
capture egen  W6COD91133Wk = rowtotal(W6TODS91133S2 W6TODS91133S3)
capture egen  W6CTO91133Wk = rowtotal(W6TTOS91133S2 W6TTOS91133S3)
capture egen  W6CTO91134Wk = rowtotal(W6TTOS91134S2 W6TTOS91134S3)
capture egen  W6COD91134Wk = rowtotal(W6TODS91134S2 W6TODS91134S3)
capture egen  W6CTO91135Wk = rowtotal(W6TTOS91135S2 W6TTOS91135S3)
capture egen  W6COD91135Wk = rowtotal(W6TODS91135S2 W6TODS91135S3)
capture egen  W6COD91136Wk = rowtotal(W6TODS91136S2 W6TODS91136S3)
capture egen  W6CTO91136Wk = rowtotal(W6TTOS91136S2 W6TTOS91136S3)
capture egen  W6COD91137Wk = rowtotal(W6TODS91137S2 W6TODS91137S3)
capture egen  W6CTO91137Wk = rowtotal(W6TTOS91137S2 W6TTOS91137S3)
capture egen  W6COD91138Wk = rowtotal(W6TODS91138S2 W6TODS91138S3)
capture egen  W6CTO91138Wk = rowtotal(W6TTOS91138S2 W6TTOS91138S3)
capture egen  W6COD91139Wk = rowtotal(W6TODS91139S2 W6TODS91139S3)
capture egen  W6CTO91139Wk = rowtotal(W6TTOS91139S2 W6TTOS91139S3)
capture egen  W6COD91140Wk = rowtotal(W6TODS91140S2 W6TODS91140S3)
capture egen  W6CTO91140Wk = rowtotal(W6TTOS91140S2 W6TTOS91140S3)
capture egen  W6CTO91141Wk = rowtotal(W6TTOS91141S2 W6TTOS91141S3)
capture egen  W6COD91141Wk = rowtotal(W6TODS91141S2 W6TODS91141S3)
capture egen  W6CTO91142Wk = rowtotal(W6TTOS91142S2 W6TTOS91142S3)
capture egen  W6COD91142Wk = rowtotal(W6TODS91142S2 W6TODS91142S3)
capture egen  W6CTO91143Wk = rowtotal(W6TTOS91143S2 W6TTOS91143S3)
capture egen  W6COD91143Wk = rowtotal(W6TODS91143S2 W6TODS91143S3)
capture egen  W6CTO91144Wk = rowtotal(W6TTOS91144S2 W6TTOS91144S3)
capture egen  W6COD91144Wk = rowtotal(W6TODS91144S2 W6TODS91144S3)
capture egen  W6COD91145Wk = rowtotal(W6TODS91145S2 W6TODS91145S3)
capture egen  W6CTO91145Wk = rowtotal(W6TTOS91145S2 W6TTOS91145S3)
capture egen  W6CTO91146Wk = rowtotal(W6TTOS91146S2 W6TTOS91146S3)
capture egen  W6COD91146Wk = rowtotal(W6TODS91146S2 W6TODS91146S3)
capture egen  W6CTO91147Wk = rowtotal(W6TTOS91147S2 W6TTOS91147S3)
capture egen  W6COD91147Wk = rowtotal(W6TODS91147S2 W6TODS91147S3)
capture egen  W6CTO91148Wk = rowtotal(W6TTOS91148S2 W6TTOS91148S3)
capture egen  W6COD91148Wk = rowtotal(W6TODS91148S2 W6TODS91148S3)
capture egen  W6CTO91149Wk = rowtotal(W6TTOS91149S2 W6TTOS91149S3)
capture egen  W6COD91149Wk = rowtotal(W6TODS91149S2 W6TODS91149S3)
capture egen  W6CTO91150Wk = rowtotal(W6TTOS91150S2 W6TTOS91150S3)
capture egen  W6COD91150Wk = rowtotal(W6TODS91150S2 W6TODS91150S3)
capture egen  W6COD91151Wk = rowtotal(W6TODS91151S2 W6TODS91151S3)
capture egen  W6CTO91151Wk = rowtotal(W6TTOS91151S2 W6TTOS91151S3)
capture egen  W6CTO91153Wk = rowtotal(W6TTOS91153S2 W6TTOS91153S3)
capture egen  W6COD91153Wk = rowtotal(W6TODS91153S2 W6TODS91153S3)
capture egen  W6CTO91154Wk = rowtotal(W6TTOS91154S2 W6TTOS91154S3)
capture egen  W6COD91154Wk = rowtotal(W6TODS91154S2 W6TODS91154S3)
capture egen  W6COD91155Wk = rowtotal(W6TODS91155S2 W6TODS91155S3)
capture egen  W6CTO91155Wk = rowtotal(W6TTOS91155S2 W6TTOS91155S3)
capture egen  W6CTO91157Wk = rowtotal(W6TTOS91157S2 W6TTOS91157S3)
capture egen  W6COD91157Wk = rowtotal(W6TODS91157S2 W6TODS91157S3)
capture egen  W6COD91158Wk = rowtotal(W6TODS91158S2 W6TODS91158S3)
capture egen  W6CTO91158Wk = rowtotal(W6TTOS91158S2 W6TTOS91158S3)
capture egen  W6COD91159Wk = rowtotal(W6TODS91159S2 W6TODS91159S3)
capture egen  W6CTO91159Wk = rowtotal(W6TTOS91159S2 W6TTOS91159S3)
capture egen  W6CTO91160Wk = rowtotal(W6TTOS91160S2 W6TTOS91160S3)
capture egen  W6COD91160Wk = rowtotal(W6TODS91160S2 W6TODS91160S3)
capture egen  W6CTO91161Wk = rowtotal(W6TTOS91161S2 W6TTOS91161S3)
capture egen  W6COD91161Wk = rowtotal(W6TODS91161S2 W6TODS91161S3)
capture egen  W6COD91162Wk = rowtotal(W6TODS91162S2 W6TODS91162S3)
capture egen  W6CTO91162Wk = rowtotal(W6TTOS91162S2 W6TTOS91162S3)
capture egen  W6CTO91163Wk = rowtotal(W6TTOS91163S2 W6TTOS91163S3)
capture egen  W6COD91163Wk = rowtotal(W6TODS91163S2 W6TODS91163S3)
capture egen  W6COD91164Wk = rowtotal(W6TODS91164S2 W6TODS91164S3)
capture egen  W6CTO91164Wk = rowtotal(W6TTOS91164S2 W6TTOS91164S3)
capture egen  W6CTO91165Wk = rowtotal(W6TTOS91165S2 W6TTOS91165S3)
capture egen  W6COD91165Wk = rowtotal(W6TODS91165S2 W6TODS91165S3)
capture egen  W6COD91167Wk = rowtotal(W6TODS91167S2 W6TODS91167S3)
capture egen  W6CTO91167Wk = rowtotal(W6TTOS91167S2 W6TTOS91167S3)
capture egen  W6COD91168Wk = rowtotal(W6TODS91168S2 W6TODS91168S3)
capture egen  W6CTO91168Wk = rowtotal(W6TTOS91168S2 W6TTOS91168S3)
capture egen  W6CTO91169Wk = rowtotal(W6TTOS91169S2 W6TTOS91169S3)
capture egen  W6COD91169Wk = rowtotal(W6TODS91169S2 W6TODS91169S3)
capture egen  W6COD91170Wk = rowtotal(W6TODS91170S2 W6TODS91170S3)
capture egen  W6CTO91170Wk = rowtotal(W6TTOS91170S2 W6TTOS91170S3)
capture egen  W6CTO91172Wk = rowtotal(W6TTOS91172S2 W6TTOS91172S3)
capture egen  W6COD91172Wk = rowtotal(W6TODS91172S2 W6TODS91172S3)
capture egen  W6CTO91173Wk = rowtotal(W6TTOS91173S2 W6TTOS91173S3)
capture egen  W6COD91173Wk = rowtotal(W6TODS91173S2 W6TODS91173S3)
capture egen  W6CTO91174Wk = rowtotal(W6TTOS91174S2 W6TTOS91174S3)
capture egen  W6COD91174Wk = rowtotal(W6TODS91174S2 W6TODS91174S3)
capture egen  W6COD91175Wk = rowtotal(W6TODS91175S2 W6TODS91175S3)
capture egen  W6CTO91175Wk = rowtotal(W6TTOS91175S2 W6TTOS91175S3)
capture egen  W6COD91176Wk = rowtotal(W6TODS91176S2 W6TODS91176S3)
capture egen  W6CTO91176Wk = rowtotal(W6TTOS91176S2 W6TTOS91176S3)
capture egen  W6CTO91178Wk = rowtotal(W6TTOS91178S2 W6TTOS91178S3)
capture egen  W6COD91178Wk = rowtotal(W6TODS91178S2 W6TODS91178S3)
capture egen  W6COD91179Wk = rowtotal(W6TODS91179S2 W6TODS91179S3)
capture egen  W6CTO91179Wk = rowtotal(W6TTOS91179S2 W6TTOS91179S3)
capture egen  W6CTO91180Wk = rowtotal(W6TTOS91180S2 W6TTOS91180S3)
capture egen  W6COD91180Wk = rowtotal(W6TODS91180S2 W6TODS91180S3)
capture egen  W6COD91181Wk = rowtotal(W6TODS91181S2 W6TODS91181S3)
capture egen  W6CTO91181Wk = rowtotal(W6TTOS91181S2 W6TTOS91181S3)
capture egen  W6CTO91182Wk = rowtotal(W6TTOS91182S2 W6TTOS91182S3)
capture egen  W6COD91182Wk = rowtotal(W6TODS91182S2 W6TODS91182S3)
capture egen  W6COD91183Wk = rowtotal(W6TODS91183S2 W6TODS91183S3)
capture egen  W6CTO91183Wk = rowtotal(W6TTOS91183S2 W6TTOS91183S3)
capture egen  W6CTO91184Wk = rowtotal(W6TTOS91184S2 W6TTOS91184S3)
capture egen  W6COD91184Wk = rowtotal(W6TODS91184S2 W6TODS91184S3)
capture egen  W6CTO91185Wk = rowtotal(W6TTOS91185S2 W6TTOS91185S3)
capture egen  W6COD91185Wk = rowtotal(W6TODS91185S2 W6TODS91185S3)
capture egen  W6CTO91186Wk = rowtotal(W6TTOS91186S2 W6TTOS91186S3)
capture egen  W6COD91186Wk = rowtotal(W6TODS91186S2 W6TODS91186S3)
capture egen  W6CTO91187Wk = rowtotal(W6TTOS91187S2 W6TTOS91187S3)
capture egen  W6COD91187Wk = rowtotal(W6TODS91187S2 W6TODS91187S3)
capture egen  W6CTO91188Wk = rowtotal(W6TTOS91188S2 W6TTOS91188S3)
capture egen  W6COD91188Wk = rowtotal(W6TODS91188S2 W6TODS91188S3)
capture egen  W6COD91190Wk = rowtotal(W6TODS91190S2 W6TODS91190S3)
capture egen  W6CTO91190Wk = rowtotal(W6TTOS91190S2 W6TTOS91190S3)
capture egen  W6CTO91191Wk = rowtotal(W6TTOS91191S2 W6TTOS91191S3)
capture egen  W6COD91191Wk = rowtotal(W6TODS91191S2 W6TODS91191S3)
capture egen  W6COD91192Wk = rowtotal(W6TODS91192S2 W6TODS91192S3)
capture egen  W6CTO91192Wk = rowtotal(W6TTOS91192S2 W6TTOS91192S3)
capture egen  W6COD91195Wk = rowtotal(W6TODS91195S2 W6TODS91195S3)
capture egen  W6CTO91195Wk = rowtotal(W6TTOS91195S2 W6TTOS91195S3)
capture egen  W6CTO91196Wk = rowtotal(W6TTOS91196S2 W6TTOS91196S3)
capture egen  W6COD91196Wk = rowtotal(W6TODS91196S2 W6TODS91196S3)
capture egen  W6COD91197Wk = rowtotal(W6TODS91197S2 W6TODS91197S3)
capture egen  W6CTO91197Wk = rowtotal(W6TTOS91197S2 W6TTOS91197S3)
capture egen  W6CTO91200Wk = rowtotal(W6TTOS91200S2 W6TTOS91200S3)
capture egen  W6COD91200Wk = rowtotal(W6TODS91200S2 W6TODS91200S3)
capture egen  W6COD91201Wk = rowtotal(W6TODS91201S2 W6TODS91201S3)
capture egen  W6CTO91201Wk = rowtotal(W6TTOS91201S2 W6TTOS91201S3)
capture egen  W6COD91203Wk = rowtotal(W6TODS91203S2 W6TODS91203S3)
capture egen  W6CTO91203Wk = rowtotal(W6TTOS91203S2 W6TTOS91203S3)
capture egen  W6COD91204Wk = rowtotal(W6TODS91204S2 W6TODS91204S3)
capture egen  W6CTO91204Wk = rowtotal(W6TTOS91204S2 W6TTOS91204S3)
capture egen  W6CTO91205Wk = rowtotal(W6TTOS91205S2 W6TTOS91205S3)
capture egen  W6COD91205Wk = rowtotal(W6TODS91205S2 W6TODS91205S3)
capture egen  W6COD91206Wk = rowtotal(W6TODS91206S2 W6TODS91206S3)
capture egen  W6CTO91206Wk = rowtotal(W6TTOS91206S2 W6TTOS91206S3)
capture egen  W6COD91207Wk = rowtotal(W6TODS91207S2 W6TODS91207S3)
capture egen  W6CTO91207Wk = rowtotal(W6TTOS91207S2 W6TTOS91207S3)
capture egen  W6COD91208Wk = rowtotal(W6TODS91208S2 W6TODS91208S3)
capture egen  W6CTO91208Wk = rowtotal(W6TTOS91208S2 W6TTOS91208S3)
capture egen  W6CTO91209Wk = rowtotal(W6TTOS91209S2 W6TTOS91209S3)
capture egen  W6COD91209Wk = rowtotal(W6TODS91209S2 W6TODS91209S3)
capture egen  W6COD91210Wk = rowtotal(W6TODS91210S2 W6TODS91210S3)
capture egen  W6CTO91210Wk = rowtotal(W6TTOS91210S2 W6TTOS91210S3)
capture egen  W6COD91211Wk = rowtotal(W6TODS91211S2 W6TODS91211S3)
capture egen  W6CTO91211Wk = rowtotal(W6TTOS91211S2 W6TTOS91211S3)
capture egen  W6COD91212Wk = rowtotal(W6TODS91212S2 W6TODS91212S3)
capture egen  W6CTO91212Wk = rowtotal(W6TTOS91212S2 W6TTOS91212S3)
capture egen  W6COD91213Wk = rowtotal(W6TODS91213S2 W6TODS91213S3)
capture egen  W6CTO91213Wk = rowtotal(W6TTOS91213S2 W6TTOS91213S3)
capture egen  W6COD91214Wk = rowtotal(W6TODS91214S2 W6TODS91214S3)
capture egen  W6CTO91214Wk = rowtotal(W6TTOS91214S2 W6TTOS91214S3)
capture egen  W6COD91217Wk = rowtotal(W6TODS91217S2 W6TODS91217S3)
capture egen  W6CTO91217Wk = rowtotal(W6TTOS91217S2 W6TTOS91217S3)
capture egen  W6COD91218Wk = rowtotal(W6TODS91218S2 W6TODS91218S3)
capture egen  W6CTO91218Wk = rowtotal(W6TTOS91218S2 W6TTOS91218S3)
capture egen  W6COD91221Wk = rowtotal(W6TODS91221S2 W6TODS91221S3)
capture egen  W6CTO91221Wk = rowtotal(W6TTOS91221S2 W6TTOS91221S3)
capture egen  W6COD91222Wk = rowtotal(W6TODS91222S2 W6TODS91222S3)
capture egen  W6CTO91222Wk = rowtotal(W6TTOS91222S2 W6TTOS91222S3)
capture egen  W6COD91223Wk = rowtotal(W6TODS91223S2 W6TODS91223S3)
capture egen  W6CTO91223Wk = rowtotal(W6TTOS91223S2 W6TTOS91223S3)
capture egen  W6COD91224Wk = rowtotal(W6TODS91224S2 W6TODS91224S3)
capture egen  W6CTO91224Wk = rowtotal(W6TTOS91224S2 W6TTOS91224S3)
capture egen  W6CTO91225Wk = rowtotal(W6TTOS91225S2 W6TTOS91225S3)
capture egen  W6COD91225Wk = rowtotal(W6TODS91225S2 W6TODS91225S3)
capture egen  W6COD91226Wk = rowtotal(W6TODS91226S2 W6TODS91226S3)
capture egen  W6CTO91226Wk = rowtotal(W6TTOS91226S2 W6TTOS91226S3)
capture egen  W6CTO91227Wk = rowtotal(W6TTOS91227S2 W6TTOS91227S3)
capture egen  W6COD91227Wk = rowtotal(W6TODS91227S2 W6TODS91227S3)
capture egen  W6COD91228Wk = rowtotal(W6TODS91228S2 W6TODS91228S3)
capture egen  W6CTO91228Wk = rowtotal(W6TTOS91228S2 W6TTOS91228S3)
capture egen  W6CTO91229Wk = rowtotal(W6TTOS91229S2 W6TTOS91229S3)
capture egen  W6COD91229Wk = rowtotal(W6TODS91229S2 W6TODS91229S3)
capture egen  W6COD91230Wk = rowtotal(W6TODS91230S2 W6TODS91230S3)
capture egen  W6CTO91230Wk = rowtotal(W6TTOS91230S2 W6TTOS91230S3)
capture egen  W6CTO91231Wk = rowtotal(W6TTOS91231S2 W6TTOS91231S3)
capture egen  W6COD91231Wk = rowtotal(W6TODS91231S2 W6TODS91231S3)
capture egen  W6COD91232Wk = rowtotal(W6TODS91232S2 W6TODS91232S3)
capture egen  W6CTO91232Wk = rowtotal(W6TTOS91232S2 W6TTOS91232S3)
capture egen  W6CTO91233Wk = rowtotal(W6TTOS91233S2 W6TTOS91233S3)
capture egen  W6COD91233Wk = rowtotal(W6TODS91233S2 W6TODS91233S3)
capture egen  W6CTO91234Wk = rowtotal(W6TTOS91234S2 W6TTOS91234S3)
capture egen  W6COD91234Wk = rowtotal(W6TODS91234S2 W6TODS91234S3)
capture egen  W6CTO91236Wk = rowtotal(W6TTOS91236S2 W6TTOS91236S3)
capture egen  W6COD91236Wk = rowtotal(W6TODS91236S2 W6TODS91236S3)
capture egen  W6CTO91238Wk = rowtotal(W6TTOS91238S2 W6TTOS91238S3)
capture egen  W6COD91238Wk = rowtotal(W6TODS91238S2 W6TODS91238S3)
capture egen  W6CTO91239Wk = rowtotal(W6TTOS91239S2 W6TTOS91239S3)
capture egen  W6COD91239Wk = rowtotal(W6TODS91239S2 W6TODS91239S3)
capture egen  W6COD91240Wk = rowtotal(W6TODS91240S2 W6TODS91240S3)
capture egen  W6CTO91240Wk = rowtotal(W6TTOS91240S2 W6TTOS91240S3)
capture egen  W6CTO91241Wk = rowtotal(W6TTOS91241S2 W6TTOS91241S3)
capture egen  W6COD91241Wk = rowtotal(W6TODS91241S2 W6TODS91241S3)
capture egen  W6CTO91242Wk = rowtotal(W6TTOS91242S2 W6TTOS91242S3)
capture egen  W6COD91242Wk = rowtotal(W6TODS91242S2 W6TODS91242S3)
capture egen  W6COD91243Wk = rowtotal(W6TODS91243S2 W6TODS91243S3)
capture egen  W6CTO91243Wk = rowtotal(W6TTOS91243S2 W6TTOS91243S3)
capture egen  W6CTO91244Wk = rowtotal(W6TTOS91244S2 W6TTOS91244S3)
capture egen  W6COD91244Wk = rowtotal(W6TODS91244S2 W6TODS91244S3)
capture egen  W6COD91245Wk = rowtotal(W6TODS91245S2 W6TODS91245S3)
capture egen  W6CTO91245Wk = rowtotal(W6TTOS91245S2 W6TTOS91245S3)
capture egen  W6CTO91246Wk = rowtotal(W6TTOS91246S2 W6TTOS91246S3)
capture egen  W6COD91246Wk = rowtotal(W6TODS91246S2 W6TODS91246S3)
capture egen  W6CTO91247Wk = rowtotal(W6TTOS91247S2 W6TTOS91247S3)
capture egen  W6COD91247Wk = rowtotal(W6TODS91247S2 W6TODS91247S3)
capture egen  W6CTO91248Wk = rowtotal(W6TTOS91248S2 W6TTOS91248S3)
capture egen  W6COD91248Wk = rowtotal(W6TODS91248S2 W6TODS91248S3)
capture egen  W6COD91249Wk = rowtotal(W6TODS91249S2 W6TODS91249S3)
capture egen  W6CTO91249Wk = rowtotal(W6TTOS91249S2 W6TTOS91249S3)
capture egen  W6COD91250Wk = rowtotal(W6TODS91250S2 W6TODS91250S3)
capture egen  W6CTO91250Wk = rowtotal(W6TTOS91250S2 W6TTOS91250S3)
capture egen  W6COD91251Wk = rowtotal(W6TODS91251S2 W6TODS91251S3)
capture egen  W6CTO91251Wk = rowtotal(W6TTOS91251S2 W6TTOS91251S3)
capture egen  W6COD91253Wk = rowtotal(W6TODS91253S2 W6TODS91253S3)
capture egen  W6CTO91253Wk = rowtotal(W6TTOS91253S2 W6TTOS91253S3)
capture egen  W6COD91255Wk = rowtotal(W6TODS91255S2 W6TODS91255S3)
capture egen  W6CTO91255Wk = rowtotal(W6TTOS91255S2 W6TTOS91255S3)
capture egen  W6CTO91258Wk = rowtotal(W6TTOS91258S2 W6TTOS91258S3)
capture egen  W6COD91258Wk = rowtotal(W6TODS91258S2 W6TODS91258S3)
capture egen  W6COD91259Wk = rowtotal(W6TODS91259S2 W6TODS91259S3)
capture egen  W6CTO91259Wk = rowtotal(W6TTOS91259S2 W6TTOS91259S3)
capture egen  W6COD91262Wk = rowtotal(W6TODS91262S2 W6TODS91262S3)
capture egen  W6CTO91262Wk = rowtotal(W6TTOS91262S2 W6TTOS91262S3)
capture egen  W6COD91263Wk = rowtotal(W6TODS91263S2 W6TODS91263S3)
capture egen  W6CTO91263Wk = rowtotal(W6TTOS91263S2 W6TTOS91263S3)
capture egen  W6COD91264Wk = rowtotal(W6TODS91264S2 W6TODS91264S3)
capture egen  W6CTO91264Wk = rowtotal(W6TTOS91264S2 W6TTOS91264S3)
capture egen  W6COD91265Wk = rowtotal(W6TODS91265S2 W6TODS91265S3)
capture egen  W6CTO91265Wk = rowtotal(W6TTOS91265S2 W6TTOS91265S3)
capture egen  W6CTO91266Wk = rowtotal(W6TTOS91266S2 W6TTOS91266S3)
capture egen  W6COD91266Wk = rowtotal(W6TODS91266S2 W6TODS91266S3)
capture egen  W6CTO91267Wk = rowtotal(W6TTOS91267S2 W6TTOS91267S3)
capture egen  W6COD91267Wk = rowtotal(W6TODS91267S2 W6TODS91267S3)
capture egen  W6CTO91268Wk = rowtotal(W6TTOS91268S2 W6TTOS91268S3)
capture egen  W6COD91268Wk = rowtotal(W6TODS91268S2 W6TODS91268S3)
capture egen  W6CTO91269Wk = rowtotal(W6TTOS91269S2 W6TTOS91269S3)
capture egen  W6COD91269Wk = rowtotal(W6TODS91269S2 W6TODS91269S3)
capture egen  W6COD91270Wk = rowtotal(W6TODS91270S2 W6TODS91270S3)
capture egen  W6CTO91270Wk = rowtotal(W6TTOS91270S2 W6TTOS91270S3)
capture egen  W6COD91271Wk = rowtotal(W6TODS91271S2 W6TODS91271S3)
capture egen  W6CTO91271Wk = rowtotal(W6TTOS91271S2 W6TTOS91271S3)
capture egen  W6COD91272Wk = rowtotal(W6TODS91272S2 W6TODS91272S3)
capture egen  W6CTO91272Wk = rowtotal(W6TTOS91272S2 W6TTOS91272S3)
capture egen  W6CTO91273Wk = rowtotal(W6TTOS91273S2 W6TTOS91273S3)
capture egen  W6COD91273Wk = rowtotal(W6TODS91273S2 W6TODS91273S3)
capture egen  W6COD91274Wk = rowtotal(W6TODS91274S2 W6TODS91274S3)
capture egen  W6CTO91274Wk = rowtotal(W6TTOS91274S2 W6TTOS91274S3)
capture egen  W6CTO91275Wk = rowtotal(W6TTOS91275S2 W6TTOS91275S3)
capture egen  W6COD91275Wk = rowtotal(W6TODS91275S2 W6TODS91275S3)
capture egen  W6CTO91276Wk = rowtotal(W6TTOS91276S2 W6TTOS91276S3)
capture egen  W6COD91276Wk = rowtotal(W6TODS91276S2 W6TODS91276S3)
capture egen  W6CTO91277Wk = rowtotal(W6TTOS91277S2 W6TTOS91277S3)
capture egen  W6COD91277Wk = rowtotal(W6TODS91277S2 W6TODS91277S3)
capture egen  W6COD91278Wk = rowtotal(W6TODS91278S2 W6TODS91278S3)
capture egen  W6CTO91278Wk = rowtotal(W6TTOS91278S2 W6TTOS91278S3)
capture egen  W6COD91280Wk = rowtotal(W6TODS91280S2 W6TODS91280S3)
capture egen  W6CTO91280Wk = rowtotal(W6TTOS91280S2 W6TTOS91280S3)
capture egen  W6COD91281Wk = rowtotal(W6TODS91281S2 W6TODS91281S3)
capture egen  W6CTO91281Wk = rowtotal(W6TTOS91281S2 W6TTOS91281S3)
capture egen  W6COD91282Wk = rowtotal(W6TODS91282S2 W6TODS91282S3)
capture egen  W6CTO91282Wk = rowtotal(W6TTOS91282S2 W6TTOS91282S3)
capture egen  W6CTO91283Wk = rowtotal(W6TTOS91283S2 W6TTOS91283S3)
capture egen  W6COD91283Wk = rowtotal(W6TODS91283S2 W6TODS91283S3)
capture egen  W6CTO91284Wk = rowtotal(W6TTOS91284S2 W6TTOS91284S3)
capture egen  W6COD91284Wk = rowtotal(W6TODS91284S2 W6TODS91284S3)
capture egen  W6CTO91285Wk = rowtotal(W6TTOS91285S2 W6TTOS91285S3)
capture egen  W6COD91285Wk = rowtotal(W6TODS91285S2 W6TODS91285S3)
capture egen  W6COD91290Wk = rowtotal(W6TODS91290S2 W6TODS91290S3)
capture egen  W6CTO91290Wk = rowtotal(W6TTOS91290S2 W6TTOS91290S3)
capture egen  W6COD91291Wk = rowtotal(W6TODS91291S2 W6TODS91291S3)
capture egen  W6CTO91291Wk = rowtotal(W6TTOS91291S2 W6TTOS91291S3)
capture egen  W6CTO91292Wk = rowtotal(W6TTOS91292S2 W6TTOS91292S3)
capture egen  W6COD91292Wk = rowtotal(W6TODS91292S2 W6TODS91292S3)
capture egen  W6COD91293Wk = rowtotal(W6TODS91293S2 W6TODS91293S3)
capture egen  W6CTO91293Wk = rowtotal(W6TTOS91293S2 W6TTOS91293S3)
capture egen  W6COD91294Wk = rowtotal(W6TODS91294S2 W6TODS91294S3)
capture egen  W6CTO91294Wk = rowtotal(W6TTOS91294S2 W6TTOS91294S3)
capture egen  W6COD91295Wk = rowtotal(W6TODS91295S2 W6TODS91295S3)
capture egen  W6CTO91295Wk = rowtotal(W6TTOS91295S2 W6TTOS91295S3)

* Saving
rename SUBJECTID SUBJECTIDW6
rename IP IPW6
sort PAC
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W6/WorkingData/W6S1234_Working.dta", replace

**************************************************************************************************
**************************************************************************************************
*										W	E	E	K	 7
**************************************************************************************************
**************************************************************************************************

set more off
clear all
* Set Working Directory (comment it with a "*", don't delet it)
cd "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W7/WorkingData"

**************************************************************************************************
*											W7S1
**************************************************************************************************


*Open W7S1 and save a Working Copy (We wanna keep a copy of the original data)
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W7/WorkingData/W7S1.dta", replace
destring, replace
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W7/WorkingData/W7S1_Working.dta", replace

* From Excel to STATA everything enters as lower case. Lets reverse it to its original: Upper Case
rename *, upper

* Now lets keep what we need
keep ///
DATE FOD_A_3799 GRP_20769 GRP_20770 Q_5987_DUR_32263 Q_5987_SEQ_32263 Q_5987_VAL_32263 SUBJECT_ID ///
TIME TIME_BEGIN_FLOWPHASE TIME_BEGIN_SUBSTAGE TIME_END_FLOWPHASE TOD_A_3799 TOTAL_FLOW_ACCESSED ///
TTO_A_3799 WORDS_A_3799 

*rename SUBJECT_ID to PAC
rename Q_5987_VAL_32263 PAC

* Adding Prefixes and Suffixes
foreach x of var * {
rename `x' W7`x'
} 

foreach x of var * {
rename `x' `x'S1
}

* Renaming SUBJECT_ID (no pre nor su fixes, we need that to merge on it)
rename W7SUBJECT_IDS1 SUBJECTID

* Renaming SUBJECT_ID (no pre nor su fixes, we need that to merge on it)
rename W7PACS1 PAC

* Eliminating ALL underscores
foreach v of var *_* { 
	local V : subinstr local v "_" "", all
	capture rename `v' `V' 
	if _rc di as txt "problem with `v'"
} 

*saving
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W7/WorkingData/W7S1_Working.dta", replace


**************************************************************************************************
*											W7S2
**************************************************************************************************

*Open W7S2 and save a Working Copy (We wanna keep a copy of the original data)
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W7/WorkingData/W7S2.dta", replace
destring, replace
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W7/WorkingData/W7S2_Working.dta", replace

* From Excel to STATA everything enters as lower case. Lets reverse it to its original: Upper Case
rename *, upper

* Now lets keep what we need
keep ///
DATE	FOD_A_3802	FOD_A_3803	FOD_A_3804	FOD_A_3805	FOD_A_3806	FOD_A_3807	FOD_A_3808	FOD_A_3809 ///
FOD_A_3810	FOD_A_3811	FOD_A_3812	FOD_A_3813	FOD_S_91389	FOD_S_91390	FOD_S_91403	FOD_S_91404	 ///
FOD_S_91409	FOD_S_91418	FOD_S_91419	FOD_S_91433	FOD_S_91562	FOD_S_91563	FOD_S_91564	FOD_S_91565	 ///
FOD_S_91570	FOD_S_91572	FOD_S_91574	FOD_S_91576	FOD_S_91582	FOD_S_91584	FOD_S_91585	FOD_S_91586	 ///
FOD_S_91587	FOD_S_91588	FOD_S_91589	FOD_S_91590	FOD_S_91591	FOD_S_91592	FOD_S_91593	FOD_S_91594	 ///
FOD_S_91595	FOD_S_91596	FOD_S_91597	FOD_S_91598	FOD_S_91599	FOD_S_91600	FOD_S_91601	FOD_S_91602	 ///
GRP_20700	GRP_20701	GRP_20702	GRP_20703	GRP_20704	GRP_20705	GRP_20706	GRP_20707	 ///
GRP_20708	GRP_20709	GRP_20710	GRP_20711	GRP_20712	GRP_20713	GRP_20714	GRP_20715	 ///
SUBJECT_ID	TIME	TIME_BEGIN_FLOWPHASE	TIME_BEGIN_SUBSTAGE	TIME_END_FLOWPHASE	TOD_A_3802	 ///
TOD_A_3803	TOD_A_3804	TOD_A_3805	TOD_A_3806	TOD_A_3807	TOD_A_3808	TOD_A_3809	TOD_A_3810	 ///
TOD_A_3811	TOD_A_3812	TOD_A_3813	TOD_S_91389	TOD_S_91390	TOD_S_91403	TOD_S_91404	TOD_S_91409	 ///
TOD_S_91418	TOD_S_91419	TOD_S_91433	TOD_S_91562	TOD_S_91563	TOD_S_91564	TOD_S_91565	TOD_S_91570	 ///
TOD_S_91572	TOD_S_91574	TOD_S_91576	TOD_S_91582	TOD_S_91584	TOD_S_91585	TOD_S_91586	TOD_S_91587	 ///
TOD_S_91588	TOD_S_91589	TOD_S_91590	TOD_S_91591	TOD_S_91592	TOD_S_91593	TOD_S_91594	TOD_S_91595	 ///
TOD_S_91596	TOD_S_91597	TOD_S_91598	TOD_S_91599	TOD_S_91600	TOD_S_91601	TOD_S_91602	 ///
TOTAL_FLOW_ACCESSED	TTO_A_3802	TTO_A_3803	TTO_A_3804	TTO_A_3805	TTO_A_3806	TTO_A_3807	TTO_A_3808  ///
TTO_A_3809 TTO_A_3810	TTO_A_3811	TTO_A_3812	TTO_A_3813	TTO_S_91389	TTO_S_91390	TTO_S_91403	 ///
TTO_S_91404	TTO_S_91409	TTO_S_91418	TTO_S_91419	TTO_S_91433	TTO_S_91562	TTO_S_91563	TTO_S_91564	 ///
TTO_S_91565	TTO_S_91570	TTO_S_91572	TTO_S_91574	TTO_S_91576	TTO_S_91582	TTO_S_91584	TTO_S_91585	 ///
TTO_S_91586	TTO_S_91587	TTO_S_91588	TTO_S_91589	TTO_S_91590	TTO_S_91591	TTO_S_91592	TTO_S_91593	 ///
TTO_S_91594	TTO_S_91595	TTO_S_91596	TTO_S_91597	TTO_S_91598	TTO_S_91599	TTO_S_91600	TTO_S_91601	 ///
TTO_S_91602	WORDS_A_3802	WORDS_A_3803	WORDS_A_3804	WORDS_A_3805	WORDS_A_3806	WORDS_A_3807	 ///
WORDS_A_3808	WORDS_A_3809	WORDS_A_3810	WORDS_A_3811	WORDS_A_3812	WORDS_A_3813

* Adding Prefixes and Suffixes
foreach x of var * {
rename `x' W7`x'
}
 
foreach x of var * {
rename `x' `x'S2
}

* Renaming SUBJECT_ID (no pre nor su fixes, we need that to merge on it)
rename W7SUBJECT_IDS2 SUBJECT_ID 

* Eliminating ALL underscores
foreach v of var *_* { 
	local V : subinstr local v "_" "", all
	capture rename `v' `V' 
	if _rc di as txt "problem with `v'"
} 

*saving
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W7/WorkingData/W7S2_Working.dta", replace


**************************************************************************************************
*											W7S3
**************************************************************************************************

*Open W7S3 and save a Working Copy (We wanna keep a copy of the original data)
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W7/WorkingData/W7S3.dta", replace
destring, replace
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W7/WorkingData/W7S3_Working.dta", replace

* From Excel to STATA everything enters as lower case. Lets reverse it to its original: Upper Case
rename *, upper

* Now lets keep what we need
keep ///
DATE	FOD_A_3800	FOD_A_3801	FOD_S_91302	FOD_S_91303	FOD_S_91304	FOD_S_91305	FOD_S_91307	FOD_S_91308	 ///
FOD_S_91309	FOD_S_91310	FOD_S_91311	FOD_S_91312	FOD_S_91313	FOD_S_91317	FOD_S_91318	FOD_S_91319	FOD_S_91323	 ///
FOD_S_91327	FOD_S_91328	FOD_S_91329	FOD_S_91330	FOD_S_91334	FOD_S_91335	FOD_S_91337	FOD_S_91340	FOD_S_91341	 ///
FOD_S_91342	FOD_S_91343	FOD_S_91344	FOD_S_91345	FOD_S_91346	FOD_S_91347	FOD_S_91348	FOD_S_91349	FOD_S_91350	 ///
FOD_S_91351	FOD_S_91352	FOD_S_91353	FOD_S_91354	FOD_S_91355	FOD_S_91356	FOD_S_91357	FOD_S_91358	FOD_S_91359	 ///
FOD_S_91360	FOD_S_91362	FOD_S_91363	FOD_S_91365	FOD_S_91366	FOD_S_91367	FOD_S_91369	FOD_S_91370	FOD_S_91371	 ///
FOD_S_91372	FOD_S_91374	FOD_S_91375	FOD_S_91376	FOD_S_91377	FOD_S_91378	FOD_S_91379	FOD_S_91380	FOD_S_91381	 ///
FOD_S_91382	FOD_S_91383	FOD_S_91384	FOD_S_91385	FOD_S_91386	FOD_S_91387	FOD_S_91388	FOD_S_91389	FOD_S_91390	 ///
FOD_S_91391	FOD_S_91392	FOD_S_91393	FOD_S_91394	FOD_S_91395	FOD_S_91396	FOD_S_91397	FOD_S_91398	FOD_S_91399	 ///
FOD_S_91400	FOD_S_91401	FOD_S_91402	FOD_S_91403	FOD_S_91404	FOD_S_91405	FOD_S_91406	FOD_S_91407	FOD_S_91408	 ///
FOD_S_91409	FOD_S_91410	FOD_S_91411	FOD_S_91412	FOD_S_91413	FOD_S_91414	FOD_S_91415	FOD_S_91416	FOD_S_91417	 ///
FOD_S_91418	FOD_S_91419	FOD_S_91420	FOD_S_91421	FOD_S_91422	FOD_S_91423	FOD_S_91424	FOD_S_91425	FOD_S_91426	 ///
FOD_S_91427	FOD_S_91428	FOD_S_91429	FOD_S_91430	FOD_S_91431	FOD_S_91432	FOD_S_91433	FOD_S_91434	FOD_S_91435	 ///
FOD_S_91436	FOD_S_91437	FOD_S_91438	FOD_S_91439	FOD_S_91440	FOD_S_91441	FOD_S_91443	FOD_S_91444	FOD_S_91445	 ///
FOD_S_91447	FOD_S_91448	FOD_S_91449	FOD_S_91450	FOD_S_91451	FOD_S_91454	FOD_S_91455	FOD_S_91456	FOD_S_91457	 ///
FOD_S_91458	FOD_S_91459	FOD_S_91460	FOD_S_91466	FOD_S_91467	FOD_S_91468	FOD_S_91469	FOD_S_91470	FOD_S_91471	 ///
FOD_S_91472	FOD_S_91473	FOD_S_91474	FOD_S_91478	FOD_S_91481	FOD_S_91483	FOD_S_91485	FOD_S_91486	FOD_S_91489	 ///
FOD_S_91490	FOD_S_91491	FOD_S_91492	FOD_S_91493	FOD_S_91494	FOD_S_91495	FOD_S_91496	FOD_S_91497	FOD_S_91498	 ///
FOD_S_91499	FOD_S_91500	FOD_S_91501	FOD_S_91502	FOD_S_91503	FOD_S_91504	FOD_S_91505	FOD_S_91506	FOD_S_91508	 ///
FOD_S_91509	FOD_S_91510	FOD_S_91512	FOD_S_91516	FOD_S_91518	FOD_S_91521	FOD_S_91522	FOD_S_91523	FOD_S_91525	 ///
FOD_S_91535	FOD_S_91536	FOD_S_91537	FOD_S_91538	FOD_S_91541	FOD_S_91542	FOD_S_91547	FOD_S_91548	FOD_S_91549	 ///
FOD_S_91550	FOD_S_91551	FOD_S_91556	FOD_S_91557	FOD_S_91558	FOD_S_91559	FOD_S_91560	FOD_S_91561	FOD_S_91562	 ///
FOD_S_91563	FOD_S_91564	FOD_S_91565	FOD_S_91570	FOD_S_91572	FOD_S_91574	FOD_S_91576	FOD_S_91582	FOD_S_91584	 ///
FOD_S_91585	FOD_S_91586	FOD_S_91587	FOD_S_91588	FOD_S_91589	FOD_S_91590	FOD_S_91591	FOD_S_91592	FOD_S_91593	 ///
FOD_S_91594	FOD_S_91595	FOD_S_91596	FOD_S_91597	FOD_S_91598	FOD_S_91599	FOD_S_91600	FOD_S_91601	FOD_S_91602	 ///
GRP_20700	GRP_20701	GRP_20702	GRP_20703	GRP_20704	GRP_20705	GRP_20706	GRP_20707	GRP_20708	 ///
GRP_20709	GRP_20710	GRP_20711	GRP_20712	GRP_20713	GRP_20714	GRP_20715	GRP_20716	GRP_20717	 ///
GRP_20719	GRP_20723	GRP_20724	GRP_20725	GRP_20726	GRP_20727	GRP_20729	GRP_20730	GRP_20731	 ///
GRP_20733	GRP_20734	GRP_20735	GRP_20738	GRP_20739	GRP_20740	GRP_20741	GRP_20742	GRP_20743	 ///
GRP_20744	GRP_20745	GRP_20746	GRP_20747	GRP_20748	GRP_20749	GRP_20750	GRP_20751	GRP_20752	 ///
GRP_20753	GRP_20758	GRP_20760	GRP_20762	GRP_20764	GRP_20765	GRP_20766	GRP_20767	SUBJECT_ID	 ///
TIME	TIME_BEGIN_FLOWPHASE	TIME_BEGIN_SUBSTAGE	TIME_END_FLOWPHASE	TOD_A_3800	TOD_A_3801	TOD_S_91302	 ///
TOD_S_91303	TOD_S_91304	TOD_S_91305	TOD_S_91307	TOD_S_91308	TOD_S_91309	TOD_S_91310	TOD_S_91311	TOD_S_91312	 ///
TOD_S_91313	TOD_S_91317	TOD_S_91318	TOD_S_91319	TOD_S_91323	TOD_S_91327	TOD_S_91328	TOD_S_91329	TOD_S_91330	 ///
TOD_S_91334	TOD_S_91335	TOD_S_91337	TOD_S_91340	TOD_S_91341	TOD_S_91342	TOD_S_91343	TOD_S_91344	TOD_S_91345	 ///
TOD_S_91346	TOD_S_91347	TOD_S_91348	TOD_S_91349	TOD_S_91350	TOD_S_91351	TOD_S_91352	TOD_S_91353	TOD_S_91354	 ///
TOD_S_91355	TOD_S_91356	TOD_S_91357	TOD_S_91358	TOD_S_91359	TOD_S_91360	TOD_S_91362	TOD_S_91363	TOD_S_91365	 ///
TOD_S_91366	TOD_S_91367	TOD_S_91369	TOD_S_91370	TOD_S_91371	TOD_S_91372	TOD_S_91374	TOD_S_91375	TOD_S_91376	 ///
TOD_S_91377	TOD_S_91378	TOD_S_91379	TOD_S_91380	TOD_S_91381	TOD_S_91382	TOD_S_91383	TOD_S_91384	TOD_S_91385	 ///
TOD_S_91386	TOD_S_91387	TOD_S_91388	TOD_S_91389	TOD_S_91390	TOD_S_91391	TOD_S_91392	TOD_S_91393	TOD_S_91394	 ///
TOD_S_91395	TOD_S_91396	TOD_S_91397	TOD_S_91398	TOD_S_91399	TOD_S_91400	TOD_S_91401	TOD_S_91402	TOD_S_91403	 ///
TOD_S_91404	TOD_S_91405	TOD_S_91406	TOD_S_91407	TOD_S_91408	TOD_S_91409	TOD_S_91410	TOD_S_91411	TOD_S_91412	 ///
TOD_S_91413	TOD_S_91414	TOD_S_91415	TOD_S_91416	TOD_S_91417	TOD_S_91418	TOD_S_91419	TOD_S_91420	TOD_S_91421	 ///
TOD_S_91422	TOD_S_91423	TOD_S_91424	TOD_S_91425	TOD_S_91426	TOD_S_91427	TOD_S_91428	TOD_S_91429	TOD_S_91430	 ///
TOD_S_91431	TOD_S_91432	TOD_S_91433	TOD_S_91434	TOD_S_91435	TOD_S_91436	TOD_S_91437	TOD_S_91438	TOD_S_91439	 ///
TOD_S_91440	TOD_S_91441	TOD_S_91443	TOD_S_91444	TOD_S_91445	TOD_S_91447	TOD_S_91448	TOD_S_91449	TOD_S_91450	 ///
TOD_S_91451	TOD_S_91454	TOD_S_91455	TOD_S_91456	TOD_S_91457	TOD_S_91458	TOD_S_91459	TOD_S_91460	TOD_S_91466	 ///
TOD_S_91467	TOD_S_91468	TOD_S_91469	TOD_S_91470	TOD_S_91471	TOD_S_91472	TOD_S_91473	TOD_S_91474	TOD_S_91478	 ///
TOD_S_91481	TOD_S_91483	TOD_S_91485	TOD_S_91486	TOD_S_91489	TOD_S_91490	TOD_S_91491	TOD_S_91492	TOD_S_91493	 ///
TOD_S_91494	TOD_S_91495	TOD_S_91496	TOD_S_91497	TOD_S_91498	TOD_S_91499	TOD_S_91500	TOD_S_91501	TOD_S_91502	 ///
TOD_S_91503	TOD_S_91504	TOD_S_91505	TOD_S_91506	TOD_S_91508	TOD_S_91509	TOD_S_91510	TOD_S_91512	TOD_S_91516	 ///
TOD_S_91518	TOD_S_91521	TOD_S_91522	TOD_S_91523	TOD_S_91525	TOD_S_91535	TOD_S_91536	TOD_S_91537	TOD_S_91538	 ///
TOD_S_91541	TOD_S_91542	TOD_S_91547	TOD_S_91548	TOD_S_91549	TOD_S_91550	TOD_S_91551	TOD_S_91556	TOD_S_91557	 ///
TOD_S_91558	TOD_S_91559	TOD_S_91560	TOD_S_91561	TOD_S_91562	TOD_S_91563	TOD_S_91564	TOD_S_91565	TOD_S_91570	 ///
TOD_S_91572	TOD_S_91574	TOD_S_91576	TOD_S_91582	TOD_S_91584	TOD_S_91585	TOD_S_91586	TOD_S_91587	TOD_S_91588	 ///
TOD_S_91589	TOD_S_91590	TOD_S_91591	TOD_S_91592	TOD_S_91593	TOD_S_91594	TOD_S_91595	TOD_S_91596	TOD_S_91597	 ///
TOD_S_91598	TOD_S_91599	TOD_S_91600	TOD_S_91601	TOD_S_91602	TOTAL_FLOW_ACCESSED	TTO_A_3800	TTO_A_3801	 ///
TTO_S_91302	TTO_S_91303	TTO_S_91304	TTO_S_91305	TTO_S_91307	TTO_S_91308	TTO_S_91309	TTO_S_91310	TTO_S_91311	 ///
TTO_S_91312	TTO_S_91313	TTO_S_91317	TTO_S_91318	TTO_S_91319	TTO_S_91323	TTO_S_91327	TTO_S_91328	TTO_S_91329	 ///
TTO_S_91330	TTO_S_91334	TTO_S_91335	TTO_S_91337	TTO_S_91340	TTO_S_91341	TTO_S_91342	TTO_S_91343	TTO_S_91344	 ///
TTO_S_91345	TTO_S_91346	TTO_S_91347	TTO_S_91348	TTO_S_91349	TTO_S_91350	TTO_S_91351	TTO_S_91352	TTO_S_91353	 ///
TTO_S_91354	TTO_S_91355	TTO_S_91356	TTO_S_91357	TTO_S_91358	TTO_S_91359	TTO_S_91360	TTO_S_91362	TTO_S_91363	 ///
TTO_S_91365	TTO_S_91366	TTO_S_91367	TTO_S_91369	TTO_S_91370	TTO_S_91371	TTO_S_91372	TTO_S_91374	TTO_S_91375	 ///
TTO_S_91376	TTO_S_91377	TTO_S_91378	TTO_S_91379	TTO_S_91380	TTO_S_91381	TTO_S_91382	TTO_S_91383	TTO_S_91384	 ///
TTO_S_91385	TTO_S_91386	TTO_S_91387	TTO_S_91388	TTO_S_91389	TTO_S_91390	TTO_S_91391	TTO_S_91392	TTO_S_91393	 ///
TTO_S_91394	TTO_S_91395	TTO_S_91396	TTO_S_91397	TTO_S_91398	TTO_S_91399	TTO_S_91400	TTO_S_91401	TTO_S_91402	 ///
TTO_S_91403	TTO_S_91404	TTO_S_91405	TTO_S_91406	TTO_S_91407	TTO_S_91408	TTO_S_91409	TTO_S_91410	TTO_S_91411	 ///
TTO_S_91412	TTO_S_91413	TTO_S_91414	TTO_S_91415	TTO_S_91416	TTO_S_91417	TTO_S_91418	TTO_S_91419	TTO_S_91420	 ///
TTO_S_91421	TTO_S_91422	TTO_S_91423	TTO_S_91424	TTO_S_91425	TTO_S_91426	TTO_S_91427	TTO_S_91428	TTO_S_91429	 ///
TTO_S_91430	TTO_S_91431	TTO_S_91432	TTO_S_91433	TTO_S_91434	TTO_S_91435	TTO_S_91436	TTO_S_91437	TTO_S_91438	 ///
TTO_S_91439	TTO_S_91440	TTO_S_91441	TTO_S_91443	TTO_S_91444	TTO_S_91445	TTO_S_91447	TTO_S_91448	TTO_S_91449	 ///
TTO_S_91450	TTO_S_91451	TTO_S_91454	TTO_S_91455	TTO_S_91456	TTO_S_91457	TTO_S_91458	TTO_S_91459	TTO_S_91460	 ///
TTO_S_91466	TTO_S_91467	TTO_S_91468	TTO_S_91469	TTO_S_91470	TTO_S_91471	TTO_S_91472	TTO_S_91473	TTO_S_91474	 ///
TTO_S_91478	TTO_S_91481	TTO_S_91483	TTO_S_91485	TTO_S_91486	TTO_S_91489	TTO_S_91490	TTO_S_91491	TTO_S_91492	 ///
TTO_S_91493	TTO_S_91494	TTO_S_91495	TTO_S_91496	TTO_S_91497	TTO_S_91498	TTO_S_91499	TTO_S_91500	TTO_S_91501	 ///
TTO_S_91502	TTO_S_91503	TTO_S_91504	TTO_S_91505	TTO_S_91506	TTO_S_91508	TTO_S_91509	TTO_S_91510	TTO_S_91512	 ///
TTO_S_91516	TTO_S_91518	TTO_S_91521	TTO_S_91522	TTO_S_91523	TTO_S_91525	TTO_S_91535	TTO_S_91536	TTO_S_91537	 ///
TTO_S_91538	TTO_S_91541	TTO_S_91542	TTO_S_91547	TTO_S_91548	TTO_S_91549	TTO_S_91550	TTO_S_91551	TTO_S_91556	 ///
TTO_S_91557	TTO_S_91558	TTO_S_91559	TTO_S_91560	TTO_S_91561	TTO_S_91562	TTO_S_91563	TTO_S_91564	TTO_S_91565	 ///
TTO_S_91570	TTO_S_91572	TTO_S_91574	TTO_S_91576	TTO_S_91582	TTO_S_91584	TTO_S_91585	TTO_S_91586	TTO_S_91587	 ///
TTO_S_91588	TTO_S_91589	TTO_S_91590	TTO_S_91591	TTO_S_91592	TTO_S_91593	TTO_S_91594	TTO_S_91595	TTO_S_91596	 ///
TTO_S_91597	TTO_S_91598	TTO_S_91599	TTO_S_91600	TTO_S_91601	TTO_S_91602	WORDS_A_3800	WORDS_A_3801 ///

* Adding Prefixes and Suffixes
foreach x of var * {
rename `x' W7`x'
}
 
foreach x of var * {
rename `x' `x'S3
}

* Renaming SUBJECT_ID (no pre nor su fixes, we need that to merge on it)
rename W7SUBJECT_IDS3 SUBJECT_ID 

* Eliminating ALL underscores
foreach v of var *_* { 
	local V : subinstr local v "_" "", all
	capture rename `v' `V' 
	if _rc di as txt "problem with `v'"
} 

*saving
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W7/WorkingData/W7S3_Working.dta", replace


**************************************************************************************************
*											W7S4
**************************************************************************************************

*Open W7S4 and save a Working Copy (We wanna keep a copy of the original data)
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W7/WorkingData/W7S4.dta", replace
destring, replace
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W7/WorkingData/W7S4_Working.dta", replace

* From Excel to STATA everything enters as lower case. Lets reverse it to its original: Upper Case
rename *, upper

* Now lets keep what we need
keep ///
DATE FOD_A_3798 GRP_20721 GRP_20722 Q_5988_DUR_32273 Q_5988_DUR_32274 Q_5988_SEQ_32273 Q_5988_SEQ_32274 ///
Q_5988_VAL_32273 Q_5988_VAL_32274 SUBJECT_ID TIME TIME_BEGIN_FLOWPHASE TIME_BEGIN_SUBSTAGE TIME_END_FLOWPHASE ///
TOD_A_3798 TOTAL_FLOW_ACCESSED TTO_A_3798 WORDS_A_3798


* Adding Prefixes and Suffixes
foreach x of var * {
rename `x' W7`x'
}
 
foreach x of var * {
rename `x' `x'S4
}

* Renaming SUBJECT_ID (no pre nor su fixes, we need that to merge on it)
rename W7SUBJECT_IDS4 SUBJECT_ID 

* Eliminating ALL underscores
foreach v of var *_* { 
	local V : subinstr local v "_" "", all
	capture rename `v' `V' 
	if _rc di as txt "problem with `v'"
} 

*saving
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W7/WorkingData/W7S4_Working.dta", replace


**************************************************************************************************
*							M	E	R	G	I	N	G	 		W	7
**************************************************************************************************

clear all

* Merge W7S2 with W7S1
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W7/WorkingData/W7S2_Working.dta", replace
merge 1:m SUBJECTID using "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W7/WorkingData/W7S1_Working.dta"
drop _merge
* Save W7S12
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W7/WorkingData/W7S12_Working.dta", replace

**************************************************************************************************
clear all

* Merge W7S3 with W7S4
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W7/WorkingData/W7S4_Working.dta", replace
merge 1:m SUBJECTID using "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W7/WorkingData/W7S3_Working.dta"
drop _merge
* Save W7S34
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W7/WorkingData/W7S34_Working.dta", replace

**************************************************************************************************
clear all

* Merge W7S12 with W7S34
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W7/WorkingData/W7S12_Working.dta", replace
merge 1:m SUBJECTID using "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W7/WorkingData/W7S34_Working.dta"
drop _merge
* Save W6S1234
order *, alpha


*Dropping things we won't need...
drop W7DATES2 W7DATES3 W7DATES4 W7TOTALFLOWACCESSEDS1 W7TOTALFLOWACCESSEDS4 W7TIMES2 W7TIMES3 W7TIMES4


* labeling


label variable W7TTOA3798S4 "That's it for this Week"
label variable W7TTOA3799S1 "Whoops -- Not a Valid Subject ID"
label variable W7TODA3800S3 "Substage2and3BetwNoIntD&R"
label variable W7TODA3801S3 "Substage2and3BetwIntD&R"
label variable W7TTOA3802S2 "WelcomeWk7DIntImp"
label variable W7WORDSA3803S2 "WelcomeWk7DIntNot"
label variable W7TTOA3804S2 "WelcomeWk7DNoIntImp"
label variable W7FODA3805S2 "WelcomeWk7DNoIntNot"
label variable W7WORDSA3806S2 "WelcomeWk7RIntImp"
label variable W7TODA3807S2 "WelcomeWk7RIntNot"
label variable W7WORDSA3808S2 "WelcomeWk7RNoIntImp"
label variable W7TODA3809S2 "WelcomeWk7RNoIntNot"
label variable W7TODA3810S2 "Week7DemSmithAheadForcedView"
label variable W7FODA3811S2 "Week7DemWilsonAheadForcedView"
label variable W7WORDSA3812S2 "Week7RepJonesAheadForcedView"
label variable W7FODA3813S2 "Week7RepwilliamsAheadForcedView"
label variable W7GRP20700S3 "D02IntMainImp"
label variable W7GRP20701S2 "D04NoIntMainImp"
label variable W7GRP20702S2 "D06IntMainNot"
label variable W7GRP20703S3 "D08NoIntMainNot"
label variable W7GRP20704S2 "D01IntDiverseImp"
label variable W7GRP20705S2 "D03NoIntDiverseImp"
label variable W7GRP20706S2 "D05IntDiverseNot"
label variable W7GRP20707S2 "D07NoIntDiverseNot"
label variable W7GRP20708S2 "R09IntDiverseImp"
label variable W7GRP20709S3 "R10IntMainImp"
label variable W7GRP20710S3 "R11NoIntDiverseImp"
label variable W7GRP20711S2 "R12NoIntMainImp"
label variable W7GRP20712S2 "R13IntDiverseNot"
label variable W7GRP20713S2 "R14IntMainNot"
label variable W7GRP20714S2 "R15NoIntDiverseNot"
label variable W7GRP20715S2 "R16NoIntMainNot"
label variable W7GRP20716S3 "DMediaABCNews"
label variable W7GRP20717S3 "DMediaWireServices"
label variable W7GRP20719S3 "DMediaCNNNews"
label variable W7GRP20721S4 "DEndGroupQuestions"
label variable W7GRP20722S4 "REndGroupQuestions"
label variable W7GRP20723S3 "DMediaNBCNews"
label variable W7GRP20724S3 "DMediaNYT"
label variable W7GRP20725S3 "DMediaWSJ"
label variable W7GRP20726S3 "DAltMediaFoxNews"
label variable W7GRP20727S3 "DAltMediaHotAirBlog"
label variable W7GRP20729S3 "DAltMediaMSNBCNews"
label variable W7GRP20730S3 "DCandSmithAllMediaWebpage"
label variable W7GRP20731S3 "DCandWilsonAllMediaWebpage"
label variable W7GRP20733S3 "RCandWilliamsAllMediaWebpage"
label variable W7GRP20734S3 "DEndorsementsAllMedia"
label variable W7GRP20735S3 "REndorsementsAllMedia"
label variable W7GRP20738S3 "DOnlyMainMediaABC"
label variable W7GRP20739S3 "DOnlyMainMediaWireServices"
label variable W7GRP20740S3 "DOnlyMainMediaCBS"
label variable W7GRP20741S3 "DOnlyMainMediaCNN"
label variable W7GRP20742S3 "DOnlyMainMediaNBC"
label variable W7GRP20743S3 "DOnlyMainMediaNYT"
label variable W7GRP20744S3 "DOnlyMainMediaWSJ"
label variable W7GRP20745S3 "DCandWilsonOnlyMainWebpage"
label variable W7GRP20746S3 "DCandSmithOnlyMainWebpage"
label variable W7GRP20747S3 "DEndorsementsOnlyMain"
label variable W7GRP20748S3 "RCandJonesOnlyMainWebpage"
label variable W7GRP20749S3 "RCandWilliamsOnlyMainWebpage"
label variable W7GRP20750S3 "REndorsementsOnlyMain"
label variable W7GRP20751S3 "RAltMediaAfricanAmericanSources"
label variable W7GRP20752S3 "RAltMediaFoxNews"
label variable W7GRP20753S3 "RAltMediaLatinoSources"
label variable W7GRP20758S3 "RMediaNYT"
label variable W7GRP20760S3 "RMediaWSJ"
label variable W7GRP20762S3 "ROnlyMainMediaABC"
label variable W7GRP20764S3 "ROnlyMainMediaNYT"
label variable W7GRP20765S3 "ROnlyMainMediaWireServices"
label variable W7GRP20766S3 "ROnlyMainMediaWSJ"
label variable W7GRP20767S3 "ROnlyMainMediaCNN"
label variable W7GRP20769S1 "BeginGroup"
label variable W7GRP20770S1 "BeginGroupRepeated"
label variable W7Q5987DUR32263S1 "Subject Sign-in"
label variable W7Q5988VAL32273S4 "Wk7PersonInfoImportant"
label variable W7Q5988DUR32274S4 "Wk7PolicyInfoImportant"
label variable W7FODS91302S3 "Wk2DEndorsementAFLCIO"
label variable W7FODS91303S3 "Wk2DEndorsementChamberofCommerce"
label variable W7FODS91304S3 "Wk2REndorsemChamberofCommerceEndorsement"
label variable W7TTOS91305S3 "Wk2REndorsementAFLCIO"
label variable W7TTOS91307S3 "wk2d1NBCFOXEcon10"
label variable W7TTOS91308S3 "wk2d1REUROOTEcon18"
label variable W7TODS91309S3 "wk2d1CNNUNIEcon22"
label variable W7TODS91310S3 "wk2d2ABCABCEcon37"
label variable W7TTOS91311S3 "wk2d2APAPEcon42"
label variable W7TODS91312S3 "wk2d2NYTNYTEcon54"
label variable W7TODS91313S3 "wk2d2NBCNBCEcon62"
label variable W7FODS91317S3 "wk2r2WSJWSJEcon94"
label variable W7TODS91318S3 "wk2r1WSJHUFEcon110"
label variable W7TODS91319S3 "wk2r1ABCROOTEcon118"
label variable W7TODS91323S3 "wk2d3NBCFOXEcon10"
label variable W7TODS91327S3 "wk2r3ABCROOTEcon118"
label variable W7TODS91328S3 "wk2r3NBCUNIEcon122"
label variable W7TODS91329S3 "wk2r3APFOXEcon126"
label variable W7TTOS91330S3 "Wk1RWilliamsSlogan"
label variable W7FODS91334S3 "Wk1RWilliamsCandidatePicture"
label variable W7TTOS91335S3 "Wk1RWilliamsBackground"
label variable W7TODS91337S3 "Wk1RJonesPersonality"
label variable W7TODS91340S3 "Wk1RJonesCandidatePicture"
label variable W7TODS91341S3 "Wk1RJonesBackground"
label variable W7TODS91342S3 "Wk1DWilsonSlogan"
label variable W7TTOS91343S3 "Wk1DWilsonPersonality"
label variable W7TODS91344S3 "Wk1DWilsonFamily"
label variable W7TODS91345S3 "Wk1DWilsonExperience"
label variable W7TODS91346S3 "Wk1DWilsonCandidatePicture"
label variable W7TODS91347S3 "Wk1DWilsonBackground"
label variable W7FODS91348S3 "Wk1DSmithSlogan"
label variable W7TODS91349S3 "Wk1DSmithPersonality"
label variable W7FODS91350S3 "Wk1DSmithFamily"
label variable W7FODS91351S3 "Wk1DSmithExperience"
label variable W7TODS91352S3 "Wk1DSmithCandidatePicture"
label variable W7TTOS91353S3 "Wk1DSmithBackground"
label variable W7FODS91354S3 "SmithEducation"
label variable W7TODS91355S3 "SmithExperience"
label variable W7TODS91356S3 "SmithFamily"
label variable W7TODS91357S3 "JonesExperience"
label variable W7TTOS91358S3 "SmithReligion"
label variable W7FODS91359S3 "JonesEducation"
label variable W7TTOS91360S3 "JonesFamily"
label variable W7TODS91362S3 "JonesReligion"
label variable W7FODS91363S3 "WilsonEducation"
label variable W7FODS91365S3 "WilsonExperience"
label variable W7FODS91366S3 "WilsonFamily"
label variable W7TODS91367S3 "WilliamsReligion"
label variable W7TTOS91369S3 "WilliamsFamily"
label variable W7FODS91370S3 "WilliamsExperience"
label variable W7TTOS91371S3 "WilliamsEducation"
label variable W7TTOS91372S3 "WilsonReligion"
label variable W7TODS91374S3 "wk2DSmithJobs"
label variable W7FODS91375S3 "wk2DSmithEconPhil"
label variable W7FODS91376S3 "Wk2RJonesJobs"
label variable W7TODS91377S3 "wk2DWilsonJobs"
label variable W7FODS91378S3 "wk2DWilsonEconPhil"
label variable W7TTOS91379S3 "wk2RJonesEconPhil"
label variable W7TTOS91380S3 "Wk2RWilliamsJobs"
label variable W7TODS91381S3 "wk2RWilliamsEconPhil"
label variable W7FODS91382S3 "wk3DSmithEduc"
label variable W7FODS91383S3 "wk6DSmithHealth"
label variable W7FODS91384S3 "wk4DSmithChina"
label variable W7FODS91385S3 "wk4DSmithDefense"
label variable W7TTOS91386S3 "wk5DSmithAbortion"
label variable W7FODS91387S3 "wk5DSmithGay"
label variable W7FODS91388S3 "wk6DSmithTaxes"
label variable W7FODS91389S2 "wk7DSmithAffirm"
label variable W7TODS91390S2 "wk7DSmithImmigration"
label variable W7FODS91391S3 "wk8DSmithAfghan"
label variable W7TODS91392S3 "wk8DSmithMil"
label variable W7TTOS91393S3 "wk9DSmithDeathPen"
label variable W7TTOS91394S3 "wk9DSmithStemCells"
label variable W7FODS91395S3 "wk3DSmithSocPhil"
label variable W7FODS91396S3 "wk3DWilsonEduc"
label variable W7FODS91397S3 "wk6DWilsonHealth"
label variable W7TTOS91398S3 "wk4DWilsonChina"
label variable W7TTOS91399S3 "wk4DWilsonDefense"
label variable W7TODS91400S3 "wk5DWilsonAbortion"
label variable W7TTOS91401S3 "wk5DWilsonGay"
label variable W7TODS91402S3 "wk6DWilsonTaxes"
label variable W7FODS91403S2 "wk7DWilsonAffirm"
label variable W7FODS91404S3 "wk7DWilsonImmigration"
label variable W7FODS91405S3 "wk8DWilsonAfghan"
label variable W7FODS91406S3 "wk8DWilsonMil"
label variable W7TTOS91407S3 "wk9DWilsonDeathPen"
label variable W7TODS91408S3 "wk9DWilsonStemCells"
label variable W7FODS91409S2 "wk7RJonesImmigration"
label variable W7TTOS91410S3 "wk3DWilsonSocPhil"
label variable W7FODS91411S3 "wk3RWilliamsEduc"
label variable W7FODS91412S3 "wk3RWilliamsSocPhil"
label variable W7FODS91413S3 "wk4RWilliamsChina"
label variable W7TTOS91414S3 "wk4RWilliamsDefense"
label variable W7TODS91415S3 "wk5RWilliamsAbortion"
label variable W7TODS91416S3 "wk5RWilliamsGay"
label variable W7TTOS91417S3 "wk6RWilliamsTaxes"
label variable W7FODS91418S3 "wk7RWilliamsAffirm"
label variable W7FODS91419S2 "wk7RWilliamsImmigration"
label variable W7FODS91420S3 "wk8RWilliamsAfghan"
label variable W7FODS91421S3 "wk8RWilliamsMil"
label variable W7TODS91422S3 "wk9RWilliamsDeathPen"
label variable W7FODS91423S3 "wk9RWilliamsStemCells"
label variable W7FODS91424S3 "wk3RJonesEduc"
label variable W7FODS91425S3 "wk3RJonesSocPhil"
label variable W7TTOS91426S3 "wk4RJonesChina"
label variable W7TODS91427S3 "wk4RJonesDefense"
label variable W7TODS91428S3 "wk5RJonesAbortion"
label variable W7TTOS91429S3 "wk5RJonesGay"
label variable W7TTOS91430S3 "wk6RJonesHealth"
label variable W7FODS91431S3 "wk8JRonesAfghan"
label variable W7TTOS91432S3 "wk6RJonesTaxes"
label variable W7TTOS91433S3 "wk7RJonesAffirm"
label variable W7FODS91434S3 "wk9RJonesStemCells"
label variable W7FODS91435S3 "wk8RJonesMil"
label variable W7FODS91436S3 "wk9RJonesDeathPen"
label variable W7TODS91437S3 "wk6RWilliamsHealth"
label variable W7FODS91438S3 "wk3d1APROOT16"
label variable W7TTOS91439S3 "Wk3DEndorsementAFT"
label variable W7FODS91440S3 "Wk3DEndorsementFAIR"
label variable W7FODS91441S3 "wk3d1ABCHOT8"
label variable W7TTOS91443S3 "Wk3REndorsementAFT"
label variable W7TODS91444S3 "wk3d1NBCUNI12"
label variable W7FODS91445S3 "wk3d1NYTMSN28"
label variable W7TODS91447S3 "wk3d2REUREU48"
label variable W7TTOS91448S3 "wk3d2WSJWSJ60"
label variable W7TTOS91449S3 "wk3d2NBCNBC64"
label variable W7TTOS91450S3 "wk3d3ABCHOT8"
label variable W7TODS91451S3 "wk3r2ABCABC72"
label variable W7TTOS91454S3 "wk3d3NYTMSN28"
label variable W7TTOS91455S3 "wk3r2APAP80"
label variable W7FODS91456S3 "wk3r3REUBET100"
label variable W7FODS91457S3 "wk3r3CNNLAT101"
label variable W7TODS91458S3 "wk3r2NYTNYT92"
label variable W7TTOS91459S3 "wk3r2WSJWSJ96"
label variable W7TODS91460S3 "wk3r3CBSFOX116"
label variable W7FODS91466S3 "wk4d1CBSFOXFor3"
label variable W7FODS91467S3 "wk4d1ABCHUFFor7"
label variable W7FODS91468S3 "wk4d1CNNBETFor23"
label variable W7FODS91469S3 "wk4d1WSJLATFor31"
label variable W7FODS91470S3 "wk4d2APAPFor43"
label variable W7FODS91471S3 "wk4d2REUREUFor47"
label variable W7TODS91472S3 "wk4d2NYTNYTFor55"
label variable W7TTOS91473S3 "wk4d2NBCNBCFor63"
label variable W7FODS91474S3 "wk4d3CBSFOXFor3"
label variable W7TODS91478S3 "wk4r2ABCABCFor71"
label variable W7FODS91481S3 "wk4r2NYTNYTFor91"
label variable W7TODS91483S3 "wk4r1WSJHOTFor111"
label variable W7TTOS91485S3 "wk4r1APLATFor127"
label variable W7TODS91486S3 "wk4r3CNNROOTFor103"
label variable W7TODS91489S3 "wk4r3APLATFor127"
label variable W7FODS91490S3 "Wk4DEndorsementNCLR"
label variable W7FODS91491S3 "Wk4DEndorsementHeritage"
label variable W7FODS91492S3 "Wk4DEndorsementVFW"
label variable W7TODS91493S3 "Wk4REndorsementNCLR"
label variable W7FODS91494S3 "Wk4REndorsementHeritage"
label variable W7FODS91495S3 "WK4REndorsementVFW"
label variable W7TTOS91496S3 "Wk5DEndorsementHumanRtsCamp"
label variable W7FODS91497S3 "Wk5DEndorsementFamResearchCouncil"
label variable W7FODS91498S3 "Wk5REndorsementHumanRtsCamp"
label variable W7FODS91499S3 "Wk5DEndorsementNRL"
label variable W7TTOS91500S3 "Wk5REndorsementNRL"
label variable W7FODS91501S3 "Wk5REndorsementFamResearchCouncil"
label variable W7TTOS91502S3 "wk5r1WSJBETCult109"
label variable W7TTOS91503S3 "wk5d1ABCHUFCult5"
label variable W7TODS91504S3 "wk5d1NBCHOTCult9"
label variable W7TODS91505S3 "wk5d1CNNLATCult21"
label variable W7TTOS91506S3 "wk5d1NYTBETCult25"
label variable W7FODS91508S3 "wk5d2APAPCult41"
label variable W7TTOS91509S3 "wk5d2REUREUCult45"
label variable W7TODS91510S3 "wk5d2WSJWSJCult57"
label variable W7TTOS91512S3 "wk5d3NBCHOTCult9"
label variable W7FODS91516S3 "wk5r1ABCHOTCult117"
label variable W7FODS91518S3 "wk5r1APMSNCult125"
label variable W7TTOS91521S3 "wk5r2CNNCNNCult85"
label variable W7TTOS91522S3 "wk5r2NYTNYTCult89"
label variable W7TODS91523S3 "wk5r3WSJBETCult109"
label variable W7TODS91525S3 "wk5r3NBCLATCult121"
label variable W7FODS91535S3 "wk6r1CNNMSNEcon102"
label variable W7TODS91536S3 "wk6r1NYTBETEcon106"
label variable W7TTOS91537S3 "wk6d1APHOTEcon14"
label variable W7FODS91538S3 "wk6d1NYTBETEcon26"
label variable W7FODS91541S3 "wk6r3REULATEcon98"
label variable W7TODS91542S3 "wk6r3NYTBETEcon106"
label variable W7TTOS91547S3 "wk6d2REUREUEcon46"
label variable W7FODS91548S3 "wk6d2CNNCNNEcon50"
label variable W7FODS91549S3 "wk6d2WSJWSJEcon58"
label variable W7FODS91550S3 "wk6d3ABCMSNEcon6"
label variable W7FODS91551S3 "wk6d3APHOTEcon14"
label variable W7FODS91556S3 "Wk6DEndorsementADA"
label variable W7TODS91557S3 "Wk6DEndorsementNTU"
label variable W7FODS91558S3 "Wk6DEndorsementAFSCME"
label variable W7TODS91559S3 "Wk6REndorsementADA"
label variable W7TODS91560S3 "Wk6REndorsementNTU"
label variable W7TODS91561S3 "Wk6REndorsementAFSCME"
label variable W7TODS91562S3 "Wk7DEndorsementNAACP"
label variable W7FODS91563S3 "Wk7DEndorsementACU"
label variable W7TTOS91564S2 "Wk7REndorsementACU"
label variable W7TTOS91565S3 "Wk7REndorsementNAACP"
label variable W7TTOS91570S2 "wk7r2CBSCBSsoc68"
label variable W7TODS91572S3 "wk7r2NBCNBC76"
label variable W7FODS91574S2 "wk7r2REUREU84"
label variable W7TTOS91576S3 "wk7r2CNNCNN88"
label variable W7FODS91582S3 "wk7r1NYTROOT108"
label variable W7TODS91584S3 "wk7r1WSJUNI112"
label variable W7TODS91585S3 "wk7r1ABCMSN120"
label variable W7TTOS91586S2 "wk7r1APHOT128"
label variable W7FODS91587S2 "wk7r3NYTROOT108"
label variable W7TTOS91588S2 "wk7d3CBSROOTSoc4"
label variable W7TODS91589S2 "wk7r3WSJUNI112"
label variable W7FODS91590S2 "wk7d3REUBET20"
label variable W7TODS91591S3 "wk7r3ABCMSN120"
label variable W7TTOS91592S2 "wk7d3CNNLAT24"
label variable W7TODS91593S2 "wk7d3WSJHUF32"
label variable W7TTOS91594S2 "wk7r3APHOT128"
label variable W7FODS91595S2 "wk7d1CBSROOTSoc4"
label variable W7FODS91596S2 "wk7d1REUBET20"
label variable W7FODS91597S2 "wk7d1CNNLAT24"
label variable W7TTOS91598S2 "wk7d1WSJHUF32"
label variable W7TTOS91599S2 "wk7d2ABCABC40"
label variable W7TTOS91600S2 "wk7d2APAP44"
label variable W7TTOS91601S3 "wk7d2CNNCNN52"
label variable W7TODS91602S2 "wk7d2NYTNYT56"
label variable W7WORDSA3798S4 "That's it for this Week"
label variable W7TODA3798S4 "That's it for this Week"
label variable W7FODA3798S4 "That's it for this Week"
label variable W7TODA3799S1 "Whoops -- Not a Valid Subject ID"
label variable W7FODA3799S1 "Whoops -- Not a Valid Subject ID"
label variable W7WORDSA3799S1 "Whoops -- Not a Valid Subject ID"
label variable W7TTOA3800S3 "Substage2and3BetwNoIntD&R"
label variable W7WORDSA3800S3 "Substage2and3BetwNoIntD&R"
label variable W7FODA3800S3 "Substage2and3BetwNoIntD&R"
label variable W7TTOA3801S3 "Substage2and3BetwIntD&R"
label variable W7WORDSA3801S3 "Substage2and3BetwIntD&R"
label variable W7FODA3801S3 "Substage2and3BetwIntD&R"
label variable W7TODA3802S2 "WelcomeWk7DIntImp"
label variable W7FODA3802S2 "WelcomeWk7DIntImp"
label variable W7WORDSA3802S2 "WelcomeWk7DIntImp"
label variable W7TTOA3803S2 "WelcomeWk7DIntNot"
label variable W7TODA3803S2 "WelcomeWk7DIntNot"
label variable W7FODA3803S2 "WelcomeWk7DIntNot"
label variable W7TODA3804S2 "WelcomeWk7DNoIntImp"
label variable W7WORDSA3804S2 "WelcomeWk7DNoIntImp"
label variable W7FODA3804S2 "WelcomeWk7DNoIntImp"
label variable W7WORDSA3805S2 "WelcomeWk7DNoIntNot"
label variable W7TTOA3805S2 "WelcomeWk7DNoIntNot"
label variable W7TODA3805S2 "WelcomeWk7DNoIntNot"
label variable W7TTOA3806S2 "WelcomeWk7RIntImp"
label variable W7FODA3806S2 "WelcomeWk7RIntImp"
label variable W7TODA3806S2 "WelcomeWk7RIntImp"
label variable W7WORDSA3807S2 "WelcomeWk7RIntNot"
label variable W7FODA3807S2 "WelcomeWk7RIntNot"
label variable W7TTOA3807S2 "WelcomeWk7RIntNot"
label variable W7FODA3808S2 "WelcomeWk7RNoIntImp"
label variable W7TTOA3808S2 "WelcomeWk7RNoIntImp"
label variable W7TODA3808S2 "WelcomeWk7RNoIntImp"
label variable W7TTOA3809S2 "WelcomeWk7RNoIntNot"
label variable W7FODA3809S2 "WelcomeWk7RNoIntNot"
label variable W7WORDSA3809S2 "WelcomeWk7RNoIntNot"
label variable W7TTOA3810S2 "Week7DemSmithAheadForcedView"
label variable W7WORDSA3810S2 "Week7DemSmithAheadForcedView"
label variable W7FODA3810S2 "Week7DemSmithAheadForcedView"
label variable W7WORDSA3811S2 "Week7DemWilsonAheadForcedView"
label variable W7TTOA3811S2 "Week7DemWilsonAheadForcedView"
label variable W7TODA3811S2 "Week7DemWilsonAheadForcedView"
label variable W7FODA3812S2 "Week7RepJonesAheadForcedView"
label variable W7TODA3812S2 "Week7RepJonesAheadForcedView"
label variable W7TTOA3812S2 "Week7RepJonesAheadForcedView"
label variable W7WORDSA3813S2 "Week7RepwilliamsAheadForcedView"
label variable W7TODA3813S2 "Week7RepwilliamsAheadForcedView"
label variable W7TTOA3813S2 "Week7RepwilliamsAheadForcedView"
label variable W7GRP20700S2 "D02IntMainImp"
label variable W7GRP20701S3 "D04NoIntMainImp"
label variable W7GRP20702S3 "D06IntMainNot"
label variable W7GRP20703S2 "D08NoIntMainNot"
label variable W7GRP20704S3 "D01IntDiverseImp"
label variable W7GRP20705S3 "D03NoIntDiverseImp"
label variable W7GRP20706S3 "D05IntDiverseNot"
label variable W7GRP20707S3 "D07NoIntDiverseNot"
label variable W7GRP20708S3 "R09IntDiverseImp"
label variable W7GRP20709S2 "R10IntMainImp"
label variable W7GRP20710S2 "R11NoIntDiverseImp"
label variable W7GRP20711S3 "R12NoIntMainImp"
label variable W7GRP20712S3 "R13IntDiverseNot"
label variable W7GRP20713S3 "R14IntMainNot"
label variable W7GRP20714S3 "R15NoIntDiverseNot"
label variable W7GRP20715S3 "R16NoIntMainNot"
label variable W7Q5987SEQ32263S1 "Subject Sign-in"
label variable W7Q5988SEQ32273S4 "Wk7PersonInfoImportant"
label variable W7Q5988DUR32273S4 "Wk7PersonInfoImportant"
label variable W7Q5988SEQ32274S4 "Wk7PolicyInfoImportant"
label variable W7Q5988VAL32274S4 "Wk7PolicyInfoImportant"
label variable W7TTOS91302S3 "Wk2DEndorsementAFLCIO"
label variable W7TODS91302S3 "Wk2DEndorsementAFLCIO"
label variable W7TTOS91303S3 "Wk2DEndorsementChamberofCommerce"
label variable W7TODS91303S3 "Wk2DEndorsementChamberofCommerce"
label variable W7TTOS91304S3 "Wk2REndorsemChamberofCommerceEndorsement"
label variable W7TODS91304S3 "Wk2REndorsemChamberofCommerceEndorsement"
label variable W7FODS91305S3 "Wk2REndorsementAFLCIO"
label variable W7TODS91305S3 "Wk2REndorsementAFLCIO"
label variable W7FODS91307S3 "wk2d1NBCFOXEcon10"
label variable W7TODS91307S3 "wk2d1NBCFOXEcon10"
label variable W7TODS91308S3 "wk2d1REUROOTEcon18"
label variable W7FODS91308S3 "wk2d1REUROOTEcon18"
label variable W7TTOS91309S3 "wk2d1CNNUNIEcon22"
label variable W7FODS91309S3 "wk2d1CNNUNIEcon22"
label variable W7TTOS91310S3 "wk2d2ABCABCEcon37"
label variable W7FODS91310S3 "wk2d2ABCABCEcon37"
label variable W7FODS91311S3 "wk2d2APAPEcon42"
label variable W7TODS91311S3 "wk2d2APAPEcon42"
label variable W7TTOS91312S3 "wk2d2NYTNYTEcon54"
label variable W7FODS91312S3 "wk2d2NYTNYTEcon54"
label variable W7TTOS91313S3 "wk2d2NBCNBCEcon62"
label variable W7FODS91313S3 "wk2d2NBCNBCEcon62"
label variable W7TTOS91317S3 "wk2r2WSJWSJEcon94"
label variable W7TODS91317S3 "wk2r2WSJWSJEcon94"
label variable W7FODS91318S3 "wk2r1WSJHUFEcon110"
label variable W7TTOS91318S3 "wk2r1WSJHUFEcon110"
label variable W7TTOS91319S3 "wk2r1ABCROOTEcon118"
label variable W7FODS91319S3 "wk2r1ABCROOTEcon118"
label variable W7FODS91323S3 "wk2d3NBCFOXEcon10"
label variable W7TTOS91323S3 "wk2d3NBCFOXEcon10"
label variable W7FODS91327S3 "wk2r3ABCROOTEcon118"
label variable W7TTOS91327S3 "wk2r3ABCROOTEcon118"
label variable W7FODS91328S3 "wk2r3NBCUNIEcon122"
label variable W7TTOS91328S3 "wk2r3NBCUNIEcon122"
label variable W7TTOS91329S3 "wk2r3APFOXEcon126"
label variable W7FODS91329S3 "wk2r3APFOXEcon126"
label variable W7TODS91330S3 "Wk1RWilliamsSlogan"
label variable W7FODS91330S3 "Wk1RWilliamsSlogan"
label variable W7TTOS91334S3 "Wk1RWilliamsCandidatePicture"
label variable W7TODS91334S3 "Wk1RWilliamsCandidatePicture"
label variable W7TODS91335S3 "Wk1RWilliamsBackground"
label variable W7FODS91335S3 "Wk1RWilliamsBackground"
label variable W7FODS91337S3 "Wk1RJonesPersonality"
label variable W7TTOS91337S3 "Wk1RJonesPersonality"
label variable W7FODS91340S3 "Wk1RJonesCandidatePicture"
label variable W7TTOS91340S3 "Wk1RJonesCandidatePicture"
label variable W7FODS91341S3 "Wk1RJonesBackground"
label variable W7TTOS91341S3 "Wk1RJonesBackground"
label variable W7TTOS91342S3 "Wk1DWilsonSlogan"
label variable W7FODS91342S3 "Wk1DWilsonSlogan"
label variable W7FODS91343S3 "Wk1DWilsonPersonality"
label variable W7TODS91343S3 "Wk1DWilsonPersonality"
label variable W7TTOS91344S3 "Wk1DWilsonFamily"
label variable W7FODS91344S3 "Wk1DWilsonFamily"
label variable W7FODS91345S3 "Wk1DWilsonExperience"
label variable W7TTOS91345S3 "Wk1DWilsonExperience"
label variable W7TTOS91346S3 "Wk1DWilsonCandidatePicture"
label variable W7FODS91346S3 "Wk1DWilsonCandidatePicture"
label variable W7FODS91347S3 "Wk1DWilsonBackground"
label variable W7TTOS91347S3 "Wk1DWilsonBackground"
label variable W7TTOS91348S3 "Wk1DSmithSlogan"
label variable W7TODS91348S3 "Wk1DSmithSlogan"
label variable W7TTOS91349S3 "Wk1DSmithPersonality"
label variable W7FODS91349S3 "Wk1DSmithPersonality"
label variable W7TODS91350S3 "Wk1DSmithFamily"
label variable W7TTOS91350S3 "Wk1DSmithFamily"
label variable W7TTOS91351S3 "Wk1DSmithExperience"
label variable W7TODS91351S3 "Wk1DSmithExperience"
label variable W7FODS91352S3 "Wk1DSmithCandidatePicture"
label variable W7TTOS91352S3 "Wk1DSmithCandidatePicture"
label variable W7FODS91353S3 "Wk1DSmithBackground"
label variable W7TODS91353S3 "Wk1DSmithBackground"
label variable W7TODS91354S3 "SmithEducation"
label variable W7TTOS91354S3 "SmithEducation"
label variable W7TTOS91355S3 "SmithExperience"
label variable W7FODS91355S3 "SmithExperience"
label variable W7FODS91356S3 "SmithFamily"
label variable W7TTOS91356S3 "SmithFamily"
label variable W7TTOS91357S3 "JonesExperience"
label variable W7FODS91357S3 "JonesExperience"
label variable W7TODS91358S3 "SmithReligion"
label variable W7FODS91358S3 "SmithReligion"
label variable W7TTOS91359S3 "JonesEducation"
label variable W7TODS91359S3 "JonesEducation"
label variable W7TODS91360S3 "JonesFamily"
label variable W7FODS91360S3 "JonesFamily"
label variable W7TTOS91362S3 "JonesReligion"
label variable W7FODS91362S3 "JonesReligion"
label variable W7TODS91363S3 "WilsonEducation"
label variable W7TTOS91363S3 "WilsonEducation"
label variable W7TTOS91365S3 "WilsonExperience"
label variable W7TODS91365S3 "WilsonExperience"
label variable W7TODS91366S3 "WilsonFamily"
label variable W7TTOS91366S3 "WilsonFamily"
label variable W7FODS91367S3 "WilliamsReligion"
label variable W7TTOS91367S3 "WilliamsReligion"
label variable W7TODS91369S3 "WilliamsFamily"
label variable W7FODS91369S3 "WilliamsFamily"
label variable W7TODS91370S3 "WilliamsExperience"
label variable W7TTOS91370S3 "WilliamsExperience"
label variable W7TODS91371S3 "WilliamsEducation"
label variable W7FODS91371S3 "WilliamsEducation"
label variable W7FODS91372S3 "WilsonReligion"
label variable W7TODS91372S3 "WilsonReligion"
label variable W7TTOS91374S3 "wk2DSmithJobs"
label variable W7FODS91374S3 "wk2DSmithJobs"
label variable W7TODS91375S3 "wk2DSmithEconPhil"
label variable W7TTOS91375S3 "wk2DSmithEconPhil"
label variable W7TTOS91376S3 "Wk2RJonesJobs"
label variable W7TODS91376S3 "Wk2RJonesJobs"
label variable W7TTOS91377S3 "wk2DWilsonJobs"
label variable W7FODS91377S3 "wk2DWilsonJobs"
label variable W7TTOS91378S3 "wk2DWilsonEconPhil"
label variable W7TODS91378S3 "wk2DWilsonEconPhil"
label variable W7FODS91379S3 "wk2RJonesEconPhil"
label variable W7TODS91379S3 "wk2RJonesEconPhil"
label variable W7TODS91380S3 "Wk2RWilliamsJobs"
label variable W7FODS91380S3 "Wk2RWilliamsJobs"
label variable W7TTOS91381S3 "wk2RWilliamsEconPhil"
label variable W7FODS91381S3 "wk2RWilliamsEconPhil"
label variable W7TODS91382S3 "wk3DSmithEduc"
label variable W7TTOS91382S3 "wk3DSmithEduc"
label variable W7TODS91383S3 "wk6DSmithHealth"
label variable W7TTOS91383S3 "wk6DSmithHealth"
label variable W7TTOS91384S3 "wk4DSmithChina"
label variable W7TODS91384S3 "wk4DSmithChina"
label variable W7TODS91385S3 "wk4DSmithDefense"
label variable W7TTOS91385S3 "wk4DSmithDefense"
label variable W7TODS91386S3 "wk5DSmithAbortion"
label variable W7FODS91386S3 "wk5DSmithAbortion"
label variable W7TODS91387S3 "wk5DSmithGay"
label variable W7TTOS91387S3 "wk5DSmithGay"
label variable W7TTOS91388S3 "wk6DSmithTaxes"
label variable W7TODS91388S3 "wk6DSmithTaxes"
label variable W7FODS91389S3 "wk7DSmithAffirm"
label variable W7TODS91389S3 "wk7DSmithAffirm"
label variable W7TTOS91389S2 "wk7DSmithAffirm"
label variable W7TODS91389S2 "wk7DSmithAffirm"
label variable W7TTOS91389S3 "wk7DSmithAffirm"
label variable W7FODS91390S2 "wk7DSmithImmigration"
label variable W7TODS91390S3 "wk7DSmithImmigration"
label variable W7FODS91390S3 "wk7DSmithImmigration"
label variable W7TTOS91390S2 "wk7DSmithImmigration"
label variable W7TTOS91390S3 "wk7DSmithImmigration"
label variable W7TTOS91391S3 "wk8DSmithAfghan"
label variable W7TODS91391S3 "wk8DSmithAfghan"
label variable W7FODS91392S3 "wk8DSmithMil"
label variable W7TTOS91392S3 "wk8DSmithMil"
label variable W7TODS91393S3 "wk9DSmithDeathPen"
label variable W7FODS91393S3 "wk9DSmithDeathPen"
label variable W7TODS91394S3 "wk9DSmithStemCells"
label variable W7FODS91394S3 "wk9DSmithStemCells"
label variable W7TODS91395S3 "wk3DSmithSocPhil"
label variable W7TTOS91395S3 "wk3DSmithSocPhil"
label variable W7TTOS91396S3 "wk3DWilsonEduc"
label variable W7TODS91396S3 "wk3DWilsonEduc"
label variable W7TODS91397S3 "wk6DWilsonHealth"
label variable W7TTOS91397S3 "wk6DWilsonHealth"
label variable W7FODS91398S3 "wk4DWilsonChina"
label variable W7TODS91398S3 "wk4DWilsonChina"
label variable W7TODS91399S3 "wk4DWilsonDefense"
label variable W7FODS91399S3 "wk4DWilsonDefense"
label variable W7TTOS91400S3 "wk5DWilsonAbortion"
label variable W7FODS91400S3 "wk5DWilsonAbortion"
label variable W7TODS91401S3 "wk5DWilsonGay"
label variable W7FODS91401S3 "wk5DWilsonGay"
label variable W7TTOS91402S3 "wk6DWilsonTaxes"
label variable W7FODS91402S3 "wk6DWilsonTaxes"
label variable W7TODS91403S2 "wk7DWilsonAffirm"
label variable W7TODS91403S3 "wk7DWilsonAffirm"
label variable W7TTOS91403S3 "wk7DWilsonAffirm"
label variable W7FODS91403S3 "wk7DWilsonAffirm"
label variable W7TTOS91403S2 "wk7DWilsonAffirm"
label variable W7TTOS91404S3 "wk7DWilsonImmigration"
label variable W7FODS91404S2 "wk7DWilsonImmigration"
label variable W7TTOS91404S2 "wk7DWilsonImmigration"
label variable W7TODS91404S2 "wk7DWilsonImmigration"
label variable W7TODS91404S3 "wk7DWilsonImmigration"
label variable W7TODS91405S3 "wk8DWilsonAfghan"
label variable W7TTOS91405S3 "wk8DWilsonAfghan"
label variable W7TTOS91406S3 "wk8DWilsonMil"
label variable W7TODS91406S3 "wk8DWilsonMil"
label variable W7TODS91407S3 "wk9DWilsonDeathPen"
label variable W7FODS91407S3 "wk9DWilsonDeathPen"
label variable W7FODS91408S3 "wk9DWilsonStemCells"
label variable W7TTOS91408S3 "wk9DWilsonStemCells"
label variable W7TODS91409S2 "wk7RJonesImmigration"
label variable W7TTOS91409S2 "wk7RJonesImmigration"
label variable W7FODS91409S3 "wk7RJonesImmigration"
label variable W7TODS91409S3 "wk7RJonesImmigration"
label variable W7TTOS91409S3 "wk7RJonesImmigration"
label variable W7FODS91410S3 "wk3DWilsonSocPhil"
label variable W7TODS91410S3 "wk3DWilsonSocPhil"
label variable W7TTOS91411S3 "wk3RWilliamsEduc"
label variable W7TODS91411S3 "wk3RWilliamsEduc"
label variable W7TTOS91412S3 "wk3RWilliamsSocPhil"
label variable W7TODS91412S3 "wk3RWilliamsSocPhil"
label variable W7TODS91413S3 "wk4RWilliamsChina"
label variable W7TTOS91413S3 "wk4RWilliamsChina"
label variable W7FODS91414S3 "wk4RWilliamsDefense"
label variable W7TODS91414S3 "wk4RWilliamsDefense"
label variable W7FODS91415S3 "wk5RWilliamsAbortion"
label variable W7TTOS91415S3 "wk5RWilliamsAbortion"
label variable W7FODS91416S3 "wk5RWilliamsGay"
label variable W7TTOS91416S3 "wk5RWilliamsGay"
label variable W7FODS91417S3 "wk6RWilliamsTaxes"
label variable W7TODS91417S3 "wk6RWilliamsTaxes"
label variable W7TTOS91418S2 "wk7RWilliamsAffirm"
label variable W7TODS91418S3 "wk7RWilliamsAffirm"
label variable W7FODS91418S2 "wk7RWilliamsAffirm"
label variable W7TTOS91418S3 "wk7RWilliamsAffirm"
label variable W7TODS91418S2 "wk7RWilliamsAffirm"
label variable W7TODS91419S2 "wk7RWilliamsImmigration"
label variable W7TTOS91419S2 "wk7RWilliamsImmigration"
label variable W7FODS91419S3 "wk7RWilliamsImmigration"
label variable W7TTOS91419S3 "wk7RWilliamsImmigration"
label variable W7TODS91419S3 "wk7RWilliamsImmigration"
label variable W7TTOS91420S3 "wk8RWilliamsAfghan"
label variable W7TODS91420S3 "wk8RWilliamsAfghan"
label variable W7TODS91421S3 "wk8RWilliamsMil"
label variable W7TTOS91421S3 "wk8RWilliamsMil"
label variable W7TTOS91422S3 "wk9RWilliamsDeathPen"
label variable W7FODS91422S3 "wk9RWilliamsDeathPen"
label variable W7TODS91423S3 "wk9RWilliamsStemCells"
label variable W7TTOS91423S3 "wk9RWilliamsStemCells"
label variable W7TTOS91424S3 "wk3RJonesEduc"
label variable W7TODS91424S3 "wk3RJonesEduc"
label variable W7TODS91425S3 "wk3RJonesSocPhil"
label variable W7TTOS91425S3 "wk3RJonesSocPhil"
label variable W7TODS91426S3 "wk4RJonesChina"
label variable W7FODS91426S3 "wk4RJonesChina"
label variable W7FODS91427S3 "wk4RJonesDefense"
label variable W7TTOS91427S3 "wk4RJonesDefense"
label variable W7TTOS91428S3 "wk5RJonesAbortion"
label variable W7FODS91428S3 "wk5RJonesAbortion"
label variable W7TODS91429S3 "wk5RJonesGay"
label variable W7FODS91429S3 "wk5RJonesGay"
label variable W7FODS91430S3 "wk6RJonesHealth"
label variable W7TODS91430S3 "wk6RJonesHealth"
label variable W7TTOS91431S3 "wk8JRonesAfghan"
label variable W7TODS91431S3 "wk8JRonesAfghan"
label variable W7TODS91432S3 "wk6RJonesTaxes"
label variable W7FODS91432S3 "wk6RJonesTaxes"
label variable W7TODS91433S2 "wk7RJonesAffirm"
label variable W7TODS91433S3 "wk7RJonesAffirm"
label variable W7TTOS91433S2 "wk7RJonesAffirm"
label variable W7FODS91433S3 "wk7RJonesAffirm"
label variable W7FODS91433S2 "wk7RJonesAffirm"
label variable W7TTOS91434S3 "wk9RJonesStemCells"
label variable W7TODS91434S3 "wk9RJonesStemCells"
label variable W7TTOS91435S3 "wk8RJonesMil"
label variable W7TODS91435S3 "wk8RJonesMil"
label variable W7TTOS91436S3 "wk9RJonesDeathPen"
label variable W7TODS91436S3 "wk9RJonesDeathPen"
label variable W7FODS91437S3 "wk6RWilliamsHealth"
label variable W7TTOS91437S3 "wk6RWilliamsHealth"
label variable W7TODS91438S3 "wk3d1APROOT16"
label variable W7TTOS91438S3 "wk3d1APROOT16"
label variable W7TODS91439S3 "Wk3DEndorsementAFT"
label variable W7FODS91439S3 "Wk3DEndorsementAFT"
label variable W7TTOS91440S3 "Wk3DEndorsementFAIR"
label variable W7TODS91440S3 "Wk3DEndorsementFAIR"
label variable W7TTOS91441S3 "wk3d1ABCHOT8"
label variable W7TODS91441S3 "wk3d1ABCHOT8"
label variable W7TODS91443S3 "Wk3REndorsementAFT"
label variable W7FODS91443S3 "Wk3REndorsementAFT"
label variable W7FODS91444S3 "wk3d1NBCUNI12"
label variable W7TTOS91444S3 "wk3d1NBCUNI12"
label variable W7TODS91445S3 "wk3d1NYTMSN28"
label variable W7TTOS91445S3 "wk3d1NYTMSN28"
label variable W7TTOS91447S3 "wk3d2REUREU48"
label variable W7FODS91447S3 "wk3d2REUREU48"
label variable W7TODS91448S3 "wk3d2WSJWSJ60"
label variable W7FODS91448S3 "wk3d2WSJWSJ60"
label variable W7TODS91449S3 "wk3d2NBCNBC64"
label variable W7FODS91449S3 "wk3d2NBCNBC64"
label variable W7TODS91450S3 "wk3d3ABCHOT8"
label variable W7FODS91450S3 "wk3d3ABCHOT8"
label variable W7TTOS91451S3 "wk3r2ABCABC72"
label variable W7FODS91451S3 "wk3r2ABCABC72"
label variable W7TODS91454S3 "wk3d3NYTMSN28"
label variable W7FODS91454S3 "wk3d3NYTMSN28"
label variable W7TODS91455S3 "wk3r2APAP80"
label variable W7FODS91455S3 "wk3r2APAP80"
label variable W7TODS91456S3 "wk3r3REUBET100"
label variable W7TTOS91456S3 "wk3r3REUBET100"
label variable W7TTOS91457S3 "wk3r3CNNLAT101"
label variable W7TODS91457S3 "wk3r3CNNLAT101"
label variable W7FODS91458S3 "wk3r2NYTNYT92"
label variable W7TTOS91458S3 "wk3r2NYTNYT92"
label variable W7FODS91459S3 "wk3r2WSJWSJ96"
label variable W7TODS91459S3 "wk3r2WSJWSJ96"
label variable W7FODS91460S3 "wk3r3CBSFOX116"
label variable W7TTOS91460S3 "wk3r3CBSFOX116"
label variable W7TTOS91466S3 "wk4d1CBSFOXFor3"
label variable W7TODS91466S3 "wk4d1CBSFOXFor3"
label variable W7TODS91467S3 "wk4d1ABCHUFFor7"
label variable W7TTOS91467S3 "wk4d1ABCHUFFor7"
label variable W7TODS91468S3 "wk4d1CNNBETFor23"
label variable W7TTOS91468S3 "wk4d1CNNBETFor23"
label variable W7TODS91469S3 "wk4d1WSJLATFor31"
label variable W7TTOS91469S3 "wk4d1WSJLATFor31"
label variable W7TTOS91470S3 "wk4d2APAPFor43"
label variable W7TODS91470S3 "wk4d2APAPFor43"
label variable W7TTOS91471S3 "wk4d2REUREUFor47"
label variable W7TODS91471S3 "wk4d2REUREUFor47"
label variable W7FODS91472S3 "wk4d2NYTNYTFor55"
label variable W7TTOS91472S3 "wk4d2NYTNYTFor55"
label variable W7FODS91473S3 "wk4d2NBCNBCFor63"
label variable W7TODS91473S3 "wk4d2NBCNBCFor63"
label variable W7TODS91474S3 "wk4d3CBSFOXFor3"
label variable W7TTOS91474S3 "wk4d3CBSFOXFor3"
label variable W7FODS91478S3 "wk4r2ABCABCFor71"
label variable W7TTOS91478S3 "wk4r2ABCABCFor71"
label variable W7TODS91481S3 "wk4r2NYTNYTFor91"
label variable W7TTOS91481S3 "wk4r2NYTNYTFor91"
label variable W7TTOS91483S3 "wk4r1WSJHOTFor111"
label variable W7FODS91483S3 "wk4r1WSJHOTFor111"
label variable W7FODS91485S3 "wk4r1APLATFor127"
label variable W7TODS91485S3 "wk4r1APLATFor127"
label variable W7FODS91486S3 "wk4r3CNNROOTFor103"
label variable W7TTOS91486S3 "wk4r3CNNROOTFor103"
label variable W7FODS91489S3 "wk4r3APLATFor127"
label variable W7TTOS91489S3 "wk4r3APLATFor127"
label variable W7TODS91490S3 "Wk4DEndorsementNCLR"
label variable W7TTOS91490S3 "Wk4DEndorsementNCLR"
label variable W7TTOS91491S3 "Wk4DEndorsementHeritage"
label variable W7TODS91491S3 "Wk4DEndorsementHeritage"
label variable W7TTOS91492S3 "Wk4DEndorsementVFW"
label variable W7TODS91492S3 "Wk4DEndorsementVFW"
label variable W7TTOS91493S3 "Wk4REndorsementNCLR"
label variable W7FODS91493S3 "Wk4REndorsementNCLR"
label variable W7TODS91494S3 "Wk4REndorsementHeritage"
label variable W7TTOS91494S3 "Wk4REndorsementHeritage"
label variable W7TTOS91495S3 "WK4REndorsementVFW"
label variable W7TODS91495S3 "WK4REndorsementVFW"
label variable W7TODS91496S3 "Wk5DEndorsementHumanRtsCamp"
label variable W7FODS91496S3 "Wk5DEndorsementHumanRtsCamp"
label variable W7TODS91497S3 "Wk5DEndorsementFamResearchCouncil"
label variable W7TTOS91497S3 "Wk5DEndorsementFamResearchCouncil"
label variable W7TODS91498S3 "Wk5REndorsementHumanRtsCamp"
label variable W7TTOS91498S3 "Wk5REndorsementHumanRtsCamp"
label variable W7TTOS91499S3 "Wk5DEndorsementNRL"
label variable W7TODS91499S3 "Wk5DEndorsementNRL"
label variable W7TODS91500S3 "Wk5REndorsementNRL"
label variable W7FODS91500S3 "Wk5REndorsementNRL"
label variable W7TODS91501S3 "Wk5REndorsementFamResearchCouncil"
label variable W7TTOS91501S3 "Wk5REndorsementFamResearchCouncil"
label variable W7TODS91502S3 "wk5r1WSJBETCult109"
label variable W7FODS91502S3 "wk5r1WSJBETCult109"
label variable W7FODS91503S3 "wk5d1ABCHUFCult5"
label variable W7TODS91503S3 "wk5d1ABCHUFCult5"
label variable W7TTOS91504S3 "wk5d1NBCHOTCult9"
label variable W7FODS91504S3 "wk5d1NBCHOTCult9"
label variable W7FODS91505S3 "wk5d1CNNLATCult21"
label variable W7TTOS91505S3 "wk5d1CNNLATCult21"
label variable W7FODS91506S3 "wk5d1NYTBETCult25"
label variable W7TODS91506S3 "wk5d1NYTBETCult25"
label variable W7TODS91508S3 "wk5d2APAPCult41"
label variable W7TTOS91508S3 "wk5d2APAPCult41"
label variable W7TODS91509S3 "wk5d2REUREUCult45"
label variable W7FODS91509S3 "wk5d2REUREUCult45"
label variable W7FODS91510S3 "wk5d2WSJWSJCult57"
label variable W7TTOS91510S3 "wk5d2WSJWSJCult57"
label variable W7TODS91512S3 "wk5d3NBCHOTCult9"
label variable W7FODS91512S3 "wk5d3NBCHOTCult9"
label variable W7TTOS91516S3 "wk5r1ABCHOTCult117"
label variable W7TODS91516S3 "wk5r1ABCHOTCult117"
label variable W7TODS91518S3 "wk5r1APMSNCult125"
label variable W7TTOS91518S3 "wk5r1APMSNCult125"
label variable W7FODS91521S3 "wk5r2CNNCNNCult85"
label variable W7TODS91521S3 "wk5r2CNNCNNCult85"
label variable W7TODS91522S3 "wk5r2NYTNYTCult89"
label variable W7FODS91522S3 "wk5r2NYTNYTCult89"
label variable W7FODS91523S3 "wk5r3WSJBETCult109"
label variable W7TTOS91523S3 "wk5r3WSJBETCult109"
label variable W7TTOS91525S3 "wk5r3NBCLATCult121"
label variable W7FODS91525S3 "wk5r3NBCLATCult121"
label variable W7TODS91535S3 "wk6r1CNNMSNEcon102"
label variable W7TTOS91535S3 "wk6r1CNNMSNEcon102"
label variable W7TTOS91536S3 "wk6r1NYTBETEcon106"
label variable W7FODS91536S3 "wk6r1NYTBETEcon106"
label variable W7TODS91537S3 "wk6d1APHOTEcon14"
label variable W7FODS91537S3 "wk6d1APHOTEcon14"
label variable W7TTOS91538S3 "wk6d1NYTBETEcon26"
label variable W7TODS91538S3 "wk6d1NYTBETEcon26"
label variable W7TTOS91541S3 "wk6r3REULATEcon98"
label variable W7TODS91541S3 "wk6r3REULATEcon98"
label variable W7TTOS91542S3 "wk6r3NYTBETEcon106"
label variable W7FODS91542S3 "wk6r3NYTBETEcon106"
label variable W7FODS91547S3 "wk6d2REUREUEcon46"
label variable W7TODS91547S3 "wk6d2REUREUEcon46"
label variable W7TTOS91548S3 "wk6d2CNNCNNEcon50"
label variable W7TODS91548S3 "wk6d2CNNCNNEcon50"
label variable W7TODS91549S3 "wk6d2WSJWSJEcon58"
label variable W7TTOS91549S3 "wk6d2WSJWSJEcon58"
label variable W7TODS91550S3 "wk6d3ABCMSNEcon6"
label variable W7TTOS91550S3 "wk6d3ABCMSNEcon6"
label variable W7TTOS91551S3 "wk6d3APHOTEcon14"
label variable W7TODS91551S3 "wk6d3APHOTEcon14"
label variable W7TODS91556S3 "Wk6DEndorsementADA"
label variable W7TTOS91556S3 "Wk6DEndorsementADA"
label variable W7FODS91557S3 "Wk6DEndorsementNTU"
label variable W7TTOS91557S3 "Wk6DEndorsementNTU"
label variable W7TTOS91558S3 "Wk6DEndorsementAFSCME"
label variable W7TODS91558S3 "Wk6DEndorsementAFSCME"
label variable W7FODS91559S3 "Wk6REndorsementADA"
label variable W7TTOS91559S3 "Wk6REndorsementADA"
label variable W7FODS91560S3 "Wk6REndorsementNTU"
label variable W7TTOS91560S3 "Wk6REndorsementNTU"
label variable W7TTOS91561S3 "Wk6REndorsementAFSCME"
label variable W7FODS91561S3 "Wk6REndorsementAFSCME"
label variable W7TTOS91562S3 "Wk7DEndorsementNAACP"
label variable W7TTOS91562S2 "Wk7DEndorsementNAACP"
label variable W7FODS91562S2 "Wk7DEndorsementNAACP"
label variable W7TODS91562S2 "Wk7DEndorsementNAACP"
label variable W7FODS91562S3 "Wk7DEndorsementNAACP"
label variable W7FODS91563S2 "Wk7DEndorsementACU"
label variable W7TTOS91563S3 "Wk7DEndorsementACU"
label variable W7TTOS91563S2 "Wk7DEndorsementACU"
label variable W7TODS91563S2 "Wk7DEndorsementACU"
label variable W7TODS91563S3 "Wk7DEndorsementACU"
label variable W7FODS91564S2 "Wk7REndorsementACU"
label variable W7FODS91564S3 "Wk7REndorsementACU"
label variable W7TODS91564S3 "Wk7REndorsementACU"
label variable W7TTOS91564S3 "Wk7REndorsementACU"
label variable W7TODS91564S2 "Wk7REndorsementACU"
label variable W7FODS91565S2 "Wk7REndorsementNAACP"
label variable W7FODS91565S3 "Wk7REndorsementNAACP"
label variable W7TTOS91565S2 "Wk7REndorsementNAACP"
label variable W7TODS91565S2 "Wk7REndorsementNAACP"
label variable W7TODS91565S3 "Wk7REndorsementNAACP"
label variable W7TTOS91570S3 "wk7r2CBSCBSsoc68"
label variable W7TODS91570S3 "wk7r2CBSCBSsoc68"
label variable W7FODS91570S3 "wk7r2CBSCBSsoc68"
label variable W7FODS91570S2 "wk7r2CBSCBSsoc68"
label variable W7TODS91570S2 "wk7r2CBSCBSsoc68"
label variable W7FODS91572S2 "wk7r2NBCNBC76"
label variable W7TTOS91572S2 "wk7r2NBCNBC76"
label variable W7TODS91572S2 "wk7r2NBCNBC76"
label variable W7FODS91572S3 "wk7r2NBCNBC76"
label variable W7TTOS91572S3 "wk7r2NBCNBC76"
label variable W7TTOS91574S3 "wk7r2REUREU84"
label variable W7TTOS91574S2 "wk7r2REUREU84"
label variable W7TODS91574S2 "wk7r2REUREU84"
label variable W7TODS91574S3 "wk7r2REUREU84"
label variable W7FODS91574S3 "wk7r2REUREU84"
label variable W7FODS91576S2 "wk7r2CNNCNN88"
label variable W7TTOS91576S2 "wk7r2CNNCNN88"
label variable W7TODS91576S3 "wk7r2CNNCNN88"
label variable W7TODS91576S2 "wk7r2CNNCNN88"
label variable W7FODS91576S3 "wk7r2CNNCNN88"
label variable W7TODS91582S3 "wk7r1NYTROOT108"
label variable W7TTOS91582S2 "wk7r1NYTROOT108"
label variable W7TODS91582S2 "wk7r1NYTROOT108"
label variable W7FODS91582S2 "wk7r1NYTROOT108"
label variable W7TTOS91582S3 "wk7r1NYTROOT108"
label variable W7FODS91584S3 "wk7r1WSJUNI112"
label variable W7TTOS91584S2 "wk7r1WSJUNI112"
label variable W7TODS91584S2 "wk7r1WSJUNI112"
label variable W7FODS91584S2 "wk7r1WSJUNI112"
label variable W7TTOS91584S3 "wk7r1WSJUNI112"
label variable W7TTOS91585S3 "wk7r1ABCMSN120"
label variable W7FODS91585S3 "wk7r1ABCMSN120"
label variable W7TTOS91585S2 "wk7r1ABCMSN120"
label variable W7TODS91585S2 "wk7r1ABCMSN120"
label variable W7FODS91585S2 "wk7r1ABCMSN120"
label variable W7FODS91586S2 "wk7r1APHOT128"
label variable W7FODS91586S3 "wk7r1APHOT128"
label variable W7TTOS91586S3 "wk7r1APHOT128"
label variable W7TODS91586S3 "wk7r1APHOT128"
label variable W7TODS91586S2 "wk7r1APHOT128"
label variable W7TODS91587S2 "wk7r3NYTROOT108"
label variable W7TTOS91587S3 "wk7r3NYTROOT108"
label variable W7TTOS91587S2 "wk7r3NYTROOT108"
label variable W7TODS91587S3 "wk7r3NYTROOT108"
label variable W7FODS91587S3 "wk7r3NYTROOT108"
label variable W7TODS91588S3 "wk7d3CBSROOTSoc4"
label variable W7FODS91588S3 "wk7d3CBSROOTSoc4"
label variable W7TTOS91588S3 "wk7d3CBSROOTSoc4"
label variable W7TODS91588S2 "wk7d3CBSROOTSoc4"
label variable W7FODS91588S2 "wk7d3CBSROOTSoc4"
label variable W7FODS91589S3 "wk7r3WSJUNI112"
label variable W7TTOS91589S3 "wk7r3WSJUNI112"
label variable W7TODS91589S3 "wk7r3WSJUNI112"
label variable W7TTOS91589S2 "wk7r3WSJUNI112"
label variable W7FODS91589S2 "wk7r3WSJUNI112"
label variable W7FODS91590S3 "wk7d3REUBET20"
label variable W7TTOS91590S3 "wk7d3REUBET20"
label variable W7TTOS91590S2 "wk7d3REUBET20"
label variable W7TODS91590S3 "wk7d3REUBET20"
label variable W7TODS91590S2 "wk7d3REUBET20"
label variable W7FODS91591S2 "wk7r3ABCMSN120"
label variable W7TODS91591S2 "wk7r3ABCMSN120"
label variable W7TTOS91591S2 "wk7r3ABCMSN120"
label variable W7TTOS91591S3 "wk7r3ABCMSN120"
label variable W7FODS91591S3 "wk7r3ABCMSN120"
label variable W7TODS91592S3 "wk7d3CNNLAT24"
label variable W7FODS91592S3 "wk7d3CNNLAT24"
label variable W7FODS91592S2 "wk7d3CNNLAT24"
label variable W7TODS91592S2 "wk7d3CNNLAT24"
label variable W7TTOS91592S3 "wk7d3CNNLAT24"
label variable W7FODS91593S3 "wk7d3WSJHUF32"
label variable W7TTOS91593S3 "wk7d3WSJHUF32"
label variable W7TTOS91593S2 "wk7d3WSJHUF32"
label variable W7TODS91593S3 "wk7d3WSJHUF32"
label variable W7FODS91593S2 "wk7d3WSJHUF32"
label variable W7TODS91594S3 "wk7r3APHOT128"
label variable W7FODS91594S3 "wk7r3APHOT128"
label variable W7TTOS91594S3 "wk7r3APHOT128"
label variable W7TODS91594S2 "wk7r3APHOT128"
label variable W7FODS91594S2 "wk7r3APHOT128"
label variable W7TODS91595S2 "wk7d1CBSROOTSoc4"
label variable W7TODS91595S3 "wk7d1CBSROOTSoc4"
label variable W7TTOS91595S3 "wk7d1CBSROOTSoc4"
label variable W7FODS91595S3 "wk7d1CBSROOTSoc4"
label variable W7TTOS91595S2 "wk7d1CBSROOTSoc4"
label variable W7TTOS91596S2 "wk7d1REUBET20"
label variable W7TODS91596S3 "wk7d1REUBET20"
label variable W7TODS91596S2 "wk7d1REUBET20"
label variable W7FODS91596S3 "wk7d1REUBET20"
label variable W7TTOS91596S3 "wk7d1REUBET20"
label variable W7TODS91597S2 "wk7d1CNNLAT24"
label variable W7FODS91597S3 "wk7d1CNNLAT24"
label variable W7TODS91597S3 "wk7d1CNNLAT24"
label variable W7TTOS91597S2 "wk7d1CNNLAT24"
label variable W7TTOS91597S3 "wk7d1CNNLAT24"
label variable W7TODS91598S3 "wk7d1WSJHUF32"
label variable W7TODS91598S2 "wk7d1WSJHUF32"
label variable W7FODS91598S2 "wk7d1WSJHUF32"
label variable W7TTOS91598S3 "wk7d1WSJHUF32"
label variable W7FODS91598S3 "wk7d1WSJHUF32"
label variable W7FODS91599S2 "wk7d2ABCABC40"
label variable W7TODS91599S2 "wk7d2ABCABC40"
label variable W7TTOS91599S3 "wk7d2ABCABC40"
label variable W7TODS91599S3 "wk7d2ABCABC40"
label variable W7FODS91599S3 "wk7d2ABCABC40"
label variable W7TODS91600S2 "wk7d2APAP44"
label variable W7FODS91600S3 "wk7d2APAP44"
label variable W7TODS91600S3 "wk7d2APAP44"
label variable W7FODS91600S2 "wk7d2APAP44"
label variable W7TTOS91600S3 "wk7d2APAP44"
label variable W7FODS91601S2 "wk7d2CNNCNN52"
label variable W7TTOS91601S2 "wk7d2CNNCNN52"
label variable W7FODS91601S3 "wk7d2CNNCNN52"
label variable W7TODS91601S2 "wk7d2CNNCNN52"
label variable W7TODS91601S3 "wk7d2CNNCNN52"
label variable W7TTOS91602S3 "wk7d2NYTNYT56"
label variable W7FODS91602S2 "wk7d2NYTNYT56"
label variable W7TTOS91602S2 "wk7d2NYTNYT56"
label variable W7TODS91602S3 "wk7d2NYTNYT56"
label variable W7FODS91602S3 "wk7d2NYTNYT56"

* Merge W7S1234 with IPW7 (IP ADDRESS)
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W7/WorkingData/W7S1234_Working.dta", replace
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W7/WorkingData/W7S1234_Working.dta", replace
merge m:m SUBJECTID using "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W7/IP/IPW7.dta"
drop _merge

* Duplicate Check
capture drop DUPW7
sort PAC W7TIMES1, stable
quietly by PAC: gen DUPW7 = cond(_N==1,0,_n)

* Generating week indicator
capture drop WEEK7
gen WEEK7 = 1

* Generating Date Variable
capture drop year month day
nsplit W7DATES1, digits(4 2 2) generate(year month day)
capture drop DATEW7b
gen DATEW7b = mdy(month, day, year)
capture drop date1
gen date1 = 19724
format %td date1
format %td DATEW7b
capture drop DATEW7a
gen DATEW7a = DATEW7b - date1
capture drop date1 year month day W7DATES1 W7DATES2 W7DATES3 W7DATES4

* ORDERING
order PAC IP DUPW7 DATEW7a DATEW7b W7TIMES1 WEEK7
sort PAC, stable

* Dropping Duplicates
drop if PAC == .
drop if SUBJECTID == 101049
drop if SUBJECTID == 101647 & DUPW7 == 2
drop if SUBJECTID == 100763
replace PAC= 100829 if SUBJECTID == 103828
drop if SUBJECTID == 104154
drop if SUBJECTID == 103987
drop if SUBJECTID == 103983
drop if SUBJECTID == 103895 & DUPW7 == 2
drop if SUBJECTID == 103897
replace PAC= 108188 if IP == "50.171.169.69"
replace PAC= 108277 if IP == "50.134.64.50"
replace PAC= 108648 if IP == "72.225.41.203"

* Build. Cumulat.

capture egen  W7COD91302Wk = rowtotal(W7TODS91302S2 W7TODS91302S3)
capture egen  W7CTO91302Wk = rowtotal(W7TTOS91302S2 W7TTOS91302S3)
capture egen  W7CTO91303Wk = rowtotal(W7TTOS91303S2 W7TTOS91303S3)
capture egen  W7COD91303Wk = rowtotal(W7TODS91303S2 W7TODS91303S3)
capture egen  W7CTO91304Wk = rowtotal(W7TTOS91304S2 W7TTOS91304S3)
capture egen  W7COD91304Wk = rowtotal(W7TODS91304S2 W7TODS91304S3)
capture egen  W7COD91305Wk = rowtotal(W7TODS91305S2 W7TODS91305S3)
capture egen  W7CTO91305Wk = rowtotal(W7TTOS91305S2 W7TTOS91305S3)
capture egen  W7COD91307Wk = rowtotal(W7TODS91307S2 W7TODS91307S3)
capture egen  W7CTO91307Wk = rowtotal(W7TTOS91307S2 W7TTOS91307S3)
capture egen  W7CTO91308Wk = rowtotal(W7TTOS91308S2 W7TTOS91308S3)
capture egen  W7COD91308Wk = rowtotal(W7TODS91308S2 W7TODS91308S3)
capture egen  W7COD91309Wk = rowtotal(W7TODS91309S2 W7TODS91309S3)
capture egen  W7CTO91309Wk = rowtotal(W7TTOS91309S2 W7TTOS91309S3)
capture egen  W7CTO91310Wk = rowtotal(W7TTOS91310S2 W7TTOS91310S3)
capture egen  W7COD91310Wk = rowtotal(W7TODS91310S2 W7TODS91310S3)
capture egen  W7CTO91311Wk = rowtotal(W7TTOS91311S2 W7TTOS91311S3)
capture egen  W7COD91311Wk = rowtotal(W7TODS91311S2 W7TODS91311S3)
capture egen  W7CTO91312Wk = rowtotal(W7TTOS91312S2 W7TTOS91312S3)
capture egen  W7COD91312Wk = rowtotal(W7TODS91312S2 W7TODS91312S3)
capture egen  W7COD91313Wk = rowtotal(W7TODS91313S2 W7TODS91313S3)
capture egen  W7CTO91313Wk = rowtotal(W7TTOS91313S2 W7TTOS91313S3)
capture egen  W7CTO91317Wk = rowtotal(W7TTOS91317S2 W7TTOS91317S3)
capture egen  W7COD91317Wk = rowtotal(W7TODS91317S2 W7TODS91317S3)
capture egen  W7COD91318Wk = rowtotal(W7TODS91318S2 W7TODS91318S3)
capture egen  W7CTO91318Wk = rowtotal(W7TTOS91318S2 W7TTOS91318S3)
capture egen  W7CTO91319Wk = rowtotal(W7TTOS91319S2 W7TTOS91319S3)
capture egen  W7COD91319Wk = rowtotal(W7TODS91319S2 W7TODS91319S3)
capture egen  W7CTO91323Wk = rowtotal(W7TTOS91323S2 W7TTOS91323S3)
capture egen  W7COD91323Wk = rowtotal(W7TODS91323S2 W7TODS91323S3)
capture egen  W7CTO91327Wk = rowtotal(W7TTOS91327S2 W7TTOS91327S3)
capture egen  W7COD91327Wk = rowtotal(W7TODS91327S2 W7TODS91327S3)
capture egen  W7CTO91328Wk = rowtotal(W7TTOS91328S2 W7TTOS91328S3)
capture egen  W7COD91328Wk = rowtotal(W7TODS91328S2 W7TODS91328S3)
capture egen  W7COD91329Wk = rowtotal(W7TODS91329S2 W7TODS91329S3)
capture egen  W7CTO91329Wk = rowtotal(W7TTOS91329S2 W7TTOS91329S3)
capture egen  W7CTO91330Wk = rowtotal(W7TTOS91330S2 W7TTOS91330S3)
capture egen  W7COD91330Wk = rowtotal(W7TODS91330S2 W7TODS91330S3)
capture egen  W7COD91334Wk = rowtotal(W7TODS91334S2 W7TODS91334S3)
capture egen  W7CTO91334Wk = rowtotal(W7TTOS91334S2 W7TTOS91334S3)
capture egen  W7CTO91335Wk = rowtotal(W7TTOS91335S2 W7TTOS91335S3)
capture egen  W7COD91335Wk = rowtotal(W7TODS91335S2 W7TODS91335S3)
capture egen  W7COD91337Wk = rowtotal(W7TODS91337S2 W7TODS91337S3)
capture egen  W7CTO91337Wk = rowtotal(W7TTOS91337S2 W7TTOS91337S3)
capture egen  W7CTO91340Wk = rowtotal(W7TTOS91340S2 W7TTOS91340S3)
capture egen  W7COD91340Wk = rowtotal(W7TODS91340S2 W7TODS91340S3)
capture egen  W7CTO91341Wk = rowtotal(W7TTOS91341S2 W7TTOS91341S3)
capture egen  W7COD91341Wk = rowtotal(W7TODS91341S2 W7TODS91341S3)
capture egen  W7CTO91342Wk = rowtotal(W7TTOS91342S2 W7TTOS91342S3)
capture egen  W7COD91342Wk = rowtotal(W7TODS91342S2 W7TODS91342S3)
capture egen  W7CTO91343Wk = rowtotal(W7TTOS91343S2 W7TTOS91343S3)
capture egen  W7COD91343Wk = rowtotal(W7TODS91343S2 W7TODS91343S3)
capture egen  W7CTO91344Wk = rowtotal(W7TTOS91344S2 W7TTOS91344S3)
capture egen  W7COD91344Wk = rowtotal(W7TODS91344S2 W7TODS91344S3)
capture egen  W7CTO91345Wk = rowtotal(W7TTOS91345S2 W7TTOS91345S3)
capture egen  W7COD91345Wk = rowtotal(W7TODS91345S2 W7TODS91345S3)
capture egen  W7CTO91346Wk = rowtotal(W7TTOS91346S2 W7TTOS91346S3)
capture egen  W7COD91346Wk = rowtotal(W7TODS91346S2 W7TODS91346S3)
capture egen  W7COD91347Wk = rowtotal(W7TODS91347S2 W7TODS91347S3)
capture egen  W7CTO91347Wk = rowtotal(W7TTOS91347S2 W7TTOS91347S3)
capture egen  W7CTO91348Wk = rowtotal(W7TTOS91348S2 W7TTOS91348S3)
capture egen  W7COD91348Wk = rowtotal(W7TODS91348S2 W7TODS91348S3)
capture egen  W7CTO91349Wk = rowtotal(W7TTOS91349S2 W7TTOS91349S3)
capture egen  W7COD91349Wk = rowtotal(W7TODS91349S2 W7TODS91349S3)
capture egen  W7COD91350Wk = rowtotal(W7TODS91350S2 W7TODS91350S3)
capture egen  W7CTO91350Wk = rowtotal(W7TTOS91350S2 W7TTOS91350S3)
capture egen  W7CTO91351Wk = rowtotal(W7TTOS91351S2 W7TTOS91351S3)
capture egen  W7COD91351Wk = rowtotal(W7TODS91351S2 W7TODS91351S3)
capture egen  W7COD91352Wk = rowtotal(W7TODS91352S2 W7TODS91352S3)
capture egen  W7CTO91352Wk = rowtotal(W7TTOS91352S2 W7TTOS91352S3)
capture egen  W7CTO91353Wk = rowtotal(W7TTOS91353S2 W7TTOS91353S3)
capture egen  W7COD91353Wk = rowtotal(W7TODS91353S2 W7TODS91353S3)
capture egen  W7COD91354Wk = rowtotal(W7TODS91354S2 W7TODS91354S3)
capture egen  W7CTO91354Wk = rowtotal(W7TTOS91354S2 W7TTOS91354S3)
capture egen  W7COD91355Wk = rowtotal(W7TODS91355S2 W7TODS91355S3)
capture egen  W7CTO91355Wk = rowtotal(W7TTOS91355S2 W7TTOS91355S3)
capture egen  W7CTO91356Wk = rowtotal(W7TTOS91356S2 W7TTOS91356S3)
capture egen  W7COD91356Wk = rowtotal(W7TODS91356S2 W7TODS91356S3)
capture egen  W7COD91357Wk = rowtotal(W7TODS91357S2 W7TODS91357S3)
capture egen  W7CTO91357Wk = rowtotal(W7TTOS91357S2 W7TTOS91357S3)
capture egen  W7COD91358Wk = rowtotal(W7TODS91358S2 W7TODS91358S3)
capture egen  W7CTO91358Wk = rowtotal(W7TTOS91358S2 W7TTOS91358S3)
capture egen  W7COD91359Wk = rowtotal(W7TODS91359S2 W7TODS91359S3)
capture egen  W7CTO91359Wk = rowtotal(W7TTOS91359S2 W7TTOS91359S3)
capture egen  W7CTO91360Wk = rowtotal(W7TTOS91360S2 W7TTOS91360S3)
capture egen  W7COD91360Wk = rowtotal(W7TODS91360S2 W7TODS91360S3)
capture egen  W7COD91362Wk = rowtotal(W7TODS91362S2 W7TODS91362S3)
capture egen  W7CTO91362Wk = rowtotal(W7TTOS91362S2 W7TTOS91362S3)
capture egen  W7CTO91363Wk = rowtotal(W7TTOS91363S2 W7TTOS91363S3)
capture egen  W7COD91363Wk = rowtotal(W7TODS91363S2 W7TODS91363S3)
capture egen  W7COD91365Wk = rowtotal(W7TODS91365S2 W7TODS91365S3)
capture egen  W7CTO91365Wk = rowtotal(W7TTOS91365S2 W7TTOS91365S3)
capture egen  W7COD91366Wk = rowtotal(W7TODS91366S2 W7TODS91366S3)
capture egen  W7CTO91366Wk = rowtotal(W7TTOS91366S2 W7TTOS91366S3)
capture egen  W7COD91367Wk = rowtotal(W7TODS91367S2 W7TODS91367S3)
capture egen  W7CTO91367Wk = rowtotal(W7TTOS91367S2 W7TTOS91367S3)
capture egen  W7CTO91369Wk = rowtotal(W7TTOS91369S2 W7TTOS91369S3)
capture egen  W7COD91369Wk = rowtotal(W7TODS91369S2 W7TODS91369S3)
capture egen  W7CTO91370Wk = rowtotal(W7TTOS91370S2 W7TTOS91370S3)
capture egen  W7COD91370Wk = rowtotal(W7TODS91370S2 W7TODS91370S3)
capture egen  W7COD91371Wk = rowtotal(W7TODS91371S2 W7TODS91371S3)
capture egen  W7CTO91371Wk = rowtotal(W7TTOS91371S2 W7TTOS91371S3)
capture egen  W7CTO91372Wk = rowtotal(W7TTOS91372S2 W7TTOS91372S3)
capture egen  W7COD91372Wk = rowtotal(W7TODS91372S2 W7TODS91372S3)
capture egen  W7COD91374Wk = rowtotal(W7TODS91374S2 W7TODS91374S3)
capture egen  W7CTO91374Wk = rowtotal(W7TTOS91374S2 W7TTOS91374S3)
capture egen  W7COD91375Wk = rowtotal(W7TODS91375S2 W7TODS91375S3)
capture egen  W7CTO91375Wk = rowtotal(W7TTOS91375S2 W7TTOS91375S3)
capture egen  W7CTO91376Wk = rowtotal(W7TTOS91376S2 W7TTOS91376S3)
capture egen  W7COD91376Wk = rowtotal(W7TODS91376S2 W7TODS91376S3)
capture egen  W7COD91377Wk = rowtotal(W7TODS91377S2 W7TODS91377S3)
capture egen  W7CTO91377Wk = rowtotal(W7TTOS91377S2 W7TTOS91377S3)
capture egen  W7COD91378Wk = rowtotal(W7TODS91378S2 W7TODS91378S3)
capture egen  W7CTO91378Wk = rowtotal(W7TTOS91378S2 W7TTOS91378S3)
capture egen  W7CTO91379Wk = rowtotal(W7TTOS91379S2 W7TTOS91379S3)
capture egen  W7COD91379Wk = rowtotal(W7TODS91379S2 W7TODS91379S3)
capture egen  W7COD91380Wk = rowtotal(W7TODS91380S2 W7TODS91380S3)
capture egen  W7CTO91380Wk = rowtotal(W7TTOS91380S2 W7TTOS91380S3)
capture egen  W7COD91381Wk = rowtotal(W7TODS91381S2 W7TODS91381S3)
capture egen  W7CTO91381Wk = rowtotal(W7TTOS91381S2 W7TTOS91381S3)
capture egen  W7CTO91382Wk = rowtotal(W7TTOS91382S2 W7TTOS91382S3)
capture egen  W7COD91382Wk = rowtotal(W7TODS91382S2 W7TODS91382S3)
capture egen  W7CTO91383Wk = rowtotal(W7TTOS91383S2 W7TTOS91383S3)
capture egen  W7COD91383Wk = rowtotal(W7TODS91383S2 W7TODS91383S3)
capture egen  W7CTO91384Wk = rowtotal(W7TTOS91384S2 W7TTOS91384S3)
capture egen  W7COD91384Wk = rowtotal(W7TODS91384S2 W7TODS91384S3)
capture egen  W7CTO91385Wk = rowtotal(W7TTOS91385S2 W7TTOS91385S3)
capture egen  W7COD91385Wk = rowtotal(W7TODS91385S2 W7TODS91385S3)
capture egen  W7COD91386Wk = rowtotal(W7TODS91386S2 W7TODS91386S3)
capture egen  W7CTO91386Wk = rowtotal(W7TTOS91386S2 W7TTOS91386S3)
capture egen  W7COD91387Wk = rowtotal(W7TODS91387S2 W7TODS91387S3)
capture egen  W7CTO91387Wk = rowtotal(W7TTOS91387S2 W7TTOS91387S3)
capture egen  W7CTO91388Wk = rowtotal(W7TTOS91388S2 W7TTOS91388S3)
capture egen  W7COD91388Wk = rowtotal(W7TODS91388S2 W7TODS91388S3)
capture egen  W7COD91389Wk = rowtotal(W7TODS91389S2 W7TODS91389S3)
capture egen  W7CTO91389Wk = rowtotal(W7TTOS91389S2 W7TTOS91389S3)
capture egen  W7COD91390Wk = rowtotal(W7TODS91390S2 W7TODS91390S3)
capture egen  W7CTO91390Wk = rowtotal(W7TTOS91390S2 W7TTOS91390S3)
capture egen  W7COD91391Wk = rowtotal(W7TODS91391S2 W7TODS91391S3)
capture egen  W7CTO91391Wk = rowtotal(W7TTOS91391S2 W7TTOS91391S3)
capture egen  W7CTO91392Wk = rowtotal(W7TTOS91392S2 W7TTOS91392S3)
capture egen  W7COD91392Wk = rowtotal(W7TODS91392S2 W7TODS91392S3)
capture egen  W7CTO91393Wk = rowtotal(W7TTOS91393S2 W7TTOS91393S3)
capture egen  W7COD91393Wk = rowtotal(W7TODS91393S2 W7TODS91393S3)
capture egen  W7COD91394Wk = rowtotal(W7TODS91394S2 W7TODS91394S3)
capture egen  W7CTO91394Wk = rowtotal(W7TTOS91394S2 W7TTOS91394S3)
capture egen  W7CTO91395Wk = rowtotal(W7TTOS91395S2 W7TTOS91395S3)
capture egen  W7COD91395Wk = rowtotal(W7TODS91395S2 W7TODS91395S3)
capture egen  W7COD91396Wk = rowtotal(W7TODS91396S2 W7TODS91396S3)
capture egen  W7CTO91396Wk = rowtotal(W7TTOS91396S2 W7TTOS91396S3)
capture egen  W7CTO91397Wk = rowtotal(W7TTOS91397S2 W7TTOS91397S3)
capture egen  W7COD91397Wk = rowtotal(W7TODS91397S2 W7TODS91397S3)
capture egen  W7CTO91398Wk = rowtotal(W7TTOS91398S2 W7TTOS91398S3)
capture egen  W7COD91398Wk = rowtotal(W7TODS91398S2 W7TODS91398S3)
capture egen  W7COD91399Wk = rowtotal(W7TODS91399S2 W7TODS91399S3)
capture egen  W7CTO91399Wk = rowtotal(W7TTOS91399S2 W7TTOS91399S3)
capture egen  W7CTO91400Wk = rowtotal(W7TTOS91400S2 W7TTOS91400S3)
capture egen  W7COD91400Wk = rowtotal(W7TODS91400S2 W7TODS91400S3)
capture egen  W7COD91401Wk = rowtotal(W7TODS91401S2 W7TODS91401S3)
capture egen  W7CTO91401Wk = rowtotal(W7TTOS91401S2 W7TTOS91401S3)
capture egen  W7COD91402Wk = rowtotal(W7TODS91402S2 W7TODS91402S3)
capture egen  W7CTO91402Wk = rowtotal(W7TTOS91402S2 W7TTOS91402S3)
capture egen  W7COD91403Wk = rowtotal(W7TODS91403S2 W7TODS91403S3)
capture egen  W7CTO91403Wk = rowtotal(W7TTOS91403S2 W7TTOS91403S3)
capture egen  W7COD91404Wk = rowtotal(W7TODS91404S2 W7TODS91404S3)
capture egen  W7CTO91404Wk = rowtotal(W7TTOS91404S2 W7TTOS91404S3)
capture egen  W7CTO91405Wk = rowtotal(W7TTOS91405S2 W7TTOS91405S3)
capture egen  W7COD91405Wk = rowtotal(W7TODS91405S2 W7TODS91405S3)
capture egen  W7CTO91406Wk = rowtotal(W7TTOS91406S2 W7TTOS91406S3)
capture egen  W7COD91406Wk = rowtotal(W7TODS91406S2 W7TODS91406S3)
capture egen  W7COD91407Wk = rowtotal(W7TODS91407S2 W7TODS91407S3)
capture egen  W7CTO91407Wk = rowtotal(W7TTOS91407S2 W7TTOS91407S3)
capture egen  W7COD91408Wk = rowtotal(W7TODS91408S2 W7TODS91408S3)
capture egen  W7CTO91408Wk = rowtotal(W7TTOS91408S2 W7TTOS91408S3)
capture egen  W7CTO91409Wk = rowtotal(W7TTOS91409S2 W7TTOS91409S3)
capture egen  W7COD91409Wk = rowtotal(W7TODS91409S2 W7TODS91409S3)
capture egen  W7CTO91410Wk = rowtotal(W7TTOS91410S2 W7TTOS91410S3)
capture egen  W7COD91410Wk = rowtotal(W7TODS91410S2 W7TODS91410S3)
capture egen  W7COD91411Wk = rowtotal(W7TODS91411S2 W7TODS91411S3)
capture egen  W7CTO91411Wk = rowtotal(W7TTOS91411S2 W7TTOS91411S3)
capture egen  W7COD91412Wk = rowtotal(W7TODS91412S2 W7TODS91412S3)
capture egen  W7CTO91412Wk = rowtotal(W7TTOS91412S2 W7TTOS91412S3)
capture egen  W7CTO91413Wk = rowtotal(W7TTOS91413S2 W7TTOS91413S3)
capture egen  W7COD91413Wk = rowtotal(W7TODS91413S2 W7TODS91413S3)
capture egen  W7COD91414Wk = rowtotal(W7TODS91414S2 W7TODS91414S3)
capture egen  W7CTO91414Wk = rowtotal(W7TTOS91414S2 W7TTOS91414S3)
capture egen  W7COD91415Wk = rowtotal(W7TODS91415S2 W7TODS91415S3)
capture egen  W7CTO91415Wk = rowtotal(W7TTOS91415S2 W7TTOS91415S3)
capture egen  W7COD91416Wk = rowtotal(W7TODS91416S2 W7TODS91416S3)
capture egen  W7CTO91416Wk = rowtotal(W7TTOS91416S2 W7TTOS91416S3)
capture egen  W7CTO91417Wk = rowtotal(W7TTOS91417S2 W7TTOS91417S3)
capture egen  W7COD91417Wk = rowtotal(W7TODS91417S2 W7TODS91417S3)
capture egen  W7COD91418Wk = rowtotal(W7TODS91418S2 W7TODS91418S3)
capture egen  W7CTO91418Wk = rowtotal(W7TTOS91418S2 W7TTOS91418S3)
capture egen  W7COD91419Wk = rowtotal(W7TODS91419S2 W7TODS91419S3)
capture egen  W7CTO91419Wk = rowtotal(W7TTOS91419S2 W7TTOS91419S3)
capture egen  W7COD91420Wk = rowtotal(W7TODS91420S2 W7TODS91420S3)
capture egen  W7CTO91420Wk = rowtotal(W7TTOS91420S2 W7TTOS91420S3)
capture egen  W7CTO91421Wk = rowtotal(W7TTOS91421S2 W7TTOS91421S3)
capture egen  W7COD91421Wk = rowtotal(W7TODS91421S2 W7TODS91421S3)
capture egen  W7CTO91422Wk = rowtotal(W7TTOS91422S2 W7TTOS91422S3)
capture egen  W7COD91422Wk = rowtotal(W7TODS91422S2 W7TODS91422S3)
capture egen  W7COD91423Wk = rowtotal(W7TODS91423S2 W7TODS91423S3)
capture egen  W7CTO91423Wk = rowtotal(W7TTOS91423S2 W7TTOS91423S3)
capture egen  W7COD91424Wk = rowtotal(W7TODS91424S2 W7TODS91424S3)
capture egen  W7CTO91424Wk = rowtotal(W7TTOS91424S2 W7TTOS91424S3)
capture egen  W7COD91425Wk = rowtotal(W7TODS91425S2 W7TODS91425S3)
capture egen  W7CTO91425Wk = rowtotal(W7TTOS91425S2 W7TTOS91425S3)
capture egen  W7COD91426Wk = rowtotal(W7TODS91426S2 W7TODS91426S3)
capture egen  W7CTO91426Wk = rowtotal(W7TTOS91426S2 W7TTOS91426S3)
capture egen  W7CTO91427Wk = rowtotal(W7TTOS91427S2 W7TTOS91427S3)
capture egen  W7COD91427Wk = rowtotal(W7TODS91427S2 W7TODS91427S3)
capture egen  W7CTO91428Wk = rowtotal(W7TTOS91428S2 W7TTOS91428S3)
capture egen  W7COD91428Wk = rowtotal(W7TODS91428S2 W7TODS91428S3)
capture egen  W7COD91429Wk = rowtotal(W7TODS91429S2 W7TODS91429S3)
capture egen  W7CTO91429Wk = rowtotal(W7TTOS91429S2 W7TTOS91429S3)
capture egen  W7CTO91430Wk = rowtotal(W7TTOS91430S2 W7TTOS91430S3)
capture egen  W7COD91430Wk = rowtotal(W7TODS91430S2 W7TODS91430S3)
capture egen  W7COD91431Wk = rowtotal(W7TODS91431S2 W7TODS91431S3)
capture egen  W7CTO91431Wk = rowtotal(W7TTOS91431S2 W7TTOS91431S3)
capture egen  W7COD91432Wk = rowtotal(W7TODS91432S2 W7TODS91432S3)
capture egen  W7CTO91432Wk = rowtotal(W7TTOS91432S2 W7TTOS91432S3)
capture egen  W7CTO91433Wk = rowtotal(W7TTOS91433S2 W7TTOS91433S3)
capture egen  W7COD91433Wk = rowtotal(W7TODS91433S2 W7TODS91433S3)
capture egen  W7COD91434Wk = rowtotal(W7TODS91434S2 W7TODS91434S3)
capture egen  W7CTO91434Wk = rowtotal(W7TTOS91434S2 W7TTOS91434S3)
capture egen  W7COD91435Wk = rowtotal(W7TODS91435S2 W7TODS91435S3)
capture egen  W7CTO91435Wk = rowtotal(W7TTOS91435S2 W7TTOS91435S3)
capture egen  W7COD91436Wk = rowtotal(W7TODS91436S2 W7TODS91436S3)
capture egen  W7CTO91436Wk = rowtotal(W7TTOS91436S2 W7TTOS91436S3)
capture egen  W7CTO91437Wk = rowtotal(W7TTOS91437S2 W7TTOS91437S3)
capture egen  W7COD91437Wk = rowtotal(W7TODS91437S2 W7TODS91437S3)
capture egen  W7CTO91438Wk = rowtotal(W7TTOS91438S2 W7TTOS91438S3)
capture egen  W7COD91438Wk = rowtotal(W7TODS91438S2 W7TODS91438S3)
capture egen  W7COD91439Wk = rowtotal(W7TODS91439S2 W7TODS91439S3)
capture egen  W7CTO91439Wk = rowtotal(W7TTOS91439S2 W7TTOS91439S3)
capture egen  W7COD91440Wk = rowtotal(W7TODS91440S2 W7TODS91440S3)
capture egen  W7CTO91440Wk = rowtotal(W7TTOS91440S2 W7TTOS91440S3)
capture egen  W7CTO91441Wk = rowtotal(W7TTOS91441S2 W7TTOS91441S3)
capture egen  W7COD91441Wk = rowtotal(W7TODS91441S2 W7TODS91441S3)
capture egen  W7COD91443Wk = rowtotal(W7TODS91443S2 W7TODS91443S3)
capture egen  W7CTO91443Wk = rowtotal(W7TTOS91443S2 W7TTOS91443S3)
capture egen  W7CTO91444Wk = rowtotal(W7TTOS91444S2 W7TTOS91444S3)
capture egen  W7COD91444Wk = rowtotal(W7TODS91444S2 W7TODS91444S3)
capture egen  W7COD91445Wk = rowtotal(W7TODS91445S2 W7TODS91445S3)
capture egen  W7CTO91445Wk = rowtotal(W7TTOS91445S2 W7TTOS91445S3)
capture egen  W7COD91447Wk = rowtotal(W7TODS91447S2 W7TODS91447S3)
capture egen  W7CTO91447Wk = rowtotal(W7TTOS91447S2 W7TTOS91447S3)
capture egen  W7CTO91448Wk = rowtotal(W7TTOS91448S2 W7TTOS91448S3)
capture egen  W7COD91448Wk = rowtotal(W7TODS91448S2 W7TODS91448S3)
capture egen  W7CTO91449Wk = rowtotal(W7TTOS91449S2 W7TTOS91449S3)
capture egen  W7COD91449Wk = rowtotal(W7TODS91449S2 W7TODS91449S3)
capture egen  W7CTO91450Wk = rowtotal(W7TTOS91450S2 W7TTOS91450S3)
capture egen  W7COD91450Wk = rowtotal(W7TODS91450S2 W7TODS91450S3)
capture egen  W7CTO91451Wk = rowtotal(W7TTOS91451S2 W7TTOS91451S3)
capture egen  W7COD91451Wk = rowtotal(W7TODS91451S2 W7TODS91451S3)
capture egen  W7COD91454Wk = rowtotal(W7TODS91454S2 W7TODS91454S3)
capture egen  W7CTO91454Wk = rowtotal(W7TTOS91454S2 W7TTOS91454S3)
capture egen  W7COD91455Wk = rowtotal(W7TODS91455S2 W7TODS91455S3)
capture egen  W7CTO91455Wk = rowtotal(W7TTOS91455S2 W7TTOS91455S3)
capture egen  W7COD91456Wk = rowtotal(W7TODS91456S2 W7TODS91456S3)
capture egen  W7CTO91456Wk = rowtotal(W7TTOS91456S2 W7TTOS91456S3)
capture egen  W7CTO91457Wk = rowtotal(W7TTOS91457S2 W7TTOS91457S3)
capture egen  W7COD91457Wk = rowtotal(W7TODS91457S2 W7TODS91457S3)
capture egen  W7CTO91458Wk = rowtotal(W7TTOS91458S2 W7TTOS91458S3)
capture egen  W7COD91458Wk = rowtotal(W7TODS91458S2 W7TODS91458S3)
capture egen  W7CTO91459Wk = rowtotal(W7TTOS91459S2 W7TTOS91459S3)
capture egen  W7COD91459Wk = rowtotal(W7TODS91459S2 W7TODS91459S3)
capture egen  W7COD91460Wk = rowtotal(W7TODS91460S2 W7TODS91460S3)
capture egen  W7CTO91460Wk = rowtotal(W7TTOS91460S2 W7TTOS91460S3)
capture egen  W7CTO91466Wk = rowtotal(W7TTOS91466S2 W7TTOS91466S3)
capture egen  W7COD91466Wk = rowtotal(W7TODS91466S2 W7TODS91466S3)
capture egen  W7CTO91467Wk = rowtotal(W7TTOS91467S2 W7TTOS91467S3)
capture egen  W7COD91467Wk = rowtotal(W7TODS91467S2 W7TODS91467S3)
capture egen  W7COD91468Wk = rowtotal(W7TODS91468S2 W7TODS91468S3)
capture egen  W7CTO91468Wk = rowtotal(W7TTOS91468S2 W7TTOS91468S3)
capture egen  W7COD91469Wk = rowtotal(W7TODS91469S2 W7TODS91469S3)
capture egen  W7CTO91469Wk = rowtotal(W7TTOS91469S2 W7TTOS91469S3)
capture egen  W7CTO91470Wk = rowtotal(W7TTOS91470S2 W7TTOS91470S3)
capture egen  W7COD91470Wk = rowtotal(W7TODS91470S2 W7TODS91470S3)
capture egen  W7CTO91471Wk = rowtotal(W7TTOS91471S2 W7TTOS91471S3)
capture egen  W7COD91471Wk = rowtotal(W7TODS91471S2 W7TODS91471S3)
capture egen  W7COD91472Wk = rowtotal(W7TODS91472S2 W7TODS91472S3)
capture egen  W7CTO91472Wk = rowtotal(W7TTOS91472S2 W7TTOS91472S3)
capture egen  W7COD91473Wk = rowtotal(W7TODS91473S2 W7TODS91473S3)
capture egen  W7CTO91473Wk = rowtotal(W7TTOS91473S2 W7TTOS91473S3)
capture egen  W7COD91474Wk = rowtotal(W7TODS91474S2 W7TODS91474S3)
capture egen  W7CTO91474Wk = rowtotal(W7TTOS91474S2 W7TTOS91474S3)
capture egen  W7CTO91478Wk = rowtotal(W7TTOS91478S2 W7TTOS91478S3)
capture egen  W7COD91478Wk = rowtotal(W7TODS91478S2 W7TODS91478S3)
capture egen  W7COD91481Wk = rowtotal(W7TODS91481S2 W7TODS91481S3)
capture egen  W7CTO91481Wk = rowtotal(W7TTOS91481S2 W7TTOS91481S3)
capture egen  W7COD91483Wk = rowtotal(W7TODS91483S2 W7TODS91483S3)
capture egen  W7CTO91483Wk = rowtotal(W7TTOS91483S2 W7TTOS91483S3)
capture egen  W7CTO91485Wk = rowtotal(W7TTOS91485S2 W7TTOS91485S3)
capture egen  W7COD91485Wk = rowtotal(W7TODS91485S2 W7TODS91485S3)
capture egen  W7CTO91486Wk = rowtotal(W7TTOS91486S2 W7TTOS91486S3)
capture egen  W7COD91486Wk = rowtotal(W7TODS91486S2 W7TODS91486S3)
capture egen  W7CTO91489Wk = rowtotal(W7TTOS91489S2 W7TTOS91489S3)
capture egen  W7COD91489Wk = rowtotal(W7TODS91489S2 W7TODS91489S3)
capture egen  W7CTO91490Wk = rowtotal(W7TTOS91490S2 W7TTOS91490S3)
capture egen  W7COD91490Wk = rowtotal(W7TODS91490S2 W7TODS91490S3)
capture egen  W7COD91491Wk = rowtotal(W7TODS91491S2 W7TODS91491S3)
capture egen  W7CTO91491Wk = rowtotal(W7TTOS91491S2 W7TTOS91491S3)
capture egen  W7CTO91492Wk = rowtotal(W7TTOS91492S2 W7TTOS91492S3)
capture egen  W7COD91492Wk = rowtotal(W7TODS91492S2 W7TODS91492S3)
capture egen  W7COD91493Wk = rowtotal(W7TODS91493S2 W7TODS91493S3)
capture egen  W7CTO91493Wk = rowtotal(W7TTOS91493S2 W7TTOS91493S3)
capture egen  W7COD91494Wk = rowtotal(W7TODS91494S2 W7TODS91494S3)
capture egen  W7CTO91494Wk = rowtotal(W7TTOS91494S2 W7TTOS91494S3)
capture egen  W7CTO91495Wk = rowtotal(W7TTOS91495S2 W7TTOS91495S3)
capture egen  W7COD91495Wk = rowtotal(W7TODS91495S2 W7TODS91495S3)
capture egen  W7COD91496Wk = rowtotal(W7TODS91496S2 W7TODS91496S3)
capture egen  W7CTO91496Wk = rowtotal(W7TTOS91496S2 W7TTOS91496S3)
capture egen  W7COD91497Wk = rowtotal(W7TODS91497S2 W7TODS91497S3)
capture egen  W7CTO91497Wk = rowtotal(W7TTOS91497S2 W7TTOS91497S3)
capture egen  W7COD91498Wk = rowtotal(W7TODS91498S2 W7TODS91498S3)
capture egen  W7CTO91498Wk = rowtotal(W7TTOS91498S2 W7TTOS91498S3)
capture egen  W7COD91499Wk = rowtotal(W7TODS91499S2 W7TODS91499S3)
capture egen  W7CTO91499Wk = rowtotal(W7TTOS91499S2 W7TTOS91499S3)
capture egen  W7CTO91500Wk = rowtotal(W7TTOS91500S2 W7TTOS91500S3)
capture egen  W7COD91500Wk = rowtotal(W7TODS91500S2 W7TODS91500S3)
capture egen  W7COD91501Wk = rowtotal(W7TODS91501S2 W7TODS91501S3)
capture egen  W7CTO91501Wk = rowtotal(W7TTOS91501S2 W7TTOS91501S3)
capture egen  W7COD91502Wk = rowtotal(W7TODS91502S2 W7TODS91502S3)
capture egen  W7CTO91502Wk = rowtotal(W7TTOS91502S2 W7TTOS91502S3)
capture egen  W7CTO91503Wk = rowtotal(W7TTOS91503S2 W7TTOS91503S3)
capture egen  W7COD91503Wk = rowtotal(W7TODS91503S2 W7TODS91503S3)
capture egen  W7CTO91504Wk = rowtotal(W7TTOS91504S2 W7TTOS91504S3)
capture egen  W7COD91504Wk = rowtotal(W7TODS91504S2 W7TODS91504S3)
capture egen  W7COD91505Wk = rowtotal(W7TODS91505S2 W7TODS91505S3)
capture egen  W7CTO91505Wk = rowtotal(W7TTOS91505S2 W7TTOS91505S3)
capture egen  W7COD91506Wk = rowtotal(W7TODS91506S2 W7TODS91506S3)
capture egen  W7CTO91506Wk = rowtotal(W7TTOS91506S2 W7TTOS91506S3)
capture egen  W7CTO91508Wk = rowtotal(W7TTOS91508S2 W7TTOS91508S3)
capture egen  W7COD91508Wk = rowtotal(W7TODS91508S2 W7TODS91508S3)
capture egen  W7CTO91509Wk = rowtotal(W7TTOS91509S2 W7TTOS91509S3)
capture egen  W7COD91509Wk = rowtotal(W7TODS91509S2 W7TODS91509S3)
capture egen  W7COD91510Wk = rowtotal(W7TODS91510S2 W7TODS91510S3)
capture egen  W7CTO91510Wk = rowtotal(W7TTOS91510S2 W7TTOS91510S3)
capture egen  W7CTO91512Wk = rowtotal(W7TTOS91512S2 W7TTOS91512S3)
capture egen  W7COD91512Wk = rowtotal(W7TODS91512S2 W7TODS91512S3)
capture egen  W7COD91516Wk = rowtotal(W7TODS91516S2 W7TODS91516S3)
capture egen  W7CTO91516Wk = rowtotal(W7TTOS91516S2 W7TTOS91516S3)
capture egen  W7COD91518Wk = rowtotal(W7TODS91518S2 W7TODS91518S3)
capture egen  W7CTO91518Wk = rowtotal(W7TTOS91518S2 W7TTOS91518S3)
capture egen  W7COD91521Wk = rowtotal(W7TODS91521S2 W7TODS91521S3)
capture egen  W7CTO91521Wk = rowtotal(W7TTOS91521S2 W7TTOS91521S3)
capture egen  W7CTO91522Wk = rowtotal(W7TTOS91522S2 W7TTOS91522S3)
capture egen  W7COD91522Wk = rowtotal(W7TODS91522S2 W7TODS91522S3)
capture egen  W7CTO91523Wk = rowtotal(W7TTOS91523S2 W7TTOS91523S3)
capture egen  W7COD91523Wk = rowtotal(W7TODS91523S2 W7TODS91523S3)
capture egen  W7COD91525Wk = rowtotal(W7TODS91525S2 W7TODS91525S3)
capture egen  W7CTO91525Wk = rowtotal(W7TTOS91525S2 W7TTOS91525S3)
capture egen  W7COD91535Wk = rowtotal(W7TODS91535S2 W7TODS91535S3)
capture egen  W7CTO91535Wk = rowtotal(W7TTOS91535S2 W7TTOS91535S3)
capture egen  W7COD91536Wk = rowtotal(W7TODS91536S2 W7TODS91536S3)
capture egen  W7CTO91536Wk = rowtotal(W7TTOS91536S2 W7TTOS91536S3)
capture egen  W7COD91537Wk = rowtotal(W7TODS91537S2 W7TODS91537S3)
capture egen  W7CTO91537Wk = rowtotal(W7TTOS91537S2 W7TTOS91537S3)
capture egen  W7CTO91538Wk = rowtotal(W7TTOS91538S2 W7TTOS91538S3)
capture egen  W7COD91538Wk = rowtotal(W7TODS91538S2 W7TODS91538S3)
capture egen  W7CTO91541Wk = rowtotal(W7TTOS91541S2 W7TTOS91541S3)
capture egen  W7COD91541Wk = rowtotal(W7TODS91541S2 W7TODS91541S3)
capture egen  W7COD91542Wk = rowtotal(W7TODS91542S2 W7TODS91542S3)
capture egen  W7CTO91542Wk = rowtotal(W7TTOS91542S2 W7TTOS91542S3)
capture egen  W7CTO91547Wk = rowtotal(W7TTOS91547S2 W7TTOS91547S3)
capture egen  W7COD91547Wk = rowtotal(W7TODS91547S2 W7TODS91547S3)
capture egen  W7COD91548Wk = rowtotal(W7TODS91548S2 W7TODS91548S3)
capture egen  W7CTO91548Wk = rowtotal(W7TTOS91548S2 W7TTOS91548S3)
capture egen  W7CTO91549Wk = rowtotal(W7TTOS91549S2 W7TTOS91549S3)
capture egen  W7COD91549Wk = rowtotal(W7TODS91549S2 W7TODS91549S3)
capture egen  W7COD91550Wk = rowtotal(W7TODS91550S2 W7TODS91550S3)
capture egen  W7CTO91550Wk = rowtotal(W7TTOS91550S2 W7TTOS91550S3)
capture egen  W7CTO91551Wk = rowtotal(W7TTOS91551S2 W7TTOS91551S3)
capture egen  W7COD91551Wk = rowtotal(W7TODS91551S2 W7TODS91551S3)
capture egen  W7CTO91556Wk = rowtotal(W7TTOS91556S2 W7TTOS91556S3)
capture egen  W7COD91556Wk = rowtotal(W7TODS91556S2 W7TODS91556S3)
capture egen  W7COD91557Wk = rowtotal(W7TODS91557S2 W7TODS91557S3)
capture egen  W7CTO91557Wk = rowtotal(W7TTOS91557S2 W7TTOS91557S3)
capture egen  W7COD91558Wk = rowtotal(W7TODS91558S2 W7TODS91558S3)
capture egen  W7CTO91558Wk = rowtotal(W7TTOS91558S2 W7TTOS91558S3)
capture egen  W7COD91559Wk = rowtotal(W7TODS91559S2 W7TODS91559S3)
capture egen  W7CTO91559Wk = rowtotal(W7TTOS91559S2 W7TTOS91559S3)
capture egen  W7COD91560Wk = rowtotal(W7TODS91560S2 W7TODS91560S3)
capture egen  W7CTO91560Wk = rowtotal(W7TTOS91560S2 W7TTOS91560S3)
capture egen  W7CTO91561Wk = rowtotal(W7TTOS91561S2 W7TTOS91561S3)
capture egen  W7COD91561Wk = rowtotal(W7TODS91561S2 W7TODS91561S3)
capture egen  W7COD91562Wk = rowtotal(W7TODS91562S2 W7TODS91562S3)
capture egen  W7CTO91562Wk = rowtotal(W7TTOS91562S2 W7TTOS91562S3)
capture egen  W7COD91563Wk = rowtotal(W7TODS91563S2 W7TODS91563S3)
capture egen  W7CTO91563Wk = rowtotal(W7TTOS91563S2 W7TTOS91563S3)
capture egen  W7CTO91564Wk = rowtotal(W7TTOS91564S2 W7TTOS91564S3)
capture egen  W7COD91564Wk = rowtotal(W7TODS91564S2 W7TODS91564S3)
capture egen  W7CTO91565Wk = rowtotal(W7TTOS91565S2 W7TTOS91565S3)
capture egen  W7COD91565Wk = rowtotal(W7TODS91565S2 W7TODS91565S3)
capture egen  W7CTO91570Wk = rowtotal(W7TTOS91570S2 W7TTOS91570S3)
capture egen  W7COD91570Wk = rowtotal(W7TODS91570S2 W7TODS91570S3)
capture egen  W7CTO91572Wk = rowtotal(W7TTOS91572S2 W7TTOS91572S3)
capture egen  W7COD91572Wk = rowtotal(W7TODS91572S2 W7TODS91572S3)
capture egen  W7CTO91574Wk = rowtotal(W7TTOS91574S2 W7TTOS91574S3)
capture egen  W7COD91574Wk = rowtotal(W7TODS91574S2 W7TODS91574S3)
capture egen  W7COD91576Wk = rowtotal(W7TODS91576S2 W7TODS91576S3)
capture egen  W7CTO91576Wk = rowtotal(W7TTOS91576S2 W7TTOS91576S3)
capture egen  W7COD91582Wk = rowtotal(W7TODS91582S2 W7TODS91582S3)
capture egen  W7CTO91582Wk = rowtotal(W7TTOS91582S2 W7TTOS91582S3)
capture egen  W7CTO91584Wk = rowtotal(W7TTOS91584S2 W7TTOS91584S3)
capture egen  W7COD91584Wk = rowtotal(W7TODS91584S2 W7TODS91584S3)
capture egen  W7COD91585Wk = rowtotal(W7TODS91585S2 W7TODS91585S3)
capture egen  W7CTO91585Wk = rowtotal(W7TTOS91585S2 W7TTOS91585S3)
capture egen  W7CTO91586Wk = rowtotal(W7TTOS91586S2 W7TTOS91586S3)
capture egen  W7COD91586Wk = rowtotal(W7TODS91586S2 W7TODS91586S3)
capture egen  W7CTO91587Wk = rowtotal(W7TTOS91587S2 W7TTOS91587S3)
capture egen  W7COD91587Wk = rowtotal(W7TODS91587S2 W7TODS91587S3)
capture egen  W7COD91588Wk = rowtotal(W7TODS91588S2 W7TODS91588S3)
capture egen  W7CTO91588Wk = rowtotal(W7TTOS91588S2 W7TTOS91588S3)
capture egen  W7CTO91589Wk = rowtotal(W7TTOS91589S2 W7TTOS91589S3)
capture egen  W7COD91589Wk = rowtotal(W7TODS91589S2 W7TODS91589S3)
capture egen  W7CTO91590Wk = rowtotal(W7TTOS91590S2 W7TTOS91590S3)
capture egen  W7COD91590Wk = rowtotal(W7TODS91590S2 W7TODS91590S3)
capture egen  W7CTO91591Wk = rowtotal(W7TTOS91591S2 W7TTOS91591S3)
capture egen  W7COD91591Wk = rowtotal(W7TODS91591S2 W7TODS91591S3)
capture egen  W7CTO91592Wk = rowtotal(W7TTOS91592S2 W7TTOS91592S3)
capture egen  W7COD91592Wk = rowtotal(W7TODS91592S2 W7TODS91592S3)
capture egen  W7CTO91593Wk = rowtotal(W7TTOS91593S2 W7TTOS91593S3)
capture egen  W7COD91593Wk = rowtotal(W7TODS91593S2 W7TODS91593S3)
capture egen  W7CTO91594Wk = rowtotal(W7TTOS91594S2 W7TTOS91594S3)
capture egen  W7COD91594Wk = rowtotal(W7TODS91594S2 W7TODS91594S3)
capture egen  W7COD91595Wk = rowtotal(W7TODS91595S2 W7TODS91595S3)
capture egen  W7CTO91595Wk = rowtotal(W7TTOS91595S2 W7TTOS91595S3)
capture egen  W7COD91596Wk = rowtotal(W7TODS91596S2 W7TODS91596S3)
capture egen  W7CTO91596Wk = rowtotal(W7TTOS91596S2 W7TTOS91596S3)
capture egen  W7COD91597Wk = rowtotal(W7TODS91597S2 W7TODS91597S3)
capture egen  W7CTO91597Wk = rowtotal(W7TTOS91597S2 W7TTOS91597S3)
capture egen  W7CTO91598Wk = rowtotal(W7TTOS91598S2 W7TTOS91598S3)
capture egen  W7COD91598Wk = rowtotal(W7TODS91598S2 W7TODS91598S3)
capture egen  W7CTO91599Wk = rowtotal(W7TTOS91599S2 W7TTOS91599S3)
capture egen  W7COD91599Wk = rowtotal(W7TODS91599S2 W7TODS91599S3)
capture egen  W7CTO91600Wk = rowtotal(W7TTOS91600S2 W7TTOS91600S3)
capture egen  W7COD91600Wk = rowtotal(W7TODS91600S2 W7TODS91600S3)
capture egen  W7CTO91601Wk = rowtotal(W7TTOS91601S2 W7TTOS91601S3)
capture egen  W7COD91601Wk = rowtotal(W7TODS91601S2 W7TODS91601S3)
capture egen  W7CTO91602Wk = rowtotal(W7TTOS91602S2 W7TTOS91602S3)
capture egen  W7COD91602Wk = rowtotal(W7TODS91602S2 W7TODS91602S3)

* Saving
rename SUBJECTID SUBJECTIDW7
rename IP IPW7
sort PAC
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W7/WorkingData/W7S1234_Working.dta", replace

**************************************************************************************************
**************************************************************************************************
*										W	E	E	K	 8
**************************************************************************************************
**************************************************************************************************

set more off
clear all
* Set Working Directory (comment it with a "*", don't delet it)
cd "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W8/WorkingData"

**************************************************************************************************
*											W8S1
**************************************************************************************************


*Open W8S1 and save a Working Copy (We wanna keep a copy of the original data)
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W8/WorkingData/W8S1.dta", replace
destring, replace
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W8/WorkingData/W8S1_Working.dta", replace

* From Excel to STATA everything enters as lower case. Lets reverse it to its original: Upper Case
rename *, upper

* Now lets keep what we need
keep ///
DATE	FOD_A_3815	GRP_20841	GRP_20842	Q_5989_DUR_32286	Q_5989_SEQ_32286	Q_5989_VAL_32286	 ///
SUBJECT_ID	TIME	TIME_BEGIN_FLOWPHASE	TIME_BEGIN_SUBSTAGE	TIME_END_FLOWPHASE	TOD_A_3815	 ///
TOTAL_FLOW_ACCESSED	TTO_A_3815	WORDS_A_3815


*rename SUBJECT_ID to PAC
rename Q_5989_VAL_32286 PAC

* Adding Prefixes and Suffixes
foreach x of var * {
rename `x' W8`x'
} 

foreach x of var * {
rename `x' `x'S1
}

* Renaming SUBJECT_ID (no pre nor su fixes, we need that to merge on it)
rename W8SUBJECT_IDS1 SUBJECTID

* Renaming SUBJECT_ID (no pre nor su fixes, we need that to merge on it)
rename W8PACS1 PAC

* Eliminating ALL underscores
foreach v of var *_* { 
	local V : subinstr local v "_" "", all
	capture rename `v' `V' 
	if _rc di as txt "problem with `v'"
} 

*saving
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W8/WorkingData/W8S1_Working.dta", replace


**************************************************************************************************
*											W8S2
**************************************************************************************************

*Open W8S2 and save a Working Copy (We wanna keep a copy of the original data)
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W8/WorkingData/W8S2.dta", replace
destring, replace
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W8/WorkingData/W8S2_Working.dta", replace

* From Excel to STATA everything enters as lower case. Lets reverse it to its original: Upper Case
rename *, upper

* Now lets keep what we need
keep ///
DATE	FOD_A_3818	FOD_A_3819	FOD_A_3820	FOD_A_3821	FOD_A_3822	FOD_A_3823	FOD_A_3824	FOD_A_3825	 ///
FOD_S_91692	FOD_S_91693	FOD_S_91706	FOD_S_91707	FOD_S_91721	FOD_S_91722	FOD_S_91732	FOD_S_91736	FOD_S_91892	 ///
FOD_S_91893	FOD_S_91894	FOD_S_91895	FOD_S_91896	FOD_S_91897	FOD_S_91898	FOD_S_91899	FOD_S_91900	FOD_S_91901	 ///
FOD_S_91902	FOD_S_91903	FOD_S_91904	FOD_S_91905	FOD_S_91906	FOD_S_91907	FOD_S_91908	FOD_S_91909	FOD_S_91910	 ///
FOD_S_91911	FOD_S_91912	FOD_S_91913	FOD_S_91914	FOD_S_91915	FOD_S_91916	FOD_S_91917	FOD_S_91918	FOD_S_91919	 ///
GRP_20772	GRP_20773	GRP_20774	GRP_20775	GRP_20776	GRP_20777	GRP_20778	GRP_20779	GRP_20780	 ///
GRP_20781	GRP_20782	GRP_20783	GRP_20784	GRP_20785	GRP_20786	GRP_20787	SUBJECT_ID	TIME	 ///
TIME_BEGIN_FLOWPHASE	TIME_BEGIN_SUBSTAGE	TIME_END_FLOWPHASE	TOD_A_3818	TOD_A_3819	TOD_A_3820	TOD_A_3821	 ///
TOD_A_3822	TOD_A_3823	TOD_A_3824	TOD_A_3825	TOD_S_91692	TOD_S_91693	TOD_S_91706	TOD_S_91707	TOD_S_91721	 ///
TOD_S_91722	TOD_S_91732	TOD_S_91736	TOD_S_91892	TOD_S_91893	TOD_S_91894	TOD_S_91895	TOD_S_91896	TOD_S_91897	 ///
TOD_S_91898	TOD_S_91899	TOD_S_91900	TOD_S_91901	TOD_S_91902	TOD_S_91903	TOD_S_91904	TOD_S_91905	TOD_S_91906	 ///
TOD_S_91907	TOD_S_91908	TOD_S_91909	TOD_S_91910	TOD_S_91911	TOD_S_91912	TOD_S_91913	TOD_S_91914	TOD_S_91915	 ///
TOD_S_91916	TOD_S_91917	TOD_S_91918	TOD_S_91919	TOTAL_FLOW_ACCESSED	TTO_A_3818	TTO_A_3819	TTO_A_3820	 ///
TTO_A_3821	TTO_A_3822	TTO_A_3823	TTO_A_3824	TTO_A_3825	TTO_S_91692	TTO_S_91693	TTO_S_91706	TTO_S_91707	 ///
TTO_S_91721	TTO_S_91722	TTO_S_91732	TTO_S_91736	TTO_S_91892	TTO_S_91893	TTO_S_91894	TTO_S_91895	TTO_S_91896	 ///
TTO_S_91897	TTO_S_91898	TTO_S_91899	TTO_S_91900	TTO_S_91901	TTO_S_91902	TTO_S_91903	TTO_S_91904	TTO_S_91905	 ///
TTO_S_91906	TTO_S_91907	TTO_S_91908	TTO_S_91909	TTO_S_91910	TTO_S_91911	TTO_S_91912	TTO_S_91913	TTO_S_91914	 ///
TTO_S_91915	TTO_S_91916	TTO_S_91917	TTO_S_91918	TTO_S_91919	WORDS_A_3818	WORDS_A_3819	WORDS_A_3820	 ///
WORDS_A_3821	WORDS_A_3822	WORDS_A_3823	WORDS_A_3824	WORDS_A_3825

* Adding Prefixes and Suffixes
foreach x of var * {
rename `x' W8`x'
}
 
foreach x of var * {
rename `x' `x'S2
}

* Renaming SUBJECT_ID (no pre nor su fixes, we need that to merge on it)
rename W8SUBJECT_IDS2 SUBJECT_ID 

* Eliminating ALL underscores
foreach v of var *_* { 
	local V : subinstr local v "_" "", all
	capture rename `v' `V' 
	if _rc di as txt "problem with `v'"
} 

*saving
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W8/WorkingData/W8S2_Working.dta", replace


**************************************************************************************************
*											W8S3
**************************************************************************************************

*Open W8S3 and save a Working Copy (We wanna keep a copy of the original data)
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W8/WorkingData/W8S3.dta", replace
destring, replace
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W8/WorkingData/W8S3_Working.dta", replace

* From Excel to STATA everything enters as lower case. Lets reverse it to its original: Upper Case
rename *, upper

* Now lets keep what we need
keep ///
DATE	FOD_A_3816	FOD_A_3817	FOD_S_91603	FOD_S_91604	FOD_S_91605	FOD_S_91606	FOD_S_91608	FOD_S_91609	 ///
FOD_S_91610	FOD_S_91611	FOD_S_91612	FOD_S_91613	FOD_S_91614	FOD_S_91615	FOD_S_91618	FOD_S_91620	FOD_S_91623	 ///
FOD_S_91624	FOD_S_91625	FOD_S_91629	FOD_S_91631	FOD_S_91632	FOD_S_91633	FOD_S_91634	FOD_S_91636	FOD_S_91637	 ///
FOD_S_91641	FOD_S_91642	FOD_S_91643	FOD_S_91644	FOD_S_91646	FOD_S_91647	FOD_S_91648	FOD_S_91649	FOD_S_91652	 ///
FOD_S_91653	FOD_S_91654	FOD_S_91655	FOD_S_91656	FOD_S_91657	FOD_S_91659	FOD_S_91660	FOD_S_91664	FOD_S_91666	 ///
FOD_S_91667	FOD_S_91668	FOD_S_91670	FOD_S_91673	FOD_S_91675	FOD_S_91676	FOD_S_91678	FOD_S_91679	FOD_S_91682	 ///
FOD_S_91683	FOD_S_91684	FOD_S_91685	FOD_S_91686	FOD_S_91687	FOD_S_91688	FOD_S_91689	FOD_S_91690	FOD_S_91691	 ///
FOD_S_91692	FOD_S_91693	FOD_S_91694	FOD_S_91695	FOD_S_91696	FOD_S_91697	FOD_S_91698	FOD_S_91699	FOD_S_91700	 ///
FOD_S_91701	FOD_S_91702	FOD_S_91703	FOD_S_91704	FOD_S_91705	FOD_S_91706	FOD_S_91707	FOD_S_91708	FOD_S_91709	 ///
FOD_S_91711	FOD_S_91712	FOD_S_91714	FOD_S_91720	FOD_S_91721	FOD_S_91722	FOD_S_91732	FOD_S_91734	FOD_S_91735	 ///
FOD_S_91736	FOD_S_91741	FOD_S_91742	FOD_S_91743	FOD_S_91744	FOD_S_91745	FOD_S_91749	FOD_S_91750	FOD_S_91751	 ///
FOD_S_91752	FOD_S_91755	FOD_S_91758	FOD_S_91759	FOD_S_91760	FOD_S_91763	FOD_S_91764	FOD_S_91765	FOD_S_91768	 ///
FOD_S_91769	FOD_S_91770	FOD_S_91771	FOD_S_91773	FOD_S_91774	FOD_S_91775	FOD_S_91776	FOD_S_91777	FOD_S_91779	 ///
FOD_S_91780	FOD_S_91781	FOD_S_91782	FOD_S_91783	FOD_S_91784	FOD_S_91785	FOD_S_91786	FOD_S_91788	FOD_S_91790	 ///
FOD_S_91791	FOD_S_91792	FOD_S_91793	FOD_S_91794	FOD_S_91795	FOD_S_91796	FOD_S_91799	FOD_S_91800	FOD_S_91801	 ///
FOD_S_91802	FOD_S_91804	FOD_S_91805	FOD_S_91806	FOD_S_91809	FOD_S_91810	FOD_S_91811	FOD_S_91812	FOD_S_91813	 ///
FOD_S_91817	FOD_S_91822	FOD_S_91823	FOD_S_91825	FOD_S_91826	FOD_S_91830	FOD_S_91831	FOD_S_91833	FOD_S_91836	 ///
FOD_S_91837	FOD_S_91838	FOD_S_91841	FOD_S_91842	FOD_S_91846	FOD_S_91849	FOD_S_91850	FOD_S_91851	FOD_S_91852	 ///
FOD_S_91853	FOD_S_91854	FOD_S_91855	FOD_S_91856	FOD_S_91857	FOD_S_91858	FOD_S_91859	FOD_S_91860	FOD_S_91861	 ///
FOD_S_91862	FOD_S_91866	FOD_S_91868	FOD_S_91872	FOD_S_91877	FOD_S_91878	FOD_S_91882	FOD_S_91883	FOD_S_91885	 ///
FOD_S_91886	FOD_S_91887	FOD_S_91888	FOD_S_91890	FOD_S_91891	FOD_S_91892	FOD_S_91893	FOD_S_91894	FOD_S_91895	 ///
FOD_S_91896	FOD_S_91897	FOD_S_91898	FOD_S_91899	FOD_S_91900	FOD_S_91901	FOD_S_91902	FOD_S_91903	FOD_S_91904	 ///
FOD_S_91905	FOD_S_91906	FOD_S_91907	FOD_S_91908	FOD_S_91909	FOD_S_91910	FOD_S_91911	FOD_S_91912	FOD_S_91913	 ///
FOD_S_91914	FOD_S_91915	FOD_S_91916	FOD_S_91917	FOD_S_91918	FOD_S_91919	GRP_20771	GRP_20772	GRP_20773	 ///
GRP_20774	GRP_20775	GRP_20776	GRP_20777	GRP_20778	GRP_20779	GRP_20780	GRP_20781	GRP_20782	 ///
GRP_20783	GRP_20784	GRP_20785	GRP_20786	GRP_20787	GRP_20791	GRP_20796	GRP_20797	GRP_20798	 ///
GRP_20799	GRP_20800	GRP_20801	GRP_20802	GRP_20803	GRP_20806	GRP_20807	GRP_20809	GRP_20810	 ///
GRP_20811	GRP_20813	GRP_20814	GRP_20816	GRP_20817	GRP_20818	GRP_20819	GRP_20820	GRP_20821	 ///
GRP_20822	GRP_20825	GRP_20834	GRP_20835	GRP_20836	GRP_20837	GRP_20838	GRP_20839	GRP_20840	 ///
SUBJECT_ID	TIME	TIME_BEGIN_FLOWPHASE	TIME_BEGIN_SUBSTAGE	TIME_END_FLOWPHASE	TOD_A_3816	TOD_A_3817	 ///
TOD_S_91603	TOD_S_91604	TOD_S_91605	TOD_S_91606	TOD_S_91608	TOD_S_91609	TOD_S_91610	TOD_S_91611	TOD_S_91612	 ///
TOD_S_91613	TOD_S_91614	TOD_S_91615	TOD_S_91618	TOD_S_91620	TOD_S_91623	TOD_S_91624	TOD_S_91625	TOD_S_91629	 ///
TOD_S_91631	TOD_S_91632	TOD_S_91633	TOD_S_91634	TOD_S_91636	TOD_S_91637	TOD_S_91641	TOD_S_91642	TOD_S_91643	 ///
TOD_S_91644	TOD_S_91646	TOD_S_91647	TOD_S_91648	TOD_S_91649	TOD_S_91652	TOD_S_91653	TOD_S_91654	TOD_S_91655	 ///
TOD_S_91656	TOD_S_91657	TOD_S_91659	TOD_S_91660	TOD_S_91664	TOD_S_91666	TOD_S_91667	TOD_S_91668	TOD_S_91670	 ///
TOD_S_91673	TOD_S_91675	TOD_S_91676	TOD_S_91678	TOD_S_91679	TOD_S_91682	TOD_S_91683	TOD_S_91684	TOD_S_91685	 ///
TOD_S_91686	TOD_S_91687	TOD_S_91688	TOD_S_91689	TOD_S_91690	TOD_S_91691	TOD_S_91692	TOD_S_91693	TOD_S_91694	 ///
TOD_S_91695	TOD_S_91696	TOD_S_91697	TOD_S_91698	TOD_S_91699	TOD_S_91700	TOD_S_91701	TOD_S_91702	TOD_S_91703	 ///
TOD_S_91704	TOD_S_91705	TOD_S_91706	TOD_S_91707	TOD_S_91708	TOD_S_91709	TOD_S_91711	TOD_S_91712	TOD_S_91714	 ///
TOD_S_91720	TOD_S_91721	TOD_S_91722	TOD_S_91732	TOD_S_91734	TOD_S_91735	TOD_S_91736	TOD_S_91741	TOD_S_91742	 ///
TOD_S_91743	TOD_S_91744	TOD_S_91745	TOD_S_91749	TOD_S_91750	TOD_S_91751	TOD_S_91752	TOD_S_91755	TOD_S_91758	 ///
TOD_S_91759	TOD_S_91760	TOD_S_91763	TOD_S_91764	TOD_S_91765	TOD_S_91768	TOD_S_91769	TOD_S_91770	TOD_S_91771	 ///
TOD_S_91773	TOD_S_91774	TOD_S_91775	TOD_S_91776	TOD_S_91777	TOD_S_91779	TOD_S_91780	TOD_S_91781	TOD_S_91782	 ///
TOD_S_91783	TOD_S_91784	TOD_S_91785	TOD_S_91786	TOD_S_91788	TOD_S_91790	TOD_S_91791	TOD_S_91792	TOD_S_91793	 ///
TOD_S_91794	TOD_S_91795	TOD_S_91796	TOD_S_91799	TOD_S_91800	TOD_S_91801	TOD_S_91802	TOD_S_91804	TOD_S_91805	 ///
TOD_S_91806	TOD_S_91809	TOD_S_91810	TOD_S_91811	TOD_S_91812	TOD_S_91813	TOD_S_91817	TOD_S_91822	TOD_S_91823	 ///
TOD_S_91825	TOD_S_91826	TOD_S_91830	TOD_S_91831	TOD_S_91833	TOD_S_91836	TOD_S_91837	TOD_S_91838	TOD_S_91841	 ///
TOD_S_91842	TOD_S_91846	TOD_S_91849	TOD_S_91850	TOD_S_91851	TOD_S_91852	TOD_S_91853	TOD_S_91854	TOD_S_91855	 ///
TOD_S_91856	TOD_S_91857	TOD_S_91858	TOD_S_91859	TOD_S_91860	TOD_S_91861	TOD_S_91862	TOD_S_91866	TOD_S_91868	 ///
TOD_S_91872	TOD_S_91877	TOD_S_91878	TOD_S_91882	TOD_S_91883	TOD_S_91885	TOD_S_91886	TOD_S_91887	TOD_S_91888	 ///
TOD_S_91890	TOD_S_91891	TOD_S_91892	TOD_S_91893	TOD_S_91894	TOD_S_91895	TOD_S_91896	TOD_S_91897	TOD_S_91898	 ///
TOD_S_91899	TOD_S_91900	TOD_S_91901	TOD_S_91902	TOD_S_91903	TOD_S_91904	TOD_S_91905	TOD_S_91906	TOD_S_91907	 ///
TOD_S_91908	TOD_S_91909	TOD_S_91910	TOD_S_91911	TOD_S_91912	TOD_S_91913	TOD_S_91914	TOD_S_91915	TOD_S_91916	 ///
TOD_S_91917	TOD_S_91918	TOD_S_91919	TOTAL_FLOW_ACCESSED	TTO_A_3816	TTO_A_3817	TTO_S_91603	TTO_S_91604	 ///
TTO_S_91605	TTO_S_91606	TTO_S_91608	TTO_S_91609	TTO_S_91610	TTO_S_91611	TTO_S_91612	TTO_S_91613	TTO_S_91614	 ///
TTO_S_91615	TTO_S_91618	TTO_S_91620	TTO_S_91623	TTO_S_91624	TTO_S_91625	TTO_S_91629	TTO_S_91631	TTO_S_91632	 ///
TTO_S_91633	TTO_S_91634	TTO_S_91636	TTO_S_91637	TTO_S_91641	TTO_S_91642	TTO_S_91643	TTO_S_91644	TTO_S_91646	 ///
TTO_S_91647	TTO_S_91648	TTO_S_91649	TTO_S_91652	TTO_S_91653	TTO_S_91654	TTO_S_91655	TTO_S_91656	TTO_S_91657	 ///
TTO_S_91659	TTO_S_91660	TTO_S_91664	TTO_S_91666	TTO_S_91667	TTO_S_91668	TTO_S_91670	TTO_S_91673	TTO_S_91675	 ///
TTO_S_91676	TTO_S_91678	TTO_S_91679	TTO_S_91682	TTO_S_91683	TTO_S_91684	TTO_S_91685	TTO_S_91686	TTO_S_91687	 ///
TTO_S_91688	TTO_S_91689	TTO_S_91690	TTO_S_91691	TTO_S_91692	TTO_S_91693	TTO_S_91694	TTO_S_91695	TTO_S_91696	 ///
TTO_S_91697	TTO_S_91698	TTO_S_91699	TTO_S_91700	TTO_S_91701	TTO_S_91702	TTO_S_91703	TTO_S_91704	TTO_S_91705	 ///
TTO_S_91706	TTO_S_91707	TTO_S_91708	TTO_S_91709	TTO_S_91711	TTO_S_91712	TTO_S_91714	TTO_S_91720	TTO_S_91721	 ///
TTO_S_91722	TTO_S_91732	TTO_S_91734	TTO_S_91735	TTO_S_91736	TTO_S_91741	TTO_S_91742	TTO_S_91743	TTO_S_91744	 ///
TTO_S_91745	TTO_S_91749	TTO_S_91750	TTO_S_91751	TTO_S_91752	TTO_S_91755	TTO_S_91758	TTO_S_91759	TTO_S_91760	 ///
TTO_S_91763	TTO_S_91764	TTO_S_91765	TTO_S_91768	TTO_S_91769	TTO_S_91770	TTO_S_91771	TTO_S_91773	TTO_S_91774	 ///
TTO_S_91775	TTO_S_91776	TTO_S_91777	TTO_S_91779	TTO_S_91780	TTO_S_91781	TTO_S_91782	TTO_S_91783	TTO_S_91784	 ///
TTO_S_91785	TTO_S_91786	TTO_S_91788	TTO_S_91790	TTO_S_91791	TTO_S_91792	TTO_S_91793	TTO_S_91794	TTO_S_91795	 ///
TTO_S_91796	TTO_S_91799	TTO_S_91800	TTO_S_91801	TTO_S_91802	TTO_S_91804	TTO_S_91805	TTO_S_91806	TTO_S_91809	 ///
TTO_S_91810	TTO_S_91811	TTO_S_91812	TTO_S_91813	TTO_S_91817	TTO_S_91822	TTO_S_91823	TTO_S_91825	TTO_S_91826	 ///
TTO_S_91830	TTO_S_91831	TTO_S_91833	TTO_S_91836	TTO_S_91837	TTO_S_91838	TTO_S_91841	TTO_S_91842	TTO_S_91846	 ///
TTO_S_91849	TTO_S_91850	TTO_S_91851	TTO_S_91852	TTO_S_91853	TTO_S_91854	TTO_S_91855	TTO_S_91856	TTO_S_91857	 ///
TTO_S_91858	TTO_S_91859	TTO_S_91860	TTO_S_91861	TTO_S_91862	TTO_S_91866	TTO_S_91868	TTO_S_91872	TTO_S_91877	 ///
TTO_S_91878	TTO_S_91882	TTO_S_91883	TTO_S_91885	TTO_S_91886	TTO_S_91887	TTO_S_91888	TTO_S_91890	TTO_S_91891	 ///
TTO_S_91892	TTO_S_91893	TTO_S_91894	TTO_S_91895	TTO_S_91896	TTO_S_91897	TTO_S_91898	TTO_S_91899	TTO_S_91900	 ///
TTO_S_91901	TTO_S_91902	TTO_S_91903	TTO_S_91904	TTO_S_91905	TTO_S_91906	TTO_S_91907	TTO_S_91908	TTO_S_91909	 ///
TTO_S_91910	TTO_S_91911	TTO_S_91912	TTO_S_91913	TTO_S_91914	TTO_S_91915	TTO_S_91916	TTO_S_91917	TTO_S_91918	 ///
TTO_S_91919	WORDS_A_3816	WORDS_A_3817


* Adding Prefixes and Suffixes
foreach x of var * {
rename `x' W8`x'
}
 
foreach x of var * {
rename `x' `x'S3
}

* Renaming SUBJECT_ID (no pre nor su fixes, we need that to merge on it)
rename W8SUBJECT_IDS3 SUBJECT_ID 

* Eliminating ALL underscores
foreach v of var *_* { 
	local V : subinstr local v "_" "", all
	capture rename `v' `V' 
	if _rc di as txt "problem with `v'"
} 

*saving
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W8/WorkingData/W8S3_Working.dta", replace


**************************************************************************************************
*											W8S4
**************************************************************************************************

*Open W8S4 and save a Working Copy (We wanna keep a copy of the original data)
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W8/WorkingData/W8S4.dta", replace
destring, replace
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W8/WorkingData/W8S4_Working.dta", replace

* From Excel to STATA everything enters as lower case. Lets reverse it to its original: Upper Case
rename *, upper

* Now lets keep what we need
keep ///
DATE	FOD_A_3814	GRP_20793	GRP_20794	Q_5991_DUR_32306	Q_5991_DUR_32307	Q_5991_DUR_32308	Q_5991_DUR_32309	 ///
Q_5991_SEQ_32306	Q_5991_SEQ_32307	Q_5991_SEQ_32308	Q_5991_SEQ_32309	Q_5991_VAL_32306	Q_5991_VAL_32307	 ///
Q_5991_VAL_32308	Q_5991_VAL_32309	Q_5992_DUR_32306	Q_5992_DUR_32307	Q_5992_DUR_32308	Q_5992_DUR_32310	 ///
Q_5992_SEQ_32306	Q_5992_SEQ_32307	Q_5992_SEQ_32308	Q_5992_SEQ_32310	Q_5992_VAL_32306	Q_5992_VAL_32307	 ///
Q_5992_VAL_32308	Q_5992_VAL_32310	SUBJECT_ID	TIME	TIME_BEGIN_FLOWPHASE	TIME_BEGIN_SUBSTAGE	TIME_END_FLOWPHASE	 ///
TOD_A_3814	TOTAL_FLOW_ACCESSED	TTO_A_3814	WORDS_A_3814

* Adding Prefixes and Suffixes
foreach x of var * {
rename `x' W8`x'
}
 
foreach x of var * {
rename `x' `x'S4
}

* Renaming SUBJECT_ID (no pre nor su fixes, we need that to merge on it)
rename W8SUBJECT_IDS4 SUBJECT_ID 

* Eliminating ALL underscores
foreach v of var *_* { 
	local V : subinstr local v "_" "", all
	capture rename `v' `V' 
	if _rc di as txt "problem with `v'"
} 

*saving
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W8/WorkingData/W8S4_Working.dta", replace


**************************************************************************************************
*							M	E	R	G	I	N	G	 		W	8
**************************************************************************************************

clear all

* Merge W8S2 with W8S1
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W8/WorkingData/W8S2_Working.dta", replace
merge 1:m SUBJECTID using "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W8/WorkingData/W8S1_Working.dta"
drop _merge
* Save W8S12
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W8/WorkingData/W8S12_Working.dta", replace

**************************************************************************************************
clear all

* Merge W8S3 with W8S4
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W8/WorkingData/W8S4_Working.dta", replace
merge 1:m SUBJECTID using "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W8/WorkingData/W8S3_Working.dta"
drop _merge
* Save W8S34
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W8/WorkingData/W8S34_Working.dta", replace

**************************************************************************************************
clear all

* Merge W8S12 with W8S34
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W8/WorkingData/W8S12_Working.dta", replace
merge 1:m SUBJECTID using "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W8/WorkingData/W8S34_Working.dta"
drop _merge
* Save W8S1234
order *, alpha


*Dropping things we won't need...
drop W8DATES2 W8DATES3 W8DATES4 W8TOTALFLOWACCESSEDS1 W8TOTALFLOWACCESSEDS4 W8TIMES2 W8TIMES3 W8TIMES4


* labeling

label variable W8WORDSA3814S4 "That's it for this Week"
label variable W8FODA3815S1 "Whoops -- Not a Valid Subject ID"
label variable W8WORDSA3816S3 "Substage2and3BetwNoIntD&R"
label variable W8TTOA3817S3 "Substage2and3BetwIntD&R"
label variable W8TODA3818S2 "WelcomeWk8DIntImp"
label variable W8TODA3819S2 "WelcomeWk8DIntNot"
label variable W8TODA3820S2 "WelcomeWk8DNoIntImp"
label variable W8TTOA3821S2 "WelcomeWk8DNoIntNot"
label variable W8FODA3822S2 "WelcomeWk8RIntImp"
label variable W8WORDSA3823S2 "WelcomeWk8RIntNot"
label variable W8FODA3824S2 "WelcomeWk8RNoIntImp"
label variable W8FODA3825S2 "WelcomeWk8RNoIntNot"
label variable W8GRP20771S3 "RAltMediaHotAirBlog"
label variable W8GRP20772S3 "D02IntMainImp"
label variable W8GRP20773S2 "D04NoIntMainImp"
label variable W8GRP20774S2 "D06IntMainNot"
label variable W8GRP20775S3 "D08NoIntMainNot"
label variable W8GRP20776S2 "D01IntDiverseImp"
label variable W8GRP20777S3 "D03NoIntDiverseImp"
label variable W8GRP20778S2 "D05IntDiverseNot"
label variable W8GRP20779S3 "D07NoIntDiverseNot"
label variable W8GRP20780S2 "R09IntDiverseImp"
label variable W8GRP20781S3 "R10IntMainImp"
label variable W8GRP20782S2 "R11NoIntDiverseImp"
label variable W8GRP20783S3 "R12NoIntMainImp"
label variable W8GRP20784S3 "R13IntDiverseNot"
label variable W8GRP20785S2 "R14IntMainNot"
label variable W8GRP20786S3 "R15NoIntDiverseNot"
label variable W8GRP20787S2 "R16NoIntMainNot"
label variable W8GRP20791S3 "DMediaCNNNews"
label variable W8GRP20793S4 "DEndGroupQuestions"
label variable W8GRP20794S4 "REndGroupQuestions"
label variable W8GRP20796S3 "DMediaNYT"
label variable W8GRP20797S3 "DMediaWSJ"
label variable W8GRP20798S3 "DAltMediaFoxNews"
label variable W8GRP20799S3 "DAltMediaHotAirBlog"
label variable W8GRP20800S3 "DAltMediaHuffPost"
label variable W8GRP20801S3 "DAltMediaMSNBCNews"
label variable W8GRP20802S3 "DCandSmithAllMediaWebpage"
label variable W8GRP20803S3 "DCandWilsonAllMediaWebpage"
label variable W8GRP20806S3 "DEndorsementsAllMedia"
label variable W8GRP20807S3 "REndorsementsAllMedia"
label variable W8GRP20809S3 "DAltMediaAfricanAmericanSources"
label variable W8GRP20810S3 "DOnlyMainMediaABC"
label variable W8GRP20811S3 "DOnlyMainMediaWireServices"
label variable W8GRP20813S3 "DOnlyMainMediaCNN"
label variable W8GRP20814S3 "DOnlyMainMediaNBC"
label variable W8GRP20816S3 "DOnlyMainMediaWSJ"
label variable W8GRP20817S3 "DCandWilsonOnlyMainWebpage"
label variable W8GRP20818S3 "DCandSmithOnlyMainWebpage"
label variable W8GRP20819S3 "DEndorsementsOnlyMain"
label variable W8GRP20820S3 "RCandJonesOnlyMainWebpage"
label variable W8GRP20821S3 "RCandWilliamsOnlyMainWebpage"
label variable W8GRP20822S3 "REndorsementsOnlyMain"
label variable W8GRP20825S3 "RAltMediaLatinoSources"
label variable W8GRP20834S3 "ROnlyMainMediaABC"
label variable W8GRP20835S3 "ROnlyMainMediaCBS"
label variable W8GRP20836S3 "ROnlyMainMediaNYT"
label variable W8GRP20837S3 "ROnlyMainMediaWireServices"
label variable W8GRP20838S3 "ROnlyMainMediaWSJ"
label variable W8GRP20839S3 "ROnlyMainMediaCNN"
label variable W8GRP20840S3 "ROnlyMainMediaNBC"
label variable W8GRP20841S1 "BeginGroup"
label variable W8GRP20842S1 "BeginGroupRepeated"
label variable W8Q5989DUR32286S1 "Subject Sign-in"
label variable W8Q5992SEQ32306S4 "Wk8Anythingelse"
label variable W8Q5991VAL32307S4 "Wk8InfoSatisfied"
label variable W8Q5991SEQ32308S4 "Wk8WhatElse"
label variable W8Q5991SEQ32309S4 "Wk8DWhosAhead"
label variable W8Q5992VAL32310S4 "Wk8RWhosAhead"
label variable W8FODS91603S3 "Wk2DEndorsementAFLCIO"
label variable W8FODS91604S3 "Wk2DEndorsementChamberofCommerce"
label variable W8FODS91605S3 "Wk2REndorsemChamberofCommerceEndorsement"
label variable W8TODS91606S3 "Wk2REndorsementAFLCIO"
label variable W8FODS91608S3 "wk2d1NBCFOXEcon10"
label variable W8TTOS91609S3 "wk2d1REUROOTEcon18"
label variable W8TTOS91610S3 "wk2d1CNNUNIEcon22"
label variable W8FODS91611S3 "wk2d2ABCABCEcon37"
label variable W8FODS91612S3 "wk2d2APAPEcon42"
label variable W8TODS91613S3 "wk2d2NYTNYTEcon54"
label variable W8TODS91614S3 "wk2d2NBCNBCEcon62"
label variable W8TODS91615S3 "wk2r2CBSCBSEcon66"
label variable W8TODS91618S3 "wk2r2WSJWSJEcon94"
label variable W8TTOS91620S3 "wk2r1ABCROOTEcon118"
label variable W8TODS91623S3 "wk2d3CBSHUFEcon2"
label variable W8FODS91624S3 "wk2d3NBCFOXEcon10"
label variable W8TODS91625S3 "wk2d3REUROOTEcon18"
label variable W8TODS91629S3 "wk2r3NBCUNIEcon122"
label variable W8TODS91631S3 "Wk1RWilliamsSlogan"
label variable W8TODS91632S3 "Wk1RWilliamsPersonality"
label variable W8TODS91633S3 "Wk1RWilliamsFamily"
label variable W8TODS91634S3 "Wk1RWilliamsExperience"
label variable W8FODS91636S3 "Wk1RWilliamsBackground"
label variable W8FODS91637S3 "Wk1RJonesSlogan"
label variable W8FODS91641S3 "Wk1RJonesCandidatePicture"
label variable W8TTOS91642S3 "Wk1RJonesBackground"
label variable W8FODS91643S3 "Wk1DWilsonSlogan"
label variable W8FODS91644S3 "Wk1DWilsonPersonality"
label variable W8FODS91646S3 "Wk1DWilsonExperience"
label variable W8TODS91647S3 "Wk1DWilsonCandidatePicture"
label variable W8FODS91648S3 "Wk1DWilsonBackground"
label variable W8TODS91649S3 "Wk1DSmithSlogan"
label variable W8TODS91652S3 "Wk1DSmithExperience"
label variable W8FODS91653S3 "Wk1DSmithCandidatePicture"
label variable W8TODS91654S3 "Wk1DSmithBackground"
label variable W8TTOS91655S3 "SmithEducation"
label variable W8TTOS91656S3 "SmithExperience"
label variable W8TODS91657S3 "SmithFamily"
label variable W8FODS91659S3 "SmithReligion"
label variable W8TTOS91660S3 "JonesEducation"
label variable W8FODS91664S3 "WilsonEducation"
label variable W8FODS91666S3 "WilsonExperience"
label variable W8TODS91667S3 "WilsonFamily"
label variable W8TODS91668S3 "WilliamsReligion"
label variable W8TODS91670S3 "WilliamsFamily"
label variable W8FODS91673S3 "WilsonReligion"
label variable W8TODS91675S3 "wk2DSmithJobs"
label variable W8TODS91676S3 "wk2DSmithEconPhil"
label variable W8TODS91678S3 "wk2DWilsonJobs"
label variable W8FODS91679S3 "wk2DWilsonEconPhil"
label variable W8TTOS91682S3 "wk2RWilliamsEconPhil"
label variable W8TTOS91683S3 "wk3DSmithEduc"
label variable W8TTOS91684S3 "wk6DSmithHealth"
label variable W8FODS91685S3 "wk4DSmithChina"
label variable W8TODS91686S3 "wk4DSmithDefense"
label variable W8TTOS91687S3 "wk5DSmithAbortion"
label variable W8FODS91688S3 "wk5DSmithGay"
label variable W8TODS91689S3 "wk6DSmithTaxes"
label variable W8TODS91690S3 "wk7DSmithAffirm"
label variable W8TTOS91691S3 "wk7DSmithImmigration"
label variable W8TODS91692S2 "wk8DSmithAfghan"
label variable W8TODS91693S2 "wk8DSmithMil"
label variable W8FODS91694S3 "wk9DSmithDeathPen"
label variable W8FODS91695S3 "wk9DSmithStemCells"
label variable W8FODS91696S3 "wk3DSmithSocPhil"
label variable W8TODS91697S3 "wk3DWilsonEduc"
label variable W8FODS91698S3 "wk6DWilsonHealth"
label variable W8TODS91699S3 "wk4DWilsonChina"
label variable W8FODS91700S3 "wk4DWilsonDefense"
label variable W8FODS91701S3 "wk5DWilsonAbortion"
label variable W8FODS91702S3 "wk5DWilsonGay"
label variable W8FODS91703S3 "wk6DWilsonTaxes"
label variable W8FODS91704S3 "wk7DWilsonAffirm"
label variable W8FODS91705S3 "wk7DWilsonImmigration"
label variable W8FODS91706S3 "wk8DWilsonAfghan"
label variable W8FODS91707S2 "wk8DWilsonMil"
label variable W8TODS91708S3 "wk9DWilsonDeathPen"
label variable W8TTOS91709S3 "wk9DWilsonStemCells"
label variable W8TODS91711S3 "wk3DWilsonSocPhil"
label variable W8TTOS91712S3 "wk3RWilliamsEduc"
label variable W8FODS91714S3 "wk4RWilliamsChina"
label variable W8TODS91720S3 "wk7RWilliamsImmigration"
label variable W8FODS91721S2 "wk8RWilliamsAfghan"
label variable W8FODS91722S3 "wk8RWilliamsMil"
label variable W8FODS91732S2 "wk8RJonesAfghan"
label variable W8TODS91734S3 "wk7RJonesAffirm"
label variable W8TODS91735S3 "wk9RJonesStemCells"
label variable W8TTOS91736S2 "wk8RJonesMil"
label variable W8TODS91741S3 "Wk3DEndorsementFAIR"
label variable W8TTOS91742S3 "wk3d1ABCHOT8"
label variable W8FODS91743S3 "Wk3REndorsementFAIR"
label variable W8TTOS91744S3 "Wk3REndorsementAFT"
label variable W8TODS91745S3 "wk3d1NBCUNI12"
label variable W8FODS91749S3 "wk3d2WSJWSJ60"
label variable W8TTOS91750S3 "wk3d2NBCNBC64"
label variable W8FODS91751S3 "wk3d3ABCHOT8"
label variable W8FODS91752S3 "wk3r2ABCABC72"
label variable W8FODS91755S3 "wk3d3NYTMSN28"
label variable W8FODS91758S3 "wk3r3CNNLAT101"
label variable W8FODS91759S3 "wk3r2NYTNYT92"
label variable W8TTOS91760S3 "wk3r2WSJWSJ96"
label variable W8FODS91763S3 "wk3r1REUBET100"
label variable W8TTOS91764S3 "wk3r1CNNLAT101"
label variable W8FODS91765S3 "wk3r1CBSFOX116"
label variable W8FODS91768S3 "wk4d1ABCHUFFor7"
label variable W8FODS91769S3 "wk4d1CNNBETFor23"
label variable W8TODS91770S3 "wk4d1WSJLATFor31"
label variable W8TTOS91771S3 "wk4d2APAPFor43"
label variable W8FODS91773S3 "wk4d2NYTNYTFor55"
label variable W8TODS91774S3 "wk4d2NBCNBCFor63"
label variable W8FODS91775S3 "wk4d3CBSFOXFor3"
label variable W8FODS91776S3 "wk4d3ABCHUFFor7"
label variable W8TTOS91777S3 "wk4d3CNNBETFor23"
label variable W8TTOS91779S3 "wk4r2ABCABCFor71"
label variable W8FODS91780S3 "wk4r2NBCNBCFor75"
label variable W8FODS91781S3 "wk4r2REUREUFor83"
label variable W8FODS91782S3 "wk4r2NYTNYTFor91"
label variable W8TTOS91783S3 "wk4r1CNNROOTFor103"
label variable W8TODS91784S3 "wk4r1WSJHOTFor111"
label variable W8TODS91785S3 "wk4r1CBSMSNFor115"
label variable W8TTOS91786S3 "wk4r1APLATFor127"
label variable W8FODS91788S3 "wk4r3WSJHOTFor111"
label variable W8TTOS91790S3 "wk4r3APLATFor127"
label variable W8FODS91791S3 "Wk4DEndorsementNCLR"
label variable W8TTOS91792S3 "Wk4DEndorsementHeritage"
label variable W8TTOS91793S3 "Wk4DEndorsementVFW"
label variable W8TODS91794S3 "Wk4REndorsementNCLR"
label variable W8FODS91795S3 "Wk4REndorsementHeritage"
label variable W8FODS91796S3 "WK4REndorsementVFW"
label variable W8TTOS91799S3 "Wk5REndorsementHumanRtsCamp"
label variable W8FODS91800S3 "Wk5DEndorsementNRL"
label variable W8TTOS91801S3 "Wk5REndorsementNRL"
label variable W8TODS91802S3 "Wk5REndorsementFamResearchCouncil"
label variable W8FODS91804S3 "wk5d1ABCHUFCult5"
label variable W8TODS91805S3 "wk5d1NBCHOTCult9"
label variable W8TODS91806S3 "wk5d1CNNLATCult21"
label variable W8FODS91809S3 "wk5d2APAPCult41"
label variable W8TODS91810S3 "wk5d2REUREUCult45"
label variable W8TODS91811S3 "wk5d2WSJWSJCult57"
label variable W8TODS91812S3 "wk5d3ABCHUFCult5"
label variable W8FODS91813S3 "wk5d3NBCHOTCult9"
label variable W8TODS91817S3 "wk5r1ABCHOTCult117"
label variable W8TODS91822S3 "wk5r2CNNCNNCult85"
label variable W8TTOS91823S3 "wk5r2NYTNYTCult89"
label variable W8TODS91825S3 "wk5r3ABCHOTCult117"
label variable W8TTOS91826S3 "wk5r3NBCLATCult121"
label variable W8FODS91830S3 "wk6r2ABCABCEcon70"
label variable W8TTOS91831S3 "wk6d1ABCMSNEcon6"
label variable W8TTOS91833S3 "wk6r2CNNCNNEcon86"
label variable W8FODS91836S3 "wk6r1CNNMSNEcon102"
label variable W8FODS91837S3 "wk6r1NYTBETEcon106"
label variable W8FODS91838S3 "wk6d1APHOTEcon14"
label variable W8TTOS91841S3 "wk6d1WSJLATEcon30"
label variable W8FODS91842S3 "wk6r3REULATEcon98"
label variable W8TTOS91846S3 "wk6r3CBSHOTEcon114"
label variable W8TTOS91849S3 "wk6d2CNNCNNEcon50"
label variable W8TTOS91850S3 "wk6d2WSJWSJEcon58"
label variable W8TODS91851S3 "wk6d3ABCMSNEcon6"
label variable W8FODS91852S3 "wk6d3APHOTEcon14"
label variable W8TTOS91853S3 "Wk6DEndorsementADA"
label variable W8TTOS91854S3 "Wk6DEndorsementNTU"
label variable W8TTOS91855S3 "Wk6DEndorsementAFSCME"
label variable W8TODS91856S3 "Wk6REndorsementADA"
label variable W8FODS91857S3 "Wk6REndorsementNTU"
label variable W8TTOS91858S3 "Wk6REndorsementAFSCME"
label variable W8TODS91859S3 "Wk7DEndorsementNAACP"
label variable W8TODS91860S3 "Wk7DEndorsementACU"
label variable W8FODS91861S3 "Wk7REndorsementACU"
label variable W8TODS91862S3 "Wk7REndorsementNAACP"
label variable W8TTOS91866S3 "wk7r2NBCNBC76"
label variable W8TODS91868S3 "wk7r2CNNCNN88"
label variable W8TODS91872S3 "wk7r1NYTROOT108"
label variable W8FODS91877S3 "wk7d3CBSROOTSoc4"
label variable W8TTOS91878S3 "wk7r3WSJUNI112"
label variable W8FODS91882S3 "wk7d3WSJHUF32"
label variable W8FODS91883S3 "wk7r3APHOT128"
label variable W8FODS91885S3 "wk7d1REUBET20"
label variable W8FODS91886S3 "wk7d1CNNLAT24"
label variable W8FODS91887S3 "wk7d1WSJHUF32"
label variable W8TTOS91888S3 "wk7d2ABCABC40"
label variable W8FODS91890S3 "wk7d2CNNCNN52"
label variable W8FODS91891S3 "wk7d2NYTNYT56"
label variable W8TODS91892S2 "Wk8DEndorsementACLU"
label variable W8FODS91893S2 "Wk8DEndorsementAEI"
label variable W8TODS91894S2 "Wk8REndorsementACLU"
label variable W8FODS91895S3 "Wk8REndorsementAEI"
label variable W8FODS91896S3 "wk8d1NBCMSNFor11"
label variable W8FODS91897S2 "wk8d1APROOTFor15"
label variable W8FODS91898S2 "wk8d1REUHOTFor19"
label variable W8TTOS91899S2 "wk8d1NYTUNIFor27"
label variable W8TODS91900S3 "wk8d2CBSCBSFor35"
label variable W8TTOS91901S2 "wk8d2ABCABCFor38"
label variable W8TTOS91902S2 "wk8d2CNNCNNFor51"
label variable W8FODS91903S2 "wk8r2CBSCBSFor67"
label variable W8TTOS91904S2 "wk8d2WSJWSJFor59"
label variable W8TTOS91905S2 "wk8r2APAPFor79"
label variable W8FODS91906S3 "wk8r2CNNCNNFor87"
label variable W8TODS91907S2 "wk8r2WSJWSJFor95"
label variable W8TODS91908S2 "wk8r1REUBETFor99"
label variable W8TODS91909S3 "wk8r1NYTFOXFor107"
label variable W8FODS91910S2 "wk8r1ABCUNIFor119"
label variable W8TTOS91911S3 "wk8r1NBCHUFFor123"
label variable W8FODS91912S3 "wk8d3NBCMSNFor11"
label variable W8FODS91913S3 "wk8d3APROOTFor15"
label variable W8FODS91914S2 "wk8d3REUHOTFor19"
label variable W8TTOS91915S2 "wk8d3NYTUNIFor27"
label variable W8FODS91916S3 "wk8r3REUBETFor99"
label variable W8TODS91917S3 "wk8r3NYTFOXFor107"
label variable W8FODS91918S2 "wk8r3ABCUNIFor119"
label variable W8TODS91919S3 "wk8r3NBCHUFFor123"
label variable W8TODA3814S4 "That's it for this Week"
label variable W8FODA3814S4 "That's it for this Week"
label variable W8TTOA3814S4 "That's it for this Week"
label variable W8TTOA3815S1 "Whoops -- Not a Valid Subject ID"
label variable W8TODA3815S1 "Whoops -- Not a Valid Subject ID"
label variable W8WORDSA3815S1 "Whoops -- Not a Valid Subject ID"
label variable W8TODA3816S3 "Substage2and3BetwNoIntD&R"
label variable W8FODA3816S3 "Substage2and3BetwNoIntD&R"
label variable W8TTOA3816S3 "Substage2and3BetwNoIntD&R"
label variable W8WORDSA3817S3 "Substage2and3BetwIntD&R"
label variable W8FODA3817S3 "Substage2and3BetwIntD&R"
label variable W8TODA3817S3 "Substage2and3BetwIntD&R"
label variable W8WORDSA3818S2 "WelcomeWk8DIntImp"
label variable W8FODA3818S2 "WelcomeWk8DIntImp"
label variable W8TTOA3818S2 "WelcomeWk8DIntImp"
label variable W8FODA3819S2 "WelcomeWk8DIntNot"
label variable W8WORDSA3819S2 "WelcomeWk8DIntNot"
label variable W8TTOA3819S2 "WelcomeWk8DIntNot"
label variable W8WORDSA3820S2 "WelcomeWk8DNoIntImp"
label variable W8TTOA3820S2 "WelcomeWk8DNoIntImp"
label variable W8FODA3820S2 "WelcomeWk8DNoIntImp"
label variable W8WORDSA3821S2 "WelcomeWk8DNoIntNot"
label variable W8FODA3821S2 "WelcomeWk8DNoIntNot"
label variable W8TODA3821S2 "WelcomeWk8DNoIntNot"
label variable W8WORDSA3822S2 "WelcomeWk8RIntImp"
label variable W8TODA3822S2 "WelcomeWk8RIntImp"
label variable W8TTOA3822S2 "WelcomeWk8RIntImp"
label variable W8FODA3823S2 "WelcomeWk8RIntNot"
label variable W8TODA3823S2 "WelcomeWk8RIntNot"
label variable W8TTOA3823S2 "WelcomeWk8RIntNot"
label variable W8TODA3824S2 "WelcomeWk8RNoIntImp"
label variable W8WORDSA3824S2 "WelcomeWk8RNoIntImp"
label variable W8TTOA3824S2 "WelcomeWk8RNoIntImp"
label variable W8TODA3825S2 "WelcomeWk8RNoIntNot"
label variable W8WORDSA3825S2 "WelcomeWk8RNoIntNot"
label variable W8TTOA3825S2 "WelcomeWk8RNoIntNot"
label variable W8GRP20772S2 "D02IntMainImp"
label variable W8GRP20773S3 "D04NoIntMainImp"
label variable W8GRP20774S3 "D06IntMainNot"
label variable W8GRP20775S2 "D08NoIntMainNot"
label variable W8GRP20776S3 "D01IntDiverseImp"
label variable W8GRP20777S2 "D03NoIntDiverseImp"
label variable W8GRP20778S3 "D05IntDiverseNot"
label variable W8GRP20779S2 "D07NoIntDiverseNot"
label variable W8GRP20780S3 "R09IntDiverseImp"
label variable W8GRP20781S2 "R10IntMainImp"
label variable W8GRP20782S3 "R11NoIntDiverseImp"
label variable W8GRP20783S2 "R12NoIntMainImp"
label variable W8GRP20784S2 "R13IntDiverseNot"
label variable W8GRP20785S3 "R14IntMainNot"
label variable W8GRP20786S2 "R15NoIntDiverseNot"
label variable W8GRP20787S3 "R16NoIntMainNot"
label variable W8Q5989SEQ32286S1 "Subject Sign-in"
label variable W8Q5991DUR32306S4 "Wk8Anythingelse"
label variable W8Q5992VAL32306S4 "Wk8Anythingelse"
label variable W8Q5991SEQ32306S4 "Wk8Anythingelse"
label variable W8Q5992DUR32306S4 "Wk8Anythingelse"
label variable W8Q5991VAL32306S4 "Wk8Anythingelse"
label variable W8Q5992SEQ32307S4 "Wk8InfoSatisfied"
label variable W8Q5991DUR32307S4 "Wk8InfoSatisfied"
label variable W8Q5992VAL32307S4 "Wk8InfoSatisfied"
label variable W8Q5991SEQ32307S4 "Wk8InfoSatisfied"
label variable W8Q5992DUR32307S4 "Wk8InfoSatisfied"
label variable W8Q5992SEQ32308S4 "Wk8WhatElse"
label variable W8Q5992VAL32308S4 "Wk8WhatElse"
label variable W8Q5991VAL32308S4 "Wk8WhatElse"
label variable W8Q5991DUR32308S4 "Wk8WhatElse"
label variable W8Q5992DUR32308S4 "Wk8WhatElse"
label variable W8Q5991DUR32309S4 "Wk8DWhosAhead"
label variable W8Q5991VAL32309S4 "Wk8DWhosAhead"
label variable W8Q5992SEQ32310S4 "Wk8RWhosAhead"
label variable W8Q5992DUR32310S4 "Wk8RWhosAhead"
label variable W8TTOS91603S3 "Wk2DEndorsementAFLCIO"
label variable W8TODS91603S3 "Wk2DEndorsementAFLCIO"
label variable W8TTOS91604S3 "Wk2DEndorsementChamberofCommerce"
label variable W8TODS91604S3 "Wk2DEndorsementChamberofCommerce"
label variable W8TODS91605S3 "Wk2REndorsemChamberofCommerceEndorsement"
label variable W8TTOS91605S3 "Wk2REndorsemChamberofCommerceEndorsement"
label variable W8FODS91606S3 "Wk2REndorsementAFLCIO"
label variable W8TTOS91606S3 "Wk2REndorsementAFLCIO"
label variable W8TTOS91608S3 "wk2d1NBCFOXEcon10"
label variable W8TODS91608S3 "wk2d1NBCFOXEcon10"
label variable W8FODS91609S3 "wk2d1REUROOTEcon18"
label variable W8TODS91609S3 "wk2d1REUROOTEcon18"
label variable W8TODS91610S3 "wk2d1CNNUNIEcon22"
label variable W8FODS91610S3 "wk2d1CNNUNIEcon22"
label variable W8TODS91611S3 "wk2d2ABCABCEcon37"
label variable W8TTOS91611S3 "wk2d2ABCABCEcon37"
label variable W8TODS91612S3 "wk2d2APAPEcon42"
label variable W8TTOS91612S3 "wk2d2APAPEcon42"
label variable W8TTOS91613S3 "wk2d2NYTNYTEcon54"
label variable W8FODS91613S3 "wk2d2NYTNYTEcon54"
label variable W8FODS91614S3 "wk2d2NBCNBCEcon62"
label variable W8TTOS91614S3 "wk2d2NBCNBCEcon62"
label variable W8TTOS91615S3 "wk2r2CBSCBSEcon66"
label variable W8FODS91615S3 "wk2r2CBSCBSEcon66"
label variable W8TTOS91618S3 "wk2r2WSJWSJEcon94"
label variable W8FODS91618S3 "wk2r2WSJWSJEcon94"
label variable W8FODS91620S3 "wk2r1ABCROOTEcon118"
label variable W8TODS91620S3 "wk2r1ABCROOTEcon118"
label variable W8TTOS91623S3 "wk2d3CBSHUFEcon2"
label variable W8FODS91623S3 "wk2d3CBSHUFEcon2"
label variable W8TTOS91624S3 "wk2d3NBCFOXEcon10"
label variable W8TODS91624S3 "wk2d3NBCFOXEcon10"
label variable W8FODS91625S3 "wk2d3REUROOTEcon18"
label variable W8TTOS91625S3 "wk2d3REUROOTEcon18"
label variable W8TTOS91629S3 "wk2r3NBCUNIEcon122"
label variable W8FODS91629S3 "wk2r3NBCUNIEcon122"
label variable W8TTOS91631S3 "Wk1RWilliamsSlogan"
label variable W8FODS91631S3 "Wk1RWilliamsSlogan"
label variable W8FODS91632S3 "Wk1RWilliamsPersonality"
label variable W8TTOS91632S3 "Wk1RWilliamsPersonality"
label variable W8TTOS91633S3 "Wk1RWilliamsFamily"
label variable W8FODS91633S3 "Wk1RWilliamsFamily"
label variable W8FODS91634S3 "Wk1RWilliamsExperience"
label variable W8TTOS91634S3 "Wk1RWilliamsExperience"
label variable W8TODS91636S3 "Wk1RWilliamsBackground"
label variable W8TTOS91636S3 "Wk1RWilliamsBackground"
label variable W8TODS91637S3 "Wk1RJonesSlogan"
label variable W8TTOS91637S3 "Wk1RJonesSlogan"
label variable W8TODS91641S3 "Wk1RJonesCandidatePicture"
label variable W8TTOS91641S3 "Wk1RJonesCandidatePicture"
label variable W8FODS91642S3 "Wk1RJonesBackground"
label variable W8TODS91642S3 "Wk1RJonesBackground"
label variable W8TODS91643S3 "Wk1DWilsonSlogan"
label variable W8TTOS91643S3 "Wk1DWilsonSlogan"
label variable W8TODS91644S3 "Wk1DWilsonPersonality"
label variable W8TTOS91644S3 "Wk1DWilsonPersonality"
label variable W8TTOS91646S3 "Wk1DWilsonExperience"
label variable W8TODS91646S3 "Wk1DWilsonExperience"
label variable W8TTOS91647S3 "Wk1DWilsonCandidatePicture"
label variable W8FODS91647S3 "Wk1DWilsonCandidatePicture"
label variable W8TODS91648S3 "Wk1DWilsonBackground"
label variable W8TTOS91648S3 "Wk1DWilsonBackground"
label variable W8FODS91649S3 "Wk1DSmithSlogan"
label variable W8TTOS91649S3 "Wk1DSmithSlogan"
label variable W8FODS91652S3 "Wk1DSmithExperience"
label variable W8TTOS91652S3 "Wk1DSmithExperience"
label variable W8TODS91653S3 "Wk1DSmithCandidatePicture"
label variable W8TTOS91653S3 "Wk1DSmithCandidatePicture"
label variable W8FODS91654S3 "Wk1DSmithBackground"
label variable W8TTOS91654S3 "Wk1DSmithBackground"
label variable W8TODS91655S3 "SmithEducation"
label variable W8FODS91655S3 "SmithEducation"
label variable W8FODS91656S3 "SmithExperience"
label variable W8TODS91656S3 "SmithExperience"
label variable W8TTOS91657S3 "SmithFamily"
label variable W8FODS91657S3 "SmithFamily"
label variable W8TODS91659S3 "SmithReligion"
label variable W8TTOS91659S3 "SmithReligion"
label variable W8FODS91660S3 "JonesEducation"
label variable W8TODS91660S3 "JonesEducation"
label variable W8TTOS91664S3 "WilsonEducation"
label variable W8TODS91664S3 "WilsonEducation"
label variable W8TODS91666S3 "WilsonExperience"
label variable W8TTOS91666S3 "WilsonExperience"
label variable W8FODS91667S3 "WilsonFamily"
label variable W8TTOS91667S3 "WilsonFamily"
label variable W8TTOS91668S3 "WilliamsReligion"
label variable W8FODS91668S3 "WilliamsReligion"
label variable W8FODS91670S3 "WilliamsFamily"
label variable W8TTOS91670S3 "WilliamsFamily"
label variable W8TTOS91673S3 "WilsonReligion"
label variable W8TODS91673S3 "WilsonReligion"
label variable W8TTOS91675S3 "wk2DSmithJobs"
label variable W8FODS91675S3 "wk2DSmithJobs"
label variable W8TTOS91676S3 "wk2DSmithEconPhil"
label variable W8FODS91676S3 "wk2DSmithEconPhil"
label variable W8FODS91678S3 "wk2DWilsonJobs"
label variable W8TTOS91678S3 "wk2DWilsonJobs"
label variable W8TODS91679S3 "wk2DWilsonEconPhil"
label variable W8TTOS91679S3 "wk2DWilsonEconPhil"
label variable W8TODS91682S3 "wk2RWilliamsEconPhil"
label variable W8FODS91682S3 "wk2RWilliamsEconPhil"
label variable W8FODS91683S3 "wk3DSmithEduc"
label variable W8TODS91683S3 "wk3DSmithEduc"
label variable W8FODS91684S3 "wk6DSmithHealth"
label variable W8TODS91684S3 "wk6DSmithHealth"
label variable W8TODS91685S3 "wk4DSmithChina"
label variable W8TTOS91685S3 "wk4DSmithChina"
label variable W8FODS91686S3 "wk4DSmithDefense"
label variable W8TTOS91686S3 "wk4DSmithDefense"
label variable W8TODS91687S3 "wk5DSmithAbortion"
label variable W8FODS91687S3 "wk5DSmithAbortion"
label variable W8TODS91688S3 "wk5DSmithGay"
label variable W8TTOS91688S3 "wk5DSmithGay"
label variable W8FODS91689S3 "wk6DSmithTaxes"
label variable W8TTOS91689S3 "wk6DSmithTaxes"
label variable W8FODS91690S3 "wk7DSmithAffirm"
label variable W8TTOS91690S3 "wk7DSmithAffirm"
label variable W8TODS91691S3 "wk7DSmithImmigration"
label variable W8FODS91691S3 "wk7DSmithImmigration"
label variable W8FODS91692S3 "wk8DSmithAfghan"
label variable W8TODS91692S3 "wk8DSmithAfghan"
label variable W8FODS91692S2 "wk8DSmithAfghan"
label variable W8TTOS91692S2 "wk8DSmithAfghan"
label variable W8TTOS91692S3 "wk8DSmithAfghan"
label variable W8FODS91693S2 "wk8DSmithMil"
label variable W8TTOS91693S2 "wk8DSmithMil"
label variable W8FODS91693S3 "wk8DSmithMil"
label variable W8TTOS91693S3 "wk8DSmithMil"
label variable W8TODS91693S3 "wk8DSmithMil"
label variable W8TTOS91694S3 "wk9DSmithDeathPen"
label variable W8TODS91694S3 "wk9DSmithDeathPen"
label variable W8TTOS91695S3 "wk9DSmithStemCells"
label variable W8TODS91695S3 "wk9DSmithStemCells"
label variable W8TODS91696S3 "wk3DSmithSocPhil"
label variable W8TTOS91696S3 "wk3DSmithSocPhil"
label variable W8TTOS91697S3 "wk3DWilsonEduc"
label variable W8FODS91697S3 "wk3DWilsonEduc"
label variable W8TODS91698S3 "wk6DWilsonHealth"
label variable W8TTOS91698S3 "wk6DWilsonHealth"
label variable W8FODS91699S3 "wk4DWilsonChina"
label variable W8TTOS91699S3 "wk4DWilsonChina"
label variable W8TTOS91700S3 "wk4DWilsonDefense"
label variable W8TODS91700S3 "wk4DWilsonDefense"
label variable W8TODS91701S3 "wk5DWilsonAbortion"
label variable W8TTOS91701S3 "wk5DWilsonAbortion"
label variable W8TTOS91702S3 "wk5DWilsonGay"
label variable W8TODS91702S3 "wk5DWilsonGay"
label variable W8TODS91703S3 "wk6DWilsonTaxes"
label variable W8TTOS91703S3 "wk6DWilsonTaxes"
label variable W8TTOS91704S3 "wk7DWilsonAffirm"
label variable W8TODS91704S3 "wk7DWilsonAffirm"
label variable W8TODS91705S3 "wk7DWilsonImmigration"
label variable W8TTOS91705S3 "wk7DWilsonImmigration"
label variable W8TODS91706S2 "wk8DWilsonAfghan"
label variable W8TTOS91706S3 "wk8DWilsonAfghan"
label variable W8TTOS91706S2 "wk8DWilsonAfghan"
label variable W8TODS91706S3 "wk8DWilsonAfghan"
label variable W8FODS91706S2 "wk8DWilsonAfghan"
label variable W8TTOS91707S3 "wk8DWilsonMil"
label variable W8TODS91707S3 "wk8DWilsonMil"
label variable W8TODS91707S2 "wk8DWilsonMil"
label variable W8FODS91707S3 "wk8DWilsonMil"
label variable W8TTOS91707S2 "wk8DWilsonMil"
label variable W8TTOS91708S3 "wk9DWilsonDeathPen"
label variable W8FODS91708S3 "wk9DWilsonDeathPen"
label variable W8FODS91709S3 "wk9DWilsonStemCells"
label variable W8TODS91709S3 "wk9DWilsonStemCells"
label variable W8TTOS91711S3 "wk3DWilsonSocPhil"
label variable W8FODS91711S3 "wk3DWilsonSocPhil"
label variable W8FODS91712S3 "wk3RWilliamsEduc"
label variable W8TODS91712S3 "wk3RWilliamsEduc"
label variable W8TTOS91714S3 "wk4RWilliamsChina"
label variable W8TODS91714S3 "wk4RWilliamsChina"
label variable W8TTOS91720S3 "wk7RWilliamsImmigration"
label variable W8FODS91720S3 "wk7RWilliamsImmigration"
label variable W8FODS91721S3 "wk8RWilliamsAfghan"
label variable W8TODS91721S2 "wk8RWilliamsAfghan"
label variable W8TTOS91721S3 "wk8RWilliamsAfghan"
label variable W8TODS91721S3 "wk8RWilliamsAfghan"
label variable W8TTOS91721S2 "wk8RWilliamsAfghan"
label variable W8TODS91722S3 "wk8RWilliamsMil"
label variable W8TTOS91722S2 "wk8RWilliamsMil"
label variable W8FODS91722S2 "wk8RWilliamsMil"
label variable W8TODS91722S2 "wk8RWilliamsMil"
label variable W8TTOS91722S3 "wk8RWilliamsMil"
label variable W8TTOS91732S2 "wk8RJonesAfghan"
label variable W8TODS91732S3 "wk8RJonesAfghan"
label variable W8TTOS91732S3 "wk8RJonesAfghan"
label variable W8FODS91732S3 "wk8RJonesAfghan"
label variable W8TODS91732S2 "wk8RJonesAfghan"
label variable W8FODS91734S3 "wk7RJonesAffirm"
label variable W8TTOS91734S3 "wk7RJonesAffirm"
label variable W8TTOS91735S3 "wk9RJonesStemCells"
label variable W8FODS91735S3 "wk9RJonesStemCells"
label variable W8TTOS91736S3 "wk8RJonesMil"
label variable W8FODS91736S2 "wk8RJonesMil"
label variable W8TODS91736S3 "wk8RJonesMil"
label variable W8FODS91736S3 "wk8RJonesMil"
label variable W8TODS91736S2 "wk8RJonesMil"
label variable W8FODS91741S3 "Wk3DEndorsementFAIR"
label variable W8TTOS91741S3 "Wk3DEndorsementFAIR"
label variable W8FODS91742S3 "wk3d1ABCHOT8"
label variable W8TODS91742S3 "wk3d1ABCHOT8"
label variable W8TODS91743S3 "Wk3REndorsementFAIR"
label variable W8TTOS91743S3 "Wk3REndorsementFAIR"
label variable W8TODS91744S3 "Wk3REndorsementAFT"
label variable W8FODS91744S3 "Wk3REndorsementAFT"
label variable W8FODS91745S3 "wk3d1NBCUNI12"
label variable W8TTOS91745S3 "wk3d1NBCUNI12"
label variable W8TODS91749S3 "wk3d2WSJWSJ60"
label variable W8TTOS91749S3 "wk3d2WSJWSJ60"
label variable W8FODS91750S3 "wk3d2NBCNBC64"
label variable W8TODS91750S3 "wk3d2NBCNBC64"
label variable W8TTOS91751S3 "wk3d3ABCHOT8"
label variable W8TODS91751S3 "wk3d3ABCHOT8"
label variable W8TODS91752S3 "wk3r2ABCABC72"
label variable W8TTOS91752S3 "wk3r2ABCABC72"
label variable W8TTOS91755S3 "wk3d3NYTMSN28"
label variable W8TODS91755S3 "wk3d3NYTMSN28"
label variable W8TTOS91758S3 "wk3r3CNNLAT101"
label variable W8TODS91758S3 "wk3r3CNNLAT101"
label variable W8TODS91759S3 "wk3r2NYTNYT92"
label variable W8TTOS91759S3 "wk3r2NYTNYT92"
label variable W8TODS91760S3 "wk3r2WSJWSJ96"
label variable W8FODS91760S3 "wk3r2WSJWSJ96"
label variable W8TODS91763S3 "wk3r1REUBET100"
label variable W8TTOS91763S3 "wk3r1REUBET100"
label variable W8FODS91764S3 "wk3r1CNNLAT101"
label variable W8TODS91764S3 "wk3r1CNNLAT101"
label variable W8TTOS91765S3 "wk3r1CBSFOX116"
label variable W8TODS91765S3 "wk3r1CBSFOX116"
label variable W8TODS91768S3 "wk4d1ABCHUFFor7"
label variable W8TTOS91768S3 "wk4d1ABCHUFFor7"
label variable W8TODS91769S3 "wk4d1CNNBETFor23"
label variable W8TTOS91769S3 "wk4d1CNNBETFor23"
label variable W8FODS91770S3 "wk4d1WSJLATFor31"
label variable W8TTOS91770S3 "wk4d1WSJLATFor31"
label variable W8FODS91771S3 "wk4d2APAPFor43"
label variable W8TODS91771S3 "wk4d2APAPFor43"
label variable W8TODS91773S3 "wk4d2NYTNYTFor55"
label variable W8TTOS91773S3 "wk4d2NYTNYTFor55"
label variable W8FODS91774S3 "wk4d2NBCNBCFor63"
label variable W8TTOS91774S3 "wk4d2NBCNBCFor63"
label variable W8TODS91775S3 "wk4d3CBSFOXFor3"
label variable W8TTOS91775S3 "wk4d3CBSFOXFor3"
label variable W8TTOS91776S3 "wk4d3ABCHUFFor7"
label variable W8TODS91776S3 "wk4d3ABCHUFFor7"
label variable W8FODS91777S3 "wk4d3CNNBETFor23"
label variable W8TODS91777S3 "wk4d3CNNBETFor23"
label variable W8TODS91779S3 "wk4r2ABCABCFor71"
label variable W8FODS91779S3 "wk4r2ABCABCFor71"
label variable W8TODS91780S3 "wk4r2NBCNBCFor75"
label variable W8TTOS91780S3 "wk4r2NBCNBCFor75"
label variable W8TODS91781S3 "wk4r2REUREUFor83"
label variable W8TTOS91781S3 "wk4r2REUREUFor83"
label variable W8TODS91782S3 "wk4r2NYTNYTFor91"
label variable W8TTOS91782S3 "wk4r2NYTNYTFor91"
label variable W8FODS91783S3 "wk4r1CNNROOTFor103"
label variable W8TODS91783S3 "wk4r1CNNROOTFor103"
label variable W8FODS91784S3 "wk4r1WSJHOTFor111"
label variable W8TTOS91784S3 "wk4r1WSJHOTFor111"
label variable W8FODS91785S3 "wk4r1CBSMSNFor115"
label variable W8TTOS91785S3 "wk4r1CBSMSNFor115"
label variable W8TODS91786S3 "wk4r1APLATFor127"
label variable W8FODS91786S3 "wk4r1APLATFor127"
label variable W8TTOS91788S3 "wk4r3WSJHOTFor111"
label variable W8TODS91788S3 "wk4r3WSJHOTFor111"
label variable W8FODS91790S3 "wk4r3APLATFor127"
label variable W8TODS91790S3 "wk4r3APLATFor127"
label variable W8TODS91791S3 "Wk4DEndorsementNCLR"
label variable W8TTOS91791S3 "Wk4DEndorsementNCLR"
label variable W8TODS91792S3 "Wk4DEndorsementHeritage"
label variable W8FODS91792S3 "Wk4DEndorsementHeritage"
label variable W8TODS91793S3 "Wk4DEndorsementVFW"
label variable W8FODS91793S3 "Wk4DEndorsementVFW"
label variable W8FODS91794S3 "Wk4REndorsementNCLR"
label variable W8TTOS91794S3 "Wk4REndorsementNCLR"
label variable W8TTOS91795S3 "Wk4REndorsementHeritage"
label variable W8TODS91795S3 "Wk4REndorsementHeritage"
label variable W8TODS91796S3 "WK4REndorsementVFW"
label variable W8TTOS91796S3 "WK4REndorsementVFW"
label variable W8FODS91799S3 "Wk5REndorsementHumanRtsCamp"
label variable W8TODS91799S3 "Wk5REndorsementHumanRtsCamp"
label variable W8TODS91800S3 "Wk5DEndorsementNRL"
label variable W8TTOS91800S3 "Wk5DEndorsementNRL"
label variable W8TODS91801S3 "Wk5REndorsementNRL"
label variable W8FODS91801S3 "Wk5REndorsementNRL"
label variable W8TTOS91802S3 "Wk5REndorsementFamResearchCouncil"
label variable W8FODS91802S3 "Wk5REndorsementFamResearchCouncil"
label variable W8TTOS91804S3 "wk5d1ABCHUFCult5"
label variable W8TODS91804S3 "wk5d1ABCHUFCult5"
label variable W8TTOS91805S3 "wk5d1NBCHOTCult9"
label variable W8FODS91805S3 "wk5d1NBCHOTCult9"
label variable W8TTOS91806S3 "wk5d1CNNLATCult21"
label variable W8FODS91806S3 "wk5d1CNNLATCult21"
label variable W8TODS91809S3 "wk5d2APAPCult41"
label variable W8TTOS91809S3 "wk5d2APAPCult41"
label variable W8FODS91810S3 "wk5d2REUREUCult45"
label variable W8TTOS91810S3 "wk5d2REUREUCult45"
label variable W8FODS91811S3 "wk5d2WSJWSJCult57"
label variable W8TTOS91811S3 "wk5d2WSJWSJCult57"
label variable W8FODS91812S3 "wk5d3ABCHUFCult5"
label variable W8TTOS91812S3 "wk5d3ABCHUFCult5"
label variable W8TODS91813S3 "wk5d3NBCHOTCult9"
label variable W8TTOS91813S3 "wk5d3NBCHOTCult9"
label variable W8TTOS91817S3 "wk5r1ABCHOTCult117"
label variable W8FODS91817S3 "wk5r1ABCHOTCult117"
label variable W8TTOS91822S3 "wk5r2CNNCNNCult85"
label variable W8FODS91822S3 "wk5r2CNNCNNCult85"
label variable W8FODS91823S3 "wk5r2NYTNYTCult89"
label variable W8TODS91823S3 "wk5r2NYTNYTCult89"
label variable W8FODS91825S3 "wk5r3ABCHOTCult117"
label variable W8TTOS91825S3 "wk5r3ABCHOTCult117"
label variable W8FODS91826S3 "wk5r3NBCLATCult121"
label variable W8TODS91826S3 "wk5r3NBCLATCult121"
label variable W8TODS91830S3 "wk6r2ABCABCEcon70"
label variable W8TTOS91830S3 "wk6r2ABCABCEcon70"
label variable W8FODS91831S3 "wk6d1ABCMSNEcon6"
label variable W8TODS91831S3 "wk6d1ABCMSNEcon6"
label variable W8TODS91833S3 "wk6r2CNNCNNEcon86"
label variable W8FODS91833S3 "wk6r2CNNCNNEcon86"
label variable W8TODS91836S3 "wk6r1CNNMSNEcon102"
label variable W8TTOS91836S3 "wk6r1CNNMSNEcon102"
label variable W8TODS91837S3 "wk6r1NYTBETEcon106"
label variable W8TTOS91837S3 "wk6r1NYTBETEcon106"
label variable W8TTOS91838S3 "wk6d1APHOTEcon14"
label variable W8TODS91838S3 "wk6d1APHOTEcon14"
label variable W8FODS91841S3 "wk6d1WSJLATEcon30"
label variable W8TODS91841S3 "wk6d1WSJLATEcon30"
label variable W8TODS91842S3 "wk6r3REULATEcon98"
label variable W8TTOS91842S3 "wk6r3REULATEcon98"
label variable W8FODS91846S3 "wk6r3CBSHOTEcon114"
label variable W8TODS91846S3 "wk6r3CBSHOTEcon114"
label variable W8FODS91849S3 "wk6d2CNNCNNEcon50"
label variable W8TODS91849S3 "wk6d2CNNCNNEcon50"
label variable W8FODS91850S3 "wk6d2WSJWSJEcon58"
label variable W8TODS91850S3 "wk6d2WSJWSJEcon58"
label variable W8FODS91851S3 "wk6d3ABCMSNEcon6"
label variable W8TTOS91851S3 "wk6d3ABCMSNEcon6"
label variable W8TTOS91852S3 "wk6d3APHOTEcon14"
label variable W8TODS91852S3 "wk6d3APHOTEcon14"
label variable W8TODS91853S3 "Wk6DEndorsementADA"
label variable W8FODS91853S3 "Wk6DEndorsementADA"
label variable W8FODS91854S3 "Wk6DEndorsementNTU"
label variable W8TODS91854S3 "Wk6DEndorsementNTU"
label variable W8TODS91855S3 "Wk6DEndorsementAFSCME"
label variable W8FODS91855S3 "Wk6DEndorsementAFSCME"
label variable W8FODS91856S3 "Wk6REndorsementADA"
label variable W8TTOS91856S3 "Wk6REndorsementADA"
label variable W8TTOS91857S3 "Wk6REndorsementNTU"
label variable W8TODS91857S3 "Wk6REndorsementNTU"
label variable W8FODS91858S3 "Wk6REndorsementAFSCME"
label variable W8TODS91858S3 "Wk6REndorsementAFSCME"
label variable W8TTOS91859S3 "Wk7DEndorsementNAACP"
label variable W8FODS91859S3 "Wk7DEndorsementNAACP"
label variable W8TTOS91860S3 "Wk7DEndorsementACU"
label variable W8FODS91860S3 "Wk7DEndorsementACU"
label variable W8TODS91861S3 "Wk7REndorsementACU"
label variable W8TTOS91861S3 "Wk7REndorsementACU"
label variable W8FODS91862S3 "Wk7REndorsementNAACP"
label variable W8TTOS91862S3 "Wk7REndorsementNAACP"
label variable W8FODS91866S3 "wk7r2NBCNBC76"
label variable W8TODS91866S3 "wk7r2NBCNBC76"
label variable W8FODS91868S3 "wk7r2CNNCNN88"
label variable W8TTOS91868S3 "wk7r2CNNCNN88"
label variable W8FODS91872S3 "wk7r1NYTROOT108"
label variable W8TTOS91872S3 "wk7r1NYTROOT108"
label variable W8TODS91877S3 "wk7d3CBSROOTSoc4"
label variable W8TTOS91877S3 "wk7d3CBSROOTSoc4"
label variable W8TODS91878S3 "wk7r3WSJUNI112"
label variable W8FODS91878S3 "wk7r3WSJUNI112"
label variable W8TTOS91882S3 "wk7d3WSJHUF32"
label variable W8TODS91882S3 "wk7d3WSJHUF32"
label variable W8TODS91883S3 "wk7r3APHOT128"
label variable W8TTOS91883S3 "wk7r3APHOT128"
label variable W8TTOS91885S3 "wk7d1REUBET20"
label variable W8TODS91885S3 "wk7d1REUBET20"
label variable W8TTOS91886S3 "wk7d1CNNLAT24"
label variable W8TODS91886S3 "wk7d1CNNLAT24"
label variable W8TTOS91887S3 "wk7d1WSJHUF32"
label variable W8TODS91887S3 "wk7d1WSJHUF32"
label variable W8TODS91888S3 "wk7d2ABCABC40"
label variable W8FODS91888S3 "wk7d2ABCABC40"
label variable W8TTOS91890S3 "wk7d2CNNCNN52"
label variable W8TODS91890S3 "wk7d2CNNCNN52"
label variable W8TODS91891S3 "wk7d2NYTNYT56"
label variable W8TTOS91891S3 "wk7d2NYTNYT56"
label variable W8FODS91892S2 "Wk8DEndorsementACLU"
label variable W8FODS91892S3 "Wk8DEndorsementACLU"
label variable W8TODS91892S3 "Wk8DEndorsementACLU"
label variable W8TTOS91892S3 "Wk8DEndorsementACLU"
label variable W8TTOS91892S2 "Wk8DEndorsementACLU"
label variable W8TTOS91893S3 "Wk8DEndorsementAEI"
label variable W8TTOS91893S2 "Wk8DEndorsementAEI"
label variable W8TODS91893S2 "Wk8DEndorsementAEI"
label variable W8TODS91893S3 "Wk8DEndorsementAEI"
label variable W8FODS91893S3 "Wk8DEndorsementAEI"
label variable W8FODS91894S2 "Wk8REndorsementACLU"
label variable W8TODS91894S3 "Wk8REndorsementACLU"
label variable W8FODS91894S3 "Wk8REndorsementACLU"
label variable W8TTOS91894S2 "Wk8REndorsementACLU"
label variable W8TTOS91894S3 "Wk8REndorsementACLU"
label variable W8FODS91895S2 "Wk8REndorsementAEI"
label variable W8TTOS91895S2 "Wk8REndorsementAEI"
label variable W8TODS91895S2 "Wk8REndorsementAEI"
label variable W8TTOS91895S3 "Wk8REndorsementAEI"
label variable W8TODS91895S3 "Wk8REndorsementAEI"
label variable W8TTOS91896S2 "wk8d1NBCMSNFor11"
label variable W8TODS91896S2 "wk8d1NBCMSNFor11"
label variable W8FODS91896S2 "wk8d1NBCMSNFor11"
label variable W8TTOS91896S3 "wk8d1NBCMSNFor11"
label variable W8TODS91896S3 "wk8d1NBCMSNFor11"
label variable W8TTOS91897S3 "wk8d1APROOTFor15"
label variable W8TODS91897S3 "wk8d1APROOTFor15"
label variable W8TTOS91897S2 "wk8d1APROOTFor15"
label variable W8FODS91897S3 "wk8d1APROOTFor15"
label variable W8TODS91897S2 "wk8d1APROOTFor15"
label variable W8TTOS91898S2 "wk8d1REUHOTFor19"
label variable W8TODS91898S3 "wk8d1REUHOTFor19"
label variable W8TODS91898S2 "wk8d1REUHOTFor19"
label variable W8FODS91898S3 "wk8d1REUHOTFor19"
label variable W8TTOS91898S3 "wk8d1REUHOTFor19"
label variable W8FODS91899S2 "wk8d1NYTUNIFor27"
label variable W8TODS91899S3 "wk8d1NYTUNIFor27"
label variable W8FODS91899S3 "wk8d1NYTUNIFor27"
label variable W8TODS91899S2 "wk8d1NYTUNIFor27"
label variable W8TTOS91899S3 "wk8d1NYTUNIFor27"
label variable W8FODS91900S3 "wk8d2CBSCBSFor35"
label variable W8TODS91900S2 "wk8d2CBSCBSFor35"
label variable W8TTOS91900S3 "wk8d2CBSCBSFor35"
label variable W8TTOS91900S2 "wk8d2CBSCBSFor35"
label variable W8FODS91900S2 "wk8d2CBSCBSFor35"
label variable W8TTOS91901S3 "wk8d2ABCABCFor38"
label variable W8FODS91901S3 "wk8d2ABCABCFor38"
label variable W8TODS91901S3 "wk8d2ABCABCFor38"
label variable W8FODS91901S2 "wk8d2ABCABCFor38"
label variable W8TODS91901S2 "wk8d2ABCABCFor38"
label variable W8TODS91902S3 "wk8d2CNNCNNFor51"
label variable W8FODS91902S2 "wk8d2CNNCNNFor51"
label variable W8FODS91902S3 "wk8d2CNNCNNFor51"
label variable W8TTOS91902S3 "wk8d2CNNCNNFor51"
label variable W8TODS91902S2 "wk8d2CNNCNNFor51"
label variable W8FODS91903S3 "wk8r2CBSCBSFor67"
label variable W8TTOS91903S2 "wk8r2CBSCBSFor67"
label variable W8TTOS91903S3 "wk8r2CBSCBSFor67"
label variable W8TODS91903S3 "wk8r2CBSCBSFor67"
label variable W8TODS91903S2 "wk8r2CBSCBSFor67"
label variable W8FODS91904S3 "wk8d2WSJWSJFor59"
label variable W8TODS91904S3 "wk8d2WSJWSJFor59"
label variable W8TODS91904S2 "wk8d2WSJWSJFor59"
label variable W8FODS91904S2 "wk8d2WSJWSJFor59"
label variable W8TTOS91904S3 "wk8d2WSJWSJFor59"
label variable W8TTOS91905S3 "wk8r2APAPFor79"
label variable W8TODS91905S3 "wk8r2APAPFor79"
label variable W8FODS91905S2 "wk8r2APAPFor79"
label variable W8TODS91905S2 "wk8r2APAPFor79"
label variable W8FODS91905S3 "wk8r2APAPFor79"
label variable W8FODS91906S2 "wk8r2CNNCNNFor87"
label variable W8TTOS91906S2 "wk8r2CNNCNNFor87"
label variable W8TODS91906S3 "wk8r2CNNCNNFor87"
label variable W8TTOS91906S3 "wk8r2CNNCNNFor87"
label variable W8TODS91906S2 "wk8r2CNNCNNFor87"
label variable W8TTOS91907S3 "wk8r2WSJWSJFor95"
label variable W8TODS91907S3 "wk8r2WSJWSJFor95"
label variable W8FODS91907S3 "wk8r2WSJWSJFor95"
label variable W8TTOS91907S2 "wk8r2WSJWSJFor95"
label variable W8FODS91907S2 "wk8r2WSJWSJFor95"
label variable W8FODS91908S2 "wk8r1REUBETFor99"
label variable W8FODS91908S3 "wk8r1REUBETFor99"
label variable W8TTOS91908S2 "wk8r1REUBETFor99"
label variable W8TODS91908S3 "wk8r1REUBETFor99"
label variable W8TTOS91908S3 "wk8r1REUBETFor99"
label variable W8FODS91909S2 "wk8r1NYTFOXFor107"
label variable W8TTOS91909S2 "wk8r1NYTFOXFor107"
label variable W8TTOS91909S3 "wk8r1NYTFOXFor107"
label variable W8FODS91909S3 "wk8r1NYTFOXFor107"
label variable W8TODS91909S2 "wk8r1NYTFOXFor107"
label variable W8TODS91910S3 "wk8r1ABCUNIFor119"
label variable W8FODS91910S3 "wk8r1ABCUNIFor119"
label variable W8TTOS91910S2 "wk8r1ABCUNIFor119"
label variable W8TODS91910S2 "wk8r1ABCUNIFor119"
label variable W8TTOS91910S3 "wk8r1ABCUNIFor119"
label variable W8TODS91911S2 "wk8r1NBCHUFFor123"
label variable W8FODS91911S2 "wk8r1NBCHUFFor123"
label variable W8TTOS91911S2 "wk8r1NBCHUFFor123"
label variable W8TODS91911S3 "wk8r1NBCHUFFor123"
label variable W8FODS91911S3 "wk8r1NBCHUFFor123"
label variable W8TTOS91912S3 "wk8d3NBCMSNFor11"
label variable W8TODS91912S2 "wk8d3NBCMSNFor11"
label variable W8FODS91912S2 "wk8d3NBCMSNFor11"
label variable W8TODS91912S3 "wk8d3NBCMSNFor11"
label variable W8TTOS91912S2 "wk8d3NBCMSNFor11"
label variable W8FODS91913S2 "wk8d3APROOTFor15"
label variable W8TTOS91913S3 "wk8d3APROOTFor15"
label variable W8TODS91913S3 "wk8d3APROOTFor15"
label variable W8TODS91913S2 "wk8d3APROOTFor15"
label variable W8TTOS91913S2 "wk8d3APROOTFor15"
label variable W8TTOS91914S2 "wk8d3REUHOTFor19"
label variable W8TODS91914S3 "wk8d3REUHOTFor19"
label variable W8TODS91914S2 "wk8d3REUHOTFor19"
label variable W8FODS91914S3 "wk8d3REUHOTFor19"
label variable W8TTOS91914S3 "wk8d3REUHOTFor19"
label variable W8FODS91915S3 "wk8d3NYTUNIFor27"
label variable W8TODS91915S3 "wk8d3NYTUNIFor27"
label variable W8TODS91915S2 "wk8d3NYTUNIFor27"
label variable W8TTOS91915S3 "wk8d3NYTUNIFor27"
label variable W8FODS91915S2 "wk8d3NYTUNIFor27"
label variable W8TTOS91916S3 "wk8r3REUBETFor99"
label variable W8TTOS91916S2 "wk8r3REUBETFor99"
label variable W8FODS91916S2 "wk8r3REUBETFor99"
label variable W8TODS91916S2 "wk8r3REUBETFor99"
label variable W8TODS91916S3 "wk8r3REUBETFor99"
label variable W8TODS91917S2 "wk8r3NYTFOXFor107"
label variable W8TTOS91917S2 "wk8r3NYTFOXFor107"
label variable W8FODS91917S3 "wk8r3NYTFOXFor107"
label variable W8FODS91917S2 "wk8r3NYTFOXFor107"
label variable W8TTOS91917S3 "wk8r3NYTFOXFor107"
label variable W8TTOS91918S2 "wk8r3ABCUNIFor119"
label variable W8FODS91918S3 "wk8r3ABCUNIFor119"
label variable W8TODS91918S3 "wk8r3ABCUNIFor119"
label variable W8TODS91918S2 "wk8r3ABCUNIFor119"
label variable W8TTOS91918S3 "wk8r3ABCUNIFor119"
label variable W8TTOS91919S2 "wk8r3NBCHUFFor123"
label variable W8FODS91919S3 "wk8r3NBCHUFFor123"
label variable W8TTOS91919S3 "wk8r3NBCHUFFor123"
label variable W8FODS91919S2 "wk8r3NBCHUFFor123"
label variable W8TODS91919S2 "wk8r3NBCHUFFor123"

* Merge W8S1234 with IPW8 (IP ADRESS)
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W8/WorkingData/W8S1234_Working.dta", replace
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W8/WorkingData/W8S1234_Working.dta", replace
merge 1:m SUBJECTID using "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W8/IP/IPW8.dta"
drop _merge

* Duplicate Check
capture drop DUPW8
sort PAC
quietly by PAC: gen DUPW8 = cond(_N==1,0,_n)

* Generating week indicator
capture drop WEEK8
gen WEEK8 = 1

* Generating Date Variable
capture drop year month day
nsplit W8DATES1, digits(4 2 2) generate(year month day)
capture drop DATEW8b
gen DATEW8b = mdy(month, day, year)
capture drop date1
gen date1 = 19724
format %td date1
format %td DATEW8b
capture drop DATEW8a
gen DATEW8a = DATEW8b - date1
capture drop date1 year month day W8DATES1 W8DATES2 W8DATES3 W8DATES4

* ORDERING
order PAC IP DUPW8 DATEW8a DATEW8b W8TIMES1 WEEK8
sort PAC, stable

* Dropping Duplicates
drop if PAC == .
drop if SUBJECTID == 101588
drop if SUBJECTID == 103440
drop if SUBJECTID == 103504
drop if SUBJECTID == 101359
replace PAC= 100829 if SUBJECTID == 104068
replace PAC= 108188 if IP == "50.171.169.69"
replace PAC= 108277 if IP == "50.134.64.50"

* Build Cumulat.

capture egen  W8CTO91603Wk = rowtotal(W8TTOS91603S2 W8TTOS91603S3)
capture egen  W8COD91603Wk = rowtotal(W8TODS91603S2 W8TODS91603S3)
capture egen  W8COD91604Wk = rowtotal(W8TODS91604S2 W8TODS91604S3)
capture egen  W8CTO91604Wk = rowtotal(W8TTOS91604S2 W8TTOS91604S3)
capture egen  W8COD91605Wk = rowtotal(W8TODS91605S2 W8TODS91605S3)
capture egen  W8CTO91605Wk = rowtotal(W8TTOS91605S2 W8TTOS91605S3)
capture egen  W8COD91606Wk = rowtotal(W8TODS91606S2 W8TODS91606S3)
capture egen  W8CTO91606Wk = rowtotal(W8TTOS91606S2 W8TTOS91606S3)
capture egen  W8CTO91608Wk = rowtotal(W8TTOS91608S2 W8TTOS91608S3)
capture egen  W8COD91608Wk = rowtotal(W8TODS91608S2 W8TODS91608S3)
capture egen  W8COD91609Wk = rowtotal(W8TODS91609S2 W8TODS91609S3)
capture egen  W8CTO91609Wk = rowtotal(W8TTOS91609S2 W8TTOS91609S3)
capture egen  W8CTO91610Wk = rowtotal(W8TTOS91610S2 W8TTOS91610S3)
capture egen  W8COD91610Wk = rowtotal(W8TODS91610S2 W8TODS91610S3)
capture egen  W8COD91611Wk = rowtotal(W8TODS91611S2 W8TODS91611S3)
capture egen  W8CTO91611Wk = rowtotal(W8TTOS91611S2 W8TTOS91611S3)
capture egen  W8CTO91612Wk = rowtotal(W8TTOS91612S2 W8TTOS91612S3)
capture egen  W8COD91612Wk = rowtotal(W8TODS91612S2 W8TODS91612S3)
capture egen  W8COD91613Wk = rowtotal(W8TODS91613S2 W8TODS91613S3)
capture egen  W8CTO91613Wk = rowtotal(W8TTOS91613S2 W8TTOS91613S3)
capture egen  W8COD91614Wk = rowtotal(W8TODS91614S2 W8TODS91614S3)
capture egen  W8CTO91614Wk = rowtotal(W8TTOS91614S2 W8TTOS91614S3)
capture egen  W8COD91615Wk = rowtotal(W8TODS91615S2 W8TODS91615S3)
capture egen  W8CTO91615Wk = rowtotal(W8TTOS91615S2 W8TTOS91615S3)
capture egen  W8CTO91618Wk = rowtotal(W8TTOS91618S2 W8TTOS91618S3)
capture egen  W8COD91618Wk = rowtotal(W8TODS91618S2 W8TODS91618S3)
capture egen  W8COD91620Wk = rowtotal(W8TODS91620S2 W8TODS91620S3)
capture egen  W8CTO91620Wk = rowtotal(W8TTOS91620S2 W8TTOS91620S3)
capture egen  W8COD91623Wk = rowtotal(W8TODS91623S2 W8TODS91623S3)
capture egen  W8CTO91623Wk = rowtotal(W8TTOS91623S2 W8TTOS91623S3)
capture egen  W8CTO91624Wk = rowtotal(W8TTOS91624S2 W8TTOS91624S3)
capture egen  W8COD91624Wk = rowtotal(W8TODS91624S2 W8TODS91624S3)
capture egen  W8COD91625Wk = rowtotal(W8TODS91625S2 W8TODS91625S3)
capture egen  W8CTO91625Wk = rowtotal(W8TTOS91625S2 W8TTOS91625S3)
capture egen  W8COD91629Wk = rowtotal(W8TODS91629S2 W8TODS91629S3)
capture egen  W8CTO91629Wk = rowtotal(W8TTOS91629S2 W8TTOS91629S3)
capture egen  W8CTO91631Wk = rowtotal(W8TTOS91631S2 W8TTOS91631S3)
capture egen  W8COD91631Wk = rowtotal(W8TODS91631S2 W8TODS91631S3)
capture egen  W8COD91632Wk = rowtotal(W8TODS91632S2 W8TODS91632S3)
capture egen  W8CTO91632Wk = rowtotal(W8TTOS91632S2 W8TTOS91632S3)
capture egen  W8CTO91633Wk = rowtotal(W8TTOS91633S2 W8TTOS91633S3)
capture egen  W8COD91633Wk = rowtotal(W8TODS91633S2 W8TODS91633S3)
capture egen  W8CTO91634Wk = rowtotal(W8TTOS91634S2 W8TTOS91634S3)
capture egen  W8COD91634Wk = rowtotal(W8TODS91634S2 W8TODS91634S3)
capture egen  W8CTO91636Wk = rowtotal(W8TTOS91636S2 W8TTOS91636S3)
capture egen  W8COD91636Wk = rowtotal(W8TODS91636S2 W8TODS91636S3)
capture egen  W8CTO91637Wk = rowtotal(W8TTOS91637S2 W8TTOS91637S3)
capture egen  W8COD91637Wk = rowtotal(W8TODS91637S2 W8TODS91637S3)
capture egen  W8COD91641Wk = rowtotal(W8TODS91641S2 W8TODS91641S3)
capture egen  W8CTO91641Wk = rowtotal(W8TTOS91641S2 W8TTOS91641S3)
capture egen  W8CTO91642Wk = rowtotal(W8TTOS91642S2 W8TTOS91642S3)
capture egen  W8COD91642Wk = rowtotal(W8TODS91642S2 W8TODS91642S3)
capture egen  W8CTO91643Wk = rowtotal(W8TTOS91643S2 W8TTOS91643S3)
capture egen  W8COD91643Wk = rowtotal(W8TODS91643S2 W8TODS91643S3)
capture egen  W8CTO91644Wk = rowtotal(W8TTOS91644S2 W8TTOS91644S3)
capture egen  W8COD91644Wk = rowtotal(W8TODS91644S2 W8TODS91644S3)
capture egen  W8COD91646Wk = rowtotal(W8TODS91646S2 W8TODS91646S3)
capture egen  W8CTO91646Wk = rowtotal(W8TTOS91646S2 W8TTOS91646S3)
capture egen  W8CTO91647Wk = rowtotal(W8TTOS91647S2 W8TTOS91647S3)
capture egen  W8COD91647Wk = rowtotal(W8TODS91647S2 W8TODS91647S3)
capture egen  W8COD91648Wk = rowtotal(W8TODS91648S2 W8TODS91648S3)
capture egen  W8CTO91648Wk = rowtotal(W8TTOS91648S2 W8TTOS91648S3)
capture egen  W8COD91649Wk = rowtotal(W8TODS91649S2 W8TODS91649S3)
capture egen  W8CTO91649Wk = rowtotal(W8TTOS91649S2 W8TTOS91649S3)
capture egen  W8CTO91652Wk = rowtotal(W8TTOS91652S2 W8TTOS91652S3)
capture egen  W8COD91652Wk = rowtotal(W8TODS91652S2 W8TODS91652S3)
capture egen  W8CTO91653Wk = rowtotal(W8TTOS91653S2 W8TTOS91653S3)
capture egen  W8COD91653Wk = rowtotal(W8TODS91653S2 W8TODS91653S3)
capture egen  W8COD91654Wk = rowtotal(W8TODS91654S2 W8TODS91654S3)
capture egen  W8CTO91654Wk = rowtotal(W8TTOS91654S2 W8TTOS91654S3)
capture egen  W8COD91655Wk = rowtotal(W8TODS91655S2 W8TODS91655S3)
capture egen  W8CTO91655Wk = rowtotal(W8TTOS91655S2 W8TTOS91655S3)
capture egen  W8CTO91656Wk = rowtotal(W8TTOS91656S2 W8TTOS91656S3)
capture egen  W8COD91656Wk = rowtotal(W8TODS91656S2 W8TODS91656S3)
capture egen  W8CTO91657Wk = rowtotal(W8TTOS91657S2 W8TTOS91657S3)
capture egen  W8COD91657Wk = rowtotal(W8TODS91657S2 W8TODS91657S3)
capture egen  W8CTO91659Wk = rowtotal(W8TTOS91659S2 W8TTOS91659S3)
capture egen  W8COD91659Wk = rowtotal(W8TODS91659S2 W8TODS91659S3)
capture egen  W8COD91660Wk = rowtotal(W8TODS91660S2 W8TODS91660S3)
capture egen  W8CTO91660Wk = rowtotal(W8TTOS91660S2 W8TTOS91660S3)
capture egen  W8CTO91664Wk = rowtotal(W8TTOS91664S2 W8TTOS91664S3)
capture egen  W8COD91664Wk = rowtotal(W8TODS91664S2 W8TODS91664S3)
capture egen  W8CTO91666Wk = rowtotal(W8TTOS91666S2 W8TTOS91666S3)
capture egen  W8COD91666Wk = rowtotal(W8TODS91666S2 W8TODS91666S3)
capture egen  W8CTO91667Wk = rowtotal(W8TTOS91667S2 W8TTOS91667S3)
capture egen  W8COD91667Wk = rowtotal(W8TODS91667S2 W8TODS91667S3)
capture egen  W8COD91668Wk = rowtotal(W8TODS91668S2 W8TODS91668S3)
capture egen  W8CTO91668Wk = rowtotal(W8TTOS91668S2 W8TTOS91668S3)
capture egen  W8CTO91670Wk = rowtotal(W8TTOS91670S2 W8TTOS91670S3)
capture egen  W8COD91670Wk = rowtotal(W8TODS91670S2 W8TODS91670S3)
capture egen  W8COD91673Wk = rowtotal(W8TODS91673S2 W8TODS91673S3)
capture egen  W8CTO91673Wk = rowtotal(W8TTOS91673S2 W8TTOS91673S3)
capture egen  W8COD91675Wk = rowtotal(W8TODS91675S2 W8TODS91675S3)
capture egen  W8CTO91675Wk = rowtotal(W8TTOS91675S2 W8TTOS91675S3)
capture egen  W8CTO91676Wk = rowtotal(W8TTOS91676S2 W8TTOS91676S3)
capture egen  W8COD91676Wk = rowtotal(W8TODS91676S2 W8TODS91676S3)
capture egen  W8CTO91678Wk = rowtotal(W8TTOS91678S2 W8TTOS91678S3)
capture egen  W8COD91678Wk = rowtotal(W8TODS91678S2 W8TODS91678S3)
capture egen  W8COD91679Wk = rowtotal(W8TODS91679S2 W8TODS91679S3)
capture egen  W8CTO91679Wk = rowtotal(W8TTOS91679S2 W8TTOS91679S3)
capture egen  W8CTO91682Wk = rowtotal(W8TTOS91682S2 W8TTOS91682S3)
capture egen  W8COD91682Wk = rowtotal(W8TODS91682S2 W8TODS91682S3)
capture egen  W8COD91683Wk = rowtotal(W8TODS91683S2 W8TODS91683S3)
capture egen  W8CTO91683Wk = rowtotal(W8TTOS91683S2 W8TTOS91683S3)
capture egen  W8CTO91684Wk = rowtotal(W8TTOS91684S2 W8TTOS91684S3)
capture egen  W8COD91684Wk = rowtotal(W8TODS91684S2 W8TODS91684S3)
capture egen  W8COD91685Wk = rowtotal(W8TODS91685S2 W8TODS91685S3)
capture egen  W8CTO91685Wk = rowtotal(W8TTOS91685S2 W8TTOS91685S3)
capture egen  W8CTO91686Wk = rowtotal(W8TTOS91686S2 W8TTOS91686S3)
capture egen  W8COD91686Wk = rowtotal(W8TODS91686S2 W8TODS91686S3)
capture egen  W8CTO91687Wk = rowtotal(W8TTOS91687S2 W8TTOS91687S3)
capture egen  W8COD91687Wk = rowtotal(W8TODS91687S2 W8TODS91687S3)
capture egen  W8CTO91688Wk = rowtotal(W8TTOS91688S2 W8TTOS91688S3)
capture egen  W8COD91688Wk = rowtotal(W8TODS91688S2 W8TODS91688S3)
capture egen  W8CTO91689Wk = rowtotal(W8TTOS91689S2 W8TTOS91689S3)
capture egen  W8COD91689Wk = rowtotal(W8TODS91689S2 W8TODS91689S3)
capture egen  W8COD91690Wk = rowtotal(W8TODS91690S2 W8TODS91690S3)
capture egen  W8CTO91690Wk = rowtotal(W8TTOS91690S2 W8TTOS91690S3)
capture egen  W8COD91691Wk = rowtotal(W8TODS91691S2 W8TODS91691S3)
capture egen  W8CTO91691Wk = rowtotal(W8TTOS91691S2 W8TTOS91691S3)
capture egen  W8COD91692Wk = rowtotal(W8TODS91692S2 W8TODS91692S3)
capture egen  W8CTO91692Wk = rowtotal(W8TTOS91692S2 W8TTOS91692S3)
capture egen  W8COD91693Wk = rowtotal(W8TODS91693S2 W8TODS91693S3)
capture egen  W8CTO91693Wk = rowtotal(W8TTOS91693S2 W8TTOS91693S3)
capture egen  W8COD91694Wk = rowtotal(W8TODS91694S2 W8TODS91694S3)
capture egen  W8CTO91694Wk = rowtotal(W8TTOS91694S2 W8TTOS91694S3)
capture egen  W8COD91695Wk = rowtotal(W8TODS91695S2 W8TODS91695S3)
capture egen  W8CTO91695Wk = rowtotal(W8TTOS91695S2 W8TTOS91695S3)
capture egen  W8CTO91696Wk = rowtotal(W8TTOS91696S2 W8TTOS91696S3)
capture egen  W8COD91696Wk = rowtotal(W8TODS91696S2 W8TODS91696S3)
capture egen  W8COD91697Wk = rowtotal(W8TODS91697S2 W8TODS91697S3)
capture egen  W8CTO91697Wk = rowtotal(W8TTOS91697S2 W8TTOS91697S3)
capture egen  W8COD91698Wk = rowtotal(W8TODS91698S2 W8TODS91698S3)
capture egen  W8CTO91698Wk = rowtotal(W8TTOS91698S2 W8TTOS91698S3)
capture egen  W8COD91699Wk = rowtotal(W8TODS91699S2 W8TODS91699S3)
capture egen  W8CTO91699Wk = rowtotal(W8TTOS91699S2 W8TTOS91699S3)
capture egen  W8CTO91700Wk = rowtotal(W8TTOS91700S2 W8TTOS91700S3)
capture egen  W8COD91700Wk = rowtotal(W8TODS91700S2 W8TODS91700S3)
capture egen  W8CTO91701Wk = rowtotal(W8TTOS91701S2 W8TTOS91701S3)
capture egen  W8COD91701Wk = rowtotal(W8TODS91701S2 W8TODS91701S3)
capture egen  W8COD91702Wk = rowtotal(W8TODS91702S2 W8TODS91702S3)
capture egen  W8CTO91702Wk = rowtotal(W8TTOS91702S2 W8TTOS91702S3)
capture egen  W8CTO91703Wk = rowtotal(W8TTOS91703S2 W8TTOS91703S3)
capture egen  W8COD91703Wk = rowtotal(W8TODS91703S2 W8TODS91703S3)
capture egen  W8COD91704Wk = rowtotal(W8TODS91704S2 W8TODS91704S3)
capture egen  W8CTO91704Wk = rowtotal(W8TTOS91704S2 W8TTOS91704S3)
capture egen  W8CTO91705Wk = rowtotal(W8TTOS91705S2 W8TTOS91705S3)
capture egen  W8COD91705Wk = rowtotal(W8TODS91705S2 W8TODS91705S3)
capture egen  W8COD91706Wk = rowtotal(W8TODS91706S2 W8TODS91706S3)
capture egen  W8CTO91706Wk = rowtotal(W8TTOS91706S2 W8TTOS91706S3)
capture egen  W8COD91707Wk = rowtotal(W8TODS91707S2 W8TODS91707S3)
capture egen  W8CTO91707Wk = rowtotal(W8TTOS91707S2 W8TTOS91707S3)
capture egen  W8CTO91708Wk = rowtotal(W8TTOS91708S2 W8TTOS91708S3)
capture egen  W8COD91708Wk = rowtotal(W8TODS91708S2 W8TODS91708S3)
capture egen  W8COD91709Wk = rowtotal(W8TODS91709S2 W8TODS91709S3)
capture egen  W8CTO91709Wk = rowtotal(W8TTOS91709S2 W8TTOS91709S3)
capture egen  W8CTO91711Wk = rowtotal(W8TTOS91711S2 W8TTOS91711S3)
capture egen  W8COD91711Wk = rowtotal(W8TODS91711S2 W8TODS91711S3)
capture egen  W8CTO91712Wk = rowtotal(W8TTOS91712S2 W8TTOS91712S3)
capture egen  W8COD91712Wk = rowtotal(W8TODS91712S2 W8TODS91712S3)
capture egen  W8CTO91714Wk = rowtotal(W8TTOS91714S2 W8TTOS91714S3)
capture egen  W8COD91714Wk = rowtotal(W8TODS91714S2 W8TODS91714S3)
capture egen  W8COD91720Wk = rowtotal(W8TODS91720S2 W8TODS91720S3)
capture egen  W8CTO91720Wk = rowtotal(W8TTOS91720S2 W8TTOS91720S3)
capture egen  W8COD91721Wk = rowtotal(W8TODS91721S2 W8TODS91721S3)
capture egen  W8CTO91721Wk = rowtotal(W8TTOS91721S2 W8TTOS91721S3)
capture egen  W8COD91722Wk = rowtotal(W8TODS91722S2 W8TODS91722S3)
capture egen  W8CTO91722Wk = rowtotal(W8TTOS91722S2 W8TTOS91722S3)
capture egen  W8CTO91732Wk = rowtotal(W8TTOS91732S2 W8TTOS91732S3)
capture egen  W8COD91732Wk = rowtotal(W8TODS91732S2 W8TODS91732S3)
capture egen  W8CTO91734Wk = rowtotal(W8TTOS91734S2 W8TTOS91734S3)
capture egen  W8COD91734Wk = rowtotal(W8TODS91734S2 W8TODS91734S3)
capture egen  W8COD91735Wk = rowtotal(W8TODS91735S2 W8TODS91735S3)
capture egen  W8CTO91735Wk = rowtotal(W8TTOS91735S2 W8TTOS91735S3)
capture egen  W8CTO91736Wk = rowtotal(W8TTOS91736S2 W8TTOS91736S3)
capture egen  W8COD91736Wk = rowtotal(W8TODS91736S2 W8TODS91736S3)
capture egen  W8COD91741Wk = rowtotal(W8TODS91741S2 W8TODS91741S3)
capture egen  W8CTO91741Wk = rowtotal(W8TTOS91741S2 W8TTOS91741S3)
capture egen  W8COD91742Wk = rowtotal(W8TODS91742S2 W8TODS91742S3)
capture egen  W8CTO91742Wk = rowtotal(W8TTOS91742S2 W8TTOS91742S3)
capture egen  W8COD91743Wk = rowtotal(W8TODS91743S2 W8TODS91743S3)
capture egen  W8CTO91743Wk = rowtotal(W8TTOS91743S2 W8TTOS91743S3)
capture egen  W8COD91744Wk = rowtotal(W8TODS91744S2 W8TODS91744S3)
capture egen  W8CTO91744Wk = rowtotal(W8TTOS91744S2 W8TTOS91744S3)
capture egen  W8CTO91745Wk = rowtotal(W8TTOS91745S2 W8TTOS91745S3)
capture egen  W8COD91745Wk = rowtotal(W8TODS91745S2 W8TODS91745S3)
capture egen  W8CTO91749Wk = rowtotal(W8TTOS91749S2 W8TTOS91749S3)
capture egen  W8COD91749Wk = rowtotal(W8TODS91749S2 W8TODS91749S3)
capture egen  W8CTO91750Wk = rowtotal(W8TTOS91750S2 W8TTOS91750S3)
capture egen  W8COD91750Wk = rowtotal(W8TODS91750S2 W8TODS91750S3)
capture egen  W8CTO91751Wk = rowtotal(W8TTOS91751S2 W8TTOS91751S3)
capture egen  W8COD91751Wk = rowtotal(W8TODS91751S2 W8TODS91751S3)
capture egen  W8CTO91752Wk = rowtotal(W8TTOS91752S2 W8TTOS91752S3)
capture egen  W8COD91752Wk = rowtotal(W8TODS91752S2 W8TODS91752S3)
capture egen  W8COD91755Wk = rowtotal(W8TODS91755S2 W8TODS91755S3)
capture egen  W8CTO91755Wk = rowtotal(W8TTOS91755S2 W8TTOS91755S3)
capture egen  W8COD91758Wk = rowtotal(W8TODS91758S2 W8TODS91758S3)
capture egen  W8CTO91758Wk = rowtotal(W8TTOS91758S2 W8TTOS91758S3)
capture egen  W8COD91759Wk = rowtotal(W8TODS91759S2 W8TODS91759S3)
capture egen  W8CTO91759Wk = rowtotal(W8TTOS91759S2 W8TTOS91759S3)
capture egen  W8COD91760Wk = rowtotal(W8TODS91760S2 W8TODS91760S3)
capture egen  W8CTO91760Wk = rowtotal(W8TTOS91760S2 W8TTOS91760S3)
capture egen  W8CTO91763Wk = rowtotal(W8TTOS91763S2 W8TTOS91763S3)
capture egen  W8COD91763Wk = rowtotal(W8TODS91763S2 W8TODS91763S3)
capture egen  W8CTO91764Wk = rowtotal(W8TTOS91764S2 W8TTOS91764S3)
capture egen  W8COD91764Wk = rowtotal(W8TODS91764S2 W8TODS91764S3)
capture egen  W8COD91765Wk = rowtotal(W8TODS91765S2 W8TODS91765S3)
capture egen  W8CTO91765Wk = rowtotal(W8TTOS91765S2 W8TTOS91765S3)
capture egen  W8COD91768Wk = rowtotal(W8TODS91768S2 W8TODS91768S3)
capture egen  W8CTO91768Wk = rowtotal(W8TTOS91768S2 W8TTOS91768S3)
capture egen  W8CTO91769Wk = rowtotal(W8TTOS91769S2 W8TTOS91769S3)
capture egen  W8COD91769Wk = rowtotal(W8TODS91769S2 W8TODS91769S3)
capture egen  W8COD91770Wk = rowtotal(W8TODS91770S2 W8TODS91770S3)
capture egen  W8CTO91770Wk = rowtotal(W8TTOS91770S2 W8TTOS91770S3)
capture egen  W8CTO91771Wk = rowtotal(W8TTOS91771S2 W8TTOS91771S3)
capture egen  W8COD91771Wk = rowtotal(W8TODS91771S2 W8TODS91771S3)
capture egen  W8CTO91773Wk = rowtotal(W8TTOS91773S2 W8TTOS91773S3)
capture egen  W8COD91773Wk = rowtotal(W8TODS91773S2 W8TODS91773S3)
capture egen  W8CTO91774Wk = rowtotal(W8TTOS91774S2 W8TTOS91774S3)
capture egen  W8COD91774Wk = rowtotal(W8TODS91774S2 W8TODS91774S3)
capture egen  W8COD91775Wk = rowtotal(W8TODS91775S2 W8TODS91775S3)
capture egen  W8CTO91775Wk = rowtotal(W8TTOS91775S2 W8TTOS91775S3)
capture egen  W8COD91776Wk = rowtotal(W8TODS91776S2 W8TODS91776S3)
capture egen  W8CTO91776Wk = rowtotal(W8TTOS91776S2 W8TTOS91776S3)
capture egen  W8CTO91777Wk = rowtotal(W8TTOS91777S2 W8TTOS91777S3)
capture egen  W8COD91777Wk = rowtotal(W8TODS91777S2 W8TODS91777S3)
capture egen  W8CTO91779Wk = rowtotal(W8TTOS91779S2 W8TTOS91779S3)
capture egen  W8COD91779Wk = rowtotal(W8TODS91779S2 W8TODS91779S3)
capture egen  W8COD91780Wk = rowtotal(W8TODS91780S2 W8TODS91780S3)
capture egen  W8CTO91780Wk = rowtotal(W8TTOS91780S2 W8TTOS91780S3)
capture egen  W8CTO91781Wk = rowtotal(W8TTOS91781S2 W8TTOS91781S3)
capture egen  W8COD91781Wk = rowtotal(W8TODS91781S2 W8TODS91781S3)
capture egen  W8CTO91782Wk = rowtotal(W8TTOS91782S2 W8TTOS91782S3)
capture egen  W8COD91782Wk = rowtotal(W8TODS91782S2 W8TODS91782S3)
capture egen  W8CTO91783Wk = rowtotal(W8TTOS91783S2 W8TTOS91783S3)
capture egen  W8COD91783Wk = rowtotal(W8TODS91783S2 W8TODS91783S3)
capture egen  W8COD91784Wk = rowtotal(W8TODS91784S2 W8TODS91784S3)
capture egen  W8CTO91784Wk = rowtotal(W8TTOS91784S2 W8TTOS91784S3)
capture egen  W8COD91785Wk = rowtotal(W8TODS91785S2 W8TODS91785S3)
capture egen  W8CTO91785Wk = rowtotal(W8TTOS91785S2 W8TTOS91785S3)
capture egen  W8COD91786Wk = rowtotal(W8TODS91786S2 W8TODS91786S3)
capture egen  W8CTO91786Wk = rowtotal(W8TTOS91786S2 W8TTOS91786S3)
capture egen  W8COD91788Wk = rowtotal(W8TODS91788S2 W8TODS91788S3)
capture egen  W8CTO91788Wk = rowtotal(W8TTOS91788S2 W8TTOS91788S3)
capture egen  W8COD91790Wk = rowtotal(W8TODS91790S2 W8TODS91790S3)
capture egen  W8CTO91790Wk = rowtotal(W8TTOS91790S2 W8TTOS91790S3)
capture egen  W8CTO91791Wk = rowtotal(W8TTOS91791S2 W8TTOS91791S3)
capture egen  W8COD91791Wk = rowtotal(W8TODS91791S2 W8TODS91791S3)
capture egen  W8CTO91792Wk = rowtotal(W8TTOS91792S2 W8TTOS91792S3)
capture egen  W8COD91792Wk = rowtotal(W8TODS91792S2 W8TODS91792S3)
capture egen  W8CTO91793Wk = rowtotal(W8TTOS91793S2 W8TTOS91793S3)
capture egen  W8COD91793Wk = rowtotal(W8TODS91793S2 W8TODS91793S3)
capture egen  W8CTO91794Wk = rowtotal(W8TTOS91794S2 W8TTOS91794S3)
capture egen  W8COD91794Wk = rowtotal(W8TODS91794S2 W8TODS91794S3)
capture egen  W8COD91795Wk = rowtotal(W8TODS91795S2 W8TODS91795S3)
capture egen  W8CTO91795Wk = rowtotal(W8TTOS91795S2 W8TTOS91795S3)
capture egen  W8COD91796Wk = rowtotal(W8TODS91796S2 W8TODS91796S3)
capture egen  W8CTO91796Wk = rowtotal(W8TTOS91796S2 W8TTOS91796S3)
capture egen  W8COD91799Wk = rowtotal(W8TODS91799S2 W8TODS91799S3)
capture egen  W8CTO91799Wk = rowtotal(W8TTOS91799S2 W8TTOS91799S3)
capture egen  W8CTO91800Wk = rowtotal(W8TTOS91800S2 W8TTOS91800S3)
capture egen  W8COD91800Wk = rowtotal(W8TODS91800S2 W8TODS91800S3)
capture egen  W8CTO91801Wk = rowtotal(W8TTOS91801S2 W8TTOS91801S3)
capture egen  W8COD91801Wk = rowtotal(W8TODS91801S2 W8TODS91801S3)
capture egen  W8CTO91802Wk = rowtotal(W8TTOS91802S2 W8TTOS91802S3)
capture egen  W8COD91802Wk = rowtotal(W8TODS91802S2 W8TODS91802S3)
capture egen  W8CTO91804Wk = rowtotal(W8TTOS91804S2 W8TTOS91804S3)
capture egen  W8COD91804Wk = rowtotal(W8TODS91804S2 W8TODS91804S3)
capture egen  W8COD91805Wk = rowtotal(W8TODS91805S2 W8TODS91805S3)
capture egen  W8CTO91805Wk = rowtotal(W8TTOS91805S2 W8TTOS91805S3)
capture egen  W8CTO91806Wk = rowtotal(W8TTOS91806S2 W8TTOS91806S3)
capture egen  W8COD91806Wk = rowtotal(W8TODS91806S2 W8TODS91806S3)
capture egen  W8COD91809Wk = rowtotal(W8TODS91809S2 W8TODS91809S3)
capture egen  W8CTO91809Wk = rowtotal(W8TTOS91809S2 W8TTOS91809S3)
capture egen  W8CTO91810Wk = rowtotal(W8TTOS91810S2 W8TTOS91810S3)
capture egen  W8COD91810Wk = rowtotal(W8TODS91810S2 W8TODS91810S3)
capture egen  W8COD91811Wk = rowtotal(W8TODS91811S2 W8TODS91811S3)
capture egen  W8CTO91811Wk = rowtotal(W8TTOS91811S2 W8TTOS91811S3)
capture egen  W8COD91812Wk = rowtotal(W8TODS91812S2 W8TODS91812S3)
capture egen  W8CTO91812Wk = rowtotal(W8TTOS91812S2 W8TTOS91812S3)
capture egen  W8COD91813Wk = rowtotal(W8TODS91813S2 W8TODS91813S3)
capture egen  W8CTO91813Wk = rowtotal(W8TTOS91813S2 W8TTOS91813S3)
capture egen  W8COD91817Wk = rowtotal(W8TODS91817S2 W8TODS91817S3)
capture egen  W8CTO91817Wk = rowtotal(W8TTOS91817S2 W8TTOS91817S3)
capture egen  W8COD91822Wk = rowtotal(W8TODS91822S2 W8TODS91822S3)
capture egen  W8CTO91822Wk = rowtotal(W8TTOS91822S2 W8TTOS91822S3)
capture egen  W8COD91823Wk = rowtotal(W8TODS91823S2 W8TODS91823S3)
capture egen  W8CTO91823Wk = rowtotal(W8TTOS91823S2 W8TTOS91823S3)
capture egen  W8COD91825Wk = rowtotal(W8TODS91825S2 W8TODS91825S3)
capture egen  W8CTO91825Wk = rowtotal(W8TTOS91825S2 W8TTOS91825S3)
capture egen  W8COD91826Wk = rowtotal(W8TODS91826S2 W8TODS91826S3)
capture egen  W8CTO91826Wk = rowtotal(W8TTOS91826S2 W8TTOS91826S3)
capture egen  W8COD91830Wk = rowtotal(W8TODS91830S2 W8TODS91830S3)
capture egen  W8CTO91830Wk = rowtotal(W8TTOS91830S2 W8TTOS91830S3)
capture egen  W8COD91831Wk = rowtotal(W8TODS91831S2 W8TODS91831S3)
capture egen  W8CTO91831Wk = rowtotal(W8TTOS91831S2 W8TTOS91831S3)
capture egen  W8CTO91833Wk = rowtotal(W8TTOS91833S2 W8TTOS91833S3)
capture egen  W8COD91833Wk = rowtotal(W8TODS91833S2 W8TODS91833S3)
capture egen  W8COD91836Wk = rowtotal(W8TODS91836S2 W8TODS91836S3)
capture egen  W8CTO91836Wk = rowtotal(W8TTOS91836S2 W8TTOS91836S3)
capture egen  W8COD91837Wk = rowtotal(W8TODS91837S2 W8TODS91837S3)
capture egen  W8CTO91837Wk = rowtotal(W8TTOS91837S2 W8TTOS91837S3)
capture egen  W8CTO91838Wk = rowtotal(W8TTOS91838S2 W8TTOS91838S3)
capture egen  W8COD91838Wk = rowtotal(W8TODS91838S2 W8TODS91838S3)
capture egen  W8COD91841Wk = rowtotal(W8TODS91841S2 W8TODS91841S3)
capture egen  W8CTO91841Wk = rowtotal(W8TTOS91841S2 W8TTOS91841S3)
capture egen  W8COD91842Wk = rowtotal(W8TODS91842S2 W8TODS91842S3)
capture egen  W8CTO91842Wk = rowtotal(W8TTOS91842S2 W8TTOS91842S3)
capture egen  W8CTO91846Wk = rowtotal(W8TTOS91846S2 W8TTOS91846S3)
capture egen  W8COD91846Wk = rowtotal(W8TODS91846S2 W8TODS91846S3)
capture egen  W8CTO91849Wk = rowtotal(W8TTOS91849S2 W8TTOS91849S3)
capture egen  W8COD91849Wk = rowtotal(W8TODS91849S2 W8TODS91849S3)
capture egen  W8CTO91850Wk = rowtotal(W8TTOS91850S2 W8TTOS91850S3)
capture egen  W8COD91850Wk = rowtotal(W8TODS91850S2 W8TODS91850S3)
capture egen  W8COD91851Wk = rowtotal(W8TODS91851S2 W8TODS91851S3)
capture egen  W8CTO91851Wk = rowtotal(W8TTOS91851S2 W8TTOS91851S3)
capture egen  W8CTO91852Wk = rowtotal(W8TTOS91852S2 W8TTOS91852S3)
capture egen  W8COD91852Wk = rowtotal(W8TODS91852S2 W8TODS91852S3)
capture egen  W8COD91853Wk = rowtotal(W8TODS91853S2 W8TODS91853S3)
capture egen  W8CTO91853Wk = rowtotal(W8TTOS91853S2 W8TTOS91853S3)
capture egen  W8COD91854Wk = rowtotal(W8TODS91854S2 W8TODS91854S3)
capture egen  W8CTO91854Wk = rowtotal(W8TTOS91854S2 W8TTOS91854S3)
capture egen  W8CTO91855Wk = rowtotal(W8TTOS91855S2 W8TTOS91855S3)
capture egen  W8COD91855Wk = rowtotal(W8TODS91855S2 W8TODS91855S3)
capture egen  W8COD91856Wk = rowtotal(W8TODS91856S2 W8TODS91856S3)
capture egen  W8CTO91856Wk = rowtotal(W8TTOS91856S2 W8TTOS91856S3)
capture egen  W8COD91857Wk = rowtotal(W8TODS91857S2 W8TODS91857S3)
capture egen  W8CTO91857Wk = rowtotal(W8TTOS91857S2 W8TTOS91857S3)
capture egen  W8COD91858Wk = rowtotal(W8TODS91858S2 W8TODS91858S3)
capture egen  W8CTO91858Wk = rowtotal(W8TTOS91858S2 W8TTOS91858S3)
capture egen  W8CTO91859Wk = rowtotal(W8TTOS91859S2 W8TTOS91859S3)
capture egen  W8COD91859Wk = rowtotal(W8TODS91859S2 W8TODS91859S3)
capture egen  W8CTO91860Wk = rowtotal(W8TTOS91860S2 W8TTOS91860S3)
capture egen  W8COD91860Wk = rowtotal(W8TODS91860S2 W8TODS91860S3)
capture egen  W8CTO91861Wk = rowtotal(W8TTOS91861S2 W8TTOS91861S3)
capture egen  W8COD91861Wk = rowtotal(W8TODS91861S2 W8TODS91861S3)
capture egen  W8CTO91862Wk = rowtotal(W8TTOS91862S2 W8TTOS91862S3)
capture egen  W8COD91862Wk = rowtotal(W8TODS91862S2 W8TODS91862S3)
capture egen  W8COD91866Wk = rowtotal(W8TODS91866S2 W8TODS91866S3)
capture egen  W8CTO91866Wk = rowtotal(W8TTOS91866S2 W8TTOS91866S3)
capture egen  W8COD91868Wk = rowtotal(W8TODS91868S2 W8TODS91868S3)
capture egen  W8CTO91868Wk = rowtotal(W8TTOS91868S2 W8TTOS91868S3)
capture egen  W8CTO91872Wk = rowtotal(W8TTOS91872S2 W8TTOS91872S3)
capture egen  W8COD91872Wk = rowtotal(W8TODS91872S2 W8TODS91872S3)
capture egen  W8COD91877Wk = rowtotal(W8TODS91877S2 W8TODS91877S3)
capture egen  W8CTO91877Wk = rowtotal(W8TTOS91877S2 W8TTOS91877S3)
capture egen  W8COD91878Wk = rowtotal(W8TODS91878S2 W8TODS91878S3)
capture egen  W8CTO91878Wk = rowtotal(W8TTOS91878S2 W8TTOS91878S3)
capture egen  W8CTO91882Wk = rowtotal(W8TTOS91882S2 W8TTOS91882S3)
capture egen  W8COD91882Wk = rowtotal(W8TODS91882S2 W8TODS91882S3)
capture egen  W8CTO91883Wk = rowtotal(W8TTOS91883S2 W8TTOS91883S3)
capture egen  W8COD91883Wk = rowtotal(W8TODS91883S2 W8TODS91883S3)
capture egen  W8CTO91885Wk = rowtotal(W8TTOS91885S2 W8TTOS91885S3)
capture egen  W8COD91885Wk = rowtotal(W8TODS91885S2 W8TODS91885S3)
capture egen  W8CTO91886Wk = rowtotal(W8TTOS91886S2 W8TTOS91886S3)
capture egen  W8COD91886Wk = rowtotal(W8TODS91886S2 W8TODS91886S3)
capture egen  W8CTO91887Wk = rowtotal(W8TTOS91887S2 W8TTOS91887S3)
capture egen  W8COD91887Wk = rowtotal(W8TODS91887S2 W8TODS91887S3)
capture egen  W8COD91888Wk = rowtotal(W8TODS91888S2 W8TODS91888S3)
capture egen  W8CTO91888Wk = rowtotal(W8TTOS91888S2 W8TTOS91888S3)
capture egen  W8COD91890Wk = rowtotal(W8TODS91890S2 W8TODS91890S3)
capture egen  W8CTO91890Wk = rowtotal(W8TTOS91890S2 W8TTOS91890S3)
capture egen  W8COD91891Wk = rowtotal(W8TODS91891S2 W8TODS91891S3)
capture egen  W8CTO91891Wk = rowtotal(W8TTOS91891S2 W8TTOS91891S3)
capture egen  W8CTO91892Wk = rowtotal(W8TTOS91892S2 W8TTOS91892S3)
capture egen  W8COD91892Wk = rowtotal(W8TODS91892S2 W8TODS91892S3)
capture egen  W8CTO91893Wk = rowtotal(W8TTOS91893S2 W8TTOS91893S3)
capture egen  W8COD91893Wk = rowtotal(W8TODS91893S2 W8TODS91893S3)
capture egen  W8CTO91894Wk = rowtotal(W8TTOS91894S2 W8TTOS91894S3)
capture egen  W8COD91894Wk = rowtotal(W8TODS91894S2 W8TODS91894S3)
capture egen  W8CTO91895Wk = rowtotal(W8TTOS91895S2 W8TTOS91895S3)
capture egen  W8COD91895Wk = rowtotal(W8TODS91895S2 W8TODS91895S3)
capture egen  W8COD91896Wk = rowtotal(W8TODS91896S2 W8TODS91896S3)
capture egen  W8CTO91896Wk = rowtotal(W8TTOS91896S2 W8TTOS91896S3)
capture egen  W8COD91897Wk = rowtotal(W8TODS91897S2 W8TODS91897S3)
capture egen  W8CTO91897Wk = rowtotal(W8TTOS91897S2 W8TTOS91897S3)
capture egen  W8CTO91898Wk = rowtotal(W8TTOS91898S2 W8TTOS91898S3)
capture egen  W8COD91898Wk = rowtotal(W8TODS91898S2 W8TODS91898S3)
capture egen  W8COD91899Wk = rowtotal(W8TODS91899S2 W8TODS91899S3)
capture egen  W8CTO91899Wk = rowtotal(W8TTOS91899S2 W8TTOS91899S3)
capture egen  W8COD91900Wk = rowtotal(W8TODS91900S2 W8TODS91900S3)
capture egen  W8CTO91900Wk = rowtotal(W8TTOS91900S2 W8TTOS91900S3)
capture egen  W8COD91901Wk = rowtotal(W8TODS91901S2 W8TODS91901S3)
capture egen  W8CTO91901Wk = rowtotal(W8TTOS91901S2 W8TTOS91901S3)
capture egen  W8CTO91902Wk = rowtotal(W8TTOS91902S2 W8TTOS91902S3)
capture egen  W8COD91902Wk = rowtotal(W8TODS91902S2 W8TODS91902S3)
capture egen  W8COD91903Wk = rowtotal(W8TODS91903S2 W8TODS91903S3)
capture egen  W8CTO91903Wk = rowtotal(W8TTOS91903S2 W8TTOS91903S3)
capture egen  W8COD91904Wk = rowtotal(W8TODS91904S2 W8TODS91904S3)
capture egen  W8CTO91904Wk = rowtotal(W8TTOS91904S2 W8TTOS91904S3)
capture egen  W8CTO91905Wk = rowtotal(W8TTOS91905S2 W8TTOS91905S3)
capture egen  W8COD91905Wk = rowtotal(W8TODS91905S2 W8TODS91905S3)
capture egen  W8COD91906Wk = rowtotal(W8TODS91906S2 W8TODS91906S3)
capture egen  W8CTO91906Wk = rowtotal(W8TTOS91906S2 W8TTOS91906S3)
capture egen  W8COD91907Wk = rowtotal(W8TODS91907S2 W8TODS91907S3)
capture egen  W8CTO91907Wk = rowtotal(W8TTOS91907S2 W8TTOS91907S3)
capture egen  W8CTO91908Wk = rowtotal(W8TTOS91908S2 W8TTOS91908S3)
capture egen  W8COD91908Wk = rowtotal(W8TODS91908S2 W8TODS91908S3)
capture egen  W8COD91909Wk = rowtotal(W8TODS91909S2 W8TODS91909S3)
capture egen  W8CTO91909Wk = rowtotal(W8TTOS91909S2 W8TTOS91909S3)
capture egen  W8CTO91910Wk = rowtotal(W8TTOS91910S2 W8TTOS91910S3)
capture egen  W8COD91910Wk = rowtotal(W8TODS91910S2 W8TODS91910S3)
capture egen  W8CTO91911Wk = rowtotal(W8TTOS91911S2 W8TTOS91911S3)
capture egen  W8COD91911Wk = rowtotal(W8TODS91911S2 W8TODS91911S3)
capture egen  W8COD91912Wk = rowtotal(W8TODS91912S2 W8TODS91912S3)
capture egen  W8CTO91912Wk = rowtotal(W8TTOS91912S2 W8TTOS91912S3)
capture egen  W8CTO91913Wk = rowtotal(W8TTOS91913S2 W8TTOS91913S3)
capture egen  W8COD91913Wk = rowtotal(W8TODS91913S2 W8TODS91913S3)
capture egen  W8COD91914Wk = rowtotal(W8TODS91914S2 W8TODS91914S3)
capture egen  W8CTO91914Wk = rowtotal(W8TTOS91914S2 W8TTOS91914S3)
capture egen  W8CTO91915Wk = rowtotal(W8TTOS91915S2 W8TTOS91915S3)
capture egen  W8COD91915Wk = rowtotal(W8TODS91915S2 W8TODS91915S3)
capture egen  W8CTO91916Wk = rowtotal(W8TTOS91916S2 W8TTOS91916S3)
capture egen  W8COD91916Wk = rowtotal(W8TODS91916S2 W8TODS91916S3)
capture egen  W8COD91917Wk = rowtotal(W8TODS91917S2 W8TODS91917S3)
capture egen  W8CTO91917Wk = rowtotal(W8TTOS91917S2 W8TTOS91917S3)
capture egen  W8COD91918Wk = rowtotal(W8TODS91918S2 W8TODS91918S3)
capture egen  W8CTO91918Wk = rowtotal(W8TTOS91918S2 W8TTOS91918S3)
capture egen  W8COD91919Wk = rowtotal(W8TODS91919S2 W8TODS91919S3)
capture egen  W8CTO91919Wk = rowtotal(W8TTOS91919S2 W8TTOS91919S3)

*Saving
rename SUBJECTID SUBJECTIDW8
rename IP IPW8
sort PAC
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W8/WorkingData/W8S1234_Working.dta", replace

**************************************************************************************************
**************************************************************************************************
*										W	E	E	K	 9
**************************************************************************************************
**************************************************************************************************

set more off
clear all
* Set Working Directory (comment it with a "*", don't delet it)
cd "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W9/WorkingData"

**************************************************************************************************
*											W9S1
**************************************************************************************************


*Open W9S1 and save a Working Copy (We wanna keep a copy of the original data)
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W9/WorkingData/W9S1.dta", replace
destring, replace
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W9/WorkingData/W9S1_Working.dta", replace

* From Excel to STATA everything enters as lower case. Lets reverse it to its original: Upper Case
rename *, upper

* Now lets keep what we need
keep ///
DATE FOD_A_3831 GRP_20913 GRP_20914 Q_5993_DUR_32313 Q_5993_SEQ_32313 Q_5993_VAL_32313 SUBJECT_ID ///
TIME TIME_BEGIN_FLOWPHASE TIME_BEGIN_SUBSTAGE TIME_END_FLOWPHASE TOD_A_3831 TOTAL_FLOW_ACCESSED ///
TTO_A_3831 WORDS_A_3831


*rename SUBJECT_ID to PAC
rename Q_5993_VAL_32313 PAC

* Adding Prefixes and Suffixes
foreach x of var * {
rename `x' W9`x'
} 

foreach x of var * {
rename `x' `x'S1
}

* Renaming SUBJECT_ID (no pre nor su fixes, we need that to merge on it)
rename W9SUBJECT_IDS1 SUBJECTID

* Renaming SUBJECT_ID (no pre nor su fixes, we need that to merge on it)
rename W9PACS1 PAC 

* Eliminating ALL underscores
foreach v of var *_* { 
	local V : subinstr local v "_" "", all
	capture rename `v' `V' 
	if _rc di as txt "problem with `v'"
} 

*saving
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W9/WorkingData/W9S1_Working.dta", replace


**************************************************************************************************
*											W9S2
**************************************************************************************************

*Open W9S2 and save a Working Copy (We wanna keep a copy of the original data)
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W9/WorkingData/W9S2.dta", replace
destring, replace
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W9/WorkingData/W9S2_Working.dta", replace

* From Excel to STATA everything enters as lower case. Lets reverse it to its original: Upper Case
rename *, upper

* Now lets keep what we need
keep ///
DATE	FOD_A_3834	FOD_A_3839	FOD_A_3854	FOD_A_3855	FOD_A_3919	FOD_A_3920	FOD_A_3921	FOD_A_3922	 ///
FOD_S_92011	FOD_S_92012	FOD_S_92025	FOD_S_92026	FOD_S_92040	FOD_S_92041	FOD_S_92052	FOD_S_92054	FOD_S_92384	 ///
FOD_S_92385	FOD_S_92386	FOD_S_92387	FOD_S_92388	FOD_S_92389	FOD_S_92390	FOD_S_92391	FOD_S_92392	FOD_S_92393	 ///
FOD_S_92394	FOD_S_92395	FOD_S_92396	FOD_S_92397	FOD_S_92398	FOD_S_92399	FOD_S_92400	FOD_S_92401	FOD_S_92402	 ///
FOD_S_92403	FOD_S_92404	FOD_S_92405	FOD_S_92406	FOD_S_92407	FOD_S_92408	FOD_S_92409	FOD_S_92410	FOD_S_92411	 ///
GRP_20844	GRP_20845	GRP_20846	GRP_20847	GRP_20848	GRP_20849	GRP_20850	GRP_20851	GRP_20852	 ///
GRP_20853	GRP_20854	GRP_20855	GRP_20856	GRP_20857	GRP_20858	GRP_20859	SUBJECT_ID	TIME	 ///
TIME_BEGIN_FLOWPHASE	TIME_BEGIN_SUBSTAGE	TIME_END_FLOWPHASE	TOD_A_3834	TOD_A_3839	TOD_A_3854	TOD_A_3855	 ///
TOD_A_3919	TOD_A_3920	TOD_A_3921	TOD_A_3922	TOD_S_92011	TOD_S_92012	TOD_S_92025	TOD_S_92026	TOD_S_92040	 ///
TOD_S_92041	TOD_S_92052	TOD_S_92054	TOD_S_92384	TOD_S_92385	TOD_S_92386	TOD_S_92387	TOD_S_92388	TOD_S_92389	 ///
TOD_S_92390	TOD_S_92391	TOD_S_92392	TOD_S_92393	TOD_S_92394	TOD_S_92395	TOD_S_92396	TOD_S_92397	TOD_S_92398	 ///
TOD_S_92399	TOD_S_92400	TOD_S_92401	TOD_S_92402	TOD_S_92403	TOD_S_92404	TOD_S_92405	TOD_S_92406	TOD_S_92407	 ///
TOD_S_92408	TOD_S_92409	TOD_S_92410	TOD_S_92411	TOTAL_FLOW_ACCESSED	TTO_A_3834	TTO_A_3839	TTO_A_3854	 ///
TTO_A_3855	TTO_A_3919	TTO_A_3920	TTO_A_3921	TTO_A_3922	TTO_S_92011	TTO_S_92012	TTO_S_92025	 ///
TTO_S_92026	TTO_S_92040	TTO_S_92041	TTO_S_92052	TTO_S_92054	TTO_S_92384	TTO_S_92385	TTO_S_92386	 ///
TTO_S_92387	TTO_S_92388	TTO_S_92389	TTO_S_92390	TTO_S_92391	TTO_S_92392	TTO_S_92393	TTO_S_92394	 ///
TTO_S_92395	TTO_S_92396	TTO_S_92397	TTO_S_92398	TTO_S_92399	TTO_S_92400	TTO_S_92401	TTO_S_92402	 ///
TTO_S_92403	TTO_S_92404	TTO_S_92405	TTO_S_92406	TTO_S_92407	TTO_S_92408	TTO_S_92409	TTO_S_92410	 ///
TTO_S_92411	WORDS_A_3834	WORDS_A_3839	WORDS_A_3854	WORDS_A_3855	WORDS_A_3919	 ///
WORDS_A_3920	WORDS_A_3921	WORDS_A_3922

* Adding Prefixes and Suffixes
foreach x of var * {
rename `x' W9`x'
}
 
foreach x of var * {
rename `x' `x'S2
}

* Renaming SUBJECT_ID (no pre nor su fixes, we need that to merge on it)
rename W9SUBJECT_IDS2 SUBJECT_ID 

* Eliminating ALL underscores
foreach v of var *_* { 
	local V : subinstr local v "_" "", all
	capture rename `v' `V' 
	if _rc di as txt "problem with `v'"
} 

*saving
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W9/WorkingData/W9S2_Working.dta", replace


**************************************************************************************************
*											W9S3
**************************************************************************************************

*Open W9S3 and save a Working Copy (We wanna keep a copy of the original data)
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W9/WorkingData/W9S3.dta", replace
destring, replace
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W9/WorkingData/W9S3_Working.dta", replace

* From Excel to STATA everything enters as lower case. Lets reverse it to its original: Upper Case
rename *, upper

* Now lets keep what we need
keep ///
DATE	FOD_A_3832	FOD_A_3833	FOD_S_91920	FOD_S_91921	FOD_S_91923	FOD_S_91926	FOD_S_91928	FOD_S_91929	 ///
FOD_S_91930	FOD_S_91931	FOD_S_91933	FOD_S_91934	FOD_S_91935	FOD_S_91936	FOD_S_91939	FOD_S_91941	FOD_S_91942	 ///
FOD_S_91945	FOD_S_91946	FOD_S_91949	FOD_S_91951	FOD_S_91952	FOD_S_91953	FOD_S_91955	FOD_S_91957	FOD_S_91959	 ///
FOD_S_91960	FOD_S_91961	FOD_S_91963	FOD_S_91964	FOD_S_91965	FOD_S_91966	FOD_S_91967	FOD_S_91968	FOD_S_91969	 ///
FOD_S_91970	FOD_S_91971	FOD_S_91972	FOD_S_91973	FOD_S_91974	FOD_S_91975	FOD_S_91976	FOD_S_91977	FOD_S_91978	 ///
FOD_S_91980	FOD_S_91981	FOD_S_91983	FOD_S_91984	FOD_S_91985	FOD_S_91987	FOD_S_91988	FOD_S_91989	FOD_S_91990	 ///
FOD_S_91992	FOD_S_91993	FOD_S_91994	FOD_S_91995	FOD_S_91996	FOD_S_91997	FOD_S_91998	FOD_S_91999	FOD_S_92000	 ///
FOD_S_92001	FOD_S_92002	FOD_S_92003	FOD_S_92004	FOD_S_92005	FOD_S_92006	FOD_S_92007	FOD_S_92008	FOD_S_92009	 ///
FOD_S_92010	FOD_S_92011	FOD_S_92012	FOD_S_92013	FOD_S_92014	FOD_S_92015	FOD_S_92016	FOD_S_92017	FOD_S_92018	 ///
FOD_S_92019	FOD_S_92020	FOD_S_92021	FOD_S_92022	FOD_S_92023	FOD_S_92024	FOD_S_92025	FOD_S_92026	FOD_S_92027	 ///
FOD_S_92028	FOD_S_92029	FOD_S_92030	FOD_S_92031	FOD_S_92032	FOD_S_92033	FOD_S_92034	FOD_S_92035	FOD_S_92036	 ///
FOD_S_92037	FOD_S_92038	FOD_S_92039	FOD_S_92040	FOD_S_92041	FOD_S_92042	FOD_S_92043	FOD_S_92044	FOD_S_92045	 ///
FOD_S_92046	FOD_S_92047	FOD_S_92048	FOD_S_92049	FOD_S_92050	FOD_S_92051	FOD_S_92052	FOD_S_92053	FOD_S_92054	 ///
FOD_S_92055	FOD_S_92056	FOD_S_92057	FOD_S_92058	FOD_S_92059	FOD_S_92060	FOD_S_92061	FOD_S_92063	FOD_S_92065	 ///
FOD_S_92066	FOD_S_92067	FOD_S_92068	FOD_S_92069	FOD_S_92071	FOD_S_92072	FOD_S_92073	FOD_S_92074	FOD_S_92075	 ///
FOD_S_92076	FOD_S_92077	FOD_S_92085	FOD_S_92087	FOD_S_92088	FOD_S_92089	FOD_S_92090	FOD_S_92091	FOD_S_92092	 ///
FOD_S_92094	FOD_S_92097	FOD_S_92098	FOD_S_92099	FOD_S_92101	FOD_S_92103	FOD_S_92104	FOD_S_92107	FOD_S_92108	 ///
FOD_S_92109	FOD_S_92110	FOD_S_92112	FOD_S_92114	FOD_S_92115	FOD_S_92116	FOD_S_92117	FOD_S_92120	FOD_S_92121	 ///
FOD_S_92125	FOD_S_92126	FOD_S_92127	FOD_S_92128	FOD_S_92130	FOD_S_92132	FOD_S_92134	FOD_S_92136	FOD_S_92138	 ///
FOD_S_92140	FOD_S_92141	FOD_S_92143	FOD_S_92147	FOD_S_92148	FOD_S_92149	FOD_S_92152	FOD_S_92154	FOD_S_92155	 ///
FOD_S_92156	FOD_S_92158	FOD_S_92159	FOD_S_92160	FOD_S_92162	FOD_S_92164	FOD_S_92165	FOD_S_92166	FOD_S_92167	 ///
FOD_S_92168	FOD_S_92169	FOD_S_92170	FOD_S_92171	FOD_S_92172	FOD_S_92173	FOD_S_92174	FOD_S_92175	FOD_S_92176	 ///
FOD_S_92177	FOD_S_92179	FOD_S_92181	FOD_S_92182	FOD_S_92184	FOD_S_92185	FOD_S_92187	FOD_S_92188	FOD_S_92189	 ///
FOD_S_92190	FOD_S_92191	FOD_S_92197	FOD_S_92199	FOD_S_92200	FOD_S_92201	FOD_S_92202	FOD_S_92203	FOD_S_92204	 ///
FOD_S_92205	FOD_S_92207	FOD_S_92209	FOD_S_92210	FOD_S_92211	FOD_S_92212	FOD_S_92213	FOD_S_92214	FOD_S_92216	 ///
FOD_S_92217	FOD_S_92220	FOD_S_92221	FOD_S_92224	FOD_S_92225	FOD_S_92226	FOD_S_92228	FOD_S_92230	FOD_S_92384	 ///
FOD_S_92385	FOD_S_92386	FOD_S_92387	FOD_S_92388	FOD_S_92389	FOD_S_92390	FOD_S_92391	FOD_S_92392	FOD_S_92393	 ///
FOD_S_92394	FOD_S_92395	FOD_S_92396	FOD_S_92397	FOD_S_92398	FOD_S_92399	FOD_S_92400	FOD_S_92401	FOD_S_92402	 ///
FOD_S_92403	FOD_S_92404	FOD_S_92405	FOD_S_92406	FOD_S_92407	FOD_S_92408	FOD_S_92409	FOD_S_92410	FOD_S_92411	 ///
GRP_20844	GRP_20845	GRP_20846	GRP_20847	GRP_20848	GRP_20849	GRP_20850	GRP_20851	GRP_20852	 ///
GRP_20853	GRP_20854	GRP_20855	GRP_20856	GRP_20857	GRP_20858	GRP_20859	GRP_20860	GRP_20861	 ///
GRP_20863	GRP_20867	GRP_20868	GRP_20869	GRP_20870	GRP_20871	GRP_20873	GRP_20874	GRP_20875	 ///
GRP_20876	GRP_20877	GRP_20878	GRP_20879	GRP_20881	GRP_20882	GRP_20883	GRP_20884	GRP_20887	 ///
GRP_20888	GRP_20889	GRP_20890	GRP_20891	GRP_20892	GRP_20895	GRP_20897	GRP_20902	GRP_20903	 ///
GRP_20905	GRP_20906	GRP_20908	GRP_20909	GRP_20910	SUBJECT_ID	TIME	TIME_BEGIN_FLOWPHASE	 ///
TIME_BEGIN_SUBSTAGE	TIME_END_FLOWPHASE	TOD_A_3832	TOD_A_3833	TOD_S_91920	TOD_S_91921	TOD_S_91923	 ///
TOD_S_91926	TOD_S_91928	TOD_S_91929	TOD_S_91930	TOD_S_91931	TOD_S_91933	TOD_S_91934	TOD_S_91935	TOD_S_91936	 ///
TOD_S_91939	TOD_S_91941	TOD_S_91942	TOD_S_91945	TOD_S_91946	TOD_S_91949	TOD_S_91951	TOD_S_91952	TOD_S_91953	 ///
TOD_S_91955	TOD_S_91957	TOD_S_91959	TOD_S_91960	TOD_S_91961	TOD_S_91963	TOD_S_91964	TOD_S_91965	TOD_S_91966	 ///
TOD_S_91967	TOD_S_91968	TOD_S_91969	TOD_S_91970	TOD_S_91971	TOD_S_91972	TOD_S_91973	TOD_S_91974	TOD_S_91975	 ///
TOD_S_91976	TOD_S_91977	TOD_S_91978	TOD_S_91980	TOD_S_91981	TOD_S_91983	TOD_S_91984	TOD_S_91985	TOD_S_91987	 ///
TOD_S_91988	TOD_S_91989	TOD_S_91990	TOD_S_91992	TOD_S_91993	TOD_S_91994	TOD_S_91995	TOD_S_91996	TOD_S_91997	 ///
TOD_S_91998	TOD_S_91999	TOD_S_92000	TOD_S_92001	TOD_S_92002	TOD_S_92003	TOD_S_92004	TOD_S_92005	TOD_S_92006	 ///
TOD_S_92007	TOD_S_92008	TOD_S_92009	TOD_S_92010	TOD_S_92011	TOD_S_92012	TOD_S_92013	TOD_S_92014	TOD_S_92015	 ///
TOD_S_92016	TOD_S_92017	TOD_S_92018	TOD_S_92019	TOD_S_92020	TOD_S_92021	TOD_S_92022	TOD_S_92023	TOD_S_92024	 ///
TOD_S_92025	TOD_S_92026	TOD_S_92027	TOD_S_92028	TOD_S_92029	TOD_S_92030	TOD_S_92031	TOD_S_92032	TOD_S_92033	 ///
TOD_S_92034	TOD_S_92035	TOD_S_92036	TOD_S_92037	TOD_S_92038	TOD_S_92039	TOD_S_92040	TOD_S_92041	TOD_S_92042	 ///
TOD_S_92043	TOD_S_92044	TOD_S_92045	TOD_S_92046	TOD_S_92047	TOD_S_92048	TOD_S_92049	TOD_S_92050	TOD_S_92051	 ///
TOD_S_92052	TOD_S_92053	TOD_S_92054	TOD_S_92055	TOD_S_92056	TOD_S_92057	TOD_S_92058	TOD_S_92059	TOD_S_92060	 ///
TOD_S_92061	TOD_S_92063	TOD_S_92065	TOD_S_92066	TOD_S_92067	TOD_S_92068	TOD_S_92069	TOD_S_92071	TOD_S_92072	 ///
TOD_S_92073	TOD_S_92074	TOD_S_92075	TOD_S_92076	TOD_S_92077	TOD_S_92085	TOD_S_92087	TOD_S_92088	TOD_S_92089	 ///
TOD_S_92090	TOD_S_92091	TOD_S_92092	TOD_S_92094	TOD_S_92097	TOD_S_92098	TOD_S_92099	TOD_S_92101	TOD_S_92103	 ///
TOD_S_92104	TOD_S_92107	TOD_S_92108	TOD_S_92109	TOD_S_92110	TOD_S_92112	TOD_S_92114	TOD_S_92115	TOD_S_92116	 ///
TOD_S_92117	TOD_S_92120	TOD_S_92121	TOD_S_92125	TOD_S_92126	TOD_S_92127	TOD_S_92128	TOD_S_92130	TOD_S_92132	 ///
TOD_S_92134	TOD_S_92136	TOD_S_92138	TOD_S_92140	TOD_S_92141	TOD_S_92143	TOD_S_92147	TOD_S_92148	TOD_S_92149	 ///
TOD_S_92152	TOD_S_92154	TOD_S_92155	TOD_S_92156	TOD_S_92158	TOD_S_92159	TOD_S_92160	TOD_S_92162	TOD_S_92164	 ///
TOD_S_92165	TOD_S_92166	TOD_S_92167	TOD_S_92168	TOD_S_92169	TOD_S_92170	TOD_S_92171	TOD_S_92172	TOD_S_92173	 ///
TOD_S_92174	TOD_S_92175	TOD_S_92176	TOD_S_92177	TOD_S_92179	TOD_S_92181	TOD_S_92182	TOD_S_92184	TOD_S_92185	 ///
TOD_S_92187	TOD_S_92188	TOD_S_92189	TOD_S_92190	TOD_S_92191	TOD_S_92197	TOD_S_92199	TOD_S_92200	TOD_S_92201	 ///
TOD_S_92202	TOD_S_92203	TOD_S_92204	TOD_S_92205	TOD_S_92207	TOD_S_92209	TOD_S_92210	TOD_S_92211	TOD_S_92212	 ///
TOD_S_92213	TOD_S_92214	TOD_S_92216	TOD_S_92217	TOD_S_92220	TOD_S_92221	TOD_S_92224	TOD_S_92225	TOD_S_92226	 ///
TOD_S_92228	TOD_S_92230	TOD_S_92384	TOD_S_92385	TOD_S_92386	TOD_S_92387	TOD_S_92388	TOD_S_92389	TOD_S_92390	 ///
TOD_S_92391	TOD_S_92392	TOD_S_92393	TOD_S_92394	TOD_S_92395	TOD_S_92396	TOD_S_92397	TOD_S_92398	TOD_S_92399	 ///
TOD_S_92400	TOD_S_92401	TOD_S_92402	TOD_S_92403	TOD_S_92404	TOD_S_92405	TOD_S_92406	TOD_S_92407	TOD_S_92408	 ///
TOD_S_92409	TOD_S_92410	TOD_S_92411	TOTAL_FLOW_ACCESSED	TTO_A_3832	TTO_A_3833	TTO_S_91920	TTO_S_91921	TTO_S_91923	 ///
TTO_S_91926	TTO_S_91928	TTO_S_91929	TTO_S_91930	TTO_S_91931	TTO_S_91933	TTO_S_91934	TTO_S_91935	TTO_S_91936	TTO_S_91939	 ///
TTO_S_91941	TTO_S_91942	TTO_S_91945	TTO_S_91946	TTO_S_91949	TTO_S_91951	TTO_S_91952	TTO_S_91953	TTO_S_91955	TTO_S_91957	 ///
TTO_S_91959	TTO_S_91960	TTO_S_91961	TTO_S_91963	TTO_S_91964	TTO_S_91965	TTO_S_91966	TTO_S_91967	TTO_S_91968	TTO_S_91969	 ///
TTO_S_91970	TTO_S_91971	TTO_S_91972	TTO_S_91973	TTO_S_91974	TTO_S_91975	TTO_S_91976	TTO_S_91977	TTO_S_91978	TTO_S_91980	 ///
TTO_S_91981	TTO_S_91983	TTO_S_91984	TTO_S_91985	TTO_S_91987	TTO_S_91988	TTO_S_91989	TTO_S_91990	TTO_S_91992	TTO_S_91993	 ///
TTO_S_91994	TTO_S_91995	TTO_S_91996	TTO_S_91997	TTO_S_91998	TTO_S_91999	TTO_S_92000	TTO_S_92001	TTO_S_92002	TTO_S_92003	 ///
TTO_S_92004	TTO_S_92005	TTO_S_92006	TTO_S_92007	TTO_S_92008	TTO_S_92009	TTO_S_92010	TTO_S_92011	TTO_S_92012	TTO_S_92013	 ///
TTO_S_92014	TTO_S_92015	TTO_S_92016	TTO_S_92017	TTO_S_92018	TTO_S_92019	TTO_S_92020	TTO_S_92021	TTO_S_92022	TTO_S_92023	 ///
TTO_S_92024	TTO_S_92025	TTO_S_92026	TTO_S_92027	TTO_S_92028	TTO_S_92029	TTO_S_92030	TTO_S_92031	TTO_S_92032	TTO_S_92033	 ///
TTO_S_92034	TTO_S_92035	TTO_S_92036	TTO_S_92037	TTO_S_92038	TTO_S_92039	TTO_S_92040	TTO_S_92041	TTO_S_92042	TTO_S_92043	 ///
TTO_S_92044	TTO_S_92045	TTO_S_92046	TTO_S_92047	TTO_S_92048	TTO_S_92049	TTO_S_92050	TTO_S_92051	TTO_S_92052	TTO_S_92053	 ///
TTO_S_92054	TTO_S_92055	TTO_S_92056	TTO_S_92057	TTO_S_92058	TTO_S_92059	TTO_S_92060	TTO_S_92061	TTO_S_92063	TTO_S_92065	 ///
TTO_S_92066	TTO_S_92067	TTO_S_92068	TTO_S_92069	TTO_S_92071	TTO_S_92072	TTO_S_92073	TTO_S_92074	TTO_S_92075	TTO_S_92076	 ///
TTO_S_92077	TTO_S_92085	TTO_S_92087	TTO_S_92088	TTO_S_92089	TTO_S_92090	TTO_S_92091	TTO_S_92092	TTO_S_92094	TTO_S_92097	 ///
TTO_S_92098	TTO_S_92099	TTO_S_92101	TTO_S_92103	TTO_S_92104	TTO_S_92107	TTO_S_92108	TTO_S_92109	TTO_S_92110	TTO_S_92112	 ///
TTO_S_92114	TTO_S_92115	TTO_S_92116	TTO_S_92117	TTO_S_92120	TTO_S_92121	TTO_S_92125	TTO_S_92126	TTO_S_92127	TTO_S_92128	 ///
TTO_S_92130	TTO_S_92132	TTO_S_92134	TTO_S_92136	TTO_S_92138	TTO_S_92140	TTO_S_92141	TTO_S_92143	TTO_S_92147	TTO_S_92148	 ///
TTO_S_92149	TTO_S_92152	TTO_S_92154	TTO_S_92155	TTO_S_92156	TTO_S_92158	TTO_S_92159	TTO_S_92160	TTO_S_92162	TTO_S_92164	 ///
TTO_S_92165	TTO_S_92166	TTO_S_92167	TTO_S_92168	TTO_S_92169	TTO_S_92170	TTO_S_92171	TTO_S_92172	TTO_S_92173	TTO_S_92174	 ///
TTO_S_92175	TTO_S_92176	TTO_S_92177	TTO_S_92179	TTO_S_92181	TTO_S_92182	TTO_S_92184	TTO_S_92185	TTO_S_92187	TTO_S_92188	 ///
TTO_S_92189	TTO_S_92190	TTO_S_92191	TTO_S_92197	TTO_S_92199	TTO_S_92200	TTO_S_92201	TTO_S_92202	TTO_S_92203	TTO_S_92204	 ///
TTO_S_92205	TTO_S_92207	TTO_S_92209	TTO_S_92210	TTO_S_92211	TTO_S_92212	TTO_S_92213	TTO_S_92214	TTO_S_92216	TTO_S_92217	 ///
TTO_S_92220	TTO_S_92221	TTO_S_92224	TTO_S_92225	TTO_S_92226	TTO_S_92228	TTO_S_92230	TTO_S_92384	TTO_S_92385	TTO_S_92386	 ///
TTO_S_92387	TTO_S_92388	TTO_S_92389	TTO_S_92390	TTO_S_92391	TTO_S_92392	TTO_S_92393	TTO_S_92394	TTO_S_92395	TTO_S_92396	 ///
TTO_S_92397	TTO_S_92398	TTO_S_92399	TTO_S_92400	TTO_S_92401	TTO_S_92402	TTO_S_92403	TTO_S_92404	TTO_S_92405	TTO_S_92406	 ///
TTO_S_92407	TTO_S_92408	TTO_S_92409	TTO_S_92410	TTO_S_92411	WORDS_A_3832	WORDS_A_3833 ///

* Adding Prefixes and Suffixes
foreach x of var * {
rename `x' W9`x'
}
 
foreach x of var * {
rename `x' `x'S3
}

* Renaming SUBJECT_ID (no pre nor su fixes, we need that to merge on it)
rename W9SUBJECT_IDS3 SUBJECT_ID 

* Eliminating ALL underscores
foreach v of var *_* { 
	local V : subinstr local v "_" "", all
	capture rename `v' `V' 
	if _rc di as txt "problem with `v'"
} 

*saving
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W9/WorkingData/W9S3_Working.dta", replace


**************************************************************************************************
*											W9S4
**************************************************************************************************

*Open W9S4 and save a Working Copy (We wanna keep a copy of the original data)
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W9/WorkingData/W9S4.dta", replace
destring, replace
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W9/WorkingData/W9S4_Working.dta", replace

* From Excel to STATA everything enters as lower case. Lets reverse it to its original: Upper Case
rename *, upper

* Now lets keep what we need
keep ///
DATE	FOD_A_3830	GRP_20865	GRP_20866	Q_5999_DUR_32345	Q_5999_DUR_32346	Q_5999_DUR_32347	 ///
Q_5999_SEQ_32345	Q_5999_SEQ_32346	Q_5999_SEQ_32347	Q_5999_VAL_32345	Q_5999_VAL_32346	 ///
Q_5999_VAL_32347	SUBJECT_ID	TIME	TIME_BEGIN_FLOWPHASE	TIME_BEGIN_SUBSTAGE	TIME_END_FLOWPHASE	 ///
TOD_A_3830	TOTAL_FLOW_ACCESSED	TTO_A_3830	WORDS_A_3830

* Adding Prefixes and Suffixes
foreach x of var * {
rename `x' W9`x'
}
 
foreach x of var * {
rename `x' `x'S4
}

* Renaming SUBJECT_ID (no pre nor su fixes, we need that to merge on it)
rename W9SUBJECT_IDS4 SUBJECT_ID 

* Eliminating ALL underscores
foreach v of var *_* { 
	local V : subinstr local v "_" "", all
	capture rename `v' `V' 
	if _rc di as txt "problem with `v'"
} 

*saving
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W9/WorkingData/W9S4_Working.dta", replace


**************************************************************************************************
*							M	E	R	G	I	N	G	 		W	9
**************************************************************************************************

clear all

* Merge W9S2 with W9S1
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W9/WorkingData/W9S2_Working.dta", replace
merge 1:m SUBJECTID using "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W9/WorkingData/W9S1_Working.dta"
drop _merge
* Save W9S12
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W9/WorkingData/W9S12_Working.dta", replace

**************************************************************************************************
clear all

* Merge W9S3 with W9S4
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W9/WorkingData/W9S4_Working.dta", replace
merge 1:m SUBJECTID using "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W9/WorkingData/W9S3_Working.dta"
drop _merge
* Save W9S34
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W9/WorkingData/W9S34_Working.dta", replace

**************************************************************************************************
clear all

* Merge W9S12 with W9S34
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W9/WorkingData/W9S12_Working.dta", replace
merge 1:m SUBJECTID using "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W9/WorkingData/W9S34_Working.dta"
drop _merge
* Save W9S1234
order *, alpha


*Dropping things we won't need...
drop W9DATES2 W9DATES3 W9DATES4 W9TOTALFLOWACCESSEDS1 W9TOTALFLOWACCESSEDS4 W9TIMES2 W9TIMES3 W9TIMES4


* labeling
label variable W9FODA3830S4 "That's it for this Week"
label variable W9FODA3831S1 "Whoops -- Not a Valid Subject ID"
label variable W9FODA3832S3 "Substage2and3BetwNoIntD&R"
label variable W9FODA3833S3 "Substage2and3BetwIntD&R"
label variable W9FODA3834S2 "WelcomeWk9DNewMemNot"
label variable W9FODA3839S2 "WelcomeWk9RNewIntNot"
label variable W9FODA3854S2 "WelcomeWk9DNewIntNot"
label variable W9FODA3855S2 "WelcomeWk9RNewMemNot"
label variable W9FODA3919S2 "WelcomeWk9DNewIntImp"
label variable W9FODA3920S2 "WelcomeWk9DNewMemImp"
label variable W9FODA3921S2 "WelcomeWk9RNewIntImp"
label variable W9FODA3922S2 "WelcomeWk9RNewMemImp"
label variable W9FODS91920S3 "Wk2DEndorsementAFLCIO"
label variable W9FODS91921S3 "Wk2DEndorsementChamberofCommerce"
label variable W9FODS91923S3 "Wk2REndorsementAFLCIO"
label variable W9FODS91926S3 "wk2d1REUROOTEcon18"
label variable W9FODS91928S3 "wk2d2ABCABCEcon37"
label variable W9FODS91929S3 "wk2d2APAPEcon42"
label variable W9FODS91930S3 "wk2d2NYTNYTEcon54"
label variable W9FODS91931S3 "wk2d2NBCNBCEcon62"
label variable W9FODS91933S3 "wk2r2APAPEcon78"
label variable W9FODS91934S3 "wk2r2REUREUEcon82"
label variable W9FODS91935S3 "wk2r2WSJWSJEcon94"
label variable W9FODS91936S3 "wk2r1WSJHUFEcon110"
label variable W9FODS91939S3 "wk2r1APFOXEcon126"
label variable W9FODS91941S3 "wk2d3NBCFOXEcon10"
label variable W9FODS91942S3 "wk2d3REUROOTEcon18"
label variable W9FODS91945S3 "wk2r3ABCROOTEcon118"
label variable W9FODS91946S3 "wk2r3NBCUNIEcon122"
label variable W9FODS91949S3 "Wk1RWilliamsPersonality"
label variable W9FODS91951S3 "Wk1RWilliamsExperience"
label variable W9FODS91952S3 "Wk1RWilliamsCandidatePicture"
label variable W9FODS91953S3 "Wk1RWilliamsBackground"
label variable W9FODS91955S3 "Wk1RJonesPersonality"
label variable W9FODS91957S3 "Wk1RJonesExperience"
label variable W9FODS91959S3 "Wk1RJonesBackground"
label variable W9FODS91960S3 "Wk1DWilsonSlogan"
label variable W9FODS91961S3 "Wk1DWilsonPersonality"
label variable W9FODS91963S3 "Wk1DWilsonExperience"
label variable W9FODS91964S3 "Wk1DWilsonCandidatePicture"
label variable W9FODS91965S3 "Wk1DWilsonBackground"
label variable W9FODS91966S3 "Wk1DSmithSlogan"
label variable W9FODS91967S3 "Wk1DSmithPersonality"
label variable W9FODS91968S3 "Wk1DSmithFamily"
label variable W9FODS91969S3 "Wk1DSmithExperience"
label variable W9FODS91970S3 "Wk1DSmithCandidatePicture"
label variable W9FODS91971S3 "Wk1DSmithBackground"
label variable W9FODS91972S3 "SmithEducation"
label variable W9FODS91973S3 "SmithExperience"
label variable W9FODS91974S3 "SmithFamily"
label variable W9FODS91975S3 "JonesExperience"
label variable W9FODS91976S3 "SmithReligion"
label variable W9FODS91977S3 "JonesEducation"
label variable W9FODS91978S3 "JonesFamily"
label variable W9FODS91980S3 "JonesReligion"
label variable W9FODS91981S3 "WilsonEducation"
label variable W9FODS91983S3 "WilsonExperience"
label variable W9FODS91984S3 "WilsonFamily"
label variable W9FODS91985S3 "WilliamsReligion"
label variable W9FODS91987S3 "WilliamsFamily"
label variable W9FODS91988S3 "WilliamsExperience"
label variable W9FODS91989S3 "WilliamsEducation"
label variable W9FODS91990S3 "WilsonReligion"
label variable W9FODS91992S3 "wk2DSmithJobs"
label variable W9FODS91993S3 "wk2DSmithEconPhil"
label variable W9FODS91994S3 "Wk2RJonesJobs"
label variable W9FODS91995S3 "wk2DWilsonJobs"
label variable W9FODS91996S3 "wk2DWilsonEconPhil"
label variable W9FODS91997S3 "wk2RJonesEconPhil"
label variable W9FODS91998S3 "Wk2RWilliamsJobs"
label variable W9FODS91999S3 "wk2RWilliamsEconPhil"
label variable W9FODS92000S3 "wk3DSmithEduc"
label variable W9FODS92001S3 "wk6DSmithHealth"
label variable W9FODS92002S3 "wk4DSmithChina"
label variable W9FODS92003S3 "wk4DSmithDefense"
label variable W9FODS92004S3 "wk5DSmithAbortion"
label variable W9FODS92005S3 "wk5DSmithGay"
label variable W9FODS92006S3 "wk6DSmithTaxes"
label variable W9FODS92007S3 "wk7DSmithAffirm"
label variable W9FODS92008S3 "wk7DSmithImmigration"
label variable W9FODS92009S3 "wk8DSmithAfghan"
label variable W9FODS92010S3 "wk8DSmithMil"
label variable W9FODS92011S2 "wk9DSmithDeathPen"
label variable W9FODS92011S3 "wk9DSmithDeathPen"
label variable W9FODS92012S2 "wk9DSmithStemCells"
label variable W9FODS92012S3 "wk9DSmithStemCells"
label variable W9FODS92013S3 "wk3DSmithSocPhil"
label variable W9FODS92014S3 "wk3DWilsonEduc"
label variable W9FODS92015S3 "wk6DWilsonHealth"
label variable W9FODS92016S3 "wk4DWilsonChina"
label variable W9FODS92017S3 "wk4DWilsonDefense"
label variable W9FODS92018S3 "wk5DWilsonAbortion"
label variable W9FODS92019S3 "wk5DWilsonGay"
label variable W9FODS92020S3 "wk6DWilsonTaxes"
label variable W9FODS92021S3 "wk7DWilsonAffirm"
label variable W9FODS92022S3 "wk7DWilsonImmigration"
label variable W9FODS92023S3 "wk8DWilsonAfghan"
label variable W9FODS92024S3 "wk8DWilsonMil"
label variable W9FODS92025S2 "wk9DWilsonDeathPen"
label variable W9FODS92025S3 "wk9DWilsonDeathPen"
label variable W9FODS92026S2 "wk9DWilsonStemCells"
label variable W9FODS92026S3 "wk9DWilsonStemCells"
label variable W9FODS92027S3 "wk7RJonesImmigration"
label variable W9FODS92028S3 "wk3DWilsonSocPhil"
label variable W9FODS92029S3 "wk3RWilliamsEduc"
label variable W9FODS92030S3 "wk3RWilliamsSocPhil"
label variable W9FODS92031S3 "wk4RWilliamsChina"
label variable W9FODS92032S3 "wk4RWilliamsDefense"
label variable W9FODS92033S3 "wk5RWilliamsAbortion"
label variable W9FODS92034S3 "wk5RWilliamsGay"
label variable W9FODS92035S3 "wk6RWilliamsTaxes"
label variable W9FODS92036S3 "wk7RWilliamsAffirm"
label variable W9FODS92037S3 "wk7RWilliamsImmigration"
label variable W9FODS92038S3 "wk8RWilliamsAfghan"
label variable W9FODS92039S3 "wk8RWilliamsMil"
label variable W9FODS92040S2 "wk9RWilliamsDeathPen"
label variable W9FODS92040S3 "wk9RWilliamsDeathPen"
label variable W9FODS92041S2 "wk9RWilliamsStemCells"
label variable W9FODS92041S3 "wk9RWilliamsStemCells"
label variable W9FODS92042S3 "wk3RJonesEduc"
label variable W9FODS92043S3 "wk3RJonesSocPhil"
label variable W9FODS92044S3 "wk4RJonesChina"
label variable W9FODS92045S3 "wk4RJonesDefense"
label variable W9FODS92046S3 "wk5RJonesAbortion"
label variable W9FODS92047S3 "wk5RJonesGay"
label variable W9FODS92048S3 "wk6RJonesHealth"
label variable W9FODS92049S3 "wk8RJonesAfghan"
label variable W9FODS92050S3 "wk6RJonesTaxes"
label variable W9FODS92051S3 "wk7RJonesAffirm"
label variable W9FODS92052S2 "wk9RJonesStemCells"
label variable W9FODS92052S3 "wk9RJonesStemCells"
label variable W9FODS92053S3 "wk8RJonesMil"
label variable W9FODS92054S2 "wk9RJonesDeathPen"
label variable W9FODS92054S3 "wk9RJonesDeathPen"
label variable W9FODS92055S3 "wk6RWilliamsHealth"
label variable W9FODS92056S3 "wk3d1APROOT16"
label variable W9FODS92057S3 "Wk3DEndorsementAFT"
label variable W9FODS92058S3 "Wk3DEndorsementFAIR"
label variable W9FODS92059S3 "wk3d1ABCHOT8"
label variable W9FODS92060S3 "Wk3REndorsementFAIR"
label variable W9FODS92061S3 "Wk3REndorsementAFT"
label variable W9FODS92063S3 "wk3d1NYTMSN28"
label variable W9FODS92065S3 "wk3d2REUREU48"
label variable W9FODS92066S3 "wk3d2WSJWSJ60"
label variable W9FODS92067S3 "wk3d2NBCNBC64"
label variable W9FODS92068S3 "wk3d3ABCHOT8"
label variable W9FODS92069S3 "wk3r2ABCABC72"
label variable W9FODS92071S3 "wk3d3APROOT16"
label variable W9FODS92072S3 "wk3d3NYTMSN28"
label variable W9FODS92073S3 "wk3r2APAP80"
label variable W9FODS92074S3 "wk3r3REUBET100"
label variable W9FODS92075S3 "wk3r3CNNLAT101"
label variable W9FODS92076S3 "wk3r2NYTNYT92"
label variable W9FODS92077S3 "wk3r2WSJWSJ96"
label variable W9FODS92085S3 "wk4d1ABCHUFFor7"
label variable W9FODS92087S3 "wk4d1WSJLATFor31"
label variable W9FODS92088S3 "wk4d2APAPFor43"
label variable W9FODS92089S3 "wk4d2REUREUFor47"
label variable W9FODS92090S3 "wk4d2NYTNYTFor55"
label variable W9FODS92091S3 "wk4d2NBCNBCFor63"
label variable W9FODS92092S3 "wk4d3CBSFOXFor3"
label variable W9FODS92094S3 "wk4d3CNNBETFor23"
label variable W9FODS92097S3 "wk4r2NBCNBCFor75"
label variable W9FODS92098S3 "wk4r2REUREUFor83"
label variable W9FODS92099S3 "wk4r2NYTNYTFor91"
label variable W9FODS92101S3 "wk4r1WSJHOTFor111"
label variable W9FODS92103S3 "wk4r1APLATFor127"
label variable W9FODS92104S3 "wk4r3CNNROOTFor103"
label variable W9FODS92107S3 "wk4r3APLATFor127"
label variable W9FODS92108S3 "Wk4DEndorsementNCLR"
label variable W9FODS92109S3 "Wk4DEndorsementHeritage"
label variable W9FODS92110S3 "Wk4DEndorsementVFW"
label variable W9FODS92112S3 "Wk4REndorsementHeritage"
label variable W9FODS92114S3 "Wk5DEndorsementHumanRtsCamp"
label variable W9FODS92115S3 "Wk5DEndorsementFamResearchCouncil"
label variable W9FODS92116S3 "Wk5REndorsementHumanRtsCamp"
label variable W9FODS92117S3 "Wk5DEndorsementNRL"
label variable W9FODS92120S3 "wk5r1WSJBETCult109"
label variable W9FODS92121S3 "wk5d1ABCHUFCult5"
label variable W9FODS92125S3 "wk5d2CBSCBSCult33"
label variable W9FODS92126S3 "wk5d2APAPCult41"
label variable W9FODS92127S3 "wk5d2REUREUCult45"
label variable W9FODS92128S3 "wk5d2WSJWSJCult57"
label variable W9FODS92130S3 "wk5d3NBCHOTCult9"
label variable W9FODS92132S3 "wk5d3NYTBETCult25"
label variable W9FODS92134S3 "wk5r1ABCHOTCult117"
label variable W9FODS92136S3 "wk5r1APMSNCult125"
label variable W9FODS92138S3 "wk5r2REUREUCult81"
label variable W9FODS92140S3 "wk5r2NYTNYTCult89"
label variable W9FODS92141S3 "wk5r3WSJBETCult109"
label variable W9FODS92143S3 "wk5r3NBCLATCult121"
label variable W9FODS92147S3 "wk6r2ABCABCEcon70"
label variable W9FODS92148S3 "wk6d1ABCMSNEcon6"
label variable W9FODS92149S3 "wk6r2NBCNBCEcon74"
label variable W9FODS92152S3 "wk6r1REULATEcon98"
label variable W9FODS92154S3 "wk6r1NYTBETEcon106"
label variable W9FODS92155S3 "wk6d1APHOTEcon14"
label variable W9FODS92156S3 "wk6d1NYTBETEcon26"
label variable W9FODS92158S3 "wk6d1WSJLATEcon30"
label variable W9FODS92159S3 "wk6r3REULATEcon98"
label variable W9FODS92160S3 "wk6r3NYTBETEcon106"
label variable W9FODS92162S3 "wk6d3NYTBETEcon26"
label variable W9FODS92164S3 "wk6d2CBSCBSEcon34"
label variable W9FODS92165S3 "wk6d2REUREUEcon46"
label variable W9FODS92166S3 "wk6d2CNNCNNEcon50"
label variable W9FODS92167S3 "wk6d2WSJWSJEcon58"
label variable W9FODS92168S3 "wk6d3ABCMSNEcon6"
label variable W9FODS92169S3 "wk6d3APHOTEcon14"
label variable W9FODS92170S3 "Wk6DEndorsementADA"
label variable W9FODS92171S3 "Wk6DEndorsementNTU"
label variable W9FODS92172S3 "Wk6DEndorsementAFSCME"
label variable W9FODS92173S3 "Wk6REndorsementADA"
label variable W9FODS92174S3 "Wk6REndorsementNTU"
label variable W9FODS92175S3 "Wk6REndorsementAFSCME"
label variable W9FODS92176S3 "Wk7DEndorsementNAACP"
label variable W9FODS92177S3 "Wk7DEndorsementACU"
label variable W9FODS92179S3 "Wk7REndorsementNAACP"
label variable W9FODS92181S3 "wk7r2NBCNBC76"
label variable W9FODS92182S3 "wk7r2REUREU84"
label variable W9FODS92184S3 "wk7r1NYTROOT108"
label variable W9FODS92185S3 "wk7r1WSJUNI112"
label variable W9FODS92187S3 "wk7r1APHOT128"
label variable W9FODS92188S3 "wk7r3NYTROOT108"
label variable W9FODS92189S3 "wk7d3CBSROOTSoc4"
label variable W9FODS92190S3 "wk7r3WSJUNI112"
label variable W9FODS92191S3 "wk7d3REUBET20"
label variable W9FODS92197S3 "wk7d1REUBET20"
label variable W9FODS92199S3 "wk7d1WSJHUF32"
label variable W9FODS92200S3 "wk7d2ABCABC40"
label variable W9FODS92201S3 "wk7d2APAP44"
label variable W9FODS92202S3 "wk7d2CNNCNN52"
label variable W9FODS92203S3 "wk7d2NYTNYT56"
label variable W9FODS92204S3 "Wk8DEndorsementACLU"
label variable W9FODS92205S3 "Wk8DEndorsementAEI"
label variable W9FODS92207S3 "Wk8REndorsementAEI"
label variable W9FODS92209S3 "wk8d1APROOTFor15"
label variable W9FODS92210S3 "wk8d1REUHOTFor19"
label variable W9FODS92211S3 "wk8d1NYTUNIFor27"
label variable W9FODS92212S3 "wk8d2CBSCBSFor35"
label variable W9FODS92213S3 "wk8d2ABCABCFor38"
label variable W9FODS92214S3 "wk8d2CNNCNNFor51"
label variable W9FODS92216S3 "wk8d2WSJWSJFor59"
label variable W9FODS92217S3 "wk8r2APAPFor79"
label variable W9FODS92220S3 "wk8r1REUBETFor99"
label variable W9FODS92221S3 "wk8r1NYTFOXFor107"
label variable W9FODS92224S3 "wk8d3NBCMSNFor11"
label variable W9FODS92225S3 "wk8d3APROOTFor15"
label variable W9FODS92226S3 "wk8d3REUHOTFor19"
label variable W9FODS92228S3 "wk8r3REUBETFor99"
label variable W9FODS92230S3 "wk8r3ABCUNIFor119"
label variable W9FODS92384S2 "wk9r2ABCABCCult69"
label variable W9FODS92384S3 "wk9r2ABCABCCult69"
label variable W9FODS92385S2 "wk9d1CBSUNICult1"
label variable W9FODS92385S3 "wk9d1CBSUNICult1"
label variable W9FODS92386S2 "wk9d1APFOXCult13"
label variable W9FODS92386S3 "wk9d1APFOXCult13"
label variable W9FODS92387S2 "wk9d1REUMSNCult17"
label variable W9FODS92387S3 "wk9d1REUMSNCult17"
label variable W9FODS92388S2 "wk9r2NBCNBCCult73"
label variable W9FODS92388S3 "wk9r2NBCNBCCult73"
label variable W9FODS92389S2 "wk9d1WSJFOXCult29"
label variable W9FODS92389S3 "wk9d1WSJFOXCult29"
label variable W9FODS92390S2 "wk9r2APAPCult77"
label variable W9FODS92390S3 "wk9r2APAPCult77"
label variable W9FODS92391S2 "wk9d2ABCABCCult39"
label variable W9FODS92391S3 "wk9d2ABCABCCult39"
label variable W9FODS92392S2 "wk9d2CNNCNNCult49"
label variable W9FODS92392S3 "wk9d2CNNCNNCult49"
label variable W9FODS92393S2 "wk9r2WSJWSJCult93"
label variable W9FODS92393S3 "wk9r2WSJWSJCult93"
label variable W9FODS92394S2 "wk9d2NYTNYTCult53"
label variable W9FODS92394S3 "wk9d2NYTNYTCult53"
label variable W9FODS92395S2 "wk9d2NBCNBCCult61"
label variable W9FODS92395S3 "wk9d2NBCNBCCult61"
label variable W9FODS92396S2 "wk9d3CBSUNICult1"
label variable W9FODS92396S3 "wk9d3CBSUNICult1"
label variable W9FODS92397S2 "wk9d3APFOXCult13"
label variable W9FODS92397S3 "wk9d3APFOXCult13"
label variable W9FODS92398S2 "wk9r1REUROOTCult97"
label variable W9FODS92398S3 "wk9r1REUROOTCult97"
label variable W9FODS92399S2 "wk9d3REUMSNCult17"
label variable W9FODS92399S3 "wk9d3REUMSNCult17"
label variable W9FODS92400S2 "wk9d3WSJFOXCult29"
label variable W9FODS92400S3 "wk9d3WSJFOXCult29"
label variable W9FODS92401S2 "wk9r1CNNFOXCult104"
label variable W9FODS92401S3 "wk9r1CNNFOXCult104"
label variable W9FODS92402S2 "wk9r1NYTUNICult105"
label variable W9FODS92402S3 "wk9r1NYTUNICult105"
label variable W9FODS92403S2 "wk9r1CBSHUFCult113"
label variable W9FODS92403S3 "wk9r1CBSHUFCult113"
label variable W9FODS92404S2 "wk9r3REUROOTCult97"
label variable W9FODS92404S3 "wk9r3REUROOTCult97"
label variable W9FODS92405S2 "wk9r3CNNFOXCult104"
label variable W9FODS92405S3 "wk9r3CNNFOXCult104"
label variable W9FODS92406S2 "wk9r3NYTUNICult105"
label variable W9FODS92406S3 "wk9r3NYTUNICult105"
label variable W9FODS92407S2 "wk9r3CBSHUFCult113"
label variable W9FODS92407S3 "wk9r3CBSHUFCult113"
label variable W9FODS92408S2 "Wk9DEndorsementNOW"
label variable W9FODS92408S3 "Wk9DEndorsementNOW"
label variable W9FODS92409S2 "Wk9DEndorsementCCA"
label variable W9FODS92409S3 "Wk9DEndorsementCCA"
label variable W9FODS92410S2 "Wk9REndorsementNOW"
label variable W9FODS92410S3 "Wk9REndorsementNOW"
label variable W9FODS92411S2 "Wk9REndorsementCCA"
label variable W9FODS92411S3 "Wk9REndorsementCCA"
label variable W9GRP20844S2 "D02IntMainImp"
label variable W9GRP20844S3 "D02IntMainImp"
label variable W9GRP20845S2 "D04NoIntMainImp"
label variable W9GRP20845S3 "D04NoIntMainImp"
label variable W9GRP20846S2 "D06IntMainNot"
label variable W9GRP20846S3 "D06IntMainNot"
label variable W9GRP20847S2 "D08NoIntMainNot"
label variable W9GRP20847S3 "D08NoIntMainNot"
label variable W9GRP20848S2 "D01IntDiverseImp"
label variable W9GRP20848S3 "D01IntDiverseImp"
label variable W9GRP20849S2 "D03NoIntDiverseImp"
label variable W9GRP20849S3 "D03NoIntDiverseImp"
label variable W9GRP20850S2 "D05IntDiverseNot"
label variable W9GRP20850S3 "D05IntDiverseNot"
label variable W9GRP20851S2 "D07NoIntDiverseNot"
label variable W9GRP20851S3 "D07NoIntDiverseNot"
label variable W9GRP20852S2 "R09IntDiverseImp"
label variable W9GRP20852S3 "R09IntDiverseImp"
label variable W9GRP20853S2 "R10IntMainImp"
label variable W9GRP20853S3 "R10IntMainImp"
label variable W9GRP20854S2 "R11NoIntDiverseImp"
label variable W9GRP20854S3 "R11NoIntDiverseImp"
label variable W9GRP20855S2 "R12NoIntMainImp"
label variable W9GRP20855S3 "R12NoIntMainImp"
label variable W9GRP20856S2 "R13IntDiverseNot"
label variable W9GRP20856S3 "R13IntDiverseNot"
label variable W9GRP20857S2 "R14IntMainNot"
label variable W9GRP20857S3 "R14IntMainNot"
label variable W9GRP20858S2 "R15NoIntDiverseNot"
label variable W9GRP20858S3 "R15NoIntDiverseNot"
label variable W9GRP20859S2 "R16NoIntMainNot"
label variable W9GRP20859S3 "R16NoIntMainNot"
label variable W9GRP20860S3 "DMediaABCNews"
label variable W9GRP20861S3 "DMediaWireServices"
label variable W9GRP20863S3 "DMediaCNNNews"
label variable W9GRP20865S4 "DEndGroupQuestions"
label variable W9GRP20866S4 "REndGroupQuestions"
label variable W9GRP20867S3 "DMediaNBCNews"
label variable W9GRP20868S3 "DMediaNYT"
label variable W9GRP20869S3 "DMediaWSJ"
label variable W9GRP20870S3 "DAltMediaFoxNews"
label variable W9GRP20871S3 "DAltMediaHotAirBlog"
label variable W9GRP20873S3 "DAltMediaMSNBCNews"
label variable W9GRP20874S3 "DCandSmithAllMediaWebpage"
label variable W9GRP20875S3 "DCandWilsonAllMediaWebpage"
label variable W9GRP20876S3 "RCandJonesAllMediaWebpage"
label variable W9GRP20877S3 "RCandWilliamsAllMediaWebpage"
label variable W9GRP20878S3 "DEndorsementsAllMedia"
label variable W9GRP20879S3 "REndorsementsAllMedia"
label variable W9GRP20881S3 "DAltMediaAfricanAmericanSources"
label variable W9GRP20882S3 "DOnlyMainMediaABC"
label variable W9GRP20883S3 "DOnlyMainMediaWireServices"
label variable W9GRP20884S3 "DOnlyMainMediaCBS"
label variable W9GRP20887S3 "DOnlyMainMediaNYT"
label variable W9GRP20888S3 "DOnlyMainMediaWSJ"
label variable W9GRP20889S3 "DCandWilsonOnlyMainWebpage"
label variable W9GRP20890S3 "DCandSmithOnlyMainWebpage"
label variable W9GRP20891S3 "DEndorsementsOnlyMain"
label variable W9GRP20892S3 "RCandJonesOnlyMainWebpage"
label variable W9GRP20895S3 "RAltMediaAfricanAmericanSources"
label variable W9GRP20897S3 "RAltMediaLatinoSources"
label variable W9GRP20902S3 "RMediaNYT"
label variable W9GRP20903S3 "RMediaWireServices"
label variable W9GRP20905S3 "RMediaNBCNews"
label variable W9GRP20906S3 "ROnlyMainMediaABC"
label variable W9GRP20908S3 "ROnlyMainMediaNYT"
label variable W9GRP20909S3 "ROnlyMainMediaWireServices"
label variable W9GRP20910S3 "ROnlyMainMediaWSJ"
label variable W9GRP20913S1 "BeginGroup"
label variable W9GRP20914S1 "BeginGroupRepeated"
label variable W9Q5993DUR3231 "Initial Subject Sign-in"
label variable W9Q5993SEQ3231 "Initial Subject Sign-in"
label variable W9Q5999DUR32345S4 "Wk9Questions"
label variable W9Q5999DUR32346S4 "Wk9Questions"
label variable W9Q5999DUR32347S4 "Wk9Questions"
label variable W9Q5999SEQ32345S4 "Wk9Questions"
label variable W9Q5999SEQ32346S4 "Wk9Questions"
label variable W9Q5999SEQ32347S4 "Wk9Questions"
label variable W9Q5999VAL32345S4 "Wk9Questions"
label variable W9Q5999VAL32346S4 "Wk9Questions"
label variable W9Q5999VAL32347S4 "Wk9Questions"
label variable W9TODA3830S4 "That's it for this Week"
label variable W9TODA3831S1 "Whoops -- Not a Valid Subject ID"
label variable W9TODA3832S3 "Substage2and3BetwNoIntD&R"
label variable W9TODA3833S3 "Substage2and3BetwIntD&R"
label variable W9TODA3834S2 "WelcomeWk9DNewMemNot"
label variable W9TODA3839S2 "WelcomeWk9RNewIntNot"
label variable W9TODA3854S2 "WelcomeWk9DNewIntNot"
label variable W9TODA3855S2 "WelcomeWk9RNewMemNot"
label variable W9TODA3919S2 "WelcomeWk9DNewIntImp"
label variable W9TODA3920S2 "WelcomeWk9DNewMemImp"
label variable W9TODA3921S2 "WelcomeWk9RNewIntImp"
label variable W9TODA3922S2 "WelcomeWk9RNewMemImp"
label variable W9TODS91920S3 "Wk2DEndorsementAFLCIO"
label variable W9TODS91921S3 "Wk2DEndorsementChamberofCommerce"
label variable W9TODS91923S3 "Wk2REndorsementAFLCIO"
label variable W9TODS91926S3 "wk2d1REUROOTEcon18"
label variable W9TODS91928S3 "wk2d2ABCABCEcon37"
label variable W9TODS91929S3 "wk2d2APAPEcon42"
label variable W9TODS91930S3 "wk2d2NYTNYTEcon54"
label variable W9TODS91931S3 "wk2d2NBCNBCEcon62"
label variable W9TODS91933S3 "wk2r2APAPEcon78"
label variable W9TODS91934S3 "wk2r2REUREUEcon82"
label variable W9TODS91935S3 "wk2r2WSJWSJEcon94"
label variable W9TODS91936S3 "wk2r1WSJHUFEcon110"
label variable W9TODS91939S3 "wk2r1APFOXEcon126"
label variable W9TODS91941S3 "wk2d3NBCFOXEcon10"
label variable W9TODS91942S3 "wk2d3REUROOTEcon18"
label variable W9TODS91945S3 "wk2r3ABCROOTEcon118"
label variable W9TODS91946S3 "wk2r3NBCUNIEcon122"
label variable W9TODS91949S3 "Wk1RWilliamsPersonality"
label variable W9TODS91951S3 "Wk1RWilliamsExperience"
label variable W9TODS91952S3 "Wk1RWilliamsCandidatePicture"
label variable W9TODS91953S3 "Wk1RWilliamsBackground"
label variable W9TODS91955S3 "Wk1RJonesPersonality"
label variable W9TODS91957S3 "Wk1RJonesExperience"
label variable W9TODS91959S3 "Wk1RJonesBackground"
label variable W9TODS91960S3 "Wk1DWilsonSlogan"
label variable W9TODS91961S3 "Wk1DWilsonPersonality"
label variable W9TODS91963S3 "Wk1DWilsonExperience"
label variable W9TODS91964S3 "Wk1DWilsonCandidatePicture"
label variable W9TODS91965S3 "Wk1DWilsonBackground"
label variable W9TODS91966S3 "Wk1DSmithSlogan"
label variable W9TODS91967S3 "Wk1DSmithPersonality"
label variable W9TODS91968S3 "Wk1DSmithFamily"
label variable W9TODS91969S3 "Wk1DSmithExperience"
label variable W9TODS91970S3 "Wk1DSmithCandidatePicture"
label variable W9TODS91971S3 "Wk1DSmithBackground"
label variable W9TODS91972S3 "SmithEducation"
label variable W9TODS91973S3 "SmithExperience"
label variable W9TODS91974S3 "SmithFamily"
label variable W9TODS91975S3 "JonesExperience"
label variable W9TODS91976S3 "SmithReligion"
label variable W9TODS91977S3 "JonesEducation"
label variable W9TODS91978S3 "JonesFamily"
label variable W9TODS91980S3 "JonesReligion"
label variable W9TODS91981S3 "WilsonEducation"
label variable W9TODS91983S3 "WilsonExperience"
label variable W9TODS91984S3 "WilsonFamily"
label variable W9TODS91985S3 "WilliamsReligion"
label variable W9TODS91987S3 "WilliamsFamily"
label variable W9TODS91988S3 "WilliamsExperience"
label variable W9TODS91989S3 "WilliamsEducation"
label variable W9TODS91990S3 "WilsonReligion"
label variable W9TODS91992S3 "wk2DSmithJobs"
label variable W9TODS91993S3 "wk2DSmithEconPhil"
label variable W9TODS91994S3 "Wk2RJonesJobs"
label variable W9TODS91995S3 "wk2DWilsonJobs"
label variable W9TODS91996S3 "wk2DWilsonEconPhil"
label variable W9TODS91997S3 "wk2RJonesEconPhil"
label variable W9TODS91998S3 "Wk2RWilliamsJobs"
label variable W9TODS91999S3 "wk2RWilliamsEconPhil"
label variable W9TODS92000S3 "wk3DSmithEduc"
label variable W9TODS92001S3 "wk6DSmithHealth"
label variable W9TODS92002S3 "wk4DSmithChina"
label variable W9TODS92003S3 "wk4DSmithDefense"
label variable W9TODS92004S3 "wk5DSmithAbortion"
label variable W9TODS92005S3 "wk5DSmithGay"
label variable W9TODS92006S3 "wk6DSmithTaxes"
label variable W9TODS92007S3 "wk7DSmithAffirm"
label variable W9TODS92008S3 "wk7DSmithImmigration"
label variable W9TODS92009S3 "wk8DSmithAfghan"
label variable W9TODS92010S3 "wk8DSmithMil"
label variable W9TODS92011S2 "wk9DSmithDeathPen"
label variable W9TODS92011S3 "wk9DSmithDeathPen"
label variable W9TODS92012S2 "wk9DSmithStemCells"
label variable W9TODS92012S3 "wk9DSmithStemCells"
label variable W9TODS92013S3 "wk3DSmithSocPhil"
label variable W9TODS92014S3 "wk3DWilsonEduc"
label variable W9TODS92015S3 "wk6DWilsonHealth"
label variable W9TODS92016S3 "wk4DWilsonChina"
label variable W9TODS92017S3 "wk4DWilsonDefense"
label variable W9TODS92018S3 "wk5DWilsonAbortion"
label variable W9TODS92019S3 "wk5DWilsonGay"
label variable W9TODS92020S3 "wk6DWilsonTaxes"
label variable W9TODS92021S3 "wk7DWilsonAffirm"
label variable W9TODS92022S3 "wk7DWilsonImmigration"
label variable W9TODS92023S3 "wk8DWilsonAfghan"
label variable W9TODS92024S3 "wk8DWilsonMil"
label variable W9TODS92025S2 "wk9DWilsonDeathPen"
label variable W9TODS92025S3 "wk9DWilsonDeathPen"
label variable W9TODS92026S2 "wk9DWilsonStemCells"
label variable W9TODS92026S3 "wk9DWilsonStemCells"
label variable W9TODS92027S3 "wk7RJonesImmigration"
label variable W9TODS92028S3 "wk3DWilsonSocPhil"
label variable W9TODS92029S3 "wk3RWilliamsEduc"
label variable W9TODS92030S3 "wk3RWilliamsSocPhil"
label variable W9TODS92031S3 "wk4RWilliamsChina"
label variable W9TODS92032S3 "wk4RWilliamsDefense"
label variable W9TODS92033S3 "wk5RWilliamsAbortion"
label variable W9TODS92034S3 "wk5RWilliamsGay"
label variable W9TODS92035S3 "wk6RWilliamsTaxes"
label variable W9TODS92036S3 "wk7RWilliamsAffirm"
label variable W9TODS92037S3 "wk7RWilliamsImmigration"
label variable W9TODS92038S3 "wk8RWilliamsAfghan"
label variable W9TODS92039S3 "wk8RWilliamsMil"
label variable W9TODS92040S2 "wk9RWilliamsDeathPen"
label variable W9TODS92040S3 "wk9RWilliamsDeathPen"
label variable W9TODS92041S2 "wk9RWilliamsStemCells"
label variable W9TODS92041S3 "wk9RWilliamsStemCells"
label variable W9TODS92042S3 "wk3RJonesEduc"
label variable W9TODS92043S3 "wk3RJonesSocPhil"
label variable W9TODS92044S3 "wk4RJonesChina"
label variable W9TODS92045S3 "wk4RJonesDefense"
label variable W9TODS92046S3 "wk5RJonesAbortion"
label variable W9TODS92047S3 "wk5RJonesGay"
label variable W9TODS92048S3 "wk6RJonesHealth"
label variable W9TODS92049S3 "wk8RJonesAfghan"
label variable W9TODS92050S3 "wk6RJonesTaxes"
label variable W9TODS92051S3 "wk7RJonesAffirm"
label variable W9TODS92052S2 "wk9RJonesStemCells"
label variable W9TODS92052S3 "wk9RJonesStemCells"
label variable W9TODS92053S3 "wk8RJonesMil"
label variable W9TODS92054S2 "wk9RJonesDeathPen"
label variable W9TODS92054S3 "wk9RJonesDeathPen"
label variable W9TODS92055S3 "wk6RWilliamsHealth"
label variable W9TODS92056S3 "wk3d1APROOT16"
label variable W9TODS92057S3 "Wk3DEndorsementAFT"
label variable W9TODS92058S3 "Wk3DEndorsementFAIR"
label variable W9TODS92059S3 "wk3d1ABCHOT8"
label variable W9TODS92060S3 "Wk3REndorsementFAIR"
label variable W9TODS92061S3 "Wk3REndorsementAFT"
label variable W9TODS92063S3 "wk3d1NYTMSN28"
label variable W9TODS92065S3 "wk3d2REUREU48"
label variable W9TODS92066S3 "wk3d2WSJWSJ60"
label variable W9TODS92067S3 "wk3d2NBCNBC64"
label variable W9TODS92068S3 "wk3d3ABCHOT8"
label variable W9TODS92069S3 "wk3r2ABCABC72"
label variable W9TODS92071S3 "wk3d3APROOT16"
label variable W9TODS92072S3 "wk3d3NYTMSN28"
label variable W9TODS92073S3 "wk3r2APAP80"
label variable W9TODS92074S3 "wk3r3REUBET100"
label variable W9TODS92075S3 "wk3r3CNNLAT101"
label variable W9TODS92076S3 "wk3r2NYTNYT92"
label variable W9TODS92077S3 "wk3r2WSJWSJ96"
label variable W9TODS92085S3 "wk4d1ABCHUFFor7"
label variable W9TODS92087S3 "wk4d1WSJLATFor31"
label variable W9TODS92088S3 "wk4d2APAPFor43"
label variable W9TODS92089S3 "wk4d2REUREUFor47"
label variable W9TODS92090S3 "wk4d2NYTNYTFor55"
label variable W9TODS92091S3 "wk4d2NBCNBCFor63"
label variable W9TODS92092S3 "wk4d3CBSFOXFor3"
label variable W9TODS92094S3 "wk4d3CNNBETFor23"
label variable W9TODS92097S3 "wk4r2NBCNBCFor75"
label variable W9TODS92098S3 "wk4r2REUREUFor83"
label variable W9TODS92099S3 "wk4r2NYTNYTFor91"
label variable W9TODS92101S3 "wk4r1WSJHOTFor111"
label variable W9TODS92103S3 "wk4r1APLATFor127"
label variable W9TODS92104S3 "wk4r3CNNROOTFor103"
label variable W9TODS92107S3 "wk4r3APLATFor127"
label variable W9TODS92108S3 "Wk4DEndorsementNCLR"
label variable W9TODS92109S3 "Wk4DEndorsementHeritage"
label variable W9TODS92110S3 "Wk4DEndorsementVFW"
label variable W9TODS92112S3 "Wk4REndorsementHeritage"
label variable W9TODS92114S3 "Wk5DEndorsementHumanRtsCamp"
label variable W9TODS92115S3 "Wk5DEndorsementFamResearchCouncil"
label variable W9TODS92116S3 "Wk5REndorsementHumanRtsCamp"
label variable W9TODS92117S3 "Wk5DEndorsementNRL"
label variable W9TODS92120S3 "wk5r1WSJBETCult109"
label variable W9TODS92121S3 "wk5d1ABCHUFCult5"
label variable W9TODS92125S3 "wk5d2CBSCBSCult33"
label variable W9TODS92126S3 "wk5d2APAPCult41"
label variable W9TODS92127S3 "wk5d2REUREUCult45"
label variable W9TODS92128S3 "wk5d2WSJWSJCult57"
label variable W9TODS92130S3 "wk5d3NBCHOTCult9"
label variable W9TODS92132S3 "wk5d3NYTBETCult25"
label variable W9TODS92134S3 "wk5r1ABCHOTCult117"
label variable W9TODS92136S3 "wk5r1APMSNCult125"
label variable W9TODS92138S3 "wk5r2REUREUCult81"
label variable W9TODS92140S3 "wk5r2NYTNYTCult89"
label variable W9TODS92141S3 "wk5r3WSJBETCult109"
label variable W9TODS92143S3 "wk5r3NBCLATCult121"
label variable W9TODS92147S3 "wk6r2ABCABCEcon70"
label variable W9TODS92148S3 "wk6d1ABCMSNEcon6"
label variable W9TODS92149S3 "wk6r2NBCNBCEcon74"
label variable W9TODS92152S3 "wk6r1REULATEcon98"
label variable W9TODS92154S3 "wk6r1NYTBETEcon106"
label variable W9TODS92155S3 "wk6d1APHOTEcon14"
label variable W9TODS92156S3 "wk6d1NYTBETEcon26"
label variable W9TODS92158S3 "wk6d1WSJLATEcon30"
label variable W9TODS92159S3 "wk6r3REULATEcon98"
label variable W9TODS92160S3 "wk6r3NYTBETEcon106"
label variable W9TODS92162S3 "wk6d3NYTBETEcon26"
label variable W9TODS92164S3 "wk6d2CBSCBSEcon34"
label variable W9TODS92165S3 "wk6d2REUREUEcon46"
label variable W9TODS92166S3 "wk6d2CNNCNNEcon50"
label variable W9TODS92167S3 "wk6d2WSJWSJEcon58"
label variable W9TODS92168S3 "wk6d3ABCMSNEcon6"
label variable W9TODS92169S3 "wk6d3APHOTEcon14"
label variable W9TODS92170S3 "Wk6DEndorsementADA"
label variable W9TODS92171S3 "Wk6DEndorsementNTU"
label variable W9TODS92172S3 "Wk6DEndorsementAFSCME"
label variable W9TODS92173S3 "Wk6REndorsementADA"
label variable W9TODS92174S3 "Wk6REndorsementNTU"
label variable W9TODS92175S3 "Wk6REndorsementAFSCME"
label variable W9TODS92176S3 "Wk7DEndorsementNAACP"
label variable W9TODS92177S3 "Wk7DEndorsementACU"
label variable W9TODS92179S3 "Wk7REndorsementNAACP"
label variable W9TODS92181S3 "wk7r2NBCNBC76"
label variable W9TODS92182S3 "wk7r2REUREU84"
label variable W9TODS92184S3 "wk7r1NYTROOT108"
label variable W9TODS92185S3 "wk7r1WSJUNI112"
label variable W9TODS92187S3 "wk7r1APHOT128"
label variable W9TODS92188S3 "wk7r3NYTROOT108"
label variable W9TODS92189S3 "wk7d3CBSROOTSoc4"
label variable W9TODS92190S3 "wk7r3WSJUNI112"
label variable W9TODS92191S3 "wk7d3REUBET20"
label variable W9TODS92197S3 "wk7d1REUBET20"
label variable W9TODS92199S3 "wk7d1WSJHUF32"
label variable W9TODS92200S3 "wk7d2ABCABC40"
label variable W9TODS92201S3 "wk7d2APAP44"
label variable W9TODS92202S3 "wk7d2CNNCNN52"
label variable W9TODS92203S3 "wk7d2NYTNYT56"
label variable W9TODS92204S3 "Wk8DEndorsementACLU"
label variable W9TODS92205S3 "Wk8DEndorsementAEI"
label variable W9TODS92207S3 "Wk8REndorsementAEI"
label variable W9TODS92209S3 "wk8d1APROOTFor15"
label variable W9TODS92210S3 "wk8d1REUHOTFor19"
label variable W9TODS92211S3 "wk8d1NYTUNIFor27"
label variable W9TODS92212S3 "wk8d2CBSCBSFor35"
label variable W9TODS92213S3 "wk8d2ABCABCFor38"
label variable W9TODS92214S3 "wk8d2CNNCNNFor51"
label variable W9TODS92216S3 "wk8d2WSJWSJFor59"
label variable W9TODS92217S3 "wk8r2APAPFor79"
label variable W9TODS92220S3 "wk8r1REUBETFor99"
label variable W9TODS92221S3 "wk8r1NYTFOXFor107"
label variable W9TODS92224S3 "wk8d3NBCMSNFor11"
label variable W9TODS92225S3 "wk8d3APROOTFor15"
label variable W9TODS92226S3 "wk8d3REUHOTFor19"
label variable W9TODS92228S3 "wk8r3REUBETFor99"
label variable W9TODS92230S3 "wk8r3ABCUNIFor119"
label variable W9TODS92384S2 "wk9r2ABCABCCult69"
label variable W9TODS92384S3 "wk9r2ABCABCCult69"
label variable W9TODS92385S2 "wk9d1CBSUNICult1"
label variable W9TODS92385S3 "wk9d1CBSUNICult1"
label variable W9TODS92386S2 "wk9d1APFOXCult13"
label variable W9TODS92386S3 "wk9d1APFOXCult13"
label variable W9TODS92387S2 "wk9d1REUMSNCult17"
label variable W9TODS92387S3 "wk9d1REUMSNCult17"
label variable W9TODS92388S2 "wk9r2NBCNBCCult73"
label variable W9TODS92388S3 "wk9r2NBCNBCCult73"
label variable W9TODS92389S2 "wk9d1WSJFOXCult29"
label variable W9TODS92389S3 "wk9d1WSJFOXCult29"
label variable W9TODS92390S2 "wk9r2APAPCult77"
label variable W9TODS92390S3 "wk9r2APAPCult77"
label variable W9TODS92391S2 "wk9d2ABCABCCult39"
label variable W9TODS92391S3 "wk9d2ABCABCCult39"
label variable W9TODS92392S2 "wk9d2CNNCNNCult49"
label variable W9TODS92392S3 "wk9d2CNNCNNCult49"
label variable W9TODS92393S2 "wk9r2WSJWSJCult93"
label variable W9TODS92393S3 "wk9r2WSJWSJCult93"
label variable W9TODS92394S2 "wk9d2NYTNYTCult53"
label variable W9TODS92394S3 "wk9d2NYTNYTCult53"
label variable W9TODS92395S2 "wk9d2NBCNBCCult61"
label variable W9TODS92395S3 "wk9d2NBCNBCCult61"
label variable W9TODS92396S2 "wk9d3CBSUNICult1"
label variable W9TODS92396S3 "wk9d3CBSUNICult1"
label variable W9TODS92397S2 "wk9d3APFOXCult13"
label variable W9TODS92397S3 "wk9d3APFOXCult13"
label variable W9TODS92398S2 "wk9r1REUROOTCult97"
label variable W9TODS92398S3 "wk9r1REUROOTCult97"
label variable W9TODS92399S2 "wk9d3REUMSNCult17"
label variable W9TODS92399S3 "wk9d3REUMSNCult17"
label variable W9TODS92400S2 "wk9d3WSJFOXCult29"
label variable W9TODS92400S3 "wk9d3WSJFOXCult29"
label variable W9TODS92401S2 "wk9r1CNNFOXCult104"
label variable W9TODS92401S3 "wk9r1CNNFOXCult104"
label variable W9TODS92402S2 "wk9r1NYTUNICult105"
label variable W9TODS92402S3 "wk9r1NYTUNICult105"
label variable W9TODS92403S2 "wk9r1CBSHUFCult113"
label variable W9TODS92403S3 "wk9r1CBSHUFCult113"
label variable W9TODS92404S2 "wk9r3REUROOTCult97"
label variable W9TODS92404S3 "wk9r3REUROOTCult97"
label variable W9TODS92405S2 "wk9r3CNNFOXCult104"
label variable W9TODS92405S3 "wk9r3CNNFOXCult104"
label variable W9TODS92406S2 "wk9r3NYTUNICult105"
label variable W9TODS92406S3 "wk9r3NYTUNICult105"
label variable W9TODS92407S2 "wk9r3CBSHUFCult113"
label variable W9TODS92407S3 "wk9r3CBSHUFCult113"
label variable W9TODS92408S2 "Wk9DEndorsementNOW"
label variable W9TODS92408S3 "Wk9DEndorsementNOW"
label variable W9TODS92409S2 "Wk9DEndorsementCCA"
label variable W9TODS92409S3 "Wk9DEndorsementCCA"
label variable W9TODS92410S2 "Wk9REndorsementNOW"
label variable W9TODS92410S3 "Wk9REndorsementNOW"
label variable W9TODS92411S2 "Wk9REndorsementCCA"
label variable W9TODS92411S3 "Wk9REndorsementCCA"
label variable W9TTOA3830S4 "That's it for this Week"
label variable W9TTOA3831S1 "Whoops -- Not a Valid Subject ID"
label variable W9TTOA3832S3 "Substage2and3BetwNoIntD&R"
label variable W9TTOA3833S3 "Substage2and3BetwIntD&R"
label variable W9TTOA3834S2 "WelcomeWk9DNewMemNot"
label variable W9TTOA3839S2 "WelcomeWk9RNewIntNot"
label variable W9TTOA3854S2 "WelcomeWk9DNewIntNot"
label variable W9TTOA3855S2 "WelcomeWk9RNewMemNot"
label variable W9TTOA3919S2 "WelcomeWk9DNewIntImp"
label variable W9TTOA3920S2 "WelcomeWk9DNewMemImp"
label variable W9TTOA3921S2 "WelcomeWk9RNewIntImp"
label variable W9TTOA3922S2 "WelcomeWk9RNewMemImp"
label variable W9TTOS91920S3 "Wk2DEndorsementAFLCIO"
label variable W9TTOS91921S3 "Wk2DEndorsementChamberofCommerce"
label variable W9TTOS91923S3 "Wk2REndorsementAFLCIO"
label variable W9TTOS91926S3 "wk2d1REUROOTEcon18"
label variable W9TTOS91928S3 "wk2d2ABCABCEcon37"
label variable W9TTOS91929S3 "wk2d2APAPEcon42"
label variable W9TTOS91930S3 "wk2d2NYTNYTEcon54"
label variable W9TTOS91931S3 "wk2d2NBCNBCEcon62"
label variable W9TTOS91933S3 "wk2r2APAPEcon78"
label variable W9TTOS91934S3 "wk2r2REUREUEcon82"
label variable W9TTOS91935S3 "wk2r2WSJWSJEcon94"
label variable W9TTOS91936S3 "wk2r1WSJHUFEcon110"
label variable W9TTOS91939S3 "wk2r1APFOXEcon126"
label variable W9TTOS91941S3 "wk2d3NBCFOXEcon10"
label variable W9TTOS91942S3 "wk2d3REUROOTEcon18"
label variable W9TTOS91945S3 "wk2r3ABCROOTEcon118"
label variable W9TTOS91946S3 "wk2r3NBCUNIEcon122"
label variable W9TTOS91949S3 "Wk1RWilliamsPersonality"
label variable W9TTOS91951S3 "Wk1RWilliamsExperience"
label variable W9TTOS91952S3 "Wk1RWilliamsCandidatePicture"
label variable W9TTOS91953S3 "Wk1RWilliamsBackground"
label variable W9TTOS91955S3 "Wk1RJonesPersonality"
label variable W9TTOS91957S3 "Wk1RJonesExperience"
label variable W9TTOS91959S3 "Wk1RJonesBackground"
label variable W9TTOS91960S3 "Wk1DWilsonSlogan"
label variable W9TTOS91961S3 "Wk1DWilsonPersonality"
label variable W9TTOS91963S3 "Wk1DWilsonExperience"
label variable W9TTOS91964S3 "Wk1DWilsonCandidatePicture"
label variable W9TTOS91965S3 "Wk1DWilsonBackground"
label variable W9TTOS91966S3 "Wk1DSmithSlogan"
label variable W9TTOS91967S3 "Wk1DSmithPersonality"
label variable W9TTOS91968S3 "Wk1DSmithFamily"
label variable W9TTOS91969S3 "Wk1DSmithExperience"
label variable W9TTOS91970S3 "Wk1DSmithCandidatePicture"
label variable W9TTOS91971S3 "Wk1DSmithBackground"
label variable W9TTOS91972S3 "SmithEducation"
label variable W9TTOS91973S3 "SmithExperience"
label variable W9TTOS91974S3 "SmithFamily"
label variable W9TTOS91975S3 "JonesExperience"
label variable W9TTOS91976S3 "SmithReligion"
label variable W9TTOS91977S3 "JonesEducation"
label variable W9TTOS91978S3 "JonesFamily"
label variable W9TTOS91980S3 "JonesReligion"
label variable W9TTOS91981S3 "WilsonEducation"
label variable W9TTOS91983S3 "WilsonExperience"
label variable W9TTOS91984S3 "WilsonFamily"
label variable W9TTOS91985S3 "WilliamsReligion"
label variable W9TTOS91987S3 "WilliamsFamily"
label variable W9TTOS91988S3 "WilliamsExperience"
label variable W9TTOS91989S3 "WilliamsEducation"
label variable W9TTOS91990S3 "WilsonReligion"
label variable W9TTOS91992S3 "wk2DSmithJobs"
label variable W9TTOS91993S3 "wk2DSmithEconPhil"
label variable W9TTOS91994S3 "Wk2RJonesJobs"
label variable W9TTOS91995S3 "wk2DWilsonJobs"
label variable W9TTOS91996S3 "wk2DWilsonEconPhil"
label variable W9TTOS91997S3 "wk2RJonesEconPhil"
label variable W9TTOS91998S3 "Wk2RWilliamsJobs"
label variable W9TTOS91999S3 "wk2RWilliamsEconPhil"
label variable W9TTOS92000S3 "wk3DSmithEduc"
label variable W9TTOS92001S3 "wk6DSmithHealth"
label variable W9TTOS92002S3 "wk4DSmithChina"
label variable W9TTOS92003S3 "wk4DSmithDefense"
label variable W9TTOS92004S3 "wk5DSmithAbortion"
label variable W9TTOS92005S3 "wk5DSmithGay"
label variable W9TTOS92006S3 "wk6DSmithTaxes"
label variable W9TTOS92007S3 "wk7DSmithAffirm"
label variable W9TTOS92008S3 "wk7DSmithImmigration"
label variable W9TTOS92009S3 "wk8DSmithAfghan"
label variable W9TTOS92010S3 "wk8DSmithMil"
label variable W9TTOS92011S2 "wk9DSmithDeathPen"
label variable W9TTOS92011S3 "wk9DSmithDeathPen"
label variable W9TTOS92012S2 "wk9DSmithStemCells"
label variable W9TTOS92012S3 "wk9DSmithStemCells"
label variable W9TTOS92013S3 "wk3DSmithSocPhil"
label variable W9TTOS92014S3 "wk3DWilsonEduc"
label variable W9TTOS92015S3 "wk6DWilsonHealth"
label variable W9TTOS92016S3 "wk4DWilsonChina"
label variable W9TTOS92017S3 "wk4DWilsonDefense"
label variable W9TTOS92018S3 "wk5DWilsonAbortion"
label variable W9TTOS92019S3 "wk5DWilsonGay"
label variable W9TTOS92020S3 "wk6DWilsonTaxes"
label variable W9TTOS92021S3 "wk7DWilsonAffirm"
label variable W9TTOS92022S3 "wk7DWilsonImmigration"
label variable W9TTOS92023S3 "wk8DWilsonAfghan"
label variable W9TTOS92024S3 "wk8DWilsonMil"
label variable W9TTOS92025S2 "wk9DWilsonDeathPen"
label variable W9TTOS92025S3 "wk9DWilsonDeathPen"
label variable W9TTOS92026S2 "wk9DWilsonStemCells"
label variable W9TTOS92026S3 "wk9DWilsonStemCells"
label variable W9TTOS92027S3 "wk7RJonesImmigration"
label variable W9TTOS92028S3 "wk3DWilsonSocPhil"
label variable W9TTOS92029S3 "wk3RWilliamsEduc"
label variable W9TTOS92030S3 "wk3RWilliamsSocPhil"
label variable W9TTOS92031S3 "wk4RWilliamsChina"
label variable W9TTOS92032S3 "wk4RWilliamsDefense"
label variable W9TTOS92033S3 "wk5RWilliamsAbortion"
label variable W9TTOS92034S3 "wk5RWilliamsGay"
label variable W9TTOS92035S3 "wk6RWilliamsTaxes"
label variable W9TTOS92036S3 "wk7RWilliamsAffirm"
label variable W9TTOS92037S3 "wk7RWilliamsImmigration"
label variable W9TTOS92038S3 "wk8RWilliamsAfghan"
label variable W9TTOS92039S3 "wk8RWilliamsMil"
label variable W9TTOS92040S2 "wk9RWilliamsDeathPen"
label variable W9TTOS92040S3 "wk9RWilliamsDeathPen"
label variable W9TTOS92041S2 "wk9RWilliamsStemCells"
label variable W9TTOS92041S3 "wk9RWilliamsStemCells"
label variable W9TTOS92042S3 "wk3RJonesEduc"
label variable W9TTOS92043S3 "wk3RJonesSocPhil"
label variable W9TTOS92044S3 "wk4RJonesChina"
label variable W9TTOS92045S3 "wk4RJonesDefense"
label variable W9TTOS92046S3 "wk5RJonesAbortion"
label variable W9TTOS92047S3 "wk5RJonesGay"
label variable W9TTOS92048S3 "wk6RJonesHealth"
label variable W9TTOS92049S3 "wk8RJonesAfghan"
label variable W9TTOS92050S3 "wk6RJonesTaxes"
label variable W9TTOS92051S3 "wk7RJonesAffirm"
label variable W9TTOS92052S2 "wk9RJonesStemCells"
label variable W9TTOS92052S3 "wk9RJonesStemCells"
label variable W9TTOS92053S3 "wk8RJonesMil"
label variable W9TTOS92054S2 "wk9RJonesDeathPen"
label variable W9TTOS92054S3 "wk9RJonesDeathPen"
label variable W9TTOS92055S3 "wk6RWilliamsHealth"
label variable W9TTOS92056S3 "wk3d1APROOT16"
label variable W9TTOS92057S3 "Wk3DEndorsementAFT"
label variable W9TTOS92058S3 "Wk3DEndorsementFAIR"
label variable W9TTOS92059S3 "wk3d1ABCHOT8"
label variable W9TTOS92060S3 "Wk3REndorsementFAIR"
label variable W9TTOS92061S3 "Wk3REndorsementAFT"
label variable W9TTOS92063S3 "wk3d1NYTMSN28"
label variable W9TTOS92065S3 "wk3d2REUREU48"
label variable W9TTOS92066S3 "wk3d2WSJWSJ60"
label variable W9TTOS92067S3 "wk3d2NBCNBC64"
label variable W9TTOS92068S3 "wk3d3ABCHOT8"
label variable W9TTOS92069S3 "wk3r2ABCABC72"
label variable W9TTOS92071S3 "wk3d3APROOT16"
label variable W9TTOS92072S3 "wk3d3NYTMSN28"
label variable W9TTOS92073S3 "wk3r2APAP80"
label variable W9TTOS92074S3 "wk3r3REUBET100"
label variable W9TTOS92075S3 "wk3r3CNNLAT101"
label variable W9TTOS92076S3 "wk3r2NYTNYT92"
label variable W9TTOS92077S3 "wk3r2WSJWSJ96"
label variable W9TTOS92085S3 "wk4d1ABCHUFFor7"
label variable W9TTOS92087S3 "wk4d1WSJLATFor31"
label variable W9TTOS92088S3 "wk4d2APAPFor43"
label variable W9TTOS92089S3 "wk4d2REUREUFor47"
label variable W9TTOS92090S3 "wk4d2NYTNYTFor55"
label variable W9TTOS92091S3 "wk4d2NBCNBCFor63"
label variable W9TTOS92092S3 "wk4d3CBSFOXFor3"
label variable W9TTOS92094S3 "wk4d3CNNBETFor23"
label variable W9TTOS92097S3 "wk4r2NBCNBCFor75"
label variable W9TTOS92098S3 "wk4r2REUREUFor83"
label variable W9TTOS92099S3 "wk4r2NYTNYTFor91"
label variable W9TTOS92101S3 "wk4r1WSJHOTFor111"
label variable W9TTOS92103S3 "wk4r1APLATFor127"
label variable W9TTOS92104S3 "wk4r3CNNROOTFor103"
label variable W9TTOS92107S3 "wk4r3APLATFor127"
label variable W9TTOS92108S3 "Wk4DEndorsementNCLR"
label variable W9TTOS92109S3 "Wk4DEndorsementHeritage"
label variable W9TTOS92110S3 "Wk4DEndorsementVFW"
label variable W9TTOS92112S3 "Wk4REndorsementHeritage"
label variable W9TTOS92114S3 "Wk5DEndorsementHumanRtsCamp"
label variable W9TTOS92115S3 "Wk5DEndorsementFamResearchCouncil"
label variable W9TTOS92116S3 "Wk5REndorsementHumanRtsCamp"
label variable W9TTOS92117S3 "Wk5DEndorsementNRL"
label variable W9TTOS92120S3 "wk5r1WSJBETCult109"
label variable W9TTOS92121S3 "wk5d1ABCHUFCult5"
label variable W9TTOS92125S3 "wk5d2CBSCBSCult33"
label variable W9TTOS92126S3 "wk5d2APAPCult41"
label variable W9TTOS92127S3 "wk5d2REUREUCult45"
label variable W9TTOS92128S3 "wk5d2WSJWSJCult57"
label variable W9TTOS92130S3 "wk5d3NBCHOTCult9"
label variable W9TTOS92132S3 "wk5d3NYTBETCult25"
label variable W9TTOS92134S3 "wk5r1ABCHOTCult117"
label variable W9TTOS92136S3 "wk5r1APMSNCult125"
label variable W9TTOS92138S3 "wk5r2REUREUCult81"
label variable W9TTOS92140S3 "wk5r2NYTNYTCult89"
label variable W9TTOS92141S3 "wk5r3WSJBETCult109"
label variable W9TTOS92143S3 "wk5r3NBCLATCult121"
label variable W9TTOS92147S3 "wk6r2ABCABCEcon70"
label variable W9TTOS92148S3 "wk6d1ABCMSNEcon6"
label variable W9TTOS92149S3 "wk6r2NBCNBCEcon74"
label variable W9TTOS92152S3 "wk6r1REULATEcon98"
label variable W9TTOS92154S3 "wk6r1NYTBETEcon106"
label variable W9TTOS92155S3 "wk6d1APHOTEcon14"
label variable W9TTOS92156S3 "wk6d1NYTBETEcon26"
label variable W9TTOS92158S3 "wk6d1WSJLATEcon30"
label variable W9TTOS92159S3 "wk6r3REULATEcon98"
label variable W9TTOS92160S3 "wk6r3NYTBETEcon106"
label variable W9TTOS92162S3 "wk6d3NYTBETEcon26"
label variable W9TTOS92164S3 "wk6d2CBSCBSEcon34"
label variable W9TTOS92165S3 "wk6d2REUREUEcon46"
label variable W9TTOS92166S3 "wk6d2CNNCNNEcon50"
label variable W9TTOS92167S3 "wk6d2WSJWSJEcon58"
label variable W9TTOS92168S3 "wk6d3ABCMSNEcon6"
label variable W9TTOS92169S3 "wk6d3APHOTEcon14"
label variable W9TTOS92170S3 "Wk6DEndorsementADA"
label variable W9TTOS92171S3 "Wk6DEndorsementNTU"
label variable W9TTOS92172S3 "Wk6DEndorsementAFSCME"
label variable W9TTOS92173S3 "Wk6REndorsementADA"
label variable W9TTOS92174S3 "Wk6REndorsementNTU"
label variable W9TTOS92175S3 "Wk6REndorsementAFSCME"
label variable W9TTOS92176S3 "Wk7DEndorsementNAACP"
label variable W9TTOS92177S3 "Wk7DEndorsementACU"
label variable W9TTOS92179S3 "Wk7REndorsementNAACP"
label variable W9TTOS92181S3 "wk7r2NBCNBC76"
label variable W9TTOS92182S3 "wk7r2REUREU84"
label variable W9TTOS92184S3 "wk7r1NYTROOT108"
label variable W9TTOS92185S3 "wk7r1WSJUNI112"
label variable W9TTOS92187S3 "wk7r1APHOT128"
label variable W9TTOS92188S3 "wk7r3NYTROOT108"
label variable W9TTOS92189S3 "wk7d3CBSROOTSoc4"
label variable W9TTOS92190S3 "wk7r3WSJUNI112"
label variable W9TTOS92191S3 "wk7d3REUBET20"
label variable W9TTOS92197S3 "wk7d1REUBET20"
label variable W9TTOS92199S3 "wk7d1WSJHUF32"
label variable W9TTOS92200S3 "wk7d2ABCABC40"
label variable W9TTOS92201S3 "wk7d2APAP44"
label variable W9TTOS92202S3 "wk7d2CNNCNN52"
label variable W9TTOS92203S3 "wk7d2NYTNYT56"
label variable W9TTOS92204S3 "Wk8DEndorsementACLU"
label variable W9TTOS92205S3 "Wk8DEndorsementAEI"
label variable W9TTOS92207S3 "Wk8REndorsementAEI"
label variable W9TTOS92209S3 "wk8d1APROOTFor15"
label variable W9TTOS92210S3 "wk8d1REUHOTFor19"
label variable W9TTOS92211S3 "wk8d1NYTUNIFor27"
label variable W9TTOS92212S3 "wk8d2CBSCBSFor35"
label variable W9TTOS92213S3 "wk8d2ABCABCFor38"
label variable W9TTOS92214S3 "wk8d2CNNCNNFor51"
label variable W9TTOS92216S3 "wk8d2WSJWSJFor59"
label variable W9TTOS92217S3 "wk8r2APAPFor79"
label variable W9TTOS92220S3 "wk8r1REUBETFor99"
label variable W9TTOS92221S3 "wk8r1NYTFOXFor107"
label variable W9TTOS92224S3 "wk8d3NBCMSNFor11"
label variable W9TTOS92225S3 "wk8d3APROOTFor15"
label variable W9TTOS92226S3 "wk8d3REUHOTFor19"
label variable W9TTOS92228S3 "wk8r3REUBETFor99"
label variable W9TTOS92230S3 "wk8r3ABCUNIFor119"
label variable W9TTOS92384S2 "wk9r2ABCABCCult69"
label variable W9TTOS92384S3 "wk9r2ABCABCCult69"
label variable W9TTOS92385S2 "wk9d1CBSUNICult1"
label variable W9TTOS92385S3 "wk9d1CBSUNICult1"
label variable W9TTOS92386S2 "wk9d1APFOXCult13"
label variable W9TTOS92386S3 "wk9d1APFOXCult13"
label variable W9TTOS92387S2 "wk9d1REUMSNCult17"
label variable W9TTOS92387S3 "wk9d1REUMSNCult17"
label variable W9TTOS92388S2 "wk9r2NBCNBCCult73"
label variable W9TTOS92388S3 "wk9r2NBCNBCCult73"
label variable W9TTOS92389S2 "wk9d1WSJFOXCult29"
label variable W9TTOS92389S3 "wk9d1WSJFOXCult29"
label variable W9TTOS92390S2 "wk9r2APAPCult77"
label variable W9TTOS92390S3 "wk9r2APAPCult77"
label variable W9TTOS92391S2 "wk9d2ABCABCCult39"
label variable W9TTOS92391S3 "wk9d2ABCABCCult39"
label variable W9TTOS92392S2 "wk9d2CNNCNNCult49"
label variable W9TTOS92392S3 "wk9d2CNNCNNCult49"
label variable W9TTOS92393S2 "wk9r2WSJWSJCult93"
label variable W9TTOS92393S3 "wk9r2WSJWSJCult93"
label variable W9TTOS92394S2 "wk9d2NYTNYTCult53"
label variable W9TTOS92394S3 "wk9d2NYTNYTCult53"
label variable W9TTOS92395S2 "wk9d2NBCNBCCult61"
label variable W9TTOS92395S3 "wk9d2NBCNBCCult61"
label variable W9TTOS92396S2 "wk9d3CBSUNICult1"
label variable W9TTOS92396S3 "wk9d3CBSUNICult1"
label variable W9TTOS92397S2 "wk9d3APFOXCult13"
label variable W9TTOS92397S3 "wk9d3APFOXCult13"
label variable W9TTOS92398S2 "wk9r1REUROOTCult97"
label variable W9TTOS92398S3 "wk9r1REUROOTCult97"
label variable W9TTOS92399S2 "wk9d3REUMSNCult17"
label variable W9TTOS92399S3 "wk9d3REUMSNCult17"
label variable W9TTOS92400S2 "wk9d3WSJFOXCult29"
label variable W9TTOS92400S3 "wk9d3WSJFOXCult29"
label variable W9TTOS92401S2 "wk9r1CNNFOXCult104"
label variable W9TTOS92401S3 "wk9r1CNNFOXCult104"
label variable W9TTOS92402S2 "wk9r1NYTUNICult105"
label variable W9TTOS92402S3 "wk9r1NYTUNICult105"
label variable W9TTOS92403S2 "wk9r1CBSHUFCult113"
label variable W9TTOS92403S3 "wk9r1CBSHUFCult113"
label variable W9TTOS92404S2 "wk9r3REUROOTCult97"
label variable W9TTOS92404S3 "wk9r3REUROOTCult97"
label variable W9TTOS92405S2 "wk9r3CNNFOXCult104"
label variable W9TTOS92405S3 "wk9r3CNNFOXCult104"
label variable W9TTOS92406S2 "wk9r3NYTUNICult105"
label variable W9TTOS92406S3 "wk9r3NYTUNICult105"
label variable W9TTOS92407S2 "wk9r3CBSHUFCult113"
label variable W9TTOS92407S3 "wk9r3CBSHUFCult113"
label variable W9TTOS92408S2 "Wk9DEndorsementNOW"
label variable W9TTOS92408S3 "Wk9DEndorsementNOW"
label variable W9TTOS92409S2 "Wk9DEndorsementCCA"
label variable W9TTOS92409S3 "Wk9DEndorsementCCA"
label variable W9TTOS92410S2 "Wk9REndorsementNOW"
label variable W9TTOS92410S3 "Wk9REndorsementNOW"
label variable W9TTOS92411S2 "Wk9REndorsementCCA"
label variable W9TTOS92411S3 "Wk9REndorsementCCA"
label variable W9WORDSA3830S4 "That's it for this Week"
label variable W9WORDSA3831S1 "Whoops -- Not a Valid Subject ID"
label variable W9WORDSA3832S3 "Substage2and3BetwNoIntD&R"
label variable W9WORDSA3833S3 "Substage2and3BetwIntD&R"
label variable W9WORDSA3834S2 "WelcomeWk9DNewMemNot"
label variable W9WORDSA3839S2 "WelcomeWk9RNewIntNot"
label variable W9WORDSA3854S2 "WelcomeWk9DNewIntNot"
label variable W9WORDSA3855S2 "WelcomeWk9RNewMemNot"
label variable W9WORDSA3919S2 "WelcomeWk9DNewIntImp"
label variable W9WORDSA3920S2 "WelcomeWk9DNewMemImp"
label variable W9WORDSA3921S2 "WelcomeWk9RNewIntImp"
label variable W9WORDSA3922S2 "WelcomeWk9RNewMemImp"

* Merge W9S1234 with IPW9 (IP ADRESS)
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W9/WorkingData/W9S1234_Working.dta", replace
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W9/WorkingData/W9S1234_Working.dta", replace
merge m:m SUBJECTID using "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W9/IP/IPW9.dta"
drop _merge

* Duplicate Check
capture drop DUPW9
sort PAC
quietly by PAC: gen DUPW9 = cond(_N==1,0,_n)

* Generating week indicator
capture drop WEEK9
gen WEEK9 = 1

* Generating Date Variable
capture drop year month day
nsplit W9DATES1, digits(4 2 2) generate(year month day)
capture drop DATEW9b
gen DATEW9b = mdy(month, day, year)
capture drop date1
gen date1 = 19724
format %td date1
format %td DATEW9b
capture drop DATEW9a
gen DATEW9a = DATEW9b - date1
capture drop date1 year month day W9DATES1 W9DATES2 W9DATES3 W9DATES4

* ORDERING
order PAC IP DUPW9 DATEW9a DATEW9b W9TIMES1 WEEK9
sort PAC, stable

* Dropping Duplicates
drop if PAC == .
drop if SUBJECTID == 102669
replace PAC= 100829 if SUBJECTID == 104182
drop if SUBJECTID == 104255
drop if SUBJECTID == 104266
drop if SUBJECTID == 104186 & DUPW9 == 2
replace PAC= 108188 if IP == "50.171.169.69"
replace PAC= 108277 if IP == "50.134.64.50"

* Build Cumulat.

capture egen  W9CTO91920Wk = rowtotal(W9TTOS91920S2 W9TTOS91920S3)
capture egen  W9COD91920Wk = rowtotal(W9TODS91920S2 W9TODS91920S3)
capture egen  W9COD91921Wk = rowtotal(W9TODS91921S2 W9TODS91921S3)
capture egen  W9CTO91921Wk = rowtotal(W9TTOS91921S2 W9TTOS91921S3)
capture egen  W9COD91923Wk = rowtotal(W9TODS91923S2 W9TODS91923S3)
capture egen  W9CTO91923Wk = rowtotal(W9TTOS91923S2 W9TTOS91923S3)
capture egen  W9CTO91926Wk = rowtotal(W9TTOS91926S2 W9TTOS91926S3)
capture egen  W9COD91926Wk = rowtotal(W9TODS91926S2 W9TODS91926S3)
capture egen  W9CTO91928Wk = rowtotal(W9TTOS91928S2 W9TTOS91928S3)
capture egen  W9COD91928Wk = rowtotal(W9TODS91928S2 W9TODS91928S3)
capture egen  W9CTO91929Wk = rowtotal(W9TTOS91929S2 W9TTOS91929S3)
capture egen  W9COD91929Wk = rowtotal(W9TODS91929S2 W9TODS91929S3)
capture egen  W9CTO91930Wk = rowtotal(W9TTOS91930S2 W9TTOS91930S3)
capture egen  W9COD91930Wk = rowtotal(W9TODS91930S2 W9TODS91930S3)
capture egen  W9CTO91931Wk = rowtotal(W9TTOS91931S2 W9TTOS91931S3)
capture egen  W9COD91931Wk = rowtotal(W9TODS91931S2 W9TODS91931S3)
capture egen  W9COD91933Wk = rowtotal(W9TODS91933S2 W9TODS91933S3)
capture egen  W9CTO91933Wk = rowtotal(W9TTOS91933S2 W9TTOS91933S3)
capture egen  W9COD91934Wk = rowtotal(W9TODS91934S2 W9TODS91934S3)
capture egen  W9CTO91934Wk = rowtotal(W9TTOS91934S2 W9TTOS91934S3)
capture egen  W9CTO91935Wk = rowtotal(W9TTOS91935S2 W9TTOS91935S3)
capture egen  W9COD91935Wk = rowtotal(W9TODS91935S2 W9TODS91935S3)
capture egen  W9CTO91936Wk = rowtotal(W9TTOS91936S2 W9TTOS91936S3)
capture egen  W9COD91936Wk = rowtotal(W9TODS91936S2 W9TODS91936S3)
capture egen  W9CTO91939Wk = rowtotal(W9TTOS91939S2 W9TTOS91939S3)
capture egen  W9COD91939Wk = rowtotal(W9TODS91939S2 W9TODS91939S3)
capture egen  W9CTO91941Wk = rowtotal(W9TTOS91941S2 W9TTOS91941S3)
capture egen  W9COD91941Wk = rowtotal(W9TODS91941S2 W9TODS91941S3)
capture egen  W9CTO91942Wk = rowtotal(W9TTOS91942S2 W9TTOS91942S3)
capture egen  W9COD91942Wk = rowtotal(W9TODS91942S2 W9TODS91942S3)
capture egen  W9CTO91945Wk = rowtotal(W9TTOS91945S2 W9TTOS91945S3)
capture egen  W9COD91945Wk = rowtotal(W9TODS91945S2 W9TODS91945S3)
capture egen  W9CTO91946Wk = rowtotal(W9TTOS91946S2 W9TTOS91946S3)
capture egen  W9COD91946Wk = rowtotal(W9TODS91946S2 W9TODS91946S3)
capture egen  W9COD91949Wk = rowtotal(W9TODS91949S2 W9TODS91949S3)
capture egen  W9CTO91949Wk = rowtotal(W9TTOS91949S2 W9TTOS91949S3)
capture egen  W9CTO91951Wk = rowtotal(W9TTOS91951S2 W9TTOS91951S3)
capture egen  W9COD91951Wk = rowtotal(W9TODS91951S2 W9TODS91951S3)
capture egen  W9COD91952Wk = rowtotal(W9TODS91952S2 W9TODS91952S3)
capture egen  W9CTO91952Wk = rowtotal(W9TTOS91952S2 W9TTOS91952S3)
capture egen  W9COD91953Wk = rowtotal(W9TODS91953S2 W9TODS91953S3)
capture egen  W9CTO91953Wk = rowtotal(W9TTOS91953S2 W9TTOS91953S3)
capture egen  W9CTO91955Wk = rowtotal(W9TTOS91955S2 W9TTOS91955S3)
capture egen  W9COD91955Wk = rowtotal(W9TODS91955S2 W9TODS91955S3)
capture egen  W9COD91957Wk = rowtotal(W9TODS91957S2 W9TODS91957S3)
capture egen  W9CTO91957Wk = rowtotal(W9TTOS91957S2 W9TTOS91957S3)
capture egen  W9COD91959Wk = rowtotal(W9TODS91959S2 W9TODS91959S3)
capture egen  W9CTO91959Wk = rowtotal(W9TTOS91959S2 W9TTOS91959S3)
capture egen  W9CTO91960Wk = rowtotal(W9TTOS91960S2 W9TTOS91960S3)
capture egen  W9COD91960Wk = rowtotal(W9TODS91960S2 W9TODS91960S3)
capture egen  W9CTO91961Wk = rowtotal(W9TTOS91961S2 W9TTOS91961S3)
capture egen  W9COD91961Wk = rowtotal(W9TODS91961S2 W9TODS91961S3)
capture egen  W9COD91963Wk = rowtotal(W9TODS91963S2 W9TODS91963S3)
capture egen  W9CTO91963Wk = rowtotal(W9TTOS91963S2 W9TTOS91963S3)
capture egen  W9CTO91964Wk = rowtotal(W9TTOS91964S2 W9TTOS91964S3)
capture egen  W9COD91964Wk = rowtotal(W9TODS91964S2 W9TODS91964S3)
capture egen  W9COD91965Wk = rowtotal(W9TODS91965S2 W9TODS91965S3)
capture egen  W9CTO91965Wk = rowtotal(W9TTOS91965S2 W9TTOS91965S3)
capture egen  W9COD91966Wk = rowtotal(W9TODS91966S2 W9TODS91966S3)
capture egen  W9CTO91966Wk = rowtotal(W9TTOS91966S2 W9TTOS91966S3)
capture egen  W9CTO91967Wk = rowtotal(W9TTOS91967S2 W9TTOS91967S3)
capture egen  W9COD91967Wk = rowtotal(W9TODS91967S2 W9TODS91967S3)
capture egen  W9COD91968Wk = rowtotal(W9TODS91968S2 W9TODS91968S3)
capture egen  W9CTO91968Wk = rowtotal(W9TTOS91968S2 W9TTOS91968S3)
capture egen  W9COD91969Wk = rowtotal(W9TODS91969S2 W9TODS91969S3)
capture egen  W9CTO91969Wk = rowtotal(W9TTOS91969S2 W9TTOS91969S3)
capture egen  W9CTO91970Wk = rowtotal(W9TTOS91970S2 W9TTOS91970S3)
capture egen  W9COD91970Wk = rowtotal(W9TODS91970S2 W9TODS91970S3)
capture egen  W9COD91971Wk = rowtotal(W9TODS91971S2 W9TODS91971S3)
capture egen  W9CTO91971Wk = rowtotal(W9TTOS91971S2 W9TTOS91971S3)
capture egen  W9COD91972Wk = rowtotal(W9TODS91972S2 W9TODS91972S3)
capture egen  W9CTO91972Wk = rowtotal(W9TTOS91972S2 W9TTOS91972S3)
capture egen  W9COD91973Wk = rowtotal(W9TODS91973S2 W9TODS91973S3)
capture egen  W9CTO91973Wk = rowtotal(W9TTOS91973S2 W9TTOS91973S3)
capture egen  W9CTO91974Wk = rowtotal(W9TTOS91974S2 W9TTOS91974S3)
capture egen  W9COD91974Wk = rowtotal(W9TODS91974S2 W9TODS91974S3)
capture egen  W9COD91975Wk = rowtotal(W9TODS91975S2 W9TODS91975S3)
capture egen  W9CTO91975Wk = rowtotal(W9TTOS91975S2 W9TTOS91975S3)
capture egen  W9CTO91976Wk = rowtotal(W9TTOS91976S2 W9TTOS91976S3)
capture egen  W9COD91976Wk = rowtotal(W9TODS91976S2 W9TODS91976S3)
capture egen  W9CTO91977Wk = rowtotal(W9TTOS91977S2 W9TTOS91977S3)
capture egen  W9COD91977Wk = rowtotal(W9TODS91977S2 W9TODS91977S3)
capture egen  W9COD91978Wk = rowtotal(W9TODS91978S2 W9TODS91978S3)
capture egen  W9CTO91978Wk = rowtotal(W9TTOS91978S2 W9TTOS91978S3)
capture egen  W9CTO91980Wk = rowtotal(W9TTOS91980S2 W9TTOS91980S3)
capture egen  W9COD91980Wk = rowtotal(W9TODS91980S2 W9TODS91980S3)
capture egen  W9CTO91981Wk = rowtotal(W9TTOS91981S2 W9TTOS91981S3)
capture egen  W9COD91981Wk = rowtotal(W9TODS91981S2 W9TODS91981S3)
capture egen  W9COD91983Wk = rowtotal(W9TODS91983S2 W9TODS91983S3)
capture egen  W9CTO91983Wk = rowtotal(W9TTOS91983S2 W9TTOS91983S3)
capture egen  W9COD91984Wk = rowtotal(W9TODS91984S2 W9TODS91984S3)
capture egen  W9CTO91984Wk = rowtotal(W9TTOS91984S2 W9TTOS91984S3)
capture egen  W9CTO91985Wk = rowtotal(W9TTOS91985S2 W9TTOS91985S3)
capture egen  W9COD91985Wk = rowtotal(W9TODS91985S2 W9TODS91985S3)
capture egen  W9CTO91987Wk = rowtotal(W9TTOS91987S2 W9TTOS91987S3)
capture egen  W9COD91987Wk = rowtotal(W9TODS91987S2 W9TODS91987S3)
capture egen  W9COD91988Wk = rowtotal(W9TODS91988S2 W9TODS91988S3)
capture egen  W9CTO91988Wk = rowtotal(W9TTOS91988S2 W9TTOS91988S3)
capture egen  W9COD91989Wk = rowtotal(W9TODS91989S2 W9TODS91989S3)
capture egen  W9CTO91989Wk = rowtotal(W9TTOS91989S2 W9TTOS91989S3)
capture egen  W9COD91990Wk = rowtotal(W9TODS91990S2 W9TODS91990S3)
capture egen  W9CTO91990Wk = rowtotal(W9TTOS91990S2 W9TTOS91990S3)
capture egen  W9COD91992Wk = rowtotal(W9TODS91992S2 W9TODS91992S3)
capture egen  W9CTO91992Wk = rowtotal(W9TTOS91992S2 W9TTOS91992S3)
capture egen  W9COD91993Wk = rowtotal(W9TODS91993S2 W9TODS91993S3)
capture egen  W9CTO91993Wk = rowtotal(W9TTOS91993S2 W9TTOS91993S3)
capture egen  W9COD91994Wk = rowtotal(W9TODS91994S2 W9TODS91994S3)
capture egen  W9CTO91994Wk = rowtotal(W9TTOS91994S2 W9TTOS91994S3)
capture egen  W9COD91995Wk = rowtotal(W9TODS91995S2 W9TODS91995S3)
capture egen  W9CTO91995Wk = rowtotal(W9TTOS91995S2 W9TTOS91995S3)
capture egen  W9COD91996Wk = rowtotal(W9TODS91996S2 W9TODS91996S3)
capture egen  W9CTO91996Wk = rowtotal(W9TTOS91996S2 W9TTOS91996S3)
capture egen  W9COD91997Wk = rowtotal(W9TODS91997S2 W9TODS91997S3)
capture egen  W9CTO91997Wk = rowtotal(W9TTOS91997S2 W9TTOS91997S3)
capture egen  W9CTO91998Wk = rowtotal(W9TTOS91998S2 W9TTOS91998S3)
capture egen  W9COD91998Wk = rowtotal(W9TODS91998S2 W9TODS91998S3)
capture egen  W9COD91999Wk = rowtotal(W9TODS91999S2 W9TODS91999S3)
capture egen  W9CTO91999Wk = rowtotal(W9TTOS91999S2 W9TTOS91999S3)
capture egen  W9COD92000Wk = rowtotal(W9TODS92000S2 W9TODS92000S3)
capture egen  W9CTO92000Wk = rowtotal(W9TTOS92000S2 W9TTOS92000S3)
capture egen  W9CTO92001Wk = rowtotal(W9TTOS92001S2 W9TTOS92001S3)
capture egen  W9COD92001Wk = rowtotal(W9TODS92001S2 W9TODS92001S3)
capture egen  W9COD92002Wk = rowtotal(W9TODS92002S2 W9TODS92002S3)
capture egen  W9CTO92002Wk = rowtotal(W9TTOS92002S2 W9TTOS92002S3)
capture egen  W9CTO92003Wk = rowtotal(W9TTOS92003S2 W9TTOS92003S3)
capture egen  W9COD92003Wk = rowtotal(W9TODS92003S2 W9TODS92003S3)
capture egen  W9COD92004Wk = rowtotal(W9TODS92004S2 W9TODS92004S3)
capture egen  W9CTO92004Wk = rowtotal(W9TTOS92004S2 W9TTOS92004S3)
capture egen  W9CTO92005Wk = rowtotal(W9TTOS92005S2 W9TTOS92005S3)
capture egen  W9COD92005Wk = rowtotal(W9TODS92005S2 W9TODS92005S3)
capture egen  W9COD92006Wk = rowtotal(W9TODS92006S2 W9TODS92006S3)
capture egen  W9CTO92006Wk = rowtotal(W9TTOS92006S2 W9TTOS92006S3)
capture egen  W9COD92007Wk = rowtotal(W9TODS92007S2 W9TODS92007S3)
capture egen  W9CTO92007Wk = rowtotal(W9TTOS92007S2 W9TTOS92007S3)
capture egen  W9CTO92008Wk = rowtotal(W9TTOS92008S2 W9TTOS92008S3)
capture egen  W9COD92008Wk = rowtotal(W9TODS92008S2 W9TODS92008S3)
capture egen  W9COD92009Wk = rowtotal(W9TODS92009S2 W9TODS92009S3)
capture egen  W9CTO92009Wk = rowtotal(W9TTOS92009S2 W9TTOS92009S3)
capture egen  W9CTO92010Wk = rowtotal(W9TTOS92010S2 W9TTOS92010S3)
capture egen  W9COD92010Wk = rowtotal(W9TODS92010S2 W9TODS92010S3)
capture egen  W9CTO92011Wk = rowtotal(W9TTOS92011S2 W9TTOS92011S3)
capture egen  W9COD92011Wk = rowtotal(W9TODS92011S2 W9TODS92011S3)
capture egen  W9CTO92012Wk = rowtotal(W9TTOS92012S2 W9TTOS92012S3)
capture egen  W9COD92012Wk = rowtotal(W9TODS92012S2 W9TODS92012S3)
capture egen  W9CTO92013Wk = rowtotal(W9TTOS92013S2 W9TTOS92013S3)
capture egen  W9COD92013Wk = rowtotal(W9TODS92013S2 W9TODS92013S3)
capture egen  W9CTO92014Wk = rowtotal(W9TTOS92014S2 W9TTOS92014S3)
capture egen  W9COD92014Wk = rowtotal(W9TODS92014S2 W9TODS92014S3)
capture egen  W9CTO92015Wk = rowtotal(W9TTOS92015S2 W9TTOS92015S3)
capture egen  W9COD92015Wk = rowtotal(W9TODS92015S2 W9TODS92015S3)
capture egen  W9CTO92016Wk = rowtotal(W9TTOS92016S2 W9TTOS92016S3)
capture egen  W9COD92016Wk = rowtotal(W9TODS92016S2 W9TODS92016S3)
capture egen  W9COD92017Wk = rowtotal(W9TODS92017S2 W9TODS92017S3)
capture egen  W9CTO92017Wk = rowtotal(W9TTOS92017S2 W9TTOS92017S3)
capture egen  W9COD92018Wk = rowtotal(W9TODS92018S2 W9TODS92018S3)
capture egen  W9CTO92018Wk = rowtotal(W9TTOS92018S2 W9TTOS92018S3)
capture egen  W9CTO92019Wk = rowtotal(W9TTOS92019S2 W9TTOS92019S3)
capture egen  W9COD92019Wk = rowtotal(W9TODS92019S2 W9TODS92019S3)
capture egen  W9CTO92020Wk = rowtotal(W9TTOS92020S2 W9TTOS92020S3)
capture egen  W9COD92020Wk = rowtotal(W9TODS92020S2 W9TODS92020S3)
capture egen  W9COD92021Wk = rowtotal(W9TODS92021S2 W9TODS92021S3)
capture egen  W9CTO92021Wk = rowtotal(W9TTOS92021S2 W9TTOS92021S3)
capture egen  W9COD92022Wk = rowtotal(W9TODS92022S2 W9TODS92022S3)
capture egen  W9CTO92022Wk = rowtotal(W9TTOS92022S2 W9TTOS92022S3)
capture egen  W9COD92023Wk = rowtotal(W9TODS92023S2 W9TODS92023S3)
capture egen  W9CTO92023Wk = rowtotal(W9TTOS92023S2 W9TTOS92023S3)
capture egen  W9COD92024Wk = rowtotal(W9TODS92024S2 W9TODS92024S3)
capture egen  W9CTO92024Wk = rowtotal(W9TTOS92024S2 W9TTOS92024S3)
capture egen  W9CTO92025Wk = rowtotal(W9TTOS92025S2 W9TTOS92025S3)
capture egen  W9COD92025Wk = rowtotal(W9TODS92025S2 W9TODS92025S3)
capture egen  W9COD92026Wk = rowtotal(W9TODS92026S2 W9TODS92026S3)
capture egen  W9CTO92026Wk = rowtotal(W9TTOS92026S2 W9TTOS92026S3)
capture egen  W9CTO92027Wk = rowtotal(W9TTOS92027S2 W9TTOS92027S3)
capture egen  W9COD92027Wk = rowtotal(W9TODS92027S2 W9TODS92027S3)
capture egen  W9COD92028Wk = rowtotal(W9TODS92028S2 W9TODS92028S3)
capture egen  W9CTO92028Wk = rowtotal(W9TTOS92028S2 W9TTOS92028S3)
capture egen  W9CTO92029Wk = rowtotal(W9TTOS92029S2 W9TTOS92029S3)
capture egen  W9COD92029Wk = rowtotal(W9TODS92029S2 W9TODS92029S3)
capture egen  W9CTO92030Wk = rowtotal(W9TTOS92030S2 W9TTOS92030S3)
capture egen  W9COD92030Wk = rowtotal(W9TODS92030S2 W9TODS92030S3)
capture egen  W9COD92031Wk = rowtotal(W9TODS92031S2 W9TODS92031S3)
capture egen  W9CTO92031Wk = rowtotal(W9TTOS92031S2 W9TTOS92031S3)
capture egen  W9COD92032Wk = rowtotal(W9TODS92032S2 W9TODS92032S3)
capture egen  W9CTO92032Wk = rowtotal(W9TTOS92032S2 W9TTOS92032S3)
capture egen  W9CTO92033Wk = rowtotal(W9TTOS92033S2 W9TTOS92033S3)
capture egen  W9COD92033Wk = rowtotal(W9TODS92033S2 W9TODS92033S3)
capture egen  W9COD92034Wk = rowtotal(W9TODS92034S2 W9TODS92034S3)
capture egen  W9CTO92034Wk = rowtotal(W9TTOS92034S2 W9TTOS92034S3)
capture egen  W9CTO92035Wk = rowtotal(W9TTOS92035S2 W9TTOS92035S3)
capture egen  W9COD92035Wk = rowtotal(W9TODS92035S2 W9TODS92035S3)
capture egen  W9CTO92036Wk = rowtotal(W9TTOS92036S2 W9TTOS92036S3)
capture egen  W9COD92036Wk = rowtotal(W9TODS92036S2 W9TODS92036S3)
capture egen  W9CTO92037Wk = rowtotal(W9TTOS92037S2 W9TTOS92037S3)
capture egen  W9COD92037Wk = rowtotal(W9TODS92037S2 W9TODS92037S3)
capture egen  W9CTO92038Wk = rowtotal(W9TTOS92038S2 W9TTOS92038S3)
capture egen  W9COD92038Wk = rowtotal(W9TODS92038S2 W9TODS92038S3)
capture egen  W9COD92039Wk = rowtotal(W9TODS92039S2 W9TODS92039S3)
capture egen  W9CTO92039Wk = rowtotal(W9TTOS92039S2 W9TTOS92039S3)
capture egen  W9COD92040Wk = rowtotal(W9TODS92040S2 W9TODS92040S3)
capture egen  W9CTO92040Wk = rowtotal(W9TTOS92040S2 W9TTOS92040S3)
capture egen  W9CTO92041Wk = rowtotal(W9TTOS92041S2 W9TTOS92041S3)
capture egen  W9COD92041Wk = rowtotal(W9TODS92041S2 W9TODS92041S3)
capture egen  W9COD92042Wk = rowtotal(W9TODS92042S2 W9TODS92042S3)
capture egen  W9CTO92042Wk = rowtotal(W9TTOS92042S2 W9TTOS92042S3)
capture egen  W9COD92043Wk = rowtotal(W9TODS92043S2 W9TODS92043S3)
capture egen  W9CTO92043Wk = rowtotal(W9TTOS92043S2 W9TTOS92043S3)
capture egen  W9COD92044Wk = rowtotal(W9TODS92044S2 W9TODS92044S3)
capture egen  W9CTO92044Wk = rowtotal(W9TTOS92044S2 W9TTOS92044S3)
capture egen  W9COD92045Wk = rowtotal(W9TODS92045S2 W9TODS92045S3)
capture egen  W9CTO92045Wk = rowtotal(W9TTOS92045S2 W9TTOS92045S3)
capture egen  W9CTO92046Wk = rowtotal(W9TTOS92046S2 W9TTOS92046S3)
capture egen  W9COD92046Wk = rowtotal(W9TODS92046S2 W9TODS92046S3)
capture egen  W9COD92047Wk = rowtotal(W9TODS92047S2 W9TODS92047S3)
capture egen  W9CTO92047Wk = rowtotal(W9TTOS92047S2 W9TTOS92047S3)
capture egen  W9CTO92048Wk = rowtotal(W9TTOS92048S2 W9TTOS92048S3)
capture egen  W9COD92048Wk = rowtotal(W9TODS92048S2 W9TODS92048S3)
capture egen  W9COD92049Wk = rowtotal(W9TODS92049S2 W9TODS92049S3)
capture egen  W9CTO92049Wk = rowtotal(W9TTOS92049S2 W9TTOS92049S3)
capture egen  W9COD92050Wk = rowtotal(W9TODS92050S2 W9TODS92050S3)
capture egen  W9CTO92050Wk = rowtotal(W9TTOS92050S2 W9TTOS92050S3)
capture egen  W9CTO92051Wk = rowtotal(W9TTOS92051S2 W9TTOS92051S3)
capture egen  W9COD92051Wk = rowtotal(W9TODS92051S2 W9TODS92051S3)
capture egen  W9CTO92052Wk = rowtotal(W9TTOS92052S2 W9TTOS92052S3)
capture egen  W9COD92052Wk = rowtotal(W9TODS92052S2 W9TODS92052S3)
capture egen  W9COD92053Wk = rowtotal(W9TODS92053S2 W9TODS92053S3)
capture egen  W9CTO92053Wk = rowtotal(W9TTOS92053S2 W9TTOS92053S3)
capture egen  W9COD92054Wk = rowtotal(W9TODS92054S2 W9TODS92054S3)
capture egen  W9CTO92054Wk = rowtotal(W9TTOS92054S2 W9TTOS92054S3)
capture egen  W9COD92055Wk = rowtotal(W9TODS92055S2 W9TODS92055S3)
capture egen  W9CTO92055Wk = rowtotal(W9TTOS92055S2 W9TTOS92055S3)
capture egen  W9COD92056Wk = rowtotal(W9TODS92056S2 W9TODS92056S3)
capture egen  W9CTO92056Wk = rowtotal(W9TTOS92056S2 W9TTOS92056S3)
capture egen  W9CTO92057Wk = rowtotal(W9TTOS92057S2 W9TTOS92057S3)
capture egen  W9COD92057Wk = rowtotal(W9TODS92057S2 W9TODS92057S3)
capture egen  W9CTO92058Wk = rowtotal(W9TTOS92058S2 W9TTOS92058S3)
capture egen  W9COD92058Wk = rowtotal(W9TODS92058S2 W9TODS92058S3)
capture egen  W9COD92059Wk = rowtotal(W9TODS92059S2 W9TODS92059S3)
capture egen  W9CTO92059Wk = rowtotal(W9TTOS92059S2 W9TTOS92059S3)
capture egen  W9COD92060Wk = rowtotal(W9TODS92060S2 W9TODS92060S3)
capture egen  W9CTO92060Wk = rowtotal(W9TTOS92060S2 W9TTOS92060S3)
capture egen  W9CTO92061Wk = rowtotal(W9TTOS92061S2 W9TTOS92061S3)
capture egen  W9COD92061Wk = rowtotal(W9TODS92061S2 W9TODS92061S3)
capture egen  W9COD92063Wk = rowtotal(W9TODS92063S2 W9TODS92063S3)
capture egen  W9CTO92063Wk = rowtotal(W9TTOS92063S2 W9TTOS92063S3)
capture egen  W9COD92065Wk = rowtotal(W9TODS92065S2 W9TODS92065S3)
capture egen  W9CTO92065Wk = rowtotal(W9TTOS92065S2 W9TTOS92065S3)
capture egen  W9CTO92066Wk = rowtotal(W9TTOS92066S2 W9TTOS92066S3)
capture egen  W9COD92066Wk = rowtotal(W9TODS92066S2 W9TODS92066S3)
capture egen  W9CTO92067Wk = rowtotal(W9TTOS92067S2 W9TTOS92067S3)
capture egen  W9COD92067Wk = rowtotal(W9TODS92067S2 W9TODS92067S3)
capture egen  W9COD92068Wk = rowtotal(W9TODS92068S2 W9TODS92068S3)
capture egen  W9CTO92068Wk = rowtotal(W9TTOS92068S2 W9TTOS92068S3)
capture egen  W9CTO92069Wk = rowtotal(W9TTOS92069S2 W9TTOS92069S3)
capture egen  W9COD92069Wk = rowtotal(W9TODS92069S2 W9TODS92069S3)
capture egen  W9CTO92071Wk = rowtotal(W9TTOS92071S2 W9TTOS92071S3)
capture egen  W9COD92071Wk = rowtotal(W9TODS92071S2 W9TODS92071S3)
capture egen  W9COD92072Wk = rowtotal(W9TODS92072S2 W9TODS92072S3)
capture egen  W9CTO92072Wk = rowtotal(W9TTOS92072S2 W9TTOS92072S3)
capture egen  W9CTO92073Wk = rowtotal(W9TTOS92073S2 W9TTOS92073S3)
capture egen  W9COD92073Wk = rowtotal(W9TODS92073S2 W9TODS92073S3)
capture egen  W9COD92074Wk = rowtotal(W9TODS92074S2 W9TODS92074S3)
capture egen  W9CTO92074Wk = rowtotal(W9TTOS92074S2 W9TTOS92074S3)
capture egen  W9COD92075Wk = rowtotal(W9TODS92075S2 W9TODS92075S3)
capture egen  W9CTO92075Wk = rowtotal(W9TTOS92075S2 W9TTOS92075S3)
capture egen  W9COD92076Wk = rowtotal(W9TODS92076S2 W9TODS92076S3)
capture egen  W9CTO92076Wk = rowtotal(W9TTOS92076S2 W9TTOS92076S3)
capture egen  W9COD92077Wk = rowtotal(W9TODS92077S2 W9TODS92077S3)
capture egen  W9CTO92077Wk = rowtotal(W9TTOS92077S2 W9TTOS92077S3)
capture egen  W9CTO92085Wk = rowtotal(W9TTOS92085S2 W9TTOS92085S3)
capture egen  W9COD92085Wk = rowtotal(W9TODS92085S2 W9TODS92085S3)
capture egen  W9CTO92087Wk = rowtotal(W9TTOS92087S2 W9TTOS92087S3)
capture egen  W9COD92087Wk = rowtotal(W9TODS92087S2 W9TODS92087S3)
capture egen  W9CTO92088Wk = rowtotal(W9TTOS92088S2 W9TTOS92088S3)
capture egen  W9COD92088Wk = rowtotal(W9TODS92088S2 W9TODS92088S3)
capture egen  W9COD92089Wk = rowtotal(W9TODS92089S2 W9TODS92089S3)
capture egen  W9CTO92089Wk = rowtotal(W9TTOS92089S2 W9TTOS92089S3)
capture egen  W9CTO92090Wk = rowtotal(W9TTOS92090S2 W9TTOS92090S3)
capture egen  W9COD92090Wk = rowtotal(W9TODS92090S2 W9TODS92090S3)
capture egen  W9CTO92091Wk = rowtotal(W9TTOS92091S2 W9TTOS92091S3)
capture egen  W9COD92091Wk = rowtotal(W9TODS92091S2 W9TODS92091S3)
capture egen  W9CTO92092Wk = rowtotal(W9TTOS92092S2 W9TTOS92092S3)
capture egen  W9COD92092Wk = rowtotal(W9TODS92092S2 W9TODS92092S3)
capture egen  W9COD92094Wk = rowtotal(W9TODS92094S2 W9TODS92094S3)
capture egen  W9CTO92094Wk = rowtotal(W9TTOS92094S2 W9TTOS92094S3)
capture egen  W9COD92097Wk = rowtotal(W9TODS92097S2 W9TODS92097S3)
capture egen  W9CTO92097Wk = rowtotal(W9TTOS92097S2 W9TTOS92097S3)
capture egen  W9CTO92098Wk = rowtotal(W9TTOS92098S2 W9TTOS92098S3)
capture egen  W9COD92098Wk = rowtotal(W9TODS92098S2 W9TODS92098S3)
capture egen  W9COD92099Wk = rowtotal(W9TODS92099S2 W9TODS92099S3)
capture egen  W9CTO92099Wk = rowtotal(W9TTOS92099S2 W9TTOS92099S3)
capture egen  W9CTO92101Wk = rowtotal(W9TTOS92101S2 W9TTOS92101S3)
capture egen  W9COD92101Wk = rowtotal(W9TODS92101S2 W9TODS92101S3)
capture egen  W9COD92103Wk = rowtotal(W9TODS92103S2 W9TODS92103S3)
capture egen  W9CTO92103Wk = rowtotal(W9TTOS92103S2 W9TTOS92103S3)
capture egen  W9CTO92104Wk = rowtotal(W9TTOS92104S2 W9TTOS92104S3)
capture egen  W9COD92104Wk = rowtotal(W9TODS92104S2 W9TODS92104S3)
capture egen  W9COD92107Wk = rowtotal(W9TODS92107S2 W9TODS92107S3)
capture egen  W9CTO92107Wk = rowtotal(W9TTOS92107S2 W9TTOS92107S3)
capture egen  W9CTO92108Wk = rowtotal(W9TTOS92108S2 W9TTOS92108S3)
capture egen  W9COD92108Wk = rowtotal(W9TODS92108S2 W9TODS92108S3)
capture egen  W9CTO92109Wk = rowtotal(W9TTOS92109S2 W9TTOS92109S3)
capture egen  W9COD92109Wk = rowtotal(W9TODS92109S2 W9TODS92109S3)
capture egen  W9COD92110Wk = rowtotal(W9TODS92110S2 W9TODS92110S3)
capture egen  W9CTO92110Wk = rowtotal(W9TTOS92110S2 W9TTOS92110S3)
capture egen  W9CTO92112Wk = rowtotal(W9TTOS92112S2 W9TTOS92112S3)
capture egen  W9COD92112Wk = rowtotal(W9TODS92112S2 W9TODS92112S3)
capture egen  W9COD92114Wk = rowtotal(W9TODS92114S2 W9TODS92114S3)
capture egen  W9CTO92114Wk = rowtotal(W9TTOS92114S2 W9TTOS92114S3)
capture egen  W9CTO92115Wk = rowtotal(W9TTOS92115S2 W9TTOS92115S3)
capture egen  W9COD92115Wk = rowtotal(W9TODS92115S2 W9TODS92115S3)
capture egen  W9CTO92116Wk = rowtotal(W9TTOS92116S2 W9TTOS92116S3)
capture egen  W9COD92116Wk = rowtotal(W9TODS92116S2 W9TODS92116S3)
capture egen  W9COD92117Wk = rowtotal(W9TODS92117S2 W9TODS92117S3)
capture egen  W9CTO92117Wk = rowtotal(W9TTOS92117S2 W9TTOS92117S3)
capture egen  W9CTO92120Wk = rowtotal(W9TTOS92120S2 W9TTOS92120S3)
capture egen  W9COD92120Wk = rowtotal(W9TODS92120S2 W9TODS92120S3)
capture egen  W9CTO92121Wk = rowtotal(W9TTOS92121S2 W9TTOS92121S3)
capture egen  W9COD92121Wk = rowtotal(W9TODS92121S2 W9TODS92121S3)
capture egen  W9CTO92125Wk = rowtotal(W9TTOS92125S2 W9TTOS92125S3)
capture egen  W9COD92125Wk = rowtotal(W9TODS92125S2 W9TODS92125S3)
capture egen  W9COD92126Wk = rowtotal(W9TODS92126S2 W9TODS92126S3)
capture egen  W9CTO92126Wk = rowtotal(W9TTOS92126S2 W9TTOS92126S3)
capture egen  W9COD92127Wk = rowtotal(W9TODS92127S2 W9TODS92127S3)
capture egen  W9CTO92127Wk = rowtotal(W9TTOS92127S2 W9TTOS92127S3)
capture egen  W9CTO92128Wk = rowtotal(W9TTOS92128S2 W9TTOS92128S3)
capture egen  W9COD92128Wk = rowtotal(W9TODS92128S2 W9TODS92128S3)
capture egen  W9COD92130Wk = rowtotal(W9TODS92130S2 W9TODS92130S3)
capture egen  W9CTO92130Wk = rowtotal(W9TTOS92130S2 W9TTOS92130S3)
capture egen  W9CTO92132Wk = rowtotal(W9TTOS92132S2 W9TTOS92132S3)
capture egen  W9COD92132Wk = rowtotal(W9TODS92132S2 W9TODS92132S3)
capture egen  W9COD92134Wk = rowtotal(W9TODS92134S2 W9TODS92134S3)
capture egen  W9CTO92134Wk = rowtotal(W9TTOS92134S2 W9TTOS92134S3)
capture egen  W9CTO92136Wk = rowtotal(W9TTOS92136S2 W9TTOS92136S3)
capture egen  W9COD92136Wk = rowtotal(W9TODS92136S2 W9TODS92136S3)
capture egen  W9COD92138Wk = rowtotal(W9TODS92138S2 W9TODS92138S3)
capture egen  W9CTO92138Wk = rowtotal(W9TTOS92138S2 W9TTOS92138S3)
capture egen  W9COD92140Wk = rowtotal(W9TODS92140S2 W9TODS92140S3)
capture egen  W9CTO92140Wk = rowtotal(W9TTOS92140S2 W9TTOS92140S3)
capture egen  W9CTO92141Wk = rowtotal(W9TTOS92141S2 W9TTOS92141S3)
capture egen  W9COD92141Wk = rowtotal(W9TODS92141S2 W9TODS92141S3)
capture egen  W9CTO92143Wk = rowtotal(W9TTOS92143S2 W9TTOS92143S3)
capture egen  W9COD92143Wk = rowtotal(W9TODS92143S2 W9TODS92143S3)
capture egen  W9CTO92147Wk = rowtotal(W9TTOS92147S2 W9TTOS92147S3)
capture egen  W9COD92147Wk = rowtotal(W9TODS92147S2 W9TODS92147S3)
capture egen  W9COD92148Wk = rowtotal(W9TODS92148S2 W9TODS92148S3)
capture egen  W9CTO92148Wk = rowtotal(W9TTOS92148S2 W9TTOS92148S3)
capture egen  W9COD92149Wk = rowtotal(W9TODS92149S2 W9TODS92149S3)
capture egen  W9CTO92149Wk = rowtotal(W9TTOS92149S2 W9TTOS92149S3)
capture egen  W9COD92152Wk = rowtotal(W9TODS92152S2 W9TODS92152S3)
capture egen  W9CTO92152Wk = rowtotal(W9TTOS92152S2 W9TTOS92152S3)
capture egen  W9CTO92154Wk = rowtotal(W9TTOS92154S2 W9TTOS92154S3)
capture egen  W9COD92154Wk = rowtotal(W9TODS92154S2 W9TODS92154S3)
capture egen  W9COD92155Wk = rowtotal(W9TODS92155S2 W9TODS92155S3)
capture egen  W9CTO92155Wk = rowtotal(W9TTOS92155S2 W9TTOS92155S3)
capture egen  W9CTO92156Wk = rowtotal(W9TTOS92156S2 W9TTOS92156S3)
capture egen  W9COD92156Wk = rowtotal(W9TODS92156S2 W9TODS92156S3)
capture egen  W9CTO92158Wk = rowtotal(W9TTOS92158S2 W9TTOS92158S3)
capture egen  W9COD92158Wk = rowtotal(W9TODS92158S2 W9TODS92158S3)
capture egen  W9COD92159Wk = rowtotal(W9TODS92159S2 W9TODS92159S3)
capture egen  W9CTO92159Wk = rowtotal(W9TTOS92159S2 W9TTOS92159S3)
capture egen  W9COD92160Wk = rowtotal(W9TODS92160S2 W9TODS92160S3)
capture egen  W9CTO92160Wk = rowtotal(W9TTOS92160S2 W9TTOS92160S3)
capture egen  W9COD92162Wk = rowtotal(W9TODS92162S2 W9TODS92162S3)
capture egen  W9CTO92162Wk = rowtotal(W9TTOS92162S2 W9TTOS92162S3)
capture egen  W9COD92164Wk = rowtotal(W9TODS92164S2 W9TODS92164S3)
capture egen  W9CTO92164Wk = rowtotal(W9TTOS92164S2 W9TTOS92164S3)
capture egen  W9COD92165Wk = rowtotal(W9TODS92165S2 W9TODS92165S3)
capture egen  W9CTO92165Wk = rowtotal(W9TTOS92165S2 W9TTOS92165S3)
capture egen  W9CTO92166Wk = rowtotal(W9TTOS92166S2 W9TTOS92166S3)
capture egen  W9COD92166Wk = rowtotal(W9TODS92166S2 W9TODS92166S3)
capture egen  W9COD92167Wk = rowtotal(W9TODS92167S2 W9TODS92167S3)
capture egen  W9CTO92167Wk = rowtotal(W9TTOS92167S2 W9TTOS92167S3)
capture egen  W9COD92168Wk = rowtotal(W9TODS92168S2 W9TODS92168S3)
capture egen  W9CTO92168Wk = rowtotal(W9TTOS92168S2 W9TTOS92168S3)
capture egen  W9CTO92169Wk = rowtotal(W9TTOS92169S2 W9TTOS92169S3)
capture egen  W9COD92169Wk = rowtotal(W9TODS92169S2 W9TODS92169S3)
capture egen  W9COD92170Wk = rowtotal(W9TODS92170S2 W9TODS92170S3)
capture egen  W9CTO92170Wk = rowtotal(W9TTOS92170S2 W9TTOS92170S3)
capture egen  W9CTO92171Wk = rowtotal(W9TTOS92171S2 W9TTOS92171S3)
capture egen  W9COD92171Wk = rowtotal(W9TODS92171S2 W9TODS92171S3)
capture egen  W9CTO92172Wk = rowtotal(W9TTOS92172S2 W9TTOS92172S3)
capture egen  W9COD92172Wk = rowtotal(W9TODS92172S2 W9TODS92172S3)
capture egen  W9CTO92173Wk = rowtotal(W9TTOS92173S2 W9TTOS92173S3)
capture egen  W9COD92173Wk = rowtotal(W9TODS92173S2 W9TODS92173S3)
capture egen  W9COD92174Wk = rowtotal(W9TODS92174S2 W9TODS92174S3)
capture egen  W9CTO92174Wk = rowtotal(W9TTOS92174S2 W9TTOS92174S3)
capture egen  W9COD92175Wk = rowtotal(W9TODS92175S2 W9TODS92175S3)
capture egen  W9CTO92175Wk = rowtotal(W9TTOS92175S2 W9TTOS92175S3)
capture egen  W9COD92176Wk = rowtotal(W9TODS92176S2 W9TODS92176S3)
capture egen  W9CTO92176Wk = rowtotal(W9TTOS92176S2 W9TTOS92176S3)
capture egen  W9CTO92177Wk = rowtotal(W9TTOS92177S2 W9TTOS92177S3)
capture egen  W9COD92177Wk = rowtotal(W9TODS92177S2 W9TODS92177S3)
capture egen  W9COD92179Wk = rowtotal(W9TODS92179S2 W9TODS92179S3)
capture egen  W9CTO92179Wk = rowtotal(W9TTOS92179S2 W9TTOS92179S3)
capture egen  W9COD92181Wk = rowtotal(W9TODS92181S2 W9TODS92181S3)
capture egen  W9CTO92181Wk = rowtotal(W9TTOS92181S2 W9TTOS92181S3)
capture egen  W9CTO92182Wk = rowtotal(W9TTOS92182S2 W9TTOS92182S3)
capture egen  W9COD92182Wk = rowtotal(W9TODS92182S2 W9TODS92182S3)
capture egen  W9CTO92184Wk = rowtotal(W9TTOS92184S2 W9TTOS92184S3)
capture egen  W9COD92184Wk = rowtotal(W9TODS92184S2 W9TODS92184S3)
capture egen  W9COD92185Wk = rowtotal(W9TODS92185S2 W9TODS92185S3)
capture egen  W9CTO92185Wk = rowtotal(W9TTOS92185S2 W9TTOS92185S3)
capture egen  W9CTO92187Wk = rowtotal(W9TTOS92187S2 W9TTOS92187S3)
capture egen  W9COD92187Wk = rowtotal(W9TODS92187S2 W9TODS92187S3)
capture egen  W9CTO92188Wk = rowtotal(W9TTOS92188S2 W9TTOS92188S3)
capture egen  W9COD92188Wk = rowtotal(W9TODS92188S2 W9TODS92188S3)
capture egen  W9CTO92189Wk = rowtotal(W9TTOS92189S2 W9TTOS92189S3)
capture egen  W9COD92189Wk = rowtotal(W9TODS92189S2 W9TODS92189S3)
capture egen  W9CTO92190Wk = rowtotal(W9TTOS92190S2 W9TTOS92190S3)
capture egen  W9COD92190Wk = rowtotal(W9TODS92190S2 W9TODS92190S3)
capture egen  W9COD92191Wk = rowtotal(W9TODS92191S2 W9TODS92191S3)
capture egen  W9CTO92191Wk = rowtotal(W9TTOS92191S2 W9TTOS92191S3)
capture egen  W9COD92197Wk = rowtotal(W9TODS92197S2 W9TODS92197S3)
capture egen  W9CTO92197Wk = rowtotal(W9TTOS92197S2 W9TTOS92197S3)
capture egen  W9COD92199Wk = rowtotal(W9TODS92199S2 W9TODS92199S3)
capture egen  W9CTO92199Wk = rowtotal(W9TTOS92199S2 W9TTOS92199S3)
capture egen  W9COD92200Wk = rowtotal(W9TODS92200S2 W9TODS92200S3)
capture egen  W9CTO92200Wk = rowtotal(W9TTOS92200S2 W9TTOS92200S3)
capture egen  W9CTO92201Wk = rowtotal(W9TTOS92201S2 W9TTOS92201S3)
capture egen  W9COD92201Wk = rowtotal(W9TODS92201S2 W9TODS92201S3)
capture egen  W9CTO92202Wk = rowtotal(W9TTOS92202S2 W9TTOS92202S3)
capture egen  W9COD92202Wk = rowtotal(W9TODS92202S2 W9TODS92202S3)
capture egen  W9CTO92203Wk = rowtotal(W9TTOS92203S2 W9TTOS92203S3)
capture egen  W9COD92203Wk = rowtotal(W9TODS92203S2 W9TODS92203S3)
capture egen  W9CTO92204Wk = rowtotal(W9TTOS92204S2 W9TTOS92204S3)
capture egen  W9COD92204Wk = rowtotal(W9TODS92204S2 W9TODS92204S3)
capture egen  W9CTO92205Wk = rowtotal(W9TTOS92205S2 W9TTOS92205S3)
capture egen  W9COD92205Wk = rowtotal(W9TODS92205S2 W9TODS92205S3)
capture egen  W9COD92207Wk = rowtotal(W9TODS92207S2 W9TODS92207S3)
capture egen  W9CTO92207Wk = rowtotal(W9TTOS92207S2 W9TTOS92207S3)
capture egen  W9COD92209Wk = rowtotal(W9TODS92209S2 W9TODS92209S3)
capture egen  W9CTO92209Wk = rowtotal(W9TTOS92209S2 W9TTOS92209S3)
capture egen  W9CTO92210Wk = rowtotal(W9TTOS92210S2 W9TTOS92210S3)
capture egen  W9COD92210Wk = rowtotal(W9TODS92210S2 W9TODS92210S3)
capture egen  W9COD92211Wk = rowtotal(W9TODS92211S2 W9TODS92211S3)
capture egen  W9CTO92211Wk = rowtotal(W9TTOS92211S2 W9TTOS92211S3)
capture egen  W9COD92212Wk = rowtotal(W9TODS92212S2 W9TODS92212S3)
capture egen  W9CTO92212Wk = rowtotal(W9TTOS92212S2 W9TTOS92212S3)
capture egen  W9COD92213Wk = rowtotal(W9TODS92213S2 W9TODS92213S3)
capture egen  W9CTO92213Wk = rowtotal(W9TTOS92213S2 W9TTOS92213S3)
capture egen  W9COD92214Wk = rowtotal(W9TODS92214S2 W9TODS92214S3)
capture egen  W9CTO92214Wk = rowtotal(W9TTOS92214S2 W9TTOS92214S3)
capture egen  W9COD92216Wk = rowtotal(W9TODS92216S2 W9TODS92216S3)
capture egen  W9CTO92216Wk = rowtotal(W9TTOS92216S2 W9TTOS92216S3)
capture egen  W9COD92217Wk = rowtotal(W9TODS92217S2 W9TODS92217S3)
capture egen  W9CTO92217Wk = rowtotal(W9TTOS92217S2 W9TTOS92217S3)
capture egen  W9CTO92220Wk = rowtotal(W9TTOS92220S2 W9TTOS92220S3)
capture egen  W9COD92220Wk = rowtotal(W9TODS92220S2 W9TODS92220S3)
capture egen  W9CTO92221Wk = rowtotal(W9TTOS92221S2 W9TTOS92221S3)
capture egen  W9COD92221Wk = rowtotal(W9TODS92221S2 W9TODS92221S3)
capture egen  W9CTO92224Wk = rowtotal(W9TTOS92224S2 W9TTOS92224S3)
capture egen  W9COD92224Wk = rowtotal(W9TODS92224S2 W9TODS92224S3)
capture egen  W9COD92225Wk = rowtotal(W9TODS92225S2 W9TODS92225S3)
capture egen  W9CTO92225Wk = rowtotal(W9TTOS92225S2 W9TTOS92225S3)
capture egen  W9COD92226Wk = rowtotal(W9TODS92226S2 W9TODS92226S3)
capture egen  W9CTO92226Wk = rowtotal(W9TTOS92226S2 W9TTOS92226S3)
capture egen  W9COD92228Wk = rowtotal(W9TODS92228S2 W9TODS92228S3)
capture egen  W9CTO92228Wk = rowtotal(W9TTOS92228S2 W9TTOS92228S3)
capture egen  W9CTO92230Wk = rowtotal(W9TTOS92230S2 W9TTOS92230S3)
capture egen  W9COD92230Wk = rowtotal(W9TODS92230S2 W9TODS92230S3)
capture egen  W9COD92384Wk = rowtotal(W9TODS92384S2 W9TODS92384S3)
capture egen  W9CTO92384Wk = rowtotal(W9TTOS92384S2 W9TTOS92384S3)
capture egen  W9CTO92385Wk = rowtotal(W9TTOS92385S2 W9TTOS92385S3)
capture egen  W9COD92385Wk = rowtotal(W9TODS92385S2 W9TODS92385S3)
capture egen  W9COD92386Wk = rowtotal(W9TODS92386S2 W9TODS92386S3)
capture egen  W9CTO92386Wk = rowtotal(W9TTOS92386S2 W9TTOS92386S3)
capture egen  W9COD92387Wk = rowtotal(W9TODS92387S2 W9TODS92387S3)
capture egen  W9CTO92387Wk = rowtotal(W9TTOS92387S2 W9TTOS92387S3)
capture egen  W9COD92388Wk = rowtotal(W9TODS92388S2 W9TODS92388S3)
capture egen  W9CTO92388Wk = rowtotal(W9TTOS92388S2 W9TTOS92388S3)
capture egen  W9COD92389Wk = rowtotal(W9TODS92389S2 W9TODS92389S3)
capture egen  W9CTO92389Wk = rowtotal(W9TTOS92389S2 W9TTOS92389S3)
capture egen  W9COD92390Wk = rowtotal(W9TODS92390S2 W9TODS92390S3)
capture egen  W9CTO92390Wk = rowtotal(W9TTOS92390S2 W9TTOS92390S3)
capture egen  W9COD92391Wk = rowtotal(W9TODS92391S2 W9TODS92391S3)
capture egen  W9CTO92391Wk = rowtotal(W9TTOS92391S2 W9TTOS92391S3)
capture egen  W9CTO92392Wk = rowtotal(W9TTOS92392S2 W9TTOS92392S3)
capture egen  W9COD92392Wk = rowtotal(W9TODS92392S2 W9TODS92392S3)
capture egen  W9CTO92393Wk = rowtotal(W9TTOS92393S2 W9TTOS92393S3)
capture egen  W9COD92393Wk = rowtotal(W9TODS92393S2 W9TODS92393S3)
capture egen  W9CTO92394Wk = rowtotal(W9TTOS92394S2 W9TTOS92394S3)
capture egen  W9COD92394Wk = rowtotal(W9TODS92394S2 W9TODS92394S3)
capture egen  W9CTO92395Wk = rowtotal(W9TTOS92395S2 W9TTOS92395S3)
capture egen  W9COD92395Wk = rowtotal(W9TODS92395S2 W9TODS92395S3)
capture egen  W9CTO92396Wk = rowtotal(W9TTOS92396S2 W9TTOS92396S3)
capture egen  W9COD92396Wk = rowtotal(W9TODS92396S2 W9TODS92396S3)
capture egen  W9CTO92397Wk = rowtotal(W9TTOS92397S2 W9TTOS92397S3)
capture egen  W9COD92397Wk = rowtotal(W9TODS92397S2 W9TODS92397S3)
capture egen  W9CTO92398Wk = rowtotal(W9TTOS92398S2 W9TTOS92398S3)
capture egen  W9COD92398Wk = rowtotal(W9TODS92398S2 W9TODS92398S3)
capture egen  W9COD92399Wk = rowtotal(W9TODS92399S2 W9TODS92399S3)
capture egen  W9CTO92399Wk = rowtotal(W9TTOS92399S2 W9TTOS92399S3)
capture egen  W9COD92400Wk = rowtotal(W9TODS92400S2 W9TODS92400S3)
capture egen  W9CTO92400Wk = rowtotal(W9TTOS92400S2 W9TTOS92400S3)
capture egen  W9CTO92401Wk = rowtotal(W9TTOS92401S2 W9TTOS92401S3)
capture egen  W9COD92401Wk = rowtotal(W9TODS92401S2 W9TODS92401S3)
capture egen  W9CTO92402Wk = rowtotal(W9TTOS92402S2 W9TTOS92402S3)
capture egen  W9COD92402Wk = rowtotal(W9TODS92402S2 W9TODS92402S3)
capture egen  W9CTO92403Wk = rowtotal(W9TTOS92403S2 W9TTOS92403S3)
capture egen  W9COD92403Wk = rowtotal(W9TODS92403S2 W9TODS92403S3)
capture egen  W9COD92404Wk = rowtotal(W9TODS92404S2 W9TODS92404S3)
capture egen  W9CTO92404Wk = rowtotal(W9TTOS92404S2 W9TTOS92404S3)
capture egen  W9CTO92405Wk = rowtotal(W9TTOS92405S2 W9TTOS92405S3)
capture egen  W9COD92405Wk = rowtotal(W9TODS92405S2 W9TODS92405S3)
capture egen  W9COD92406Wk = rowtotal(W9TODS92406S2 W9TODS92406S3)
capture egen  W9CTO92406Wk = rowtotal(W9TTOS92406S2 W9TTOS92406S3)
capture egen  W9CTO92407Wk = rowtotal(W9TTOS92407S2 W9TTOS92407S3)
capture egen  W9COD92407Wk = rowtotal(W9TODS92407S2 W9TODS92407S3)
capture egen  W9COD92408Wk = rowtotal(W9TODS92408S2 W9TODS92408S3)
capture egen  W9CTO92408Wk = rowtotal(W9TTOS92408S2 W9TTOS92408S3)
capture egen  W9COD92409Wk = rowtotal(W9TODS92409S2 W9TODS92409S3)
capture egen  W9CTO92409Wk = rowtotal(W9TTOS92409S2 W9TTOS92409S3)
capture egen  W9COD92410Wk = rowtotal(W9TODS92410S2 W9TODS92410S3)
capture egen  W9CTO92410Wk = rowtotal(W9TTOS92410S2 W9TTOS92410S3)
capture egen  W9COD92411Wk = rowtotal(W9TODS92411S2 W9TODS92411S3)
capture egen  W9CTO92411Wk = rowtotal(W9TTOS92411S2 W9TTOS92411S3)

*Saving
rename SUBJECTID SUBJECTIDW9
rename IP IPW9
sort PAC
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W9/WorkingData/W9S1234_Working.dta", replace

**************************************************************************************************
**************************************************************************************************
*										W	E	E	K	 10
**************************************************************************************************
**************************************************************************************************

set more off
clear all
* Set Working Directory (comment it with a "*", don't delet it)
cd "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W10/WorkingData"

**************************************************************************************************
*											W10S1
**************************************************************************************************


*Open W10S1 and save a Working Copy (We wanna keep a copy of the original data)
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W10/WorkingData/W10S1.dta", replace
destring, replace
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W10/WorkingData/W10S1_Working.dta", replace

* From Excel to STATA everything enters as lower case. Lets reverse it to its original: Upper Case
rename *, upper

* Now lets keep what we need
keep ///
DATE	FOD_A_3843	GRP_20985	GRP_20986	Q_6052_DUR_32914	Q_6052_SEQ_32914	Q_6052_VAL_32914	 ///
SUBJECT_ID	TIME	TIME_BEGIN_FLOWPHASE	TIME_BEGIN_SUBSTAGE	TIME_END_FLOWPHASE	TOD_A_3843	 ///
TOTAL_FLOW_ACCESSED	TTO_A_3843	WORDS_A_3843

*rename SUBJECT_ID to PAC
rename Q_6052_VAL_32914 PAC

* Adding Prefixes and Suffixes
foreach x of var * {
rename `x' W10`x'
} 

foreach x of var * {
rename `x' `x'S1
}

* Renaming SUBJECT_ID (no pre nor su fixes, we need that to merge on it)
rename W10SUBJECT_IDS1 SUBJECTID

* Renaming SUBJECT_ID (no pre nor su fixes, we need that to merge on it)
rename W10PACS1 PAC 

* Eliminating ALL underscores
foreach v of var *_* { 
	local V : subinstr local v "_" "", all
	capture rename `v' `V' 
	if _rc di as txt "problem with `v'"
} 

*saving
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W10/WorkingData/W10S1_Working.dta", replace


**************************************************************************************************
*											W10S2
**************************************************************************************************

*Open W10S2 and save a Working Copy (We wanna keep a copy of the original data)
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W10/WorkingData/W10S2.dta", replace
destring, replace
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W10/WorkingData/W10S2_Working.dta", replace

* From Excel to STATA everything enters as lower case. Lets reverse it to its original: Upper Case
rename *, upper

* Now lets keep what we need
keep ///
DATE	FOD_A_3842	FOD_A_3848	GRP_21117	GRP_21118	GRP_21119	GRP_21120	Q_5996_DUR_32420	 ///
Q_5996_DUR_32427	Q_5996_DUR_32433	Q_5996_DUR_32435	Q_5996_DUR_32938	Q_5996_DUR_32944	 ///
Q_5996_SEQ_32420	Q_5996_SEQ_32427	Q_5996_SEQ_32433	Q_5996_SEQ_32435	Q_5996_SEQ_32938	 ///
Q_5996_SEQ_32944	Q_5996_VAL_32420	Q_5996_VAL_32427	Q_5996_VAL_32433	Q_5996_VAL_32435	 ///
Q_5996_VAL_32938	Q_5996_VAL_32944	Q_6040_DUR_32427	Q_6040_DUR_32433	Q_6040_DUR_32435	 ///
Q_6040_DUR_32922	Q_6040_DUR_32938	Q_6040_DUR_32944	Q_6040_SEQ_32427	Q_6040_SEQ_32433	 ///
Q_6040_SEQ_32435	Q_6040_SEQ_32922	Q_6040_SEQ_32938	Q_6040_SEQ_32944	Q_6040_VAL_32427	 ///
Q_6040_VAL_32433	Q_6040_VAL_32435	Q_6040_VAL_32922	Q_6040_VAL_32938	Q_6040_VAL_32944	 ///
Q_6042_DUR_32340	Q_6042_DUR_32421	Q_6042_DUR_32426	Q_6042_DUR_32428	Q_6042_DUR_32429	 ///
Q_6042_DUR_32431	Q_6042_DUR_32432	Q_6042_DUR_32434	Q_6042_DUR_32436	Q_6042_DUR_32437	 ///
Q_6042_SEQ_32340	Q_6042_SEQ_32421	Q_6042_SEQ_32426	Q_6042_SEQ_32428	Q_6042_SEQ_32429	 ///
Q_6042_SEQ_32431	Q_6042_SEQ_32432	Q_6042_SEQ_32434	Q_6042_SEQ_32436	Q_6042_SEQ_32437	 ///
Q_6042_VAL_32340	Q_6042_VAL_32421	Q_6042_VAL_32426	Q_6042_VAL_32428	Q_6042_VAL_32429	 ///
Q_6042_VAL_32431	Q_6042_VAL_32432	Q_6042_VAL_32434	Q_6042_VAL_32436	Q_6042_VAL_32437	 ///
Q_6043_DUR_32440	Q_6043_DUR_32441	Q_6043_DUR_32444	Q_6043_DUR_32445	Q_6043_DUR_32446	 ///
Q_6043_DUR_32447	Q_6043_DUR_32448	Q_6043_DUR_32450	Q_6043_DUR_32496	Q_6043_DUR_32886	 ///
Q_6043_SEQ_32440	Q_6043_SEQ_32441	Q_6043_SEQ_32444	Q_6043_SEQ_32445	Q_6043_SEQ_32446	 ///
Q_6043_SEQ_32447	Q_6043_SEQ_32448	Q_6043_SEQ_32450	Q_6043_SEQ_32496	Q_6043_SEQ_32886	 ///
Q_6043_VAL_32440	Q_6043_VAL_32441	Q_6043_VAL_32444	Q_6043_VAL_32445	Q_6043_VAL_32446	 ///
Q_6043_VAL_32447	Q_6043_VAL_32448	Q_6043_VAL_32450	Q_6043_VAL_32496	Q_6043_VAL_32886	 ///
Q_6044_DUR_32452	Q_6044_DUR_32454	Q_6044_DUR_32455	Q_6044_DUR_32457	Q_6044_DUR_32458	 ///
Q_6044_DUR_32459	Q_6044_DUR_32462	Q_6044_DUR_32465	Q_6044_DUR_32466	Q_6044_DUR_32467	 ///
Q_6044_SEQ_32452	Q_6044_SEQ_32454	Q_6044_SEQ_32455	Q_6044_SEQ_32457	Q_6044_SEQ_32458	 ///
Q_6044_SEQ_32459	Q_6044_SEQ_32462	Q_6044_SEQ_32465	Q_6044_SEQ_32466	Q_6044_SEQ_32467	 ///
Q_6044_VAL_32452	Q_6044_VAL_32454	Q_6044_VAL_32455	Q_6044_VAL_32457	Q_6044_VAL_32458	 ///
Q_6044_VAL_32459	Q_6044_VAL_32462	Q_6044_VAL_32465	Q_6044_VAL_32466	Q_6044_VAL_32467	 ///
Q_6045_DUR_32442	Q_6045_DUR_32460	Q_6045_DUR_32461	Q_6045_DUR_32463	Q_6045_DUR_32468	 ///
Q_6045_DUR_32470	Q_6045_DUR_32471	Q_6045_DUR_32472	Q_6045_DUR_32887	Q_6045_DUR_32888	 ///
Q_6045_SEQ_32442	Q_6045_SEQ_32460	Q_6045_SEQ_32461	Q_6045_SEQ_32463	Q_6045_SEQ_32468	 ///
Q_6045_SEQ_32470	Q_6045_SEQ_32471	Q_6045_SEQ_32472	Q_6045_SEQ_32887	Q_6045_SEQ_32888	 ///
Q_6045_VAL_32442	Q_6045_VAL_32460	Q_6045_VAL_32461	Q_6045_VAL_32463	Q_6045_VAL_32468	 ///
Q_6045_VAL_32470	Q_6045_VAL_32471	Q_6045_VAL_32472	Q_6045_VAL_32887	Q_6045_VAL_32888	 ///
Q_6046_DUR_32419	Q_6046_DUR_32425	Q_6046_DUR_32430	Q_6046_DUR_32438	Q_6046_DUR_32443	 ///
Q_6046_DUR_32451	Q_6046_DUR_32456	Q_6046_DUR_32464	Q_6046_DUR_32473	Q_6046_DUR_32475	 ///
Q_6046_DUR_32478	Q_6046_DUR_32482	Q_6046_DUR_32485	Q_6046_DUR_32489	Q_6046_DUR_32492	 ///
Q_6046_DUR_32494	Q_6046_SEQ_32419	Q_6046_SEQ_32425	Q_6046_SEQ_32430	Q_6046_SEQ_32438	 ///
Q_6046_SEQ_32443	Q_6046_SEQ_32451	Q_6046_SEQ_32456	Q_6046_SEQ_32464	Q_6046_SEQ_32473	 ///
Q_6046_SEQ_32475	Q_6046_SEQ_32478	Q_6046_SEQ_32482	Q_6046_SEQ_32485	Q_6046_SEQ_32489	 ///
Q_6046_SEQ_32492	Q_6046_SEQ_32494	Q_6046_VAL_32419	Q_6046_VAL_32425	Q_6046_VAL_32430	 ///
Q_6046_VAL_32438	Q_6046_VAL_32443	Q_6046_VAL_32451	Q_6046_VAL_32456	Q_6046_VAL_32464	 ///
Q_6046_VAL_32473	Q_6046_VAL_32475	Q_6046_VAL_32478	Q_6046_VAL_32482	Q_6046_VAL_32485	 ///
Q_6046_VAL_32489	Q_6046_VAL_32492	Q_6046_VAL_32494	Q_6047_DUR_32469	Q_6047_DUR_32476	 ///
Q_6047_DUR_32481	Q_6047_DUR_32486	Q_6047_DUR_32487	Q_6047_DUR_32491	Q_6047_DUR_32498	 ///
Q_6047_DUR_32500	Q_6047_DUR_32503	Q_6047_DUR_32505	Q_6047_DUR_32520	Q_6047_DUR_32525	 ///
Q_6047_DUR_32530	Q_6047_DUR_32535	Q_6047_DUR_32539	Q_6047_DUR_32542	Q_6047_SEQ_32469	 ///
Q_6047_SEQ_32476	Q_6047_SEQ_32481	Q_6047_SEQ_32486	Q_6047_SEQ_32487	Q_6047_SEQ_32491	 ///
Q_6047_SEQ_32498	Q_6047_SEQ_32500	Q_6047_SEQ_32503	Q_6047_SEQ_32505	Q_6047_SEQ_32520	 ///
Q_6047_SEQ_32525	Q_6047_SEQ_32530	Q_6047_SEQ_32535	Q_6047_SEQ_32539	Q_6047_SEQ_32542	 ///
Q_6047_VAL_32469	Q_6047_VAL_32476	Q_6047_VAL_32481	Q_6047_VAL_32486	Q_6047_VAL_32487	 ///
Q_6047_VAL_32491	Q_6047_VAL_32498	Q_6047_VAL_32500	Q_6047_VAL_32503	Q_6047_VAL_32505	 ///
Q_6047_VAL_32520	Q_6047_VAL_32525	Q_6047_VAL_32530	Q_6047_VAL_32535	Q_6047_VAL_32539	 ///
Q_6047_VAL_32542	Q_6048_DUR_32474	Q_6048_DUR_32480	Q_6048_DUR_32484	Q_6048_DUR_32488	 ///
Q_6048_DUR_32490	Q_6048_DUR_32495	Q_6048_DUR_32499	Q_6048_DUR_32501	Q_6048_DUR_32504	 ///
Q_6048_DUR_32510	Q_6048_DUR_32511	Q_6048_DUR_32517	Q_6048_DUR_32527	Q_6048_DUR_32534	 ///
Q_6048_DUR_32541	Q_6048_DUR_32889	Q_6048_SEQ_32474	Q_6048_SEQ_32480	Q_6048_SEQ_32484	 ///
Q_6048_SEQ_32488	Q_6048_SEQ_32490	Q_6048_SEQ_32495	Q_6048_SEQ_32499	Q_6048_SEQ_32501	 ///
Q_6048_SEQ_32504	Q_6048_SEQ_32510	Q_6048_SEQ_32511	Q_6048_SEQ_32517	Q_6048_SEQ_32527	 ///
Q_6048_SEQ_32534	Q_6048_SEQ_32541	Q_6048_SEQ_32889	Q_6048_VAL_32474	Q_6048_VAL_32480	 ///
Q_6048_VAL_32484	Q_6048_VAL_32488	Q_6048_VAL_32490	Q_6048_VAL_32495	Q_6048_VAL_32499	 ///
Q_6048_VAL_32501	Q_6048_VAL_32504	Q_6048_VAL_32510	Q_6048_VAL_32511	Q_6048_VAL_32517	 ///
Q_6048_VAL_32527	Q_6048_VAL_32534	Q_6048_VAL_32541	Q_6048_VAL_32889	Q_6049_DUR_32502	 ///
Q_6049_DUR_32508	Q_6049_DUR_32513	Q_6049_DUR_32514	Q_6049_DUR_32515	Q_6049_DUR_32516	 ///
Q_6049_DUR_32518	Q_6049_DUR_32519	Q_6049_DUR_32521	Q_6049_DUR_32522	Q_6049_DUR_32524	 ///
Q_6049_DUR_32526	Q_6049_DUR_32529	Q_6049_DUR_32533	Q_6049_DUR_32536	Q_6049_DUR_32537	 ///
Q_6049_SEQ_32502	Q_6049_SEQ_32508	Q_6049_SEQ_32513	Q_6049_SEQ_32514	Q_6049_SEQ_32515	 ///
Q_6049_SEQ_32516	Q_6049_SEQ_32518	Q_6049_SEQ_32519	Q_6049_SEQ_32521	Q_6049_SEQ_32522	 ///
Q_6049_SEQ_32524	Q_6049_SEQ_32526	Q_6049_SEQ_32529	Q_6049_SEQ_32533	Q_6049_SEQ_32536	 ///
Q_6049_SEQ_32537	Q_6049_VAL_32502	Q_6049_VAL_32508	Q_6049_VAL_32513	Q_6049_VAL_32514	 ///
Q_6049_VAL_32515	Q_6049_VAL_32516	Q_6049_VAL_32518	Q_6049_VAL_32519	Q_6049_VAL_32521	 ///
Q_6049_VAL_32522	Q_6049_VAL_32524	Q_6049_VAL_32526	Q_6049_VAL_32529	Q_6049_VAL_32533	 ///
Q_6049_VAL_32536	Q_6049_VAL_32537	Q_6053_DUR_32427	Q_6053_DUR_32433	Q_6053_DUR_32439	 ///
Q_6053_DUR_32931	Q_6053_DUR_32937	Q_6053_DUR_32944	Q_6053_SEQ_32427	Q_6053_SEQ_32433	 ///
Q_6053_SEQ_32439	Q_6053_SEQ_32931	Q_6053_SEQ_32937	Q_6053_SEQ_32944	Q_6053_VAL_32427	 ///
Q_6053_VAL_32433	Q_6053_VAL_32439	Q_6053_VAL_32931	Q_6053_VAL_32937	Q_6053_VAL_32944	 ///
Q_6054_DUR_32424	Q_6054_DUR_32427	Q_6054_DUR_32433	Q_6054_DUR_32439	Q_6054_DUR_32937	 ///
Q_6054_DUR_32944	Q_6054_SEQ_32424	Q_6054_SEQ_32427	Q_6054_SEQ_32433	Q_6054_SEQ_32439	 ///
Q_6054_SEQ_32937	Q_6054_SEQ_32944	Q_6054_VAL_32424	Q_6054_VAL_32427	Q_6054_VAL_32433	 ///
Q_6054_VAL_32439	Q_6054_VAL_32937	Q_6054_VAL_32944	Q_6056_DUR_32547	Q_6056_DUR_32548	 ///
Q_6056_DUR_32550	Q_6056_DUR_33459	Q_6056_DUR_33460	Q_6056_SEQ_32547	Q_6056_SEQ_32548	 ///
Q_6056_SEQ_32550	Q_6056_SEQ_33459	Q_6056_SEQ_33460	Q_6056_VAL_32547	Q_6056_VAL_32548	 ///
Q_6056_VAL_32550	Q_6056_VAL_33459	Q_6056_VAL_33460	Q_6057_DUR_32540	Q_6057_DUR_32939	 ///
Q_6057_DUR_32940	Q_6057_SEQ_32540	Q_6057_SEQ_32939	Q_6057_SEQ_32940	Q_6057_VAL_32540	 ///
Q_6057_VAL_32939	Q_6057_VAL_32940	Q_6058_DUR_32941	Q_6058_DUR_32945	Q_6058_DUR_32946	 ///
Q_6058_SEQ_32941	Q_6058_SEQ_32945	Q_6058_SEQ_32946	Q_6058_VAL_32941	Q_6058_VAL_32945	 ///
Q_6058_VAL_32946	Q_6059_DUR_32942	Q_6059_DUR_32948	Q_6059_DUR_32949	Q_6059_SEQ_32942	 ///
Q_6059_SEQ_32948	Q_6059_SEQ_32949	Q_6059_VAL_32942	Q_6059_VAL_32948	Q_6059_VAL_32949	 ///
Q_6060_DUR_32943	Q_6060_DUR_32947	Q_6060_DUR_32950	Q_6060_SEQ_32943	Q_6060_SEQ_32947	 ///
Q_6060_SEQ_32950	Q_6060_VAL_32943	Q_6060_VAL_32947	Q_6060_VAL_32950	Q_6061_DUR_32546	 ///
Q_6061_DUR_32924	Q_6061_DUR_32926	Q_6061_DUR_32927	Q_6061_DUR_32928	Q_6061_DUR_32929	 ///
Q_6061_DUR_32932	Q_6061_DUR_32935	Q_6061_DUR_32936	Q_6061_DUR_33461	Q_6061_SEQ_32546	 ///
Q_6061_SEQ_32924	Q_6061_SEQ_32926	Q_6061_SEQ_32927	Q_6061_SEQ_32928	Q_6061_SEQ_32929	 ///
Q_6061_SEQ_32932	Q_6061_SEQ_32935	Q_6061_SEQ_32936	Q_6061_SEQ_33461	Q_6061_VAL_32546	 ///
Q_6061_VAL_32924	Q_6061_VAL_32926	Q_6061_VAL_32927	Q_6061_VAL_32928	Q_6061_VAL_32929	 ///
Q_6061_VAL_32932	Q_6061_VAL_32935	Q_6061_VAL_32936	Q_6061_VAL_33461	SUBJECT_ID	TIME	 ///
TIME_BEGIN_FLOWPHASE	TIME_BEGIN_SUBSTAGE	TIME_END_FLOWPHASE	TOD_A_3842	TOD_A_3848	TOTAL_FLOW_ACCESSED	 ///
TTO_A_3842	TTO_A_3848	WORDS_A_3842	WORDS_A_3848 ///

* Adding Prefixes and Suffixes
foreach x of var * {
rename `x' W10`x'
}
 
foreach x of var * {
rename `x' `x'S2
}

* Renaming SUBJECT_ID (no pre nor su fixes, we need that to merge on it)
rename W10SUBJECT_IDS2 SUBJECT_ID 

* Eliminating ALL underscores
foreach v of var *_* { 
	local V : subinstr local v "_" "", all
	capture rename `v' `V' 
	if _rc di as txt "problem with `v'"
} 

*saving
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W10/WorkingData/W10S2_Working.dta", replace


**************************************************************************************************
*							M	E	R	G	I	N	G	 		W	10
**************************************************************************************************

clear all

* Merge W10S2 with W10S1
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W10/WorkingData/W10S2_Working.dta", replace
merge 1:m SUBJECTID using "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W10/WorkingData/W10S1_Working.dta"
drop _merge
* Save W10S12
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W10/WorkingData/W10S12_Working.dta", replace

order *, alpha


*Dropping things we won't need...
capture drop W10DATES2 W10TOTALFLOWACCESSEDS2 W10TIMES2


* labeling


label variable W10WORDSA3842S2 "That'sitThankYou"
label variable W10WORDSA3843S1 "Whoops -- Not a Valid Subject ID"
label variable W10WORDSA3848S2 "WelcomeWk10"
label variable W10GRP20985S1 "BeginGroup"
label variable W10GRP20986S1 "BeginGroupRepeated"
label variable W10GRP21117S2 "DemSmithFirst"
label variable W10GRP21118S2 "DemWilsonFirst"
label variable W10GRP21119S2 "RepJonesFirst"
label variable W10GRP21120S2 "RepWilliamsFirst"
label variable W10Q6042SEQ32340S2 "Q.12Memory2Wilson"
label variable W10Q6046SEQ32419S2 "Q.1CandKnowSmith"
label variable W10Q5996SEQ32420S2 "QD1Votewilson"
label variable W10Q6042DUR32421S2 "Q.11MemoryWilson"
label variable W10Q6054SEQ32424S2 "QR1VoteWilliams"
label variable W10Q6046VAL32425S2 "Q.2CandKnowSmith"
label variable W10Q6042DUR32426S2 "Q.13Memory3Wilson"
label variable W10Q6053DUR32427S2 "Q2Difficulty"
label variable W10Q6042SEQ32428S2 "Q.14Memory4Wilson"
label variable W10Q6042DUR32429S2 "Q.15Memory5Wilson"
label variable W10Q6046SEQ32430S2 "Q.3CandKnowSmith"
label variable W10Q6042VAL32431S2 "Q.16Memory6Wilson"
label variable W10Q6042VAL32432S2 "Q.17Memory7Wilson"
label variable W10Q5996DUR32433S2 "Q3ConfidentCorrect"
label variable W10Q6042VAL32434S2 "Q.18Memory8Wilson"
label variable W10Q6040VAL32435S2 "Q4DSmithFT"
label variable W10Q6042SEQ32436S2 "Q.19Memory9Wilson"
label variable W10Q6042SEQ32437S2 "Q.20MemoryElseWilson"
label variable W10Q6046DUR32438S2 "Q.4CandKnowSmith"
label variable W10Q6054VAL32439S2 "Q5RWilliamsFT"
label variable W10Q6043VAL32440S2 "Q.12Memory2Williams"
label variable W10Q6043VAL32441S2 "Q.13Memory3Williams"
label variable W10Q6045DUR32442S2 "Q.13Memory3Smith"
label variable W10Q6046VAL32443S2 "Q.5CandKnowSmith"
label variable W10Q6043VAL32444S2 "Q.14Memory4Williams"
label variable W10Q6043VAL32445S2 "Q.15Memory5Williams"
label variable W10Q6043DUR32446S2 "Q.16Memory6Williams"
label variable W10Q6043SEQ32447S2 "Q.17Memory7Williams"
label variable W10Q6043DUR32448S2 "Q.18Memory8Williams"
label variable W10Q6043DUR32450S2 "Q.20MemoryElseWilliams"
label variable W10Q6046SEQ32451S2 "Q.6CandKnowSmith"
label variable W10Q6044VAL32452S2 "Q.11Memory1Jones"
label variable W10Q6044DUR32454S2 "Q.12Memory2Jones"
label variable W10Q6044DUR32455S2 "Q.13Memory3Jones"
label variable W10Q6046SEQ32456S2 "Q.7CandKnowSmith"
label variable W10Q6044SEQ32457S2 "Q.14Memory4Jones"
label variable W10Q6044VAL32458S2 "Q.15Memory5Jones"
label variable W10Q6044VAL32459S2 "Q.16Memory6Jones"
label variable W10Q6045DUR32460S2 "Q.14Memory4Smith"
label variable W10Q6045SEQ32461S2 "Q.15Memory5Smith"
label variable W10Q6044VAL32462S2 "Q.17Memory7Jones"
label variable W10Q6045SEQ32463S2 "Q.16Memory6Smith"
label variable W10Q6046VAL32464S2 "Q.8CandKnowSmith"
label variable W10Q6044DUR32465S2 "Q.18Memory8Jones"
label variable W10Q6044SEQ32466S2 "Q.19Memory9Jones"
label variable W10Q6044SEQ32467S2 "Q.20MemoryElseJones"
label variable W10Q6045VAL32468S2 "Q.17Memory7Smith"
label variable W10Q6047SEQ32469S2 "Q.1CandKnowWilson"
label variable W10Q6045DUR32470S2 "Q.18Memory8Smith"
label variable W10Q6045SEQ32471S2 "Q.19Memory9Smith"
label variable W10Q6045DUR32472S2 "Q.20MemoryElseSmith"
label variable W10Q6046DUR32473S2 "Q.9CandKnowSmith"
label variable W10Q6048VAL32474S2 "Q.1CandKnowJones"
label variable W10Q6046DUR32475S2 "Q.10CandKnowSmith"
label variable W10Q6047SEQ32476S2 "Q.2CandKnowWilson"
label variable W10Q6046SEQ32478S2 "Q.11CandKnowSmith"
label variable W10Q6048DUR32480S2 "Q.2CandKnowJones"
label variable W10Q6047DUR32481S2 "Q.3CandKnowWilson"
label variable W10Q6046DUR32482S2 "Q.12CandKnowSmith"
label variable W10Q6048SEQ32484S2 "Q.3CandKnowJones"
label variable W10Q6046SEQ32485S2 "Q.13CandKnowSmith"
label variable W10Q6047SEQ32486S2 "Q.4CandKnowWilson"
label variable W10Q6047SEQ32487S2 "Q.5CandKnowWilson"
label variable W10Q6048DUR32488S2 "Q.4CandKnowJones"
label variable W10Q6046DUR32489S2 "Q.14CandKnowSmith"
label variable W10Q6048DUR32490S2 "Q.5CandKnowJones"
label variable W10Q6047SEQ32491S2 "Q.6CandKnowWilson"
label variable W10Q6046SEQ32492S2 "Q.15CandKnowSmith"
label variable W10Q6046SEQ32494S2 "Q.16CandKnowSmith"
label variable W10Q6048SEQ32495S2 "Q.6CandKnowJones"
label variable W10Q6043DUR32496S2 "Q.11Memory1Williams"
label variable W10Q6047DUR32498S2 "Q.7CandKnowWilson"
label variable W10Q6048VAL32499S2 "Q.7CandKnowJones"
label variable W10Q6047SEQ32500S2 "Q.8CandKnowWilson"
label variable W10Q6048VAL32501S2 "Q.8CandKnowJones"
label variable W10Q6049SEQ32502S2 "Q.1CandKnowWilliams"
label variable W10Q6047VAL32503S2 "Q.9CandKnowWilson"
label variable W10Q6048VAL32504S2 "Q.9CandKnowJones"
label variable W10Q6047DUR32505S2 "Q.10CandKnowWilson"
label variable W10Q6049SEQ32508S2 "Q.2CandKnowWilliams"
label variable W10Q6048SEQ32510S2 "Q.10CandKnowJones"
label variable W10Q6048VAL32511S2 "Q.11CandKnowJones"
label variable W10Q6049VAL32513S2 "Q.3CandKnowWilliams"
label variable W10Q6049SEQ32514S2 "Q.4CandKnowWilliams"
label variable W10Q6049SEQ32515S2 "Q.5CandKnowWilliams"
label variable W10Q6049VAL32516S2 "Q.6CandKnowWilliams"
label variable W10Q6048SEQ32517S2 "Q.12CandKnowJones"
label variable W10Q6049DUR32518S2 "Q.7CandKnowWilliams"
label variable W10Q6049SEQ32519S2 "Q.8CandKnowWilliams"
label variable W10Q6047SEQ32520S2 "Q.11CandKnowWilson"
label variable W10Q6049VAL32521S2 "Q.9CandKnowWilliams"
label variable W10Q6049VAL32522S2 "Q.10CandKnowWilliams"
label variable W10Q6049VAL32524S2 "Q.11CandKnowWilliams"
label variable W10Q6047SEQ32525S2 "Q.12CandKnowWilson"
label variable W10Q6049VAL32526S2 "Q.12CandKnowWilliams"
label variable W10Q6048VAL32527S2 "Q.13CandKnowJones"
label variable W10Q6049VAL32529S2 "Q.13CandKnowWilliams"
label variable W10Q6047DUR32530S2 "Q.13CandKnowWilson"
label variable W10Q6049VAL32533S2 "Q.14CandKnowWilliams"
label variable W10Q6048VAL32534S2 "Q.14CandKnowJones"
label variable W10Q6047SEQ32535S2 "Q.14CandKnowWilson"
label variable W10Q6049VAL32536S2 "Q.15CandKnowWilliams"
label variable W10Q6049SEQ32537S2 "Q.16CandKnowWilliams"
label variable W10Q6047SEQ32539S2 "Q.15CandKnowWilson"
label variable W10Q6057VAL32540S2 "Q.17RMinorityJAfrican"
label variable W10Q6048SEQ32541S2 "Q.15CandKnowJones"
label variable W10Q6047VAL32542S2 "Q.16CandKnowWilson"
label variable W10Q6061DUR32546S2 "Q83RegularNewsSources"
label variable W10Q6056VAL32547S2 "Q80Debrief1"
label variable W10Q6056DUR32548S2 "Q81Debrief2"
label variable W10Q6056DUR32550S2 "Q82Debrief3"
label variable W10Q6043SEQ32886S2 "Q.19Memory9Williams"
label variable W10Q6045DUR32887S2 "Q.11Memory1Smith"
label variable W10Q6045SEQ32888S2 "Q.12Memory2Smith"
label variable W10Q6048SEQ32889S2 "Q.16CandKnowJones"
label variable W10Q6052SEQ32914S1 "Subject Sign-in"
label variable W10Q6040VAL32922S2 "QD1Votesmith"
label variable W10Q6061VAL32924S2 "SHL1"
label variable W10Q6061VAL32926S2 "SHL2"
label variable W10Q6061SEQ32927S2 "SHL3"
label variable W10Q6061DUR32928S2 "SHL4"
label variable W10Q6061SEQ32929S2 "SHL5"
label variable W10Q6053DUR32931S2 "QR1VoteJones"
label variable W10Q6061VAL32932S2 "SHL6"
label variable W10Q6061SEQ32935S2 "SHL7"
label variable W10Q6061SEQ32936S2 "SHL8"
label variable W10Q6054SEQ32937S2 "Q5RJonesFT"
label variable W10Q6040SEQ32938S2 "Q4DWilsonFT"
label variable W10Q6057VAL32939S2 "Q.17RMinorityJLatino"
label variable W10Q6057SEQ32940S2 "Q.17RMinorityJWomen"
label variable W10Q6058SEQ32941S2 "Q.17RMinorityWWomen"
label variable W10Q6059VAL32942S2 "Q.17DMinoritySWomen"
label variable W10Q6060SEQ32943S2 "Q.17DMinorityWWomen32943"
label variable W10Q6053SEQ32944S2 "ExplainVoteChoice"
label variable W10Q6058DUR32945S2 "Q.17RMinorityWLatino"
label variable W10Q6058SEQ32946S2 "Q.17RMinorityWAfrican"
label variable W10Q6060VAL32947S2 "Q.17DMinorityWAfrican"
label variable W10Q6059DUR32948S2 "Q.17DMinoritySAfrican"
label variable W10Q6059DUR32949S2 "Q.17DMinoritySLatino"
label variable W10Q6060SEQ32950S2 "Q.17DMinorityWLatino"
label variable W10Q6056SEQ33459S2 "Debrief_KnowResults"
label variable W10Q6056SEQ33460S2 "Debrief_KnowResults0"
label variable W10Q6061DUR33461S2 "Q84NewsSources"
label variable W10FODA3842S2 "That'sitThankYou"
label variable W10TTOA3842S2 "That'sitThankYou"
label variable W10TODA3842S2 "That'sitThankYou"
label variable W10TODA3843S1 "Whoops -- Not a Valid Subject ID"
label variable W10FODA3843S1 "Whoops -- Not a Valid Subject ID"
label variable W10TTOA3843S1 "Whoops -- Not a Valid Subject ID"
label variable W10FODA3848S2 "WelcomeWk10"
label variable W10TODA3848S2 "WelcomeWk10"
label variable W10TTOA3848S2 "WelcomeWk10"
label variable W10Q6042DUR32340S2 "Q.12Memory2Wilson"
label variable W10Q6042VAL32340S2 "Q.12Memory2Wilson"
label variable W10Q6046VAL32419S2 "Q.1CandKnowSmith"
label variable W10Q6046DUR32419S2 "Q.1CandKnowSmith"
label variable W10Q5996VAL32420S2 "QD1Votewilson"
label variable W10Q5996DUR32420S2 "QD1Votewilson"
label variable W10Q6042VAL32421S2 "Q.11MemoryWilson"
label variable W10Q6042SEQ32421S2 "Q.11MemoryWilson"
label variable W10Q6054VAL32424S2 "QR1VoteWilliams"
label variable W10Q6054DUR32424S2 "QR1VoteWilliams"
label variable W10Q6046SEQ32425S2 "Q.2CandKnowSmith"
label variable W10Q6046DUR32425S2 "Q.2CandKnowSmith"
label variable W10Q6042VAL32426S2 "Q.13Memory3Wilson"
label variable W10Q6042SEQ32426S2 "Q.13Memory3Wilson"
label variable W10Q6053VAL32427S2 "Q2Difficulty"
label variable W10Q6040SEQ32427S2 "Q2Difficulty"
label variable W10Q6054VAL32427S2 "Q2Difficulty"
label variable W10Q6053SEQ32427S2 "Q2Difficulty"
label variable W10Q5996DUR32427S2 "Q2Difficulty"
label variable W10Q5996VAL32427S2 "Q2Difficulty"
label variable W10Q5996SEQ32427S2 "Q2Difficulty"
label variable W10Q6040DUR32427S2 "Q2Difficulty"
label variable W10Q6054DUR32427S2 "Q2Difficulty"
label variable W10Q6040VAL32427S2 "Q2Difficulty"
label variable W10Q6054SEQ32427S2 "Q2Difficulty"
label variable W10Q6042VAL32428S2 "Q.14Memory4Wilson"
label variable W10Q6042DUR32428S2 "Q.14Memory4Wilson"
label variable W10Q6042SEQ32429S2 "Q.15Memory5Wilson"
label variable W10Q6042VAL32429S2 "Q.15Memory5Wilson"
label variable W10Q6046DUR32430S2 "Q.3CandKnowSmith"
label variable W10Q6046VAL32430S2 "Q.3CandKnowSmith"
label variable W10Q6042SEQ32431S2 "Q.16Memory6Wilson"
label variable W10Q6042DUR32431S2 "Q.16Memory6Wilson"
label variable W10Q6042SEQ32432S2 "Q.17Memory7Wilson"
label variable W10Q6042DUR32432S2 "Q.17Memory7Wilson"
label variable W10Q6053VAL32433S2 "Q3ConfidentCorrect"
label variable W10Q6040SEQ32433S2 "Q3ConfidentCorrect"
label variable W10Q6053DUR32433S2 "Q3ConfidentCorrect"
label variable W10Q6054DUR32433S2 "Q3ConfidentCorrect"
label variable W10Q6053SEQ32433S2 "Q3ConfidentCorrect"
label variable W10Q5996SEQ32433S2 "Q3ConfidentCorrect"
label variable W10Q6054SEQ32433S2 "Q3ConfidentCorrect"
label variable W10Q6040DUR32433S2 "Q3ConfidentCorrect"
label variable W10Q6054VAL32433S2 "Q3ConfidentCorrect"
label variable W10Q6040VAL32433S2 "Q3ConfidentCorrect"
label variable W10Q5996VAL32433S2 "Q3ConfidentCorrect"
label variable W10Q6042SEQ32434S2 "Q.18Memory8Wilson"
label variable W10Q6042DUR32434S2 "Q.18Memory8Wilson"
label variable W10Q5996SEQ32435S2 "Q4DSmithFT"
label variable W10Q5996DUR32435S2 "Q4DSmithFT"
label variable W10Q6040DUR32435S2 "Q4DSmithFT"
label variable W10Q5996VAL32435S2 "Q4DSmithFT"
label variable W10Q6040SEQ32435S2 "Q4DSmithFT"
label variable W10Q6042VAL32436S2 "Q.19Memory9Wilson"
label variable W10Q6042DUR32436S2 "Q.19Memory9Wilson"
label variable W10Q6042VAL32437S2 "Q.20MemoryElseWilson"
label variable W10Q6042DUR32437S2 "Q.20MemoryElseWilson"
label variable W10Q6046VAL32438S2 "Q.4CandKnowSmith"
label variable W10Q6046SEQ32438S2 "Q.4CandKnowSmith"
label variable W10Q6054DUR32439S2 "Q5RWilliamsFT"
label variable W10Q6053DUR32439S2 "Q5RWilliamsFT"
label variable W10Q6053VAL32439S2 "Q5RWilliamsFT"
label variable W10Q6053SEQ32439S2 "Q5RWilliamsFT"
label variable W10Q6054SEQ32439S2 "Q5RWilliamsFT"
label variable W10Q6043DUR32440S2 "Q.12Memory2Williams"
label variable W10Q6043SEQ32440S2 "Q.12Memory2Williams"
label variable W10Q6043DUR32441S2 "Q.13Memory3Williams"
label variable W10Q6043SEQ32441S2 "Q.13Memory3Williams"
label variable W10Q6045SEQ32442S2 "Q.13Memory3Smith"
label variable W10Q6045VAL32442S2 "Q.13Memory3Smith"
label variable W10Q6046SEQ32443S2 "Q.5CandKnowSmith"
label variable W10Q6046DUR32443S2 "Q.5CandKnowSmith"
label variable W10Q6043DUR32444S2 "Q.14Memory4Williams"
label variable W10Q6043SEQ32444S2 "Q.14Memory4Williams"
label variable W10Q6043SEQ32445S2 "Q.15Memory5Williams"
label variable W10Q6043DUR32445S2 "Q.15Memory5Williams"
label variable W10Q6043VAL32446S2 "Q.16Memory6Williams"
label variable W10Q6043SEQ32446S2 "Q.16Memory6Williams"
label variable W10Q6043DUR32447S2 "Q.17Memory7Williams"
label variable W10Q6043VAL32447S2 "Q.17Memory7Williams"
label variable W10Q6043VAL32448S2 "Q.18Memory8Williams"
label variable W10Q6043SEQ32448S2 "Q.18Memory8Williams"
label variable W10Q6043VAL32450S2 "Q.20MemoryElseWilliams"
label variable W10Q6043SEQ32450S2 "Q.20MemoryElseWilliams"
label variable W10Q6046DUR32451S2 "Q.6CandKnowSmith"
label variable W10Q6046VAL32451S2 "Q.6CandKnowSmith"
label variable W10Q6044DUR32452S2 "Q.11Memory1Jones"
label variable W10Q6044SEQ32452S2 "Q.11Memory1Jones"
label variable W10Q6044SEQ32454S2 "Q.12Memory2Jones"
label variable W10Q6044VAL32454S2 "Q.12Memory2Jones"
label variable W10Q6044SEQ32455S2 "Q.13Memory3Jones"
label variable W10Q6044VAL32455S2 "Q.13Memory3Jones"
label variable W10Q6046VAL32456S2 "Q.7CandKnowSmith"
label variable W10Q6046DUR32456S2 "Q.7CandKnowSmith"
label variable W10Q6044VAL32457S2 "Q.14Memory4Jones"
label variable W10Q6044DUR32457S2 "Q.14Memory4Jones"
label variable W10Q6044SEQ32458S2 "Q.15Memory5Jones"
label variable W10Q6044DUR32458S2 "Q.15Memory5Jones"
label variable W10Q6044DUR32459S2 "Q.16Memory6Jones"
label variable W10Q6044SEQ32459S2 "Q.16Memory6Jones"
label variable W10Q6045SEQ32460S2 "Q.14Memory4Smith"
label variable W10Q6045VAL32460S2 "Q.14Memory4Smith"
label variable W10Q6045DUR32461S2 "Q.15Memory5Smith"
label variable W10Q6045VAL32461S2 "Q.15Memory5Smith"
label variable W10Q6044SEQ32462S2 "Q.17Memory7Jones"
label variable W10Q6044DUR32462S2 "Q.17Memory7Jones"
label variable W10Q6045DUR32463S2 "Q.16Memory6Smith"
label variable W10Q6045VAL32463S2 "Q.16Memory6Smith"
label variable W10Q6046SEQ32464S2 "Q.8CandKnowSmith"
label variable W10Q6046DUR32464S2 "Q.8CandKnowSmith"
label variable W10Q6044VAL32465S2 "Q.18Memory8Jones"
label variable W10Q6044SEQ32465S2 "Q.18Memory8Jones"
label variable W10Q6044DUR32466S2 "Q.19Memory9Jones"
label variable W10Q6044VAL32466S2 "Q.19Memory9Jones"
label variable W10Q6044DUR32467S2 "Q.20MemoryElseJones"
label variable W10Q6044VAL32467S2 "Q.20MemoryElseJones"
label variable W10Q6045DUR32468S2 "Q.17Memory7Smith"
label variable W10Q6045SEQ32468S2 "Q.17Memory7Smith"
label variable W10Q6047VAL32469S2 "Q.1CandKnowWilson"
label variable W10Q6047DUR32469S2 "Q.1CandKnowWilson"
label variable W10Q6045SEQ32470S2 "Q.18Memory8Smith"
label variable W10Q6045VAL32470S2 "Q.18Memory8Smith"
label variable W10Q6045DUR32471S2 "Q.19Memory9Smith"
label variable W10Q6045VAL32471S2 "Q.19Memory9Smith"
label variable W10Q6045VAL32472S2 "Q.20MemoryElseSmith"
label variable W10Q6045SEQ32472S2 "Q.20MemoryElseSmith"
label variable W10Q6046VAL32473S2 "Q.9CandKnowSmith"
label variable W10Q6046SEQ32473S2 "Q.9CandKnowSmith"
label variable W10Q6048SEQ32474S2 "Q.1CandKnowJones"
label variable W10Q6048DUR32474S2 "Q.1CandKnowJones"
label variable W10Q6046SEQ32475S2 "Q.10CandKnowSmith"
label variable W10Q6046VAL32475S2 "Q.10CandKnowSmith"
label variable W10Q6047DUR32476S2 "Q.2CandKnowWilson"
label variable W10Q6047VAL32476S2 "Q.2CandKnowWilson"
label variable W10Q6046VAL32478S2 "Q.11CandKnowSmith"
label variable W10Q6046DUR32478S2 "Q.11CandKnowSmith"
label variable W10Q6048VAL32480S2 "Q.2CandKnowJones"
label variable W10Q6048SEQ32480S2 "Q.2CandKnowJones"
label variable W10Q6047VAL32481S2 "Q.3CandKnowWilson"
label variable W10Q6047SEQ32481S2 "Q.3CandKnowWilson"
label variable W10Q6046VAL32482S2 "Q.12CandKnowSmith"
label variable W10Q6046SEQ32482S2 "Q.12CandKnowSmith"
label variable W10Q6048VAL32484S2 "Q.3CandKnowJones"
label variable W10Q6048DUR32484S2 "Q.3CandKnowJones"
label variable W10Q6046VAL32485S2 "Q.13CandKnowSmith"
label variable W10Q6046DUR32485S2 "Q.13CandKnowSmith"
label variable W10Q6047DUR32486S2 "Q.4CandKnowWilson"
label variable W10Q6047VAL32486S2 "Q.4CandKnowWilson"
label variable W10Q6047DUR32487S2 "Q.5CandKnowWilson"
label variable W10Q6047VAL32487S2 "Q.5CandKnowWilson"
label variable W10Q6048SEQ32488S2 "Q.4CandKnowJones"
label variable W10Q6048VAL32488S2 "Q.4CandKnowJones"
label variable W10Q6046VAL32489S2 "Q.14CandKnowSmith"
label variable W10Q6046SEQ32489S2 "Q.14CandKnowSmith"
label variable W10Q6048VAL32490S2 "Q.5CandKnowJones"
label variable W10Q6048SEQ32490S2 "Q.5CandKnowJones"
label variable W10Q6047VAL32491S2 "Q.6CandKnowWilson"
label variable W10Q6047DUR32491S2 "Q.6CandKnowWilson"
label variable W10Q6046VAL32492S2 "Q.15CandKnowSmith"
label variable W10Q6046DUR32492S2 "Q.15CandKnowSmith"
label variable W10Q6046VAL32494S2 "Q.16CandKnowSmith"
label variable W10Q6046DUR32494S2 "Q.16CandKnowSmith"
label variable W10Q6048DUR32495S2 "Q.6CandKnowJones"
label variable W10Q6048VAL32495S2 "Q.6CandKnowJones"
label variable W10Q6043VAL32496S2 "Q.11Memory1Williams"
label variable W10Q6043SEQ32496S2 "Q.11Memory1Williams"
label variable W10Q6047SEQ32498S2 "Q.7CandKnowWilson"
label variable W10Q6047VAL32498S2 "Q.7CandKnowWilson"
label variable W10Q6048DUR32499S2 "Q.7CandKnowJones"
label variable W10Q6048SEQ32499S2 "Q.7CandKnowJones"
label variable W10Q6047DUR32500S2 "Q.8CandKnowWilson"
label variable W10Q6047VAL32500S2 "Q.8CandKnowWilson"
label variable W10Q6048DUR32501S2 "Q.8CandKnowJones"
label variable W10Q6048SEQ32501S2 "Q.8CandKnowJones"
label variable W10Q6049DUR32502S2 "Q.1CandKnowWilliams"
label variable W10Q6049VAL32502S2 "Q.1CandKnowWilliams"
label variable W10Q6047DUR32503S2 "Q.9CandKnowWilson"
label variable W10Q6047SEQ32503S2 "Q.9CandKnowWilson"
label variable W10Q6048DUR32504S2 "Q.9CandKnowJones"
label variable W10Q6048SEQ32504S2 "Q.9CandKnowJones"
label variable W10Q6047SEQ32505S2 "Q.10CandKnowWilson"
label variable W10Q6047VAL32505S2 "Q.10CandKnowWilson"
label variable W10Q6049DUR32508S2 "Q.2CandKnowWilliams"
label variable W10Q6049VAL32508S2 "Q.2CandKnowWilliams"
label variable W10Q6048VAL32510S2 "Q.10CandKnowJones"
label variable W10Q6048DUR32510S2 "Q.10CandKnowJones"
label variable W10Q6048DUR32511S2 "Q.11CandKnowJones"
label variable W10Q6048SEQ32511S2 "Q.11CandKnowJones"
label variable W10Q6049SEQ32513S2 "Q.3CandKnowWilliams"
label variable W10Q6049DUR32513S2 "Q.3CandKnowWilliams"
label variable W10Q6049VAL32514S2 "Q.4CandKnowWilliams"
label variable W10Q6049DUR32514S2 "Q.4CandKnowWilliams"
label variable W10Q6049VAL32515S2 "Q.5CandKnowWilliams"
label variable W10Q6049DUR32515S2 "Q.5CandKnowWilliams"
label variable W10Q6049DUR32516S2 "Q.6CandKnowWilliams"
label variable W10Q6049SEQ32516S2 "Q.6CandKnowWilliams"
label variable W10Q6048DUR32517S2 "Q.12CandKnowJones"
label variable W10Q6048VAL32517S2 "Q.12CandKnowJones"
label variable W10Q6049VAL32518S2 "Q.7CandKnowWilliams"
label variable W10Q6049SEQ32518S2 "Q.7CandKnowWilliams"
label variable W10Q6049DUR32519S2 "Q.8CandKnowWilliams"
label variable W10Q6049VAL32519S2 "Q.8CandKnowWilliams"
label variable W10Q6047VAL32520S2 "Q.11CandKnowWilson"
label variable W10Q6047DUR32520S2 "Q.11CandKnowWilson"
label variable W10Q6049DUR32521S2 "Q.9CandKnowWilliams"
label variable W10Q6049SEQ32521S2 "Q.9CandKnowWilliams"
label variable W10Q6049DUR32522S2 "Q.10CandKnowWilliams"
label variable W10Q6049SEQ32522S2 "Q.10CandKnowWilliams"
label variable W10Q6049DUR32524S2 "Q.11CandKnowWilliams"
label variable W10Q6049SEQ32524S2 "Q.11CandKnowWilliams"
label variable W10Q6047DUR32525S2 "Q.12CandKnowWilson"
label variable W10Q6047VAL32525S2 "Q.12CandKnowWilson"
label variable W10Q6049SEQ32526S2 "Q.12CandKnowWilliams"
label variable W10Q6049DUR32526S2 "Q.12CandKnowWilliams"
label variable W10Q6048DUR32527S2 "Q.13CandKnowJones"
label variable W10Q6048SEQ32527S2 "Q.13CandKnowJones"
label variable W10Q6049DUR32529S2 "Q.13CandKnowWilliams"
label variable W10Q6049SEQ32529S2 "Q.13CandKnowWilliams"
label variable W10Q6047SEQ32530S2 "Q.13CandKnowWilson"
label variable W10Q6047VAL32530S2 "Q.13CandKnowWilson"
label variable W10Q6049DUR32533S2 "Q.14CandKnowWilliams"
label variable W10Q6049SEQ32533S2 "Q.14CandKnowWilliams"
label variable W10Q6048SEQ32534S2 "Q.14CandKnowJones"
label variable W10Q6048DUR32534S2 "Q.14CandKnowJones"
label variable W10Q6047VAL32535S2 "Q.14CandKnowWilson"
label variable W10Q6047DUR32535S2 "Q.14CandKnowWilson"
label variable W10Q6049DUR32536S2 "Q.15CandKnowWilliams"
label variable W10Q6049SEQ32536S2 "Q.15CandKnowWilliams"
label variable W10Q6049VAL32537S2 "Q.16CandKnowWilliams"
label variable W10Q6049DUR32537S2 "Q.16CandKnowWilliams"
label variable W10Q6047VAL32539S2 "Q.15CandKnowWilson"
label variable W10Q6047DUR32539S2 "Q.15CandKnowWilson"
label variable W10Q6057DUR32540S2 "Q.17RMinorityJAfrican"
label variable W10Q6057SEQ32540S2 "Q.17RMinorityJAfrican"
label variable W10Q6048VAL32541S2 "Q.15CandKnowJones"
label variable W10Q6048DUR32541S2 "Q.15CandKnowJones"
label variable W10Q6047SEQ32542S2 "Q.16CandKnowWilson"
label variable W10Q6047DUR32542S2 "Q.16CandKnowWilson"
label variable W10Q6061VAL32546S2 "Q83RegularNewsSources"
label variable W10Q6061SEQ32546S2 "Q83RegularNewsSources"
label variable W10Q6056DUR32547S2 "Q80Debrief1"
label variable W10Q6056SEQ32547S2 "Q80Debrief1"
label variable W10Q6056SEQ32548S2 "Q81Debrief2"
label variable W10Q6056VAL32548S2 "Q81Debrief2"
label variable W10Q6056VAL32550S2 "Q82Debrief3"
label variable W10Q6056SEQ32550S2 "Q82Debrief3"
label variable W10Q6043DUR32886S2 "Q.19Memory9Williams"
label variable W10Q6043VAL32886S2 "Q.19Memory9Williams"
label variable W10Q6045SEQ32887S2 "Q.11Memory1Smith"
label variable W10Q6045VAL32887S2 "Q.11Memory1Smith"
label variable W10Q6045DUR32888S2 "Q.12Memory2Smith"
label variable W10Q6045VAL32888S2 "Q.12Memory2Smith"
label variable W10Q6048DUR32889S2 "Q.16CandKnowJones"
label variable W10Q6048VAL32889S2 "Q.16CandKnowJones"
label variable W10Q6052DUR32914S1 "Subject Sign-in"
label variable W10Q6040DUR32922S2 "QD1Votesmith"
label variable W10Q6040SEQ32922S2 "QD1Votesmith"
label variable W10Q6061SEQ32924S2 "SHL1"
label variable W10Q6061DUR32924S2 "SHL1"
label variable W10Q6061SEQ32926S2 "SHL2"
label variable W10Q6061DUR32926S2 "SHL2"
label variable W10Q6061DUR32927S2 "SHL3"
label variable W10Q6061VAL32927S2 "SHL3"
label variable W10Q6061VAL32928S2 "SHL4"
label variable W10Q6061SEQ32928S2 "SHL4"
label variable W10Q6061DUR32929S2 "SHL5"
label variable W10Q6061VAL32929S2 "SHL5"
label variable W10Q6053SEQ32931S2 "QR1VoteJones"
label variable W10Q6053VAL32931S2 "QR1VoteJones"
label variable W10Q6061DUR32932S2 "SHL6"
label variable W10Q6061SEQ32932S2 "SHL6"
label variable W10Q6061DUR32935S2 "SHL7"
label variable W10Q6061VAL32935S2 "SHL7"
label variable W10Q6061DUR32936S2 "SHL8"
label variable W10Q6061VAL32936S2 "SHL8"
label variable W10Q6053SEQ32937S2 "Q5RJonesFT"
label variable W10Q6053DUR32937S2 "Q5RJonesFT"
label variable W10Q6054DUR32937S2 "Q5RJonesFT"
label variable W10Q6054VAL32937S2 "Q5RJonesFT"
label variable W10Q6053VAL32937S2 "Q5RJonesFT"
label variable W10Q5996DUR32938S2 "Q4DWilsonFT"
label variable W10Q6040DUR32938S2 "Q4DWilsonFT"
label variable W10Q6040VAL32938S2 "Q4DWilsonFT"
label variable W10Q5996SEQ32938S2 "Q4DWilsonFT"
label variable W10Q5996VAL32938S2 "Q4DWilsonFT"
label variable W10Q6057SEQ32939S2 "Q.17RMinorityJLatino"
label variable W10Q6057DUR32939S2 "Q.17RMinorityJLatino"
label variable W10Q6057DUR32940S2 "Q.17RMinorityJWomen"
label variable W10Q6057VAL32940S2 "Q.17RMinorityJWomen"
label variable W10Q6058VAL32941S2 "Q.17RMinorityWWomen"
label variable W10Q6058DUR32941S2 "Q.17RMinorityWWomen"
label variable W10Q6059SEQ32942S2 "Q.17DMinoritySWomen"
label variable W10Q6059DUR32942S2 "Q.17DMinoritySWomen"
label variable W10Q6060DUR32943S2 "Q.17DMinorityWWomen32943"
label variable W10Q6060VAL32943S2 "Q.17DMinorityWWomen32943"
label variable W10Q6054VAL32944S2 "ExplainVoteChoice"
label variable W10Q6040SEQ32944S2 "ExplainVoteChoice"
label variable W10Q5996SEQ32944S2 "ExplainVoteChoice"
label variable W10Q6040DUR32944S2 "ExplainVoteChoice"
label variable W10Q6053DUR32944S2 "ExplainVoteChoice"
label variable W10Q6040VAL32944S2 "ExplainVoteChoice"
label variable W10Q6053VAL32944S2 "ExplainVoteChoice"
label variable W10Q5996VAL32944S2 "ExplainVoteChoice"
label variable W10Q6054DUR32944S2 "ExplainVoteChoice"
label variable W10Q5996DUR32944S2 "ExplainVoteChoice"
label variable W10Q6054SEQ32944S2 "ExplainVoteChoice"
label variable W10Q6058VAL32945S2 "Q.17RMinorityWLatino"
label variable W10Q6058SEQ32945S2 "Q.17RMinorityWLatino"
label variable W10Q6058VAL32946S2 "Q.17RMinorityWAfrican"
label variable W10Q6058DUR32946S2 "Q.17RMinorityWAfrican"
label variable W10Q6060SEQ32947S2 "Q.17DMinorityWAfrican"
label variable W10Q6060DUR32947S2 "Q.17DMinorityWAfrican"
label variable W10Q6059SEQ32948S2 "Q.17DMinoritySAfrican"
label variable W10Q6059VAL32948S2 "Q.17DMinoritySAfrican"
label variable W10Q6059SEQ32949S2 "Q.17DMinoritySLatino"
label variable W10Q6059VAL32949S2 "Q.17DMinoritySLatino"
label variable W10Q6060DUR32950S2 "Q.17DMinorityWLatino"
label variable W10Q6060VAL32950S2 "Q.17DMinorityWLatino"
label variable W10Q6056VAL33459S2 "Debrief_KnowResults"
label variable W10Q6056DUR33459S2 "Debrief_KnowResults"
label variable W10Q6056DUR33460S2 "Debrief_KnowResults0"
label variable W10Q6056VAL33460S2 "Debrief_KnowResults0"
label variable W10Q6061SEQ33461S2 "Q84NewsSources"
label variable W10Q6061VAL33461S2 "Q84NewsSources"


* Merge W10S12 with IPW10 (IP ADRESS)
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W10/WorkingData/W10S12_Working.dta", replace
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W10/WorkingData/W10S12_Working.dta", replace
merge m:m SUBJECTID using "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W10/IP/IPW10.dta"
drop _merge

* Duplicate Check
capture drop DUPW10
sort PAC, stable
quietly by PAC: gen DUPW10 = cond(_N==1,0,_n)

* Generating week indicator
capture drop WEEK10
gen WEEK10 = 1

* Generating Date Variable
capture drop year month day
nsplit W10DATES1, digits(4 2 2) generate(year month day)
capture drop DATEW10b
gen DATEW10b = mdy(month, day, year)
capture drop date1
gen date1 = 19724
format %td date1
format %td DATEW10b
capture drop DATEW10a
gen DATEW10a = DATEW10b - date1
capture drop date1 year month day W10DATES1 W10DATES2 W10DATES3 W10DATES4

* ORDERING
order PAC IP DUPW10 DATEW10a DATEW10b W10TIMES1 WEEK10
sort PAC, stable

* Dropping Duplicates
drop if PAC == .
drop if SUBJECTID == 103840 & DUPW10 == 2
drop if SUBJECTID == 103795
replace PAC= 100829 if SUBJECTID == 104300
drop if SUBJECTID == 104344
replace PAC= 101118 if SUBJECTID == 104304
drop if SUBJECTID == 104311
replace PAC= 108188 if IP == "50.171.169.69"
replace PAC= 108277 if IP == "50.134.64.50"

* Dropping things we wont need
drop W10DATES

*Saving
rename SUBJECTID SUBJECTIDW10
rename IP IPW10
sort PAC
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W10/WorkingData/W10S12_Working.dta", replace


**************************************************************************************************
*				M	E	R	G	I	N	G				E	V	E	R	Y	T	H	I	N	G	
**************************************************************************************************

clear all
set more off

* Merge W1 with W2
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W1/WorkingData/DurationData/OnlyCompleted/W1S1234Completed_Working.dta", replace
merge 1:m PAC using "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W2/WorkingData/DurationData/W2S1234_Working.dta"
drop _merge

* Save W12
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W12.dta", replace

**************************************************************************************************
clear all

* Merge W3 with W4
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W3/WorkingData/DurationData/W3S1234_Working.dta", replace
merge m:m PAC using "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W4/WorkingData/DurationData/W4S1234_Working.dta"
drop _merge

* Save W34
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W34.dta", replace

**************************************************************************************************
clear all

* Merge W5 with W6
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W5/WorkingData/W5S1234_Working.dta", replace
merge m:m PAC using "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W6/WorkingData/W6S1234_Working.dta"
drop _merge

* Save W56
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W56.dta", replace

**************************************************************************************************
clear all

* Merge W7 with W8
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W7/WorkingData/W7S1234_Working.dta", replace
merge m:m PAC using "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W8/WorkingData/W8S1234_Working.dta"
drop _merge

* Save W78
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W78.dta", replace

**************************************************************************************************
clear all

* Merge W9 with W10
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W9/WorkingData/W9S1234_Working.dta", replace
merge m:m PAC using "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W10/WorkingData/W10S12_Working.dta"
drop _merge

* Save W910
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W910.dta", replace

**************************************************************************************************
**************************************************************************************************
clear all

* Merge W12 with W34
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W12.dta", replace
merge m:m PAC using "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W34.dta"
drop _merge

* Save W1234
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W1234.dta", replace

**************************************************************************************************
clear all

* Merge W56 with W78
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W56.dta", replace
merge m:m PAC using "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W78.dta"
drop _merge

* Save W1234
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W5678.dta", replace

**************************************************************************************************
clear all
set maxvar 11000

* Merge W1234 with W5678
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W1234.dta", replace
merge m:m PAC using "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W5678.dta"
drop _merge

* Save W1234
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W12345678.dta", replace

**************************************************************************************************
clear all
set maxvar 11000

* Merge W12345678 with W910
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W12345678.dta", replace
merge m:m PAC using "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W910.dta"
drop _merge

* Save PanelExperiment
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/PanelExperiment.dta", replace

**************************************************************************************************

* Generating DUPfinal: makes the final duplicate check
capture drop DUPfinal
sort PAC
quietly by PAC: gen DUPfinal = cond(_N==1,0,_n)

* Cumulative TOD (COD) and TTO (CTO)

egen CODCheckBackNextWeekHOTAir=rowtotal(W2TODS90348S3)
egen CODCheckBackNextWeekMSNBC=rowtotal(W2TODS90351S3)
egen CODCheckBackNextWeekNYT=rowtotal(W2TODS90353S3)
egen CODJonesEducation=rowtotal(W2TODS89665S3 W3TODS90415S3 W4TODS90668S3 W5TTOS90865S3 W5TODS90865S3 W6TODS91092S3 W7TODS91359S3 W8TODS91660S3 W9TODS91977S3)
egen CODJonesExperience=rowtotal(W2TODS89663S3 W3TODS90413S3 W4TODS90666S3 W5TTOS90863S3 W5TODS90863S3 W6TODS91090S3 W7TODS91357S3 W9TODS91975S3)
egen CODJonesFamily=rowtotal(W2TODS89666S3 W3TODS90416S3 W4TODS90669S3 W5TODS90866S3 W5TTOS90866S3 W6TODS91093S3 W7TODS91360S3 W9TODS91978S3)
egen CODJonesReligion=rowtotal(W2TODS89668S3 W3TODS90418S3 W4TODS90671S3 W5TTOS90868S3 W5TODS90868S3 W6TODS91095S3 W7TODS91362S3 W9TODS91980S3)
egen CODSmithEducation=rowtotal(W2TODS89660S3 W3TODS90410S3 W4TODS90663S3 W5TTOS90860S3 W6TODS91087S3 W7TODS91354S3 W8TODS91655S3 W9TODS91972S3)
egen CODSmithExperience=rowtotal(W2TODS89661S3 W3TODS90411S3 W4TODS90664S3 W5TODS90861S3 W6TODS91088S3 W7TODS91355S3 W8TODS91656S3 W9TODS91973S3)
egen CODSmithFamily=rowtotal(W2TODS89662S3 W3TODS90412S3 W4TODS90665S3 W5TTOS90862S3 W5TODS90862S3 W6TODS91089S3 W7TODS91356S3 W8TODS91657S3 W9TODS91974S3)
egen CODSmithReligion=rowtotal(W2TODS89664S3 W3TODS90414S3 W4TODS90667S3 W5TTOS90864S3 W5TODS90864S3 W6TODS91091S3 W7TODS91358S3 W8TODS91659S3 W9TODS91976S3)
egen CODWK4REndorsementVFW=rowtotal(W4TODS90807S3 W4TODS90807S2 W6TODS91228S3 W7TODS91495S3 W8TODS91796S3)
egen CODWilliamsEducation=rowtotal(W2TODS89677S3 W3TODS90427S3 W4TODS90680S3 W5TTOS90877S3 W5TODS90877S3 W7TODS91371S3 W9TODS91989S3)
egen CODWilliamsExperience=rowtotal(W2TODS89676S3 W3TODS90426S3 W4TODS90679S3 W5TTOS90876S3 W5TODS90876S3 W6TODS91103S3 W7TODS91370S3 W9TODS91988S3)
egen CODWilliamsFamily=rowtotal(W2TODS89675S3 W3TODS90425S3 W4TODS90678S3 W6TODS91102S3 W7TODS91369S3 W8TODS91670S3 W9TODS91987S3)
egen CODWilliamsReligion=rowtotal(W2TODS89673S3 W3TODS90423S3 W5TTOS90873S3 W5TODS90873S3 W6TODS91100S3 W7TODS91367S3 W8TODS91668S3 W9TODS91985S3)
egen CODWilsonFamily=rowtotal(W2TODS89672S3)
egen CODWilsonEducation=rowtotal(W3TODS90419S3 W4TODS90672S3 W5TTOS90869S3 W5TODS90869S3 W6TODS91096S3 W7TODS91363S3 W8TODS91664S3 W9TODS91981S3 W2TODS89669S3)
egen CODWilsonExperience=rowtotal(W2TODS89671S3 W3TODS90421S3 W4TODS90674S3 W5TODS90871S3 W5TTOS90871S3 W6TODS91098S3 W7TODS91365S3 W8TODS91666S3 W9TODS91983S3)
egen CODWilsonFamily2=rowtotal(W3TODS90422S3 W4TODS90675S3 W5TTOS90872S3 W5TODS90872S3 W6TODS91099S3 W7TODS91366S3 W8TODS91667S3 W9TODS91984S3)
egen CODWilsonReligion=rowtotal(W2TODS89678S3 W3TODS90428S3 W4TODS90681S3 W5TTOS90878S3 W5TODS90878S3 W6TODS91105S3 W7TODS91372S3 W8TODS91673S3 W9TODS91990S3)
egen CODWk1DSmithBackground=rowtotal(W2TODS89651S3 W3TODS90409S3 W4TODS90662S3 W5TODS90859S3 W5TTOS90859S3 W6TODS91086S3 W7TODS91353S3 W8TODS91654S3 W9TODS91971S3)
egen CODWk1dSmithCanPic=rowtotal(W2TODS89650S3 W3TODS90408S3 W4TODS90661S3 W5TTOS90858S3 W5TODS90858S3 W6TODS91085S3 W7TODS91352S3 W8TODS91653S3 W9TODS91970S3)
egen CODWk1DSmithExperience=rowtotal(W2TODS89649S3 W3TODS90407S3 W4TODS90660S3 W5TODS90857S3 W5TTOS90857S3 W6TODS91084S3 W7TODS91351S3 W8TODS91652S3 W9TODS91969S3)
egen CODWk1DSmithFamily=rowtotal(W2TODS89648S3 W4TODS90659S3 W5TTOS90856S3 W5TODS90856S3 W6TODS91083S3 W7TODS91350S3 W9TODS91968S3)
egen CODWk1DSmithPersonality=rowtotal(W2TODS89647S3 W3TODS90405S3 W4TODS90658S3 W5TODS90855S3 W5TTOS90855S3 W6TODS91082S3 W7TODS91349S3 W9TODS91967S3)
egen CODWk1DSmithSlogan=rowtotal(W2TODS89646S3 W3TODS90404S3 W4TODS90657S3 W5TTOS90854S3 W5TODS90854S3 W6TODS91081S3 W7TODS91348S3 W8TODS91649S3 W9TODS91966S3)
egen CODWk1DWilsonBackground=rowtotal(W2TODS89645S3 W3TODS90403S3 W4TODS90656S3 W5TTOS90853S3 W5TODS90853S3 W6TODS91080S3 W7TODS91347S3 W8TODS91648S3 W9TODS91965S3)
egen CODWk1dWilsCandPic=rowtotal(W2TODS89644S3 W3TODS90402S3 W4TODS90655S3 W5TODS90852S3 W5TTOS90852S3 W6TODS91079S3 W7TODS91346S3 W8TODS91647S3 W9TODS91964S3)
egen CODWk1DWilsonExperience=rowtotal(W2TODS89643S3 W3TODS90401S3 W4TODS90654S3 W5TODS90851S3 W5TTOS90851S3 W6TODS91078S3 W7TODS91345S3 W8TODS91646S3 W9TODS91963S3)
egen CODWk1DWilsonFamily=rowtotal(W2TODS89642S3 W4TODS90653S3 W5TODS90850S3 W5TTOS90850S3 W6TODS91077S3 W7TODS91344S3)
egen CODWk1DWilsonPersonality=rowtotal(W2TODS89641S3 W3TODS90399S3 W4TODS90652S3 W5TODS90849S3 W5TTOS90849S3 W6TODS91076S3 W7TODS91343S3 W8TODS91644S3 W9TODS91961S3)
egen CODWk1DWilsonSlogan=rowtotal(W2TODS89640S3 W3TODS90398S3 W4TODS90651S3 W5TTOS90848S3 W5TODS90848S3 W6TODS91075S3 W7TODS91342S3 W8TODS91643S3 W9TODS91960S3)
egen CODWk1RJonesBackground=rowtotal(W2TODS89639S3 W4TODS90650S3 W5TTOS90847S3 W5TODS90847S3 W6TODS91074S3 W7TODS91341S3 W8TODS91642S3 W9TODS91959S3)
egen CODWk1rJonesCanPic=rowtotal(W2TODS89638S3 W3TODS90396S3 W4TODS90649S3 W5TTOS90846S3 W5TODS90846S3 W7TODS91340S3 W8TODS91641S3)
egen CODWk1RJonesExperience=rowtotal(W2TODS89637S3 W4TODS90648S3 W5TODS90845S3 W5TTOS90845S3 W9TODS91957S3)
egen CODWk1RJonesFamily=rowtotal(W2TODS89636S3 W3TODS90394S3 W4TODS90647S3 W5TODS90844S3 W5TTOS90844S3 W6TODS91071S3)
egen CODWk1RJonesPersonality=rowtotal(W2TODS89635S3 W3TODS90393S3 W4TODS90646S3 W5TODS90843S3 W5TTOS90843S3 W6TODS91070S3 W7TODS91337S3 W9TODS91955S3)
egen CODWk1RJonesSlogan=rowtotal(W3TODS90392S3 W4TODS90645S3 W5TODS90842S3 W5TTOS90842S3 W6TODS91069S3 W8TODS91637S3)
egen CODWk1RWilliamsBackground=rowtotal(W2TODS89633S3 W4TODS90644S3 W5TODS90841S3 W5TTOS90841S3 W6TODS91068S3 W7TODS91335S3 W8TODS91636S3 W9TODS91953S3)
egen CODWk1rWillCandPic=rowtotal(W2TODS89632S3 W3TODS90390S3 W4TODS90643S3 W5TODS90840S3 W5TTOS90840S3 W7TODS91334S3 W9TODS91952S3)
egen CODWk1RWilliamsExperience=rowtotal(W2TODS89631S3 W4TODS90642S3 W5TTOS90839S3 W5TODS90839S3 W8TODS91634S3 W9TODS91951S3)
egen CODWk1RWilliamsFamily=rowtotal(W2TODS89630S3 W3TODS90388S3 W4TODS90641S3 W5TTOS90838S3 W5TODS90838S3 W8TODS91633S3)
egen CODWk1RWilliamsPersonality=rowtotal(W2TODS89629S3 W3TODS90387S3 W4TODS90640S3 W5TTOS90837S3 W5TODS90837S3 W6TODS91064S3 W8TODS91632S3 W9TODS91949S3)
egen CODWk1RWilliamsSlogan=rowtotal(W3TODS90386S3 W4TODS90639S3 W5TODS90836S3 W5TTOS90836S3 W7TODS91330S3 W8TODS91631S3)
egen CODWk2DEndorsementAFLCIO=rowtotal(W2TODS88687S3 W2TODS88687S2 W3TODS90358S3 W4TODS90611S3 W5TTOS90808S3 W5TODS90808S3 W6TODS91035S3 W7TODS91302S3 W8TODS91603S3 W9TODS91920S3)
egen CODWk2dEndChamCom=rowtotal(W2TODS88703S3 W2TODS88703S2 W3TODS90359S3 W4TODS90612S3 W5TODS90809S3 W5TTOS90809S3 W6TODS91036S3 W7TODS91303S3 W8TODS91604S3 W9TODS91921S3)
egen CODWk2REndorsChamCom=rowtotal(W2TODS88811S3 W2TODS88811S2 W3TODS90360S3 W4TODS90613S3 W5TTOS90810S3 W5TODS90810S3 W6TODS91037S3 W7TODS91304S3 W8TODS91605S3)
egen CODWk2REndorsementAFLCIO=rowtotal(W2TODS88812S2 W2TODS88812S3 W3TODS90361S3 W4TODS90614S3 W5TTOS90811S3 W5TODS90811S3 W6TODS91038S3 W7TODS91305S3 W8TODS91606S3 W9TODS91923S3)
egen CODWk2RJonesJobs=rowtotal(W2TODS89682S3 W2TODS89682S2 W3TODS90432S3 W4TODS90685S3 W6TODS91109S3 W7TODS91376S3 W9TODS91994S3)
egen CODWk2RWilliamsJobs=rowtotal(W2TODS89686S2 W2TODS89686S3 W3TODS90436S3 W4TODS90689S3 W5TTOS90886S3 W5TODS90886S3 W6TODS91113S3 W7TODS91380S3 W9TODS91998S3)
egen CODWk3DEndorsementAFT=rowtotal(W3TODS90510S3 W3TODS90510S2 W4TODS90750S3 W5TODS90945S3 W5TTOS90945S3 W6TODS91172S3 W7TODS91439S3 W9TODS92057S3)
egen CODWk3DEndorsementFAIR=rowtotal(W3TODS90511S2 W3TODS90511S3 W4TODS90751S3 W5TODS90946S3 W5TTOS90946S3 W6TODS91173S3 W7TODS91440S3 W8TODS91741S3 W9TODS92058S3)
egen CODWk3ForcedViewing=rowtotal(W3TODS90515S2)
egen CODWk3REndorsementAFT=rowtotal(W3TODS90514S2 W3TODS90514S3 W4TODS90754S3 W5TODS90949S3 W5TTOS90949S3 W6TODS91176S3 W7TODS91443S3 W8TODS91744S3 W9TODS92061S3)
egen CODWk3REndorsementFAIR=rowtotal(W3TODS90513S3 W3TODS90513S2 W4TODS90753S3 W5TTOS90948S3 W5TODS90948S3 W6TODS91175S3 W8TODS91743S3 W9TODS92060S3)
egen CODWk4DEndorsementHeritage=rowtotal(W4TODS90803S3 W4TODS90803S2 W5TTOS90997S3 W5TODS90997S3 W6TODS91224S3 W7TODS91491S3 W8TODS91792S3 W9TODS92109S3)
egen CODWk4DEndorsementNCLR=rowtotal(W4TODS90802S3 W4TODS90802S2 W5TODS90996S3 W5TTOS90996S3 W6TODS91223S3 W7TODS91490S3 W8TODS91791S3 W9TODS92108S3)
egen CODWk4DEndorsementVFW=rowtotal(W4TODS90804S3 W4TODS90804S2 W5TTOS90998S3 W5TODS90998S3 W6TODS91225S3 W7TODS91492S3 W8TODS91793S3 W9TODS92110S3)
egen CODWk4REndorsementHeritage=rowtotal(W4TODS90806S2 W4TODS90806S3 W5TODS91000S3 W5TTOS91000S3 W6TODS91227S3 W7TODS91494S3 W8TODS91795S3 W9TODS92112S3)
egen CODWk4REndorsementNCLR=rowtotal(W4TODS90805S2 W4TODS90805S3 W5TTOS90999S3 W5TODS90999S3 W6TODS91226S3 W7TODS91493S3 W8TODS91794S3)
egen CODWk5dEndFamResCou=rowtotal(W5TTOS91003S3 W5TODS91003S2 W5TODS91003S3 W5TTOS91003S2 W6TODS91230S3 W7TODS91497S3 W9TODS92115S3)
egen CODWk5dEndHumRts=rowtotal(W5TODS91002S3 W5TODS91002S2 W5TTOS91002S3 W5TTOS91002S2 W6TODS91229S3 W7TODS91496S3 W9TODS92114S3)
egen CODWk5DEndorsementNRL=rowtotal(W5TTOS91005S2 W5TODS91005S2 W5TTOS91005S3 W5TODS91005S3 W6TODS91232S3 W7TODS91499S3 W8TODS91800S3 W9TODS92117S3)
egen CODWk5ForViRaceNotSalient=rowtotal(W5TTOS91034S2 W5TODS91034S2)
egen CODWk5ForViRaceSalient=rowtotal(W5TODS91033S2 W5TTOS91033S2)
egen CODWk5rEndFamResCou=rowtotal(W5TTOS91007S2 W5TTOS91007S3 W5TODS91007S3 W5TODS91007S2 W6TODS91234S3 W7TODS91501S3 W8TODS91802S3)
egen CODWk5REndHumRts=rowtotal(W5TODS91004S3 W5TTOS91004S3 W5TODS91004S2 W5TTOS91004S2 W6TODS91231S3 W7TODS91498S3 W8TODS91799S3 W9TODS92116S3)
egen CODWk5REndorsementNRL=rowtotal(W5TODS91006S2 W5TODS91006S3 W5TTOS91006S2 W5TTOS91006S3 W6TODS91233S3 W7TODS91500S3 W8TODS91801S3)
egen CODWk6DEndorsementADA=rowtotal(W6TODS91290S2 W6TODS91290S3 W7TODS91556S3 W8TODS91853S3 W9TODS92170S3)
egen CODWk6DEndorsementAFSCME=rowtotal(W6TODS91292S2 W6TODS91292S3 W7TODS91558S3 W8TODS91855S3 W9TODS92172S3)
egen CODWk6DEndorsementNTU=rowtotal(W6TODS91291S2 W6TODS91291S3 W7TODS91557S3 W8TODS91854S3 W9TODS92171S3)
egen CODWk6DxSmithScandal=rowtotal(W6TODS91286S2)
egen CODWk6DxWilsonScandal=rowtotal(W6TODS91287S2)
egen CODWk6REndorsementADA=rowtotal(W6TODS91293S3 W6TODS91293S2 W7TODS91559S3 W8TODS91856S3 W9TODS92173S3)
egen CODWk6REndorsementAFSCME=rowtotal(W6TODS91295S2 W6TODS91295S3 W7TODS91561S3 W8TODS91858S3 W9TODS92175S3)
egen CODWk6REndorsementNTU=rowtotal(W6TODS91294S3 W6TODS91294S2 W7TODS91560S3 W8TODS91857S3 W9TODS92174S3)
egen CODWk6RxJonesScandal=rowtotal(W6TODS91288S2)
egen CODWk6RxWilliamsScandal=rowtotal(W6TODS91289S2)
egen CODWk7DEndorsementACU=rowtotal(W7TODS91563S2 W7TODS91563S3 W8TODS91860S3 W9TODS92177S3 )
egen CODWk7DEndorsementNAACP=rowtotal(W7TODS91562S2 W7TODS91562S3 W8TODS91859S3 W9TODS92176S3 )
egen CODWk7REndorsementACU=rowtotal(W7TODS91564S2 W7TODS91564S3 W8TODS91861S3)
egen CODWk7REndorsementNAACP=rowtotal(W7TODS91565S2 W7TODS91565S3 W8TODS91862S3 W9TODS92179S3 )
egen CODWk8DEndorsementACLU=rowtotal(W8TODS91892S2 W8TODS91892S3 W9TODS92204S3)
egen CODWk8DEndorsementAEI=rowtotal(W8TODS91893S3 W8TODS91893S2 W9TODS92205S3)
egen CODWk8REndorsementACLU=rowtotal(W8TODS91894S2 W8TODS91894S3)
egen CODWk8REndorsementAEI=rowtotal(W8TODS91895S3 W8TODS91895S2 W9TODS92207S3)
egen CODWk9DEndorsementCCA=rowtotal(W9TODS92409S3 W9TODS92409S2)
egen CODWk9DEndorsementNOW=rowtotal(W9TODS92408S2 W9TODS92408S3)
egen CODWk9REndorsementCCA=rowtotal(W9TODS92411S3 W9TODS92411S2)
egen CODWk9REndorsementNOW=rowtotal(W9TODS92410S2 W9TODS92410S3)
egen CODwk2DSmithEconPhil=rowtotal(W2TODS89681S3 W2TODS89681S2 W3TODS90431S3 W4TODS90684S3 W5TTOS90881S3 W5TODS90881S3 W6TODS91108S3 W7TODS91375S3 W8TODS91676S3 W9TODS91993S3)
egen CODwk2DSmithJobs=rowtotal(W2TODS89680S2 W2TODS89680S3 W3TODS90430S3 W4TODS90683S3 W5TTOS90880S3 W5TODS90880S3 W6TODS91107S3 W7TODS91374S3 W8TODS91675S3 W9TODS91992S3)
egen CODwk2DWilsonEconPhil=rowtotal(W2TODS89684S3 W2TODS89684S2 W3TODS90434S3 W4TODS90687S3 W5TODS90884S3 W5TTOS90884S3 W6TODS91111S3 W7TODS91378S3 W8TODS91679S3 W9TODS91996S3)
egen CODwk2DWilsonJobs=rowtotal(W2TODS89683S3 W2TODS89683S2 W3TODS90433S3 W4TODS90686S3 W5TODS90883S3 W5TTOS90883S3 W6TODS91110S3 W7TODS91377S3 W8TODS91678S3 W9TODS91995S3)
egen CODwk2RJonesEconPhil=rowtotal(W2TODS89685S2 W2TODS89685S3 W3TODS90435S3 W4TODS90688S3 W6TODS91112S3 W7TODS91379S3 W9TODS91997S3)
egen CODwk2RWilliamsEconPhil=rowtotal(W2TODS89687S3 W2TODS89687S2 W3TODS90437S3 W4TODS90690S3 W5TODS90887S3 W5TTOS90887S3 W6TODS91114S3 W7TODS91381S3 W8TODS91682S W9TODS91999S3)
egen CODwk2d1CBSHUFEcon2=rowtotal(W2TODS89547S2 W2TODS89547S3 W4TODS90615S3 W5TODS90812S3 W5TTOS90812S3)
egen CODwk2d1CNNUNIEcon22=rowtotal(W2TODS89550S3 W2TODS89550S2 W3TODS90365S3 W5TODS90815S3 W5TTOS90815S3 W6TODS91042S3 W7TODS91309S3 W8TODS91610S3)
egen CODwk2d1NBCFOXEcon10=rowtotal(W2TODS89548S3 W2TODS89548S2 W3TODS90363S3 W5TTOS90813S3 W5TODS90813S3 W7TODS91307S3 W8TODS91608S3)
egen CODwk2d1REUROOTEcon18=rowtotal(W2TODS89549S3 W2TODS89549S2 W3TODS90364S3 W4TODS90617S3 W5TODS90814S3 W5TTOS90814S3 W7TODS91308S3 W8TODS91609S3 W9TODS91926S3)
egen CODwk2d2ABCABCEcon37=rowtotal(W2TODS89551S2 W2TODS89551S3 W3TODS90366S3 W4TODS90619S3 W5TTOS90816S3 W5TODS90816S3 W6TODS91043S3 W7TODS91310S3 W8TODS91611S3 W9TODS91928S3)
egen CODwk2d2APAPEcon42=rowtotal(W2TODS89552S2 W2TODS89552S3 W3TODS90367S3 W4TODS90620S3 W5TTOS90817S3 W5TODS90817S3 W6TODS91044S3 W7TODS91311S3 W8TODS91612S3 W9TODS91929S3)
egen CODwk2d2NBCNBCEcon62=rowtotal(W2TODS89554S2 W2TODS89554S3 W3TODS90369S3 W4TODS90622S3 W5TTOS90819S3 W5TODS90819S3 W6TODS91046S3 W7TODS91313S3 W8TODS91614S3 W9TODS91931S3)
egen CODwk2d2NYTNYTEcon54=rowtotal(W2TODS89553S2 W2TODS89553S3 W3TODS90368S3 W4TODS90621S3 W5TTOS90818S3 W5TODS90818S3 W6TODS91045S3 W7TODS91312S3 W8TODS91613S3 W9TODS91930S3)
egen CODwk2d3CBSHUFEcon2=rowtotal(W2TODS89564S3 W2TODS89564S2 W3TODS90378S3 W4TODS90631S3 W5TODS90828S3 W5TTOS90828S3 W6TODS91055S3 W8TODS91623S3)
egen CODwk2d3CNNUNIEcon22=rowtotal(W2TODS89567S3 W2TODS89567S2 W3TODS90381S3 W4TODS90634S3 W6TODS91058S3)
egen CODwk2d3NBCFOXEcon10=rowtotal(W2TODS89565S3 W2TODS89565S2 W3TODS90379S3 W4TODS90632S3 W5TTOS90829S3 W5TODS90829S3 W6TODS91056S3 W7TODS91323S3 W8TODS91624S3 W9TODS91941S3)
egen CODwk2d3REUROOTEcon18=rowtotal(W2TODS89566S3 W2TODS89566S2 W3TODS90380S3 W6TODS91057S3 W8TODS91625S3 W9TODS91942S3)
egen CODwk2r1ABCROOTEcon118=rowtotal(W2TODS89560S2 W2TODS89560S3 W5TTOS90825S3 W5TODS90825S3 W6TODS91052S3 W7TODS91319S3 W8TODS91620S3)
egen CODwk2r1APFOXEcon126=rowtotal(W2TODS89562S3 W2TODS89562S2 W3TODS90377S3 W4TODS90630S3 W5TODS90827S3 W5TTOS90827S3 W6TODS91054S3 W9TODS91939S3)
egen CODwk2r1NBCUNIEcon122=rowtotal(W2TODS89561S2 W2TODS89561S3 W5TODS90826S3 W5TTOS90826S3 W6TODS91053S3)
egen CODwk2r1WSJHUFEcon110=rowtotal(W2TODS89559S2 W2TODS89559S3 W3TODS90374S3 W4TODS90627S3 W5TTOS90824S3 W5TODS90824S3 W6TODS91051S3 W7TODS91318S3 W9TODS91936S3)
egen CODwk2r2APAPEcon78=rowtotal(W2TODS89556S2 W2TODS89556S3 W3TODS90371S3 W4TODS90624S3 W5TTOS90821S3 W5TODS90821S3 W6TODS91048S3 W9TODS91933S3)
egen CODwk2r2CBSCBSEcon66=rowtotal(W2TODS89555S3 W2TODS89555S2 W3TODS90370S3 W4TODS90623S3 W5TODS90820S3 W5TTOS90820S3 W8TODS91615S3)
egen CODwk2r2REUREUEcon82=rowtotal(W2TODS89557S3 W2TODS89557S2 W3TODS90372S3 W4TODS90625S3 W5TODS90822S3 W5TTOS90822S3 W6TODS91049S3 W9TODS91934S3)
egen CODwk2r2WSJWSJEcon94=rowtotal(W2TODS89558S2 W2TODS89558S3 W3TODS90373S3 W4TODS90626S3 W5TODS90823S3 W5TTOS90823S3 W6TODS91050S3 W7TODS91317S3 W8TODS91618S3 W9TODS91935S3)
egen CODwk2r3ABCROOTEcon118=rowtotal(W2TODS89569S3 W2TODS89569S2 W3TODS90383S3 W4TODS90636S3 W7TODS91327S3 W9TODS91945S3)
egen CODwk2r3APFOXEcon126=rowtotal(W2TODS89571S2 W2TODS89571S3 W3TODS90385S3 W4TODS90638S3 W5TODS90835S3 W5TTOS90835S3 W7TODS91329S3)
egen CODwk2r3NBCUNIEcon122=rowtotal(W2TODS89570S2 W2TODS89570S3 W4TODS90637S3 W6TODS91061S3 W7TODS91328S3 W8TODS91629S3 W9TODS91946S3)
egen CODwk2r3WSJHUFEcon110=rowtotal(W2TODS89568S3 W2TODS89568S2 W3TODS90382S3 W4TODS90635S3 )
egen CODwk3DSmithEduc=rowtotal(W2TODS90282S3 W3TODS90439S3 W3TODS90439S2 W4TODS90691S3 W5TTOS90888S3 W5TODS90888S3 W6TODS91115S3 W7TODS91382S3 W8TODS91683S3 W9TODS92000S3)
egen CODwk3DSmithSocPhil=rowtotal(W2TODS90297S3 W3TODS90452S3 W3TODS90452S2 W4TODS90704S3 W5TODS90901S3 W5TTOS90901S3 W6TODS91128S3 W7TODS91395S3 W8TODS91696S3 W9TODS92013S3)
egen CODwk3DWilsonEduc=rowtotal(W2TODS90299S3 W3TODS90453S3 W3TODS90453S2 W4TODS90705S3 W5TTOS90902S3 W5TODS90902S3 W6TODS91129S3 W7TODS91396S3 W8TODS91697S3 W9TODS92014S3)
egen CODwk3DWilsonSocPhil=rowtotal(W2TODS90314S3 W3TODS90467S3 W3TODS90467S2 W4TODS90719S3 W5TODS90916S3 W5TTOS90916S3 W6TODS91143S3 W7TODS91410S3 W8TODS91711S3 W9TODS92028S3)
egen CODwk3RJonesEduc=rowtotal(W2TODS90328S3 W3TODS90481S3 W3TODS90481S2 W4TODS90733S3 W6TODS91157S3 W7TODS91424S3 W9TODS92042S3)
egen CODwk3RJonesSocPhil=rowtotal(W2TODS90329S3 W3TODS90482S2 W3TODS90482S3 W4TODS90734S3 W5TTOS90931S3 W5TODS90931S3 W6TODS91158S3 W7TODS91425S3 W9TODS92043S3)
egen CODwk3RWilliamsEduc=rowtotal(W2TODS90315S3 W3TODS90468S2 W3TODS90468S3 W4TODS90720S3 W5TODS90917S3 W5TTOS90917S3 W6TODS91144S3 W7TODS91411S3 W8TODS91712S3 W9TODS92029S3)
egen CODwk3RWilliamsSocPhil=rowtotal(W2TODS90316S3 W3TODS90469S2 W3TODS90469S3 W4TODS90721S3 W5TODS90918S3 W5TTOS90918S3 W6TODS91145S3 W7TODS91412S3 W9TODS92030S3)
egen CODwk3d1ABCHOT8=rowtotal(W3TODS90512S3 W3TODS90512S2 W4TODS90752S3 W5TODS90947S3 W5TTOS90947S3 W6TODS91174S3 W7TODS91441S3 W8TODS91742S3 W9TODS92059S3)
egen CODwk3d1APROOT16=rowtotal(W3TODS90498S2 W3TODS90498S3 W4TODS90747S3 W5TTOS90944S3 W5TODS90944S3 W7TODS91438S3 W9TODS92056S3)
egen CODwk3d1NBCUNI12=rowtotal(W3TODS90516S3 W3TODS90516S2 W5TTOS90950S3 W5TODS90950S3 W7TODS91444S3 W8TODS91745S3)
egen CODwk3d1NYTMSN28=rowtotal(W3TODS90517S3 W3TODS90517S2 W4TODS90757S3 W5TODS90951S3 W5TTOS90951S3 W6TODS91178S3 W7TODS91445S3 W9TODS92063S3)
egen CODwk3d2CBSCBS36=rowtotal(W3TODS90518S3 W3TODS90518S2 W4TODS90758S3 W5TODS90952S3 W5TTOS90952S3 W6TODS91179S3)
egen CODwk3d2NBCNBC64=rowtotal(W3TODS90521S2 W3TODS90521S3 W4TODS90761S3 W5TTOS90955S3 W5TODS90955S3 W6TODS91182S3 W7TODS91449S3 W8TODS91750S3 W9TODS92067S3)
egen CODwk3d2REUREU48=rowtotal(W3TODS90519S3 W3TODS90519S2 W4TODS90759S3 W5TTOS90953S3 W5TODS90953S3 W6TODS91180S3 W7TODS91447S3 W9TODS92065S3)
egen CODwk3d2WSJWSJ60=rowtotal(W3TODS90520S3 W3TODS90520S2 W4TODS90760S3 W5TTOS90954S3 W5TODS90954S3 W6TODS91181S3 W7TODS91448S3 W8TODS91749S3 W9TODS92066S3)
egen CODwk3d3ABCHOT8=rowtotal(W3TODS90522S3 W3TODS90522S2 W4TODS90762S3 W5TODS90956S3 W5TTOS90956S3 W6TODS91183S3 W7TODS91450S3 W8TODS91751S3 W9TODS92068S3)
egen CODwk3d3APROOT16=rowtotal(W3TODS90525S2 W3TODS90525S3 W6TODS91186S3 W9TODS92071S3 )
egen CODwk3d3NBCUNI12=rowtotal(W3TODS90524S2 W3TODS90524S3 W4TODS90764S3 W6TODS91185S3 )
egen CODwk3d3NYTMSN28=rowtotal(W3TODS90526S3 W3TODS90526S2 W4TODS90766S3 W6TODS91187S3 W7TODS91454S3 W8TODS91755S3 W9TODS92072S3)
egen CODwk3r1CBSFOX116=rowtotal(W3TODS90536S2 W3TODS90536S3 W5TTOS90970S3 W5TODS90970S3 W6TODS91197S3 W8TODS91765S3)
egen CODwk3r1CNNLAT101=rowtotal(W3TODS90535S3 W3TODS90535S2 W5TTOS90969S3 W5TODS90969S3 W6TODS91196S3 W8TODS91764S3)
egen CODwk3r1NBCHUF124=rowtotal(W3TODS90537S2 W3TODS90537S3 W5TTOS90971S3 W5TODS90971S3 )
egen CODwk3r1REUBET100=rowtotal(W3TODS90534S2 W3TODS90534S3 W4TODS90774S3 W5TTOS90968S3 W5TODS90968S3 W6TODS91195S3 W8TODS91763S3)
egen CODwk3r2ABCABC72=rowtotal(W3TODS90523S2 W3TODS90523S3 W4TODS90763S3 W5TTOS90957S3 W5TODS90957S3 W6TODS91184S3 W7TODS91451S3 W8TODS91752S3 W9TODS92069S3)
egen CODwk3r2APAP80=rowtotal(W3TODS90527S2 W3TODS90527S3 W4TODS90767S3 W5TODS90961S3 W5TTOS90961S3 W6TODS91188S3 W7TODS91455S3 W9TODS92073S3)
egen CODwk3r2NYTNYT92=rowtotal(W3TODS90530S3 W3TODS90530S2 W4TODS90770S3 W5TTOS90964S3 W5TODS90964S3 W6TODS91191S3 W7TODS91458S3 W8TODS91759S3 W9TODS92076S3)
egen CODwk3r2WSJWSJ96=rowtotal(W3TODS90531S3 W3TODS90531S2 W4TODS90771S3 W5TODS90965S3 W5TTOS90965S3 W6TODS91192S3 W7TODS91459S3 W8TODS91760S3 W9TODS92077S3)
egen CODwk3r3CBSFOX116=rowtotal(W3TODS90532S2 W3TODS90532S3 W4TODS90772S3 W5TODS90966S3 W5TTOS90966S3 W7TODS91460S3)
egen CODwk3r3CNNLAT101=rowtotal(W3TODS90529S2 W3TODS90529S3 W4TODS90769S3 W6TODS91190S3 W7TODS91457S3 W8TODS91758S3 W9TODS92075S3)
egen CODwk3r3NBCHUF124=rowtotal(W3TODS90533S3 W3TODS90533S2 W4TODS90773S3)
egen CODwk3r3REUBET100=rowtotal(W3TODS90528S3 W3TODS90528S2 W4TODS90768S3 W7TODS91456S3 W9TODS92074S3)
egen CODwk4DSmithChina=rowtotal(W2TODS90284S3 W3TODS90441S3 W4TODS90693S2 W4TODS90693S3 W5TTOS90890S3 W5TODS90890S3 W6TODS91117S3 W7TODS91384S3 W8TODS91685S3 W9TODS92002S3)
egen CODwk4DSmithDefense=rowtotal(W2TODS90285S3 W3TODS90442S3 W4TODS90694S2 W4TODS90694S3 W6TODS91118S3 W7TODS91385S3 W8TODS91686S3 W9TODS92003S3)
egen CODwk4DWilsonChina=rowtotal(W2TODS90301S3 W3TODS90455S3 W4TODS90707S3 W4TODS90707S2 W5TODS90904S3 W5TTOS90904S3 W6TODS91131S3 W7TODS91398S3 W8TODS91699S3 W9TODS92016S3)
egen CODwk4DWilsonDefense=rowtotal(W2TODS90302S3 W3TODS90456S3 W4TODS90708S3 W4TODS90708S2 W5TODS90905S3 W5TTOS90905S3 W6TODS91132S3 W7TODS91399S3 W8TODS91700S3 W9TODS92017S3)
egen CODwk4RJonesChina=rowtotal(W2TODS90330S3 W3TODS90483S3 W4TODS90735S2 W4TODS90735S3 W5TTOS90932S3 W5TODS90932S3 W6TODS91159S3 W7TODS91426S3 W9TODS92044S3)
egen CODwk4RJonesDefense=rowtotal(W2TODS90331S3 W3TODS90484S3 W4TODS90736S3 W4TODS90736S2 W5TTOS90933S3 W5TODS90933S3 W6TODS91160S3 W7TODS91427S3 W9TODS92045S3)
egen CODwk4RWilliamsChina=rowtotal(W2TODS90317S3 W3TODS90470S3 W4TODS90722S2 W4TODS90722S3 W5TODS90919S3 W5TTOS90919S3 W6TODS91146S3 W7TODS91413S3 W8TODS91714S3 W9TODS92031S3)
egen CODwk4RWilliamsDefense=rowtotal(W2TODS90318S3 W3TODS90471S3 W4TODS90723S3 W4TODS90723S2 W5TODS90920S3 W5TTOS90920S3 W6TODS91147S3 W7TODS91414S3 W9TODS92032S3)
egen CODwk4d1ABCHUFFor7=rowtotal(W4TODS90779S3 W4TODS90779S2 W5TTOS90973S3 W5TODS90973S3 W6TODS91200S3 W7TODS91467S3 W8TODS91768S3 W9TODS92085S3)
egen CODwk4d1CBSFOXFor3=rowtotal(W4TODS90778S3 W4TODS90778S2 W5TTOS90972S3 W5TODS90972S3 W7TODS91466S3)
egen CODwk4d1CNNBETFor23=rowtotal(W4TODS90780S3 W4TODS90780S2 W5TODS90974S3 W5TTOS90974S3 W6TODS91201S3 W7TODS91468S3 W8TODS91769S3)
egen CODwk4d1WSJLATFor31=rowtotal(W4TODS90781S3 W4TODS90781S2 W7TODS91469S3 W8TODS91770S3 W9TODS92087S3)
egen CODwk4d2APAPFor43=rowtotal(W4TODS90782S2 W4TODS90782S3 W5TTOS90976S3 W5TODS90976S3 W6TODS91203S3 W7TODS91470S3 W8TODS91771S3 W9TODS92088S3)
egen CODwk4d2NBCNBCFor63=rowtotal(W4TODS90785S2 W4TODS90785S3 W5TTOS90979S3 W5TODS90979S3 W6TODS91206S3 W7TODS91473S3 W8TODS91774S3 W9TODS92091S3)
egen CODwk4d2NYTNYTFor55=rowtotal(W4TODS90784S2 W4TODS90784S3 W5TTOS90978S3 W5TODS90978S3 W6TODS91205S3 W7TODS91472S3 W8TODS91773S3 W9TODS92090S3)
egen CODwk4d2REUREUFor47=rowtotal(W4TODS90783S2 W4TODS90783S3 W5TTOS90977S3 W5TODS90977S3 W6TODS91204S3 W7TODS91471S3 W9TODS92089S3)
egen CODwk4d3ABCHUFFor7=rowtotal(W4TODS90787S3 W4TODS90787S2 W5TODS90981S3 W5TTOS90981S3 W6TODS91208S3 W8TODS91776S3)
egen CODwk4d3CBSFOXFor3=rowtotal(W4TODS90786S3 W4TODS90786S2 W5TTOS90980S3 W5TODS90980S3 W6TODS91207S3 W7TODS91474S3 W8TODS91775S3 W9TODS92092S3)
egen CODwk4d3CNNBETFor23=rowtotal(W4TODS90788S2 W4TODS90788S3 W6TODS91209S3 W8TODS91777S3 W9TODS92094S3)
egen CODwk4d3WSJLATFor31=rowtotal(W4TODS90789S2 W4TODS90789S3 W6TODS91210S3)
egen CODwk4r1APLATFor127=rowtotal(W4TODS90797S3 W4TODS90797S2 W5TODS90991S3 W5TTOS90991S3 W6TODS91218S3 W7TODS91485S3 W8TODS91786S3 W9TODS92103S3)
egen CODwk4r1CBSMSNFor115=rowtotal(W4TODS90796S3 W4TODS90796S2 W5TODS90990S3 W5TTOS90990S3 W6TODS91217S3 W8TODS91785S3)
egen CODwk4r1CNNROOTFor103=rowtotal(W4TODS90794S2 W4TODS90794S3 W5TTOS90988S3 W5TODS90988S3 W8TODS91783S3)
egen CODwk4r1WSJHOTFor111=rowtotal(W4TODS90795S3 W4TODS90795S2 W5TODS90989S3 W5TTOS90989S3 W7TODS91483S3 W8TODS91784S3 W9TODS92101S3)
egen CODwk4r2ABCABCFor71=rowtotal(W4TODS90790S3 W4TODS90790S2 W5TODS90984S3 W5TTOS90984S3 W6TODS91211S3 W7TODS91478S3 W8TODS91779S3)
egen CODwk4r2NBCNBCFor75=rowtotal(W4TODS90791S2 W4TODS90791S3 W5TODS90985S3 W5TTOS90985S3 W6TODS91212S3 W8TODS91780S3 W9TODS92097S3)
egen CODwk4r2NYTNYTFor91=rowtotal(W4TODS90793S3 W4TODS90793S2 W5TTOS90987S3 W5TODS90987S3 W6TODS91214S3 W7TODS91481S3 W8TODS91782S3 W9TODS92099S3)
egen CODwk4r2REUREUFor83=rowtotal(W4TODS90792S3 W4TODS90792S2 W5TODS90986S3 W5TTOS90986S3 W6TODS91213S3 W8TODS91781S3 W9TODS92098S3)
egen CODwk4r3APLATFor127=rowtotal(W4TODS90801S2 W4TODS90801S3 W6TODS91222S3 W7TODS91489S3 W8TODS91790S3 W9TODS92107S3)
egen CODwk4r3CBSMSNFor115=rowtotal(W4TODS90800S3 W4TODS90800S2 W6TODS91221S3)
egen CODwk4r3CNNROOTFor103=rowtotal(W4TODS90798S3 W4TODS90798S2 W7TODS91486S3 W9TODS92104S3 )
egen CODwk4r3WSJHOTFor111=rowtotal(W4TODS90799S2 W4TODS90799S3 W8TODS91788S3)
egen CODwk5DSmithAbortion=rowtotal(W2TODS90286S3 W3TODS90443S3 W4TODS90695S3 W5TODS90892S2 W5TODS90892S3 W5TTOS90892S2 W5TTOS90892S3 W6TODS91119S3 W7TODS91386S3 W8TODS91687S3)
egen CODwk5DSmithGay=rowtotal(W9TODS92004S3 W2TODS90287S3 W3TODS90444S3 W4TODS90696S3 W5TODS90893S2 W5TODS90893S3 W5TTOS90893S2 W5TTOS90893S3 W6TODS91120S3 W7TODS91387S3 W8TODS91688S3 W9TODS92005S3)
egen CODwk5DWilsonAbortion=rowtotal(W2TODS90303S3 W3TODS90457S3 W4TODS90709S3 W5TODS90906S3 W5TTOS90906S3 W5TODS90906S2 W5TTOS90906S2 W6TODS91133S3 W7TODS91400S3 W8TODS91701S3 W9TODS92018S3 )
egen CODwk5DWilsonGay=rowtotal(W2TODS90304S3 W3TODS90458S3 W4TODS90710S3 W5TODS90907S2 W5TTOS90907S3 W5TODS90907S3 W5TTOS90907S2 W6TODS91134S3 W7TODS91401S3 W8TODS91702S3 W9TODS92019S3 )
egen CODwk5RJonesAbortion=rowtotal(W2TODS90332S3 W3TODS90485S3 W4TODS90737S3 W5TTOS90934S2 W5TODS90934S3 W5TODS90934S2 W5TTOS90934S3 W6TODS91161S3 W7TODS91428S3 W9TODS92046S3)
egen CODwk5RJonesGay=rowtotal(W2TODS90333S3 W3TODS90486S3 W4TODS90738S3 W5TODS90935S3 W5TTOS90935S3 W5TODS90935S2 W5TTOS90935S2 W6TODS91162S3 W7TODS91429S3 W9TODS92047S3)
egen CODwk5RWilliamsAbortion=rowtotal(W2TODS90319S3 W3TODS90472S3 W4TODS90724S3 W5TODS90921S2 W5TODS90921S3 W5TTOS90921S3 W5TTOS90921S2 W6TODS91148S3 W7TODS91415S3 W9TODS92033S3)
egen CODwk5RWilliamsGay=rowtotal(W2TODS90320S3 W3TODS90473S3 W4TODS90725S3 W5TTOS90922S2 W5TODS90922S2 W5TTOS90922S3 W5TODS90922S3 W6TODS91149S3 W7TODS91416S3 W9TODS92034S3)
egen CODwk5d1ABCHUFCult5=rowtotal(W5TODS91009S3 W5TTOS91009S3 W5TODS91009S2 W5TTOS91009S2 W6TODS91236S3 W7TODS91503S3 W8TODS91804S3 W9TODS92121S3)
egen CODwk5d1CNNLATCult21=rowtotal(W5TTOS91011S2 W5TTOS91011S3 W5TODS91011S2 W5TODS91011S3 W6TODS91238S3 W7TODS91505S3 W8TODS91806S3)
egen CODwk5d1NBCHOTCult9=rowtotal(W5TTOS91010S2 W5TTOS91010S3 W5TODS91010S3 W5TODS91010S2 W7TODS91504S3 W8TODS91805S3)
egen CODwk5d1NYTBETCult25=rowtotal(W5TTOS91012S3 W5TODS91012S2 W5TTOS91012S2 W5TODS91012S3 W6TODS91239S3 W7TODS91506S3)
egen CODwk5d2APAPCult41=rowtotal(W5TODS91014S2 W5TTOS91014S2 W5TTOS91014S3 W5TODS91014S3 W6TODS91241S3 W7TODS91508S3 W8TODS91809S3 W9TODS92126S3)
egen CODwk5d2CBSCBSCult33=rowtotal(W5TODS91013S3 W5TTOS91013S3 W5TTOS91013S2 W5TODS91013S2 W6TODS91240S3 W9TODS92125S3)
egen CODwk5d2REUREUCult45=rowtotal(W5TODS91015S3 W5TODS91015S2 W5TTOS91015S2 W5TTOS91015S3 W6TODS91242S3 W7TODS91509S3 W8TODS91810S3 W9TODS92127S3)
egen CODwk5d2WSJWSJCult57=rowtotal(W5TTOS91016S3 W5TODS91016S3 W5TTOS91016S2 W5TODS91016S2 W6TODS91243S3 W7TODS91510S3 W8TODS91811S3 W9TODS92128S3)
egen CODwk5d3ABCHUFCult5=rowtotal(W5TTOS91017S2 W5TTOS91017S3 W5TODS91017S3 W5TODS91017S2 W6TODS91244S3 W8TODS91812S3)
egen CODwk5d3CNNLATCult21=rowtotal(W5TTOS91019S2 W5TODS91019S2 W5TTOS91019S3 W5TODS91019S3 W6TODS91246S3)
egen CODwk5d3NBCHOTCult9=rowtotal(W5TODS91018S3 W5TTOS91018S2 W5TTOS91018S3 W5TODS91018S2 W6TODS91245S3 W7TODS91512S3 W8TODS91813S3 W9TODS92130S3)
egen CODwk5d3NYTBETCult25=rowtotal(W5TODS91020S2 W5TTOS91020S3 W5TODS91020S3 W5TTOS91020S2 W6TODS91247S3 W9TODS92132S3)
egen CODwk5r1ABCHOTCult117=rowtotal(W5TTOS91022S2 W5TODS91022S3 W5TTOS91022S3 W5TODS91022S2 W6TODS91249S3 W7TODS91516S3 W8TODS91817S3 W9TODS92134S3)
egen CODwk5r1APMSNCult125=rowtotal(W5TTOS91024S2 W5TTOS91024S3 W5TODS91024S2 W5TODS91024S3 W6TODS91251S3 W7TODS91518S3 W9TODS92136S3)
egen CODwk5r1NBCLATCult121=rowtotal(W5TODS91023S3 W5TODS91023S2 W5TTOS91023S3 W5TTOS91023S2 W6TODS91250S3)
egen CODwk5r1WSJBETCult109=rowtotal(W5TTOS91008S3 W5TODS91008S2 W5TTOS91008S2 W5TODS91008S3 W7TODS91502S3 W9TODS92120S3)
egen CODwk5r2CBSCBSCult65=rowtotal(W5TTOS91025S3 W5TODS91025S3 W5TODS91025S2 W5TTOS91025S2 )
egen CODwk5r2CNNCNNCult85=rowtotal(W5TODS91027S3 W5TTOS91027S3 W5TTOS91027S2 W5TODS91027S2 W7TODS91521S3 W8TODS91822S3)
egen CODwk5r2NYTNYTCult89=rowtotal(W5TODS91028S2 W5TTOS91028S2 W5TODS91028S3 W5TTOS91028S3 W6TODS91255S3 W7TODS91522S3 W8TODS91823S3 W9TODS92140S3)
egen CODwk5r2REUREUCult81=rowtotal(W5TTOS91026S2 W5TTOS91026S3 W5TODS91026S2 W5TODS91026S3 W6TODS91253S3 W9TODS92138S3)
egen CODwk5r3ABCHOTCult117=rowtotal(W5TTOS91030S3 W5TODS91030S2 W5TTOS91030S2 W5TODS91030S3 W8TODS91825S3)
egen CODwk5r3APMSNCult125=rowtotal(W5TODS91032S2 W5TTOS91032S3 W5TTOS91032S2 W5TODS91032S3 W6TODS91259S3)
egen CODwk5r3NBCLATCult121=rowtotal(W5TODS91031S2 W5TTOS91031S2 W5TTOS91031S3 W5TODS91031S3 W6TODS91258S3 W7TODS91525S3 W8TODS91826S3 W9TODS92143S3)
egen CODwk5r3WSJBETCult109=rowtotal(W5TTOS91029S2 W5TODS91029S3 W5TTOS91029S3 W5TODS91029S2 W7TODS91523S3 W9TODS92141S3)
egen CODwk6DSmithHealth=rowtotal(W2TODS90283S3 W3TODS90440S3 W4TODS90692S3 W5TTOS90889S3 W5TODS90889S3 W6TODS91116S2 W6TODS91116S3 W7TODS91383S3 W8TODS91684S3 W9TODS92001S3)
egen CODwk6DSmithTaxes=rowtotal(W2TODS90288S3 W3TODS90445S3 W4TODS90697S3 W5TTOS90894S3 W5TODS90894S3 W6TODS91121S2 W6TODS91121S3 W7TODS91388S3 W8TODS91689S3 W9TODS92006S3)
egen CODwk6DWilsonHealth=rowtotal(W2TODS90300S3 W3TODS90454S3 W4TODS90706S3 W5TTOS90903S3 W5TODS90903S3 W6TODS91130S3 W6TODS91130S2 W7TODS91397S3 W8TODS91698S3 W9TODS92015S3)
egen CODwk6DWilsonTaxes=rowtotal(W2TODS90305S3 W3TODS90459S3 W4TODS90711S3 W5TTOS90908S3 W5TODS90908S3 W6TODS91135S3 W6TODS91135S2 W7TODS91402S3 W8TODS91703S3 W9TODS92020S3)
egen CODwk6RJonesHealth=rowtotal(W2TODS90334S3 W3TODS90487S3 W4TODS90739S3 W5TODS90936S3 W5TTOS90936S3 W6TODS91163S2 W6TODS91163S3 W7TODS91430S3 W9TODS92048S3)
egen CODwk6RJonesTaxes=rowtotal(W2TODS90336S3 W3TODS90489S3 W4TODS90741S3 W5TODS90938S3 W5TTOS90938S3 W6TODS91165S2 W6TODS91165S3 W7TODS91432S3 W9TODS92050S3)
egen CODwk6RWilliamsHealth=rowtotal(W2TODS90342S3 W3TODS90494S3 W4TODS90746S3 W5TODS90943S3 W5TTOS90943S3 W6TODS91170S3 W6TODS91170S2 W7TODS91437S3 W9TODS92055S3)
egen CODwk6RWilliamsTaxes=rowtotal(W2TODS90321S3 W3TODS90474S3 W4TODS90726S3 W5TODS90923S3 W5TTOS90923S3 W6TODS91150S3 W6TODS91150S2 W7TODS91417S3 W9TODS92035S3)
egen CODwk6d1ABCMSNEcon6=rowtotal(W6TODS91263S3 W6TODS91263S2 W8TODS91831S3 W9TODS92148S3 )
egen CODwk6d1APHOTEcon14=rowtotal(W6TODS91270S3 W6TODS91270S2 W7TODS91537S3 W8TODS91838S3 W9TODS92155S3)
egen CODwk6d1NYTBETEcon26=rowtotal(W6TODS91271S2 W6TODS91271S3 W7TODS91538S3 W9TODS92156S3 )
egen CODwk6d1WSJLATEcon30=rowtotal(W6TODS91273S2 W6TODS91273S3 W8TODS91841S3 W9TODS92158S3 )
egen CODwk6d2CBSCBSEcon34=rowtotal(W6TODS91280S3 W6TODS91280S2 W9TODS92164S3)
egen CODwk6d2CNNCNNEcon50=rowtotal(W6TODS91282S2 W6TODS91282S3 W7TODS91548S3 W8TODS91849S3 W9TODS92166S3)
egen CODwk6d2REUREUEcon46=rowtotal(W6TODS91281S3 W6TODS91281S2 W7TODS91547S3 W9TODS92165S3 )
egen CODwk6d2WSJWSJEcon58=rowtotal(W6TODS91283S3 W6TODS91283S2 W7TODS91549S3 W8TODS91850S3 W9TODS92167S3)
egen CODwk6d3ABCMSNEcon6=rowtotal(W6TODS91284S3 W6TODS91284S2 W7TODS91550S3 W8TODS91851S3 W9TODS92168S3)
egen CODwk6d3APHOTEcon14=rowtotal(W6TODS91285S3 W6TODS91285S2 W7TODS91551S3 W8TODS91852S3 W9TODS92169S3)
egen CODwk6d3NYTBETEcon26=rowtotal(W6TODS91277S3 W6TODS91277S2 W9TODS92162S3)
egen CODwk6d3WSJLATEcon30=rowtotal(W6TODS91248S2 W6TODS91248S3)
egen CODwk6r1CBSHOTEcon114=rowtotal(W6TODS91272S3 W6TODS91272S2)
egen CODwk6r1CNNMSNEcon102=rowtotal(W6TODS91268S3 W6TODS91268S2 W7TODS91535S3 W8TODS91836S3 )
egen CODwk6r1NYTBETEcon106=rowtotal(W6TODS91269S3 W6TODS91269S2 W7TODS91536S3 W8TODS91837S3 W9TODS92154S3)
egen CODwk6r1REULATEcon98=rowtotal(W6TODS91267S3 W6TODS91267S2 W9TODS92152S3)
egen CODwk6r2ABCABCEcon70=rowtotal(W6TODS91262S3 W6TODS91262S2 W8TODS91830S3 W9TODS92147S3 )
egen CODwk6r2CBSCBSEcon90=rowtotal(W6TODS91266S2 W6TODS91266S3)
egen CODwk6r2CNNCNNEcon86=rowtotal(W6TODS91265S2 W6TODS91265S3 W8TODS91833S3)
egen CODwk6r2NBCNBCEcon74=rowtotal(W6TODS91264S3 W6TODS91264S2 W9TODS92149S3)
egen CODwk6r3CBSHOTEcon114=rowtotal(W6TODS91278S3 W6TODS91278S2 W8TODS91846S3)
egen CODwk6r3CNNMSNEcon102=rowtotal(W6TODS91276S2 W6TODS91276S3)
egen CODwk6r3NYTBETEcon106=rowtotal(W6TODS91275S2 W6TODS91275S3 W7TODS91542S3 W9TODS92160S3 )
egen CODwk6r3REULATEcon98=rowtotal(W6TODS91274S3 W6TODS91274S2 W7TODS91541S3 W8TODS91842S3 W9TODS92159S3)
egen CODwk7DSmithAffirm=rowtotal(W2TODS90289S3 W3TODS90446S3 W4TODS90698S3 W5TODS90895S3 W5TTOS90895S3 W6TODS91122S3 W7TODS91389S2 W7TODS91389S3 W8TODS91690S3 W9TODS92007S3)
egen CODwk7DSmithImmigration=rowtotal(W2TODS90291S3 W3TODS90447S3 W4TODS90699S3 W5TODS90896S3 W5TTOS90896S3 W6TODS91123S3 W7TODS91390S3 W7TODS91390S2 W8TODS91691S3 W9TODS92008S3)
egen CODwk7DWilsonAffirm=rowtotal(W2TODS90306S3 W3TODS90460S3 W4TODS90712S3 W5TTOS90909S3 W5TODS90909S3 W6TODS91136S3 W7TODS91403S3 W7TODS91403S2 W8TODS91704S3 W9TODS92021S3)
egen CODwk7DWilsonImmigration=rowtotal(W2TODS90307S3 W3TODS90461S3 W4TODS90713S3 W5TODS90910S3 W5TTOS90910S3 W6TODS91137S3 W7TODS91404S2 W7TODS91404S3 W8TODS91705S3 W9TODS92022S3)
egen CODwk7RJonesAffirm=rowtotal(W2TODS90337S3 W3TODS90490S3 W4TODS90742S3 W7TODS91433S2 W7TODS91433S3 W8TODS91734S3 W9TODS92051S3)
egen CODwk7RJonesImmigration=rowtotal(W2TODS90313S3 W3TODS90466S3 W4TODS90718S3 W5TTOS90915S3 W5TODS90915S3 W6TODS91142S3 W7TODS91409S3 W7TODS91409S2 W9TODS92027S3)
egen CODwk7RWilliamsAffirm=rowtotal(W2TODS90322S3 W3TODS90475S3 W4TODS90727S3 W5TTOS90924S3 W5TODS90924S3 W6TODS91151S3 W7TODS91418S2 W7TODS91418S3 W9TODS92036S3)
egen CODwk7RWilliamsImmigration=rowtotal(W2TODS90323S3 W3TODS90476S3 W4TODS90728S3 W5TTOS90925S3 W5TODS90925S3 W7TODS91419S3 W7TODS91419S2 W8TODS91720S3 W9TODS92037S3)
egen CODwk7d1CBSROOTSoc4=rowtotal(W7TODS91595S3 W7TODS91595S2)
egen CODwk7d1CNNLAT24=rowtotal(W7TODS91597S2 W7TODS91597S3 W8TODS91886S3)
egen CODwk7d1REUBET20=rowtotal(W7TODS91596S2 W7TODS91596S3 W8TODS91885S3 W9TODS92197S3 )
egen CODwk7d1WSJHUF32=rowtotal(W7TODS91598S3 W7TODS91598S2 W8TODS91887S3 W9TODS92199S3 )
egen CODwk7d2ABCABC40=rowtotal(W7TODS91599S2 W7TODS91599S3 W8TODS91888S3 W9TODS92200S3 )
egen CODwk7d2APAP44=rowtotal(W7TODS91600S3 W7TODS91600S2 W9TODS92201S3)
egen CODwk7d2CNNCNN52=rowtotal(W7TODS91601S2 W7TODS91601S3 W8TODS91890S3 W9TODS92202S3 )
egen CODwk7d2NYTNYT56=rowtotal(W7TODS91602S2 W7TODS91602S3 W8TODS91891S3 W9TODS92203S3 )
egen CODwk7d3CBSROOTSoc4=rowtotal(W7TODS91588S3 W7TODS91588S2 W8TODS91877S3 W9TODS92189S3 )
egen CODwk7d3CNNLAT24=rowtotal(W7TODS91592S2 W7TODS91592S3)
egen CODwk7d3REUBET20=rowtotal(W7TODS91590S2 W7TODS91590S3 W9TODS92191S3)
egen CODwk7d3WSJHUF32=rowtotal(W7TODS91593S3 W7TODS91593S2 W8TODS91882S3)
egen CODwk7r1ABCMSN120=rowtotal(W7TODS91585S3 W7TODS91585S2)
egen CODwk7r1APHOT128=rowtotal(W7TODS91586S3 W7TODS91586S2 W9TODS92187S3)
egen CODwk7r1NYTROOT108=rowtotal(W7TODS91582S2 W7TODS91582S3 W8TODS91872S3 W9TODS92184S3 )
egen CODwk7r1WSJUNI112=rowtotal(W7TODS91584S3 W7TODS91584S2 W9TODS92185S3)
egen CODwk7r2CBSCBSsoc68=rowtotal(W7TODS91570S2 W7TODS91570S3)
egen CODwk7r2CNNCNN88=rowtotal(W7TODS91576S3 W7TODS91576S2 W8TODS91868S3)
egen CODwk7r2NBCNBC76=rowtotal(W7TODS91572S2 W7TODS91572S3 W8TODS91866S3 W9TODS92181S3 )
egen CODwk7r2REUREU84=rowtotal(W7TODS91574S3 W7TODS91574S2 W9TODS92182S3)
egen CODwk7r3ABCMSN120=rowtotal(W7TODS91591S2 W7TODS91591S3)
egen CODwk7r3APHOT128=rowtotal(W7TODS91594S2 W7TODS91594S3 W8TODS91883S3)
egen CODwk7r3NYTROOT108=rowtotal(W7TODS91587S2 W7TODS91587S3 W9TODS92188S3)
egen CODwk7r3WSJUNI112=rowtotal(W7TODS91589S3 W7TODS91589S2 W8TODS91878S3 W9TODS92190S3 )
egen CODwk8DSmithAfghan=rowtotal(W2TODS90292S3 W3TODS90448S3 W4TODS90700S3 W5TTOS90897S3 W5TODS90897S3 W6TODS91124S3 W7TODS91391S3 W8TODS91692S2 W8TODS91692S3 W9TODS92009S3)
egen CODwk8DSmithMil=rowtotal(W2TODS90293S3 W3TODS90449S3 W4TODS90701S3 W5TTOS90898S3 W5TODS90898S3 W6TODS91125S3 W7TODS91392S3 W8TODS91693S2 W8TODS91693S3 W9TODS92010S3)
egen CODwk8DWilsonAfghan=rowtotal(W2TODS90308S3 W3TODS90462S3 W4TODS90714S3 W5TTOS90911S3 W5TODS90911S3 W6TODS91138S3 W7TODS91405S3 W8TODS91706S3 W8TODS91706S2 W9TODS92023S3)
egen CODwk8DWilsonMil=rowtotal(W2TODS90309S3 W3TODS90463S3 W4TODS90715S3 W5TODS90912S3 W5TTOS90912S3 W6TODS91139S3 W7TODS91406S3 W8TODS91707S3 W8TODS91707S2 W9TODS92024S3)
egen CODwk8JRonesAfghan=rowtotal(W2TODS90335S3 W3TODS90488S3 W4TODS90740S3 W6TODS91164S3 W7TODS91431S3)
egen CODwk8RJonesAfghan=rowtotal(W8TODS91732S2 W8TODS91732S3 W9TODS92049S3)
egen CODwk8RJonesMil=rowtotal(W2TODS90339S3 W3TODS90492S3 W4TODS90744S3 W5TTOS90941S3 W5TODS90941S3 W6TODS91168S3 W7TODS91435S3 W8TODS91736S2 W8TODS91736S3 W9TODS92053S3)
egen CODwk8RWilliamsAfghan=rowtotal(W2TODS90324S3 W3TODS90477S3 W4TODS90729S3 W5TODS90926S3 W5TTOS90926S3 W6TODS91153S3 W7TODS91420S3 W8TODS91721S3 W8TODS91721S2 W9TODS92038S3)
egen CODwk8RWilliamsMil=rowtotal(W2TODS90325S3 W3TODS90478S3 W4TODS90730S3 W5TODS90927S3 W5TTOS90927S3 W6TODS91154S3 W7TODS91421S3 W8TODS91722S3 W8TODS91722S2 W9TODS92039S3)
egen CODwk8d1APROOTFor15=rowtotal(W8TODS91897S2 W8TODS91897S3 W9TODS92209S3)
egen CODwk8d1NBCMSNFor11=rowtotal(W8TODS91896S2 W8TODS91896S3)
egen CODwk8d1NYTUNIFor27=rowtotal(W8TODS91899S3 W8TODS91899S2 W9TODS92211S3)
egen CODwk8d1REUHOTFor19=rowtotal(W8TODS91898S3 W8TODS91898S2 W9TODS92210S3)
egen CODwk8d2ABCABCFor38=rowtotal(W8TODS91901S3 W8TODS91901S2 W9TODS92213S3)
egen CODwk8d2CBSCBSFor35=rowtotal(W8TODS91900S2 W8TODS91900S3 W9TODS92212S3)
egen CODwk8d2CNNCNNFor51=rowtotal(W8TODS91902S2 W8TODS91902S3 W9TODS92214S3)
egen CODwk8d2WSJWSJFor59=rowtotal(W8TODS91904S3 W8TODS91904S2 W9TODS92216S3)
egen CODwk8d3APROOTFor15=rowtotal(W8TODS91913S2 W8TODS91913S3 W9TODS92225S3)
egen CODwk8d3NBCMSNFor11=rowtotal(W8TODS91912S3 W8TODS91912S2 W9TODS92224S3)
egen CODwk8d3NYTUNIFor27=rowtotal(W8TODS91915S2 W8TODS91915S3)
egen CODwk8d3REUHOTFor19=rowtotal(W8TODS91914S3 W8TODS91914S2 W9TODS92226S3)
egen CODwk8r1ABCUNIFor119=rowtotal(W8TODS91910S2 W8TODS91910S3)
egen CODwk8r1NBCHUFFor123=rowtotal(W8TODS91911S3 W8TODS91911S2)
egen CODwk8r1NYTFOXFor107=rowtotal(W8TODS91909S3 W8TODS91909S2 W9TODS92221S3)
egen CODwk8r1REUBETFor99=rowtotal(W8TODS91908S2 W8TODS91908S3 W9TODS92220S3)
egen CODwk8r2APAPFor79=rowtotal(W8TODS91905S3 W8TODS91905S2 W9TODS92217S3)
egen CODwk8r2CBSCBSFor67=rowtotal(W8TODS91903S3 W8TODS91903S2)
egen CODwk8r2CNNCNNFor87=rowtotal(W8TODS91906S3 W8TODS91906S2)
egen CODwk8r2WSJWSJFor95=rowtotal(W8TODS91907S2 W8TODS91907S3)
egen CODwk8r3ABCUNIFor119=rowtotal(W8TODS91918S2 W8TODS91918S3 W9TODS92230S3)
egen CODwk8r3NBCHUFFor123=rowtotal(W8TODS91919S2 W8TODS91919S3)
egen CODwk8r3NYTFOXFor107=rowtotal(W8TODS91917S3 W8TODS91917S2)
egen CODwk8r3REUBETFor99=rowtotal(W8TODS91916S3 W8TODS91916S2 W9TODS92228S3)
egen CODwk9DSmithDeathPen=rowtotal(W2TODS90294S3 W3TODS90450S3 W4TODS90702S3 W5TODS90899S3 W5TTOS90899S3 W6TODS91126S3 W7TODS91393S3 W8TODS91694S3 W9TODS92011S2 W9TODS92011S3)
egen CODwk9DSmithStemCells=rowtotal(W2TODS90295S3 W3TODS90451S3 W4TODS90703S3 W5TTOS90900S3 W5TODS90900S3 W6TODS91127S3 W7TODS91394S3 W8TODS91695S3 W9TODS92012S3 W9TODS92012S2)
egen CODwk9DWilsonDeathPen=rowtotal(W2TODS90310S3 W3TODS90464S3 W4TODS90716S3 W5TODS90913S3 W5TTOS90913S3 W6TODS91140S3 W7TODS91407S3 W8TODS91708S3 W9TODS92025S3 W9TODS92025S2)
egen CODwk9DWilsonStemCells=rowtotal(W2TODS90311S3 W3TODS90465S3 W4TODS90717S3 W5TODS90914S3 W5TTOS90914S3 W6TODS91141S3 W7TODS91408S3 W8TODS91709S3 W9TODS92026S3 W9TODS92026S2)
egen CODwk9RJonesDeathPen=rowtotal(W2TODS90340S3 W3TODS90493S3 W4TODS90745S3 W5TODS90942S3 W5TTOS90942S3 W6TODS91169S3 W7TODS91436S3 W9TODS92054S2 W9TODS92054S3)
egen CODwk9RJonesStemCells=rowtotal(W2TODS90338S3 W3TODS90491S3 W4TODS90743S3 W5TODS90940S3 W5TTOS90940S3 W6TODS91167S3 W7TODS91434S3 W8TODS91735S3 W9TODS92052S3 W9TODS92052S2)
egen CODwk9RWilliamsDeathPen=rowtotal(W2TODS90326S3 W3TODS90479S3 W4TODS90731S3 W6TODS91155S3 W7TODS91422S3 W9TODS92040S2 W9TODS92040S3)
egen CODwk9RWilliamsStemCells=rowtotal(W2TODS90327S3 W3TODS90480S3 W4TODS90732S3 W5TTOS90929S3 W5TODS90929S3 W7TODS91423S3 W9TODS92041S3 W9TODS92041S2)
egen CODwk9d1APFOXCult13=rowtotal(W9TODS92386S2 W9TODS92386S3)
egen CODwk9d1CBSUNICult1=rowtotal(W9TODS92385S2 W9TODS92385S3)
egen CODwk9d1REUMSNCult17=rowtotal(W9TODS92387S3 W9TODS92387S2)
egen CODwk9d1WSJFOXCult29=rowtotal(W9TODS92389S2 W9TODS92389S3)
egen CODwk9d2ABCABCCult39=rowtotal(W9TODS92391S3 W9TODS92391S2)
egen CODwk9d2CNNCNNCult49=rowtotal(W9TODS92392S2 W9TODS92392S3)
egen CODwk9d2NBCNBCCult61=rowtotal(W9TODS92395S2 W9TODS92395S3)
egen CODwk9d2NYTNYTCult53=rowtotal(W9TODS92394S2 W9TODS92394S3)
egen CODwk9d3APFOXCult13=rowtotal(W9TODS92397S3 W9TODS92397S2)
egen CODwk9d3CBSUNICult1=rowtotal(W9TODS92396S3 W9TODS92396S2)
egen CODwk9d3REUMSNCult17=rowtotal(W9TODS92399S2 W9TODS92399S3)
egen CODwk9d3WSJFOXCult29=rowtotal(W9TODS92400S2 W9TODS92400S3)
egen CODwk9r1CBSHUFCult113=rowtotal(W9TODS92403S2 W9TODS92403S3)
egen CODwk9r1CNNFOXCult104=rowtotal(W9TODS92401S3 W9TODS92401S2)
egen CODwk9r1NYTUNICult105=rowtotal(W9TODS92402S2 W9TODS92402S3)
egen CODwk9r1REUROOTCult97=rowtotal(W9TODS92398S2 W9TODS92398S3)
egen CODwk9r2ABCABCCult69=rowtotal(W9TODS92384S2 W9TODS92384S3)
egen CODwk9r2APAPCult77=rowtotal(W9TODS92390S3 W9TODS92390S2)
egen CODwk9r2NBCNBCCult73=rowtotal(W9TODS92388S3 W9TODS92388S2 W9TODS92388S3 W9TODS92388S2 )
egen CODwk9r2WSJWSJCult93=rowtotal(W9TODS92393S3 W9TODS92393S2 W9TODS92393S3 W9TODS92393S2 )
egen CODwk9r3CBSHUFCult113=rowtotal(W9TODS92407S2 W9TODS92407S3 W9TODS92407S2 W9TODS92407S3 )
egen CODwk9r3CNNFOXCult104=rowtotal(W9TODS92405S3 W9TODS92405S2 W9TODS92405S3 W9TODS92405S2 )
egen CODwk9r3NYTUNICult105=rowtotal(W9TODS92406S3 W9TODS92406S2 W9TODS92406S3 W9TODS92406S2 )
egen CODwk9r3REUROOTCult97=rowtotal(W9TODS92404S2 W9TODS92404S3 W9TODS92404S2 W9TODS92404S3 )
*
*
*
egen CTOCheckBackNextWeekHOTAir=rowtotal(W2TTOS90348S3)
egen CTOCheckBackNextWeekMSNBC=rowtotal(W2TTOS90351S3)
egen CTOCheckBackNextWeekNYT=rowtotal(W2TTOS90353S3)
egen CTOJonesEducation=rowtotal(W2TTOS89665S3 W3TTOS90415S3 W4TTOS90668S3 W5TTOS90865S3 W5TTOS90865S3 W6TTOS91092S3 W7TTOS91359S3 W8TTOS91660S3 W9TTOS91977S3)
egen CTOJonesExperience=rowtotal(W2TTOS89663S3 W3TTOS90413S3 W4TTOS90666S3 W5TTOS90863S3 W5TTOS90863S3 W6TTOS91090S3 W7TTOS91357S3 W9TTOS91975S3)
egen CTOJonesFamily=rowtotal(W2TTOS89666S3 W3TTOS90416S3 W4TTOS90669S3 W5TTOS90866S3 W5TTOS90866S3 W6TTOS91093S3 W7TTOS91360S3 W9TTOS91978S3)
egen CTOJonesReligion=rowtotal(W2TTOS89668S3 W3TTOS90418S3 W4TTOS90671S3 W5TTOS90868S3 W5TTOS90868S3 W6TTOS91095S3 W7TTOS91362S3 W9TTOS91980S3)
egen CTOSmithEducation=rowtotal(W2TTOS89660S3 W3TTOS90410S3 W4TTOS90663S3 W5TTOS90860S3 W6TTOS91087S3 W7TTOS91354S3 W8TTOS91655S3 W9TTOS91972S3)
egen CTOSmithExperience=rowtotal(W2TTOS89661S3 W3TTOS90411S3 W4TTOS90664S3 W5TTOS90861S3 W6TTOS91088S3 W7TTOS91355S3 W8TTOS91656S3 W9TTOS91973S3)
egen CTOSmithFamily=rowtotal(W2TTOS89662S3 W3TTOS90412S3 W4TTOS90665S3 W5TTOS90862S3 W5TTOS90862S3 W6TTOS91089S3 W7TTOS91356S3 W8TTOS91657S3 W9TTOS91974S3)
egen CTOSmithReligion=rowtotal(W2TTOS89664S3 W3TTOS90414S3 W4TTOS90667S3 W5TTOS90864S3 W5TTOS90864S3 W6TTOS91091S3 W7TTOS91358S3 W8TTOS91659S3 W9TTOS91976S3)
egen CTOWK4REndorsementVFW=rowtotal(W4TTOS90807S3 W4TTOS90807S2 W6TTOS91228S3 W7TTOS91495S3 W8TTOS91796S3)
egen CTOWilliamsEducation=rowtotal(W2TTOS89677S3 W3TTOS90427S3 W4TTOS90680S3 W5TTOS90877S3 W5TTOS90877S3 W7TTOS91371S3 W9TTOS91989S3)
egen CTOWilliamsExperience=rowtotal(W2TTOS89676S3 W3TTOS90426S3 W4TTOS90679S3 W5TTOS90876S3 W5TTOS90876S3 W6TTOS91103S3 W7TTOS91370S3 W9TTOS91988S3)
egen CTOWilliamsFamily=rowtotal(W2TTOS89675S3 W3TTOS90425S3 W4TTOS90678S3 W6TTOS91102S3 W7TTOS91369S3 W8TTOS91670S3 W9TTOS91987S3)
egen CTOWilliamsReligion=rowtotal(W2TTOS89673S3 W3TTOS90423S3 W5TTOS90873S3 W5TTOS90873S3 W6TTOS91100S3 W7TTOS91367S3 W8TTOS91668S3 W9TTOS91985S3)
egen CTOWilsonFamily=rowtotal(W2TTOS89672S3)
egen CTOWilsonEducation=rowtotal(W3TTOS90419S3 W4TTOS90672S3 W5TTOS90869S3 W5TTOS90869S3 W6TTOS91096S3 W7TTOS91363S3 W8TTOS91664S3 W9TTOS91981S3 W2TTOS89669S3)
egen CTOWilsonExperience=rowtotal(W2TTOS89671S3 W3TTOS90421S3 W4TTOS90674S3 W5TTOS90871S3 W5TTOS90871S3 W6TTOS91098S3 W7TTOS91365S3 W8TTOS91666S3 W9TTOS91983S3)
egen CTOWilsonFamily2=rowtotal(W3TTOS90422S3 W4TTOS90675S3 W5TTOS90872S3 W5TTOS90872S3 W6TTOS91099S3 W7TTOS91366S3 W8TTOS91667S3 W9TTOS91984S3)
egen CTOWilsonReligion=rowtotal(W2TTOS89678S3 W3TTOS90428S3 W4TTOS90681S3 W5TTOS90878S3 W5TTOS90878S3 W6TTOS91105S3 W7TTOS91372S3 W8TTOS91673S3 W9TTOS91990S3)
egen CTOWk1DSmithBackground=rowtotal(W2TTOS89651S3 W3TTOS90409S3 W4TTOS90662S3 W5TTOS90859S3 W5TTOS90859S3 W6TTOS91086S3 W7TTOS91353S3 W8TTOS91654S3 W9TTOS91971S3)
egen CTOWk1dSmithCanPic=rowtotal(W2TTOS89650S3 W3TTOS90408S3 W4TTOS90661S3 W5TTOS90858S3 W5TTOS90858S3 W6TTOS91085S3 W7TTOS91352S3 W8TTOS91653S3 W9TTOS91970S3)
egen CTOWk1DSmithExperience=rowtotal(W2TTOS89649S3 W3TTOS90407S3 W4TTOS90660S3 W5TTOS90857S3 W5TTOS90857S3 W6TTOS91084S3 W7TTOS91351S3 W8TTOS91652S3 W9TTOS91969S3)
egen CTOWk1DSmithFamily=rowtotal(W2TTOS89648S3 W4TTOS90659S3 W5TTOS90856S3 W5TTOS90856S3 W6TTOS91083S3 W7TTOS91350S3 W9TTOS91968S3)
egen CTOWk1DSmithPersonality=rowtotal(W2TTOS89647S3 W3TTOS90405S3 W4TTOS90658S3 W5TTOS90855S3 W5TTOS90855S3 W6TTOS91082S3 W7TTOS91349S3 W9TTOS91967S3)
egen CTOWk1DSmithSlogan=rowtotal(W2TTOS89646S3 W3TTOS90404S3 W4TTOS90657S3 W5TTOS90854S3 W5TTOS90854S3 W6TTOS91081S3 W7TTOS91348S3 W8TTOS91649S3 W9TTOS91966S3)
egen CTOWk1DWilsonBackground=rowtotal(W2TTOS89645S3 W3TTOS90403S3 W4TTOS90656S3 W5TTOS90853S3 W5TTOS90853S3 W6TTOS91080S3 W7TTOS91347S3 W8TTOS91648S3 W9TTOS91965S3)
egen CTOWk1dWilsCandPic=rowtotal(W2TTOS89644S3 W3TTOS90402S3 W4TTOS90655S3 W5TTOS90852S3 W5TTOS90852S3 W6TTOS91079S3 W7TTOS91346S3 W8TTOS91647S3 W9TTOS91964S3)
egen CTOWk1DWilsonExperience=rowtotal(W2TTOS89643S3 W3TTOS90401S3 W4TTOS90654S3 W5TTOS90851S3 W5TTOS90851S3 W6TTOS91078S3 W7TTOS91345S3 W8TTOS91646S3 W9TTOS91963S3)
egen CTOWk1DWilsonFamily=rowtotal(W2TTOS89642S3 W4TTOS90653S3 W5TTOS90850S3 W5TTOS90850S3 W6TTOS91077S3 W7TTOS91344S3)
egen CTOWk1DWilsonPersonality=rowtotal(W2TTOS89641S3 W3TTOS90399S3 W4TTOS90652S3 W5TTOS90849S3 W5TTOS90849S3 W6TTOS91076S3 W7TTOS91343S3 W8TTOS91644S3 W9TTOS91961S3)
egen CTOWk1DWilsonSlogan=rowtotal(W2TTOS89640S3 W3TTOS90398S3 W4TTOS90651S3 W5TTOS90848S3 W5TTOS90848S3 W6TTOS91075S3 W7TTOS91342S3 W8TTOS91643S3 W9TTOS91960S3)
egen CTOWk1RJonesBackground=rowtotal(W2TTOS89639S3 W4TTOS90650S3 W5TTOS90847S3 W5TTOS90847S3 W6TTOS91074S3 W7TTOS91341S3 W8TTOS91642S3 W9TTOS91959S3)
egen CTOWk1rJonesCanPic=rowtotal(W2TTOS89638S3 W3TTOS90396S3 W4TTOS90649S3 W5TTOS90846S3 W5TTOS90846S3 W7TTOS91340S3 W8TTOS91641S3)
egen CTOWk1RJonesExperience=rowtotal(W2TTOS89637S3 W4TTOS90648S3 W5TTOS90845S3 W5TTOS90845S3 W9TTOS91957S3)
egen CTOWk1RJonesFamily=rowtotal(W2TTOS89636S3 W3TTOS90394S3 W4TTOS90647S3 W5TTOS90844S3 W5TTOS90844S3 W6TTOS91071S3)
egen CTOWk1RJonesPersonality=rowtotal(W2TTOS89635S3 W3TTOS90393S3 W4TTOS90646S3 W5TTOS90843S3 W5TTOS90843S3 W6TTOS91070S3 W7TTOS91337S3 W9TTOS91955S3)
egen CTOWk1RJonesSlogan=rowtotal(W3TTOS90392S3 W4TTOS90645S3 W5TTOS90842S3 W5TTOS90842S3 W6TTOS91069S3 W8TTOS91637S3)
egen CTOWk1RWilliamsBackground=rowtotal(W2TTOS89633S3 W4TTOS90644S3 W5TTOS90841S3 W5TTOS90841S3 W6TTOS91068S3 W7TTOS91335S3 W8TTOS91636S3 W9TTOS91953S3)
egen CTOWk1rWillCandPic=rowtotal(W2TTOS89632S3 W3TTOS90390S3 W4TTOS90643S3 W5TTOS90840S3 W5TTOS90840S3 W7TTOS91334S3 W9TTOS91952S3)
egen CTOWk1RWilliamsExperience=rowtotal(W2TTOS89631S3 W4TTOS90642S3 W5TTOS90839S3 W5TTOS90839S3 W8TTOS91634S3 W9TTOS91951S3)
egen CTOWk1RWilliamsFamily=rowtotal(W2TTOS89630S3 W3TTOS90388S3 W4TTOS90641S3 W5TTOS90838S3 W5TTOS90838S3 W8TTOS91633S3)
egen CTOWk1RWilliamsPersonality=rowtotal(W2TTOS89629S3 W3TTOS90387S3 W4TTOS90640S3 W5TTOS90837S3 W5TTOS90837S3 W6TTOS91064S3 W8TTOS91632S3 W9TTOS91949S3)
egen CTOWk1RWilliamsSlogan=rowtotal(W3TTOS90386S3 W4TTOS90639S3 W5TTOS90836S3 W5TTOS90836S3 W7TTOS91330S3 W8TTOS91631S3)
egen CTOWk2DEndorsementAFLCIO=rowtotal(W2TTOS88687S3 W2TTOS88687S2 W3TTOS90358S3 W4TTOS90611S3 W5TTOS90808S3 W5TTOS90808S3 W6TTOS91035S3 W7TTOS91302S3 W8TTOS91603S3 W9TTOS91920S3)
egen CTOWk2dEndChamCom=rowtotal(W2TTOS88703S3 W2TTOS88703S2 W3TTOS90359S3 W4TTOS90612S3 W5TTOS90809S3 W5TTOS90809S3 W6TTOS91036S3 W7TTOS91303S3 W8TTOS91604S3 W9TTOS91921S3)
egen CTOWk2REndorsChamCom=rowtotal(W2TTOS88811S3 W2TTOS88811S2 W3TTOS90360S3 W4TTOS90613S3 W5TTOS90810S3 W5TTOS90810S3 W6TTOS91037S3 W7TTOS91304S3 W8TTOS91605S3)
egen CTOWk2REndorsementAFLCIO=rowtotal(W2TTOS88812S2 W2TTOS88812S3 W3TTOS90361S3 W4TTOS90614S3 W5TTOS90811S3 W5TTOS90811S3 W6TTOS91038S3 W7TTOS91305S3 W8TTOS91606S3 W9TTOS91923S3)
egen CTOWk2RJonesJobs=rowtotal(W2TTOS89682S3 W2TTOS89682S2 W3TTOS90432S3 W4TTOS90685S3 W6TTOS91109S3 W7TTOS91376S3 W9TTOS91994S3)
egen CTOWk2RWilliamsJobs=rowtotal(W2TTOS89686S2 W2TTOS89686S3 W3TTOS90436S3 W4TTOS90689S3 W5TTOS90886S3 W5TTOS90886S3 W6TTOS91113S3 W7TTOS91380S3 W9TTOS91998S3)
egen CTOWk3DEndorsementAFT=rowtotal(W3TTOS90510S3 W3TTOS90510S2 W4TTOS90750S3 W5TTOS90945S3 W5TTOS90945S3 W6TTOS91172S3 W7TTOS91439S3 W9TTOS92057S3)
egen CTOWk3DEndorsementFAIR=rowtotal(W3TTOS90511S2 W3TTOS90511S3 W4TTOS90751S3 W5TTOS90946S3 W5TTOS90946S3 W6TTOS91173S3 W7TTOS91440S3 W8TTOS91741S3 W9TTOS92058S3)
egen CTOWk3ForcedViewing=rowtotal(W3TTOS90515S2)
egen CTOWk3REndorsementAFT=rowtotal(W3TTOS90514S2 W3TTOS90514S3 W4TTOS90754S3 W5TTOS90949S3 W5TTOS90949S3 W6TTOS91176S3 W7TTOS91443S3 W8TTOS91744S3 W9TTOS92061S3)
egen CTOWk3REndorsementFAIR=rowtotal(W3TTOS90513S3 W3TTOS90513S2 W4TTOS90753S3 W5TTOS90948S3 W5TTOS90948S3 W6TTOS91175S3 W8TTOS91743S3 W9TTOS92060S3)
egen CTOWk4DEndorsementHeritage=rowtotal(W4TTOS90803S3 W4TTOS90803S2 W5TTOS90997S3 W5TTOS90997S3 W6TTOS91224S3 W7TTOS91491S3 W8TTOS91792S3 W9TTOS92109S3)
egen CTOWk4DEndorsementNCLR=rowtotal(W4TTOS90802S3 W4TTOS90802S2 W5TTOS90996S3 W5TTOS90996S3 W6TTOS91223S3 W7TTOS91490S3 W8TTOS91791S3 W9TTOS92108S3)
egen CTOWk4DEndorsementVFW=rowtotal(W4TTOS90804S3 W4TTOS90804S2 W5TTOS90998S3 W5TTOS90998S3 W6TTOS91225S3 W7TTOS91492S3 W8TTOS91793S3 W9TTOS92110S3)
egen CTOWk4REndorsementHeritage=rowtotal(W4TTOS90806S2 W4TTOS90806S3 W5TTOS91000S3 W5TTOS91000S3 W6TTOS91227S3 W7TTOS91494S3 W8TTOS91795S3 W9TTOS92112S3)
egen CTOWk4REndorsementNCLR=rowtotal(W4TTOS90805S2 W4TTOS90805S3 W5TTOS90999S3 W5TTOS90999S3 W6TTOS91226S3 W7TTOS91493S3 W8TTOS91794S3)
egen CTOWk5dEndFamResCou=rowtotal(W5TTOS91003S3 W5TTOS91003S2 W5TTOS91003S3 W5TTOS91003S2 W6TTOS91230S3 W7TTOS91497S3 W9TTOS92115S3)
egen CTOWk5dEndHumRts=rowtotal(W5TTOS91002S3 W5TTOS91002S2 W5TTOS91002S3 W5TTOS91002S2 W6TTOS91229S3 W7TTOS91496S3 W9TTOS92114S3)
egen CTOWk5DEndorsementNRL=rowtotal(W5TTOS91005S2 W5TTOS91005S2 W5TTOS91005S3 W5TTOS91005S3 W6TTOS91232S3 W7TTOS91499S3 W8TTOS91800S3 W9TTOS92117S3)
egen CTOWk5ForViRaceNotSalient=rowtotal(W5TTOS91034S2 W5TTOS91034S2)
egen CTOWk5ForViRaceSalient=rowtotal(W5TTOS91033S2 W5TTOS91033S2)
egen CTOWk5rEndFamResCou=rowtotal(W5TTOS91007S2 W5TTOS91007S3 W5TTOS91007S3 W5TTOS91007S2 W6TTOS91234S3 W7TTOS91501S3 W8TTOS91802S3)
egen CTOWk5REndHumRts=rowtotal(W5TTOS91004S3 W5TTOS91004S3 W5TTOS91004S2 W5TTOS91004S2 W6TTOS91231S3 W7TTOS91498S3 W8TTOS91799S3 W9TTOS92116S3)
egen CTOWk5REndorsementNRL=rowtotal(W5TTOS91006S2 W5TTOS91006S3 W5TTOS91006S2 W5TTOS91006S3 W6TTOS91233S3 W7TTOS91500S3 W8TTOS91801S3)
egen CTOWk6DEndorsementADA=rowtotal(W6TTOS91290S2 W6TTOS91290S3 W7TTOS91556S3 W8TTOS91853S3 W9TTOS92170S3)
egen CTOWk6DEndorsementAFSCME=rowtotal(W6TTOS91292S2 W6TTOS91292S3 W7TTOS91558S3 W8TTOS91855S3 W9TTOS92172S3)
egen CTOWk6DEndorsementNTU=rowtotal(W6TTOS91291S2 W6TTOS91291S3 W7TTOS91557S3 W8TTOS91854S3 W9TTOS92171S3)
egen CTOWk6DxSmithScandal=rowtotal(W6TTOS91286S2)
egen CTOWk6DxWilsonScandal=rowtotal(W6TTOS91287S2)
egen CTOWk6REndorsementADA=rowtotal(W6TTOS91293S3 W6TTOS91293S2 W7TTOS91559S3 W8TTOS91856S3 W9TTOS92173S3)
egen CTOWk6REndorsementAFSCME=rowtotal(W6TTOS91295S2 W6TTOS91295S3 W7TTOS91561S3 W8TTOS91858S3 W9TTOS92175S3)
egen CTOWk6REndorsementNTU=rowtotal(W6TTOS91294S3 W6TTOS91294S2 W7TTOS91560S3 W8TTOS91857S3 W9TTOS92174S3)
egen CTOWk6RxJonesScandal=rowtotal(W6TTOS91288S2)
egen CTOWk6RxWilliamsScandal=rowtotal(W6TTOS91289S2)
egen CTOWk7DEndorsementACU=rowtotal(W7TTOS91563S2 W7TTOS91563S3 W8TTOS91860S3 W9TTOS92177S3)
egen CTOWk7DEndorsementNAACP=rowtotal(W7TTOS91562S2 W7TTOS91562S3 W8TTOS91859S3 W9TTOS92176S3)
egen CTOWk7REndorsementACU=rowtotal(W7TTOS91564S2 W7TTOS91564S3 W8TTOS91861S3)
egen CTOWk7REndorsementNAACP=rowtotal(W7TTOS91565S2 W7TTOS91565S3 W8TTOS91862S3 W9TTOS92179S3)
egen CTOWk8DEndorsementACLU=rowtotal(W8TTOS91892S2 W8TTOS91892S3 W9TTOS92204S3)
egen CTOWk8DEndorsementAEI=rowtotal(W8TTOS91893S3 W8TTOS91893S2 W9TTOS92205S3)
egen CTOWk8REndorsementACLU=rowtotal(W8TTOS91894S2 W8TTOS91894S3)
egen CTOWk8REndorsementAEI=rowtotal(W8TTOS91895S3 W8TTOS91895S2 W9TTOS92207S3)
egen CTOWk9DEndorsementCCA=rowtotal(W9TTOS92409S3 W9TTOS92409S2)
egen CTOWk9DEndorsementNOW=rowtotal(W9TTOS92408S2 W9TTOS92408S3)
egen CTOWk9REndorsementCCA=rowtotal(W9TTOS92411S3 W9TTOS92411S2)
egen CTOWk9REndorsementNOW=rowtotal(W9TTOS92410S2 W9TTOS92410S3)
egen CTOwk2DSmithEconPhil=rowtotal(W2TTOS89681S3 W2TTOS89681S2 W3TTOS90431S3 W4TTOS90684S3 W5TTOS90881S3 W5TTOS90881S3 W6TTOS91108S3 W7TTOS91375S3 W8TTOS91676S3 W9TTOS91993S3)
egen CTOwk2DSmithJobs=rowtotal(W2TTOS89680S2 W2TTOS89680S3 W3TTOS90430S3 W4TTOS90683S3 W5TTOS90880S3 W5TTOS90880S3 W6TTOS91107S3 W7TTOS91374S3 W8TTOS91675S3 W9TTOS91992S3)
egen CTOwk2DWilsonEconPhil=rowtotal(W2TTOS89684S3 W2TTOS89684S2 W3TTOS90434S3 W4TTOS90687S3 W5TTOS90884S3 W5TTOS90884S3 W6TTOS91111S3 W7TTOS91378S3 W8TTOS91679S3 W9TTOS91996S3)
egen CTOwk2DWilsonJobs=rowtotal(W2TTOS89683S3 W2TTOS89683S2 W3TTOS90433S3 W4TTOS90686S3 W5TTOS90883S3 W5TTOS90883S3 W6TTOS91110S3 W7TTOS91377S3 W8TTOS91678S3 W9TTOS91995S3)
egen CTOwk2RJonesEconPhil=rowtotal(W2TTOS89685S2 W2TTOS89685S3 W3TTOS90435S3 W4TTOS90688S3 W6TTOS91112S3 W7TTOS91379S3 W9TTOS91997S3)
egen CTOwk2RWilliamsEconPhil=rowtotal(W2TTOS89687S3 W2TTOS89687S2 W3TTOS90437S3 W4TTOS90690S3 W5TTOS90887S3 W5TTOS90887S3 W6TTOS91114S3 W7TTOS91381S3 W8TTOS91682S W9TTOS91999S3)
egen CTOwk2d1CBSHUFEcon2=rowtotal(W2TTOS89547S2 W2TTOS89547S3 W4TTOS90615S3 W5TTOS90812S3 W5TTOS90812S3)
egen CTOwk2d1CNNUNIEcon22=rowtotal(W2TTOS89550S3 W2TTOS89550S2 W3TTOS90365S3 W5TTOS90815S3 W5TTOS90815S3 W6TTOS91042S3 W7TTOS91309S3 W8TTOS91610S3)
egen CTOwk2d1NBCFOXEcon10=rowtotal(W2TTOS89548S3 W2TTOS89548S2 W3TTOS90363S3 W5TTOS90813S3 W5TTOS90813S3 W7TTOS91307S3 W8TTOS91608S3)
egen CTOwk2d1REUROOTEcon18=rowtotal(W2TTOS89549S3 W2TTOS89549S2 W3TTOS90364S3 W4TTOS90617S3 W5TTOS90814S3 W5TTOS90814S3 W7TTOS91308S3 W8TTOS91609S3 W9TTOS91926S3)
egen CTOwk2d2ABCABCEcon37=rowtotal(W2TTOS89551S2 W2TTOS89551S3 W3TTOS90366S3 W4TTOS90619S3 W5TTOS90816S3 W5TTOS90816S3 W6TTOS91043S3 W7TTOS91310S3 W8TTOS91611S3 W9TTOS91928S3)
egen CTOwk2d2APAPEcon42=rowtotal(W2TTOS89552S2 W2TTOS89552S3 W3TTOS90367S3 W4TTOS90620S3 W5TTOS90817S3 W5TTOS90817S3 W6TTOS91044S3 W7TTOS91311S3 W8TTOS91612S3 W9TTOS91929S3)
egen CTOwk2d2NBCNBCEcon62=rowtotal(W2TTOS89554S2 W2TTOS89554S3 W3TTOS90369S3 W4TTOS90622S3 W5TTOS90819S3 W5TTOS90819S3 W6TTOS91046S3 W7TTOS91313S3 W8TTOS91614S3 W9TTOS91931S3)
egen CTOwk2d2NYTNYTEcon54=rowtotal(W2TTOS89553S2 W2TTOS89553S3 W3TTOS90368S3 W4TTOS90621S3 W5TTOS90818S3 W5TTOS90818S3 W6TTOS91045S3 W7TTOS91312S3 W8TTOS91613S3 W9TTOS91930S3)
egen CTOwk2d3CBSHUFEcon2=rowtotal(W2TTOS89564S3 W2TTOS89564S2 W3TTOS90378S3 W4TTOS90631S3 W5TTOS90828S3 W5TTOS90828S3 W6TTOS91055S3 W8TTOS91623S3)
egen CTOwk2d3CNNUNIEcon22=rowtotal(W2TTOS89567S3 W2TTOS89567S2 W3TTOS90381S3 W4TTOS90634S3 W6TTOS91058S3)
egen CTOwk2d3NBCFOXEcon10=rowtotal(W2TTOS89565S3 W2TTOS89565S2 W3TTOS90379S3 W4TTOS90632S3 W5TTOS90829S3 W5TTOS90829S3 W6TTOS91056S3 W7TTOS91323S3 W8TTOS91624S3 W9TTOS91941S3)
egen CTOwk2d3REUROOTEcon18=rowtotal(W2TTOS89566S3 W2TTOS89566S2 W3TTOS90380S3 W6TTOS91057S3 W8TTOS91625S3 W9TTOS91942S3)
egen CTOwk2r1ABCROOTEcon118=rowtotal(W2TTOS89560S2 W2TTOS89560S3 W5TTOS90825S3 W5TTOS90825S3 W6TTOS91052S3 W7TTOS91319S3 W8TTOS91620S3)
egen CTOwk2r1APFOXEcon126=rowtotal(W2TTOS89562S3 W2TTOS89562S2 W3TTOS90377S3 W4TTOS90630S3 W5TTOS90827S3 W5TTOS90827S3 W6TTOS91054S3 W9TTOS91939S3)
egen CTOwk2r1NBCUNIEcon122=rowtotal(W2TTOS89561S2 W2TTOS89561S3 W5TTOS90826S3 W5TTOS90826S3 W6TTOS91053S3)
egen CTOwk2r1WSJHUFEcon110=rowtotal(W2TTOS89559S2 W2TTOS89559S3 W3TTOS90374S3 W4TTOS90627S3 W5TTOS90824S3 W5TTOS90824S3 W6TTOS91051S3 W7TTOS91318S3 W9TTOS91936S3)
egen CTOwk2r2APAPEcon78=rowtotal(W2TTOS89556S2 W2TTOS89556S3 W3TTOS90371S3 W4TTOS90624S3 W5TTOS90821S3 W5TTOS90821S3 W6TTOS91048S3 W9TTOS91933S3)
egen CTOwk2r2CBSCBSEcon66=rowtotal(W2TTOS89555S3 W2TTOS89555S2 W3TTOS90370S3 W4TTOS90623S3 W5TTOS90820S3 W5TTOS90820S3 W8TTOS91615S3)
egen CTOwk2r2REUREUEcon82=rowtotal(W2TTOS89557S3 W2TTOS89557S2 W3TTOS90372S3 W4TTOS90625S3 W5TTOS90822S3 W5TTOS90822S3 W6TTOS91049S3 W9TTOS91934S3)
egen CTOwk2r2WSJWSJEcon94=rowtotal(W2TTOS89558S2 W2TTOS89558S3 W3TTOS90373S3 W4TTOS90626S3 W5TTOS90823S3 W5TTOS90823S3 W6TTOS91050S3 W7TTOS91317S3 W8TTOS91618S3 W9TTOS91935S3)
egen CTOwk2r3ABCROOTEcon118=rowtotal(W2TTOS89569S3 W2TTOS89569S2 W3TTOS90383S3 W4TTOS90636S3 W7TTOS91327S3 W9TTOS91945S3)
egen CTOwk2r3APFOXEcon126=rowtotal(W2TTOS89571S2 W2TTOS89571S3 W3TTOS90385S3 W4TTOS90638S3 W5TTOS90835S3 W5TTOS90835S3 W7TTOS91329S3)
egen CTOwk2r3NBCUNIEcon122=rowtotal(W2TTOS89570S2 W2TTOS89570S3 W4TTOS90637S3 W6TTOS91061S3 W7TTOS91328S3 W8TTOS91629S3 W9TTOS91946S3)
egen CTOwk2r3WSJHUFEcon110=rowtotal(W2TTOS89568S3 W2TTOS89568S2 W3TTOS90382S3 W4TTOS90635S3)
egen CTOwk3DSmithEduc=rowtotal(W2TTOS90282S3 W3TTOS90439S3 W3TTOS90439S2 W4TTOS90691S3 W5TTOS90888S3 W5TTOS90888S3 W6TTOS91115S3 W7TTOS91382S3 W8TTOS91683S3 W9TTOS92000S3)
egen CTOwk3DSmithSocPhil=rowtotal(W2TTOS90297S3 W3TTOS90452S3 W3TTOS90452S2 W4TTOS90704S3 W5TTOS90901S3 W5TTOS90901S3 W6TTOS91128S3 W7TTOS91395S3 W8TTOS91696S3 W9TTOS92013S3)
egen CTOwk3DWilsonEduc=rowtotal(W2TTOS90299S3 W3TTOS90453S3 W3TTOS90453S2 W4TTOS90705S3 W5TTOS90902S3 W5TTOS90902S3 W6TTOS91129S3 W7TTOS91396S3 W8TTOS91697S3 W9TTOS92014S3)
egen CTOwk3DWilsonSocPhil=rowtotal(W2TTOS90314S3 W3TTOS90467S3 W3TTOS90467S2 W4TTOS90719S3 W5TTOS90916S3 W5TTOS90916S3 W6TTOS91143S3 W7TTOS91410S3 W8TTOS91711S3 W9TTOS92028S3)
egen CTOwk3RJonesEduc=rowtotal(W2TTOS90328S3 W3TTOS90481S3 W3TTOS90481S2 W4TTOS90733S3 W6TTOS91157S3 W7TTOS91424S3 W9TTOS92042S3)
egen CTOwk3RJonesSocPhil=rowtotal(W2TTOS90329S3 W3TTOS90482S2 W3TTOS90482S3 W4TTOS90734S3 W5TTOS90931S3 W5TTOS90931S3 W6TTOS91158S3 W7TTOS91425S3 W9TTOS92043S3)
egen CTOwk3RWilliamsEduc=rowtotal(W2TTOS90315S3 W3TTOS90468S2 W3TTOS90468S3 W4TTOS90720S3 W5TTOS90917S3 W5TTOS90917S3 W6TTOS91144S3 W7TTOS91411S3 W8TTOS91712S3 W9TTOS92029S3)
egen CTOwk3RWilliamsSocPhil=rowtotal(W2TTOS90316S3 W3TTOS90469S2 W3TTOS90469S3 W4TTOS90721S3 W5TTOS90918S3 W5TTOS90918S3 W6TTOS91145S3 W7TTOS91412S3 W9TTOS92030S3)
egen CTOwk3d1ABCHOT8=rowtotal(W3TTOS90512S3 W3TTOS90512S2 W4TTOS90752S3 W5TTOS90947S3 W5TTOS90947S3 W6TTOS91174S3 W7TTOS91441S3 W8TTOS91742S3 W9TTOS92059S3)
egen CTOwk3d1APROOT16=rowtotal(W3TTOS90498S2 W3TTOS90498S3 W4TTOS90747S3 W5TTOS90944S3 W5TTOS90944S3 W7TTOS91438S3 W9TTOS92056S3)
egen CTOwk3d1NBCUNI12=rowtotal(W3TTOS90516S3 W3TTOS90516S2 W5TTOS90950S3 W5TTOS90950S3 W7TTOS91444S3 W8TTOS91745S3)
egen CTOwk3d1NYTMSN28=rowtotal(W3TTOS90517S3 W3TTOS90517S2 W4TTOS90757S3 W5TTOS90951S3 W5TTOS90951S3 W6TTOS91178S3 W7TTOS91445S3 W9TTOS92063S3)
egen CTOwk3d2CBSCBS36=rowtotal(W3TTOS90518S3 W3TTOS90518S2 W4TTOS90758S3 W5TTOS90952S3 W5TTOS90952S3 W6TTOS91179S3)
egen CTOwk3d2NBCNBC64=rowtotal(W3TTOS90521S2 W3TTOS90521S3 W4TTOS90761S3 W5TTOS90955S3 W5TTOS90955S3 W6TTOS91182S3 W7TTOS91449S3 W8TTOS91750S3 W9TTOS92067S3)
egen CTOwk3d2REUREU48=rowtotal(W3TTOS90519S3 W3TTOS90519S2 W4TTOS90759S3 W5TTOS90953S3 W5TTOS90953S3 W6TTOS91180S3 W7TTOS91447S3 W9TTOS92065S3)
egen CTOwk3d2WSJWSJ60=rowtotal(W3TTOS90520S3 W3TTOS90520S2 W4TTOS90760S3 W5TTOS90954S3 W5TTOS90954S3 W6TTOS91181S3 W7TTOS91448S3 W8TTOS91749S3 W9TTOS92066S3)
egen CTOwk3d3ABCHOT8=rowtotal(W3TTOS90522S3 W3TTOS90522S2 W4TTOS90762S3 W5TTOS90956S3 W5TTOS90956S3 W6TTOS91183S3 W7TTOS91450S3 W8TTOS91751S3 W9TTOS92068S3)
egen CTOwk3d3APROOT16=rowtotal(W3TTOS90525S2 W3TTOS90525S3 W6TTOS91186S3 W9TTOS92071S3)
egen CTOwk3d3NBCUNI12=rowtotal(W3TTOS90524S2 W3TTOS90524S3 W4TTOS90764S3 W6TTOS91185S3)
egen CTOwk3d3NYTMSN28=rowtotal(W3TTOS90526S3 W3TTOS90526S2 W4TTOS90766S3 W6TTOS91187S3 W7TTOS91454S3 W8TTOS91755S3 W9TTOS92072S3)
egen CTOwk3r1CBSFOX116=rowtotal(W3TTOS90536S2 W3TTOS90536S3 W5TTOS90970S3 W5TTOS90970S3 W6TTOS91197S3 W8TTOS91765S3)
egen CTOwk3r1CNNLAT101=rowtotal(W3TTOS90535S3 W3TTOS90535S2 W5TTOS90969S3 W5TTOS90969S3 W6TTOS91196S3 W8TTOS91764S3)
egen CTOwk3r1NBCHUF124=rowtotal(W3TTOS90537S2 W3TTOS90537S3 W5TTOS90971S3 W5TTOS90971S3)
egen CTOwk3r1REUBET100=rowtotal(W3TTOS90534S2 W3TTOS90534S3 W4TTOS90774S3 W5TTOS90968S3 W5TTOS90968S3 W6TTOS91195S3 W8TTOS91763S3)
egen CTOwk3r2ABCABC72=rowtotal(W3TTOS90523S2 W3TTOS90523S3 W4TTOS90763S3 W5TTOS90957S3 W5TTOS90957S3 W6TTOS91184S3 W7TTOS91451S3 W8TTOS91752S3 W9TTOS92069S3)
egen CTOwk3r2APAP80=rowtotal(W3TTOS90527S2 W3TTOS90527S3 W4TTOS90767S3 W5TTOS90961S3 W5TTOS90961S3 W6TTOS91188S3 W7TTOS91455S3 W9TTOS92073S3)
egen CTOwk3r2NYTNYT92=rowtotal(W3TTOS90530S3 W3TTOS90530S2 W4TTOS90770S3 W5TTOS90964S3 W5TTOS90964S3 W6TTOS91191S3 W7TTOS91458S3 W8TTOS91759S3 W9TTOS92076S3)
egen CTOwk3r2WSJWSJ96=rowtotal(W3TTOS90531S3 W3TTOS90531S2 W4TTOS90771S3 W5TTOS90965S3 W5TTOS90965S3 W6TTOS91192S3 W7TTOS91459S3 W8TTOS91760S3 W9TTOS92077S3)
egen CTOwk3r3CBSFOX116=rowtotal(W3TTOS90532S2 W3TTOS90532S3 W4TTOS90772S3 W5TTOS90966S3 W5TTOS90966S3 W7TTOS91460S3)
egen CTOwk3r3CNNLAT101=rowtotal(W3TTOS90529S2 W3TTOS90529S3 W4TTOS90769S3 W6TTOS91190S3 W7TTOS91457S3 W8TTOS91758S3 W9TTOS92075S3)
egen CTOwk3r3NBCHUF124=rowtotal(W3TTOS90533S3 W3TTOS90533S2 W4TTOS90773S3)
egen CTOwk3r3REUBET100=rowtotal(W3TTOS90528S3 W3TTOS90528S2 W4TTOS90768S3 W7TTOS91456S3 W9TTOS92074S3)
egen CTOwk4DSmithChina=rowtotal(W2TTOS90284S3 W3TTOS90441S3 W4TTOS90693S2 W4TTOS90693S3 W5TTOS90890S3 W5TTOS90890S3 W6TTOS91117S3 W7TTOS91384S3 W8TTOS91685S3 W9TTOS92002S3)
egen CTOwk4DSmithDefense=rowtotal(W2TTOS90285S3 W3TTOS90442S3 W4TTOS90694S2 W4TTOS90694S3 W6TTOS91118S3 W7TTOS91385S3 W8TTOS91686S3 W9TTOS92003S3)
egen CTOwk4DWilsonChina=rowtotal(W2TTOS90301S3 W3TTOS90455S3 W4TTOS90707S3 W4TTOS90707S2 W5TTOS90904S3 W5TTOS90904S3 W6TTOS91131S3 W7TTOS91398S3 W8TTOS91699S3 W9TTOS92016S3)
egen CTOwk4DWilsonDefense=rowtotal(W2TTOS90302S3 W3TTOS90456S3 W4TTOS90708S3 W4TTOS90708S2 W5TTOS90905S3 W5TTOS90905S3 W6TTOS91132S3 W7TTOS91399S3 W8TTOS91700S3 W9TTOS92017S3)
egen CTOwk4RJonesChina=rowtotal(W2TTOS90330S3 W3TTOS90483S3 W4TTOS90735S2 W4TTOS90735S3 W5TTOS90932S3 W5TTOS90932S3 W6TTOS91159S3 W7TTOS91426S3 W9TTOS92044S3)
egen CTOwk4RJonesDefense=rowtotal(W2TTOS90331S3 W3TTOS90484S3 W4TTOS90736S3 W4TTOS90736S2 W5TTOS90933S3 W5TTOS90933S3 W6TTOS91160S3 W7TTOS91427S3 W9TTOS92045S3)
egen CTOwk4RWilliamsChina=rowtotal(W2TTOS90317S3 W3TTOS90470S3 W4TTOS90722S2 W4TTOS90722S3 W5TTOS90919S3 W5TTOS90919S3 W6TTOS91146S3 W7TTOS91413S3 W8TTOS91714S3 W9TTOS92031S3)
egen CTOwk4RWilliamsDefense=rowtotal(W2TTOS90318S3 W3TTOS90471S3 W4TTOS90723S3 W4TTOS90723S2 W5TTOS90920S3 W5TTOS90920S3 W6TTOS91147S3 W7TTOS91414S3 W9TTOS92032S3)
egen CTOwk4d1ABCHUFFor7=rowtotal(W4TTOS90779S3 W4TTOS90779S2 W5TTOS90973S3 W5TTOS90973S3 W6TTOS91200S3 W7TTOS91467S3 W8TTOS91768S3 W9TTOS92085S3)
egen CTOwk4d1CBSFOXFor3=rowtotal(W4TTOS90778S3 W4TTOS90778S2 W5TTOS90972S3 W5TTOS90972S3 W7TTOS91466S3)
egen CTOwk4d1CNNBETFor23=rowtotal(W4TTOS90780S3 W4TTOS90780S2 W5TTOS90974S3 W5TTOS90974S3 W6TTOS91201S3 W7TTOS91468S3 W8TTOS91769S3)
egen CTOwk4d1WSJLATFor31=rowtotal(W4TTOS90781S3 W4TTOS90781S2 W7TTOS91469S3 W8TTOS91770S3 W9TTOS92087S3)
egen CTOwk4d2APAPFor43=rowtotal(W4TTOS90782S2 W4TTOS90782S3 W5TTOS90976S3 W5TTOS90976S3 W6TTOS91203S3 W7TTOS91470S3 W8TTOS91771S3 W9TTOS92088S3)
egen CTOwk4d2NBCNBCFor63=rowtotal(W4TTOS90785S2 W4TTOS90785S3 W5TTOS90979S3 W5TTOS90979S3 W6TTOS91206S3 W7TTOS91473S3 W8TTOS91774S3 W9TTOS92091S3)
egen CTOwk4d2NYTNYTFor55=rowtotal(W4TTOS90784S2 W4TTOS90784S3 W5TTOS90978S3 W5TTOS90978S3 W6TTOS91205S3 W7TTOS91472S3 W8TTOS91773S3 W9TTOS92090S3)
egen CTOwk4d2REUREUFor47=rowtotal(W4TTOS90783S2 W4TTOS90783S3 W5TTOS90977S3 W5TTOS90977S3 W6TTOS91204S3 W7TTOS91471S3 W9TTOS92089S3)
egen CTOwk4d3ABCHUFFor7=rowtotal(W4TTOS90787S3 W4TTOS90787S2 W5TTOS90981S3 W5TTOS90981S3 W6TTOS91208S3 W8TTOS91776S3)
egen CTOwk4d3CBSFOXFor3=rowtotal(W4TTOS90786S3 W4TTOS90786S2 W5TTOS90980S3 W5TTOS90980S3 W6TTOS91207S3 W7TTOS91474S3 W8TTOS91775S3 W9TTOS92092S3)
egen CTOwk4d3CNNBETFor23=rowtotal(W4TTOS90788S2 W4TTOS90788S3 W6TTOS91209S3 W8TTOS91777S3 W9TTOS92094S3)
egen CTOwk4d3WSJLATFor31=rowtotal(W4TTOS90789S2 W4TTOS90789S3 W6TTOS91210S3)
egen CTOwk4r1APLATFor127=rowtotal(W4TTOS90797S3 W4TTOS90797S2 W5TTOS90991S3 W5TTOS90991S3 W6TTOS91218S3 W7TTOS91485S3 W8TTOS91786S3 W9TTOS92103S3)
egen CTOwk4r1CBSMSNFor115=rowtotal(W4TTOS90796S3 W4TTOS90796S2 W5TTOS90990S3 W5TTOS90990S3 W6TTOS91217S3 W8TTOS91785S3)
egen CTOwk4r1CNNROOTFor103=rowtotal(W4TTOS90794S2 W4TTOS90794S3 W5TTOS90988S3 W5TTOS90988S3 W8TTOS91783S3)
egen CTOwk4r1WSJHOTFor111=rowtotal(W4TTOS90795S3 W4TTOS90795S2 W5TTOS90989S3 W5TTOS90989S3 W7TTOS91483S3 W8TTOS91784S3 W9TTOS92101S3)
egen CTOwk4r2ABCABCFor71=rowtotal(W4TTOS90790S3 W4TTOS90790S2 W5TTOS90984S3 W5TTOS90984S3 W6TTOS91211S3 W7TTOS91478S3 W8TTOS91779S3)
egen CTOwk4r2NBCNBCFor75=rowtotal(W4TTOS90791S2 W4TTOS90791S3 W5TTOS90985S3 W5TTOS90985S3 W6TTOS91212S3 W8TTOS91780S3 W9TTOS92097S3)
egen CTOwk4r2NYTNYTFor91=rowtotal(W4TTOS90793S3 W4TTOS90793S2 W5TTOS90987S3 W5TTOS90987S3 W6TTOS91214S3 W7TTOS91481S3 W8TTOS91782S3 W9TTOS92099S3)
egen CTOwk4r2REUREUFor83=rowtotal(W4TTOS90792S3 W4TTOS90792S2 W5TTOS90986S3 W5TTOS90986S3 W6TTOS91213S3 W8TTOS91781S3 W9TTOS92098S3)
egen CTOwk4r3APLATFor127=rowtotal(W4TTOS90801S2 W4TTOS90801S3 W6TTOS91222S3 W7TTOS91489S3 W8TTOS91790S3 W9TTOS92107S3)
egen CTOwk4r3CBSMSNFor115=rowtotal(W4TTOS90800S3 W4TTOS90800S2 W6TTOS91221S3)
egen CTOwk4r3CNNROOTFor103=rowtotal(W4TTOS90798S3 W4TTOS90798S2 W7TTOS91486S3 W9TTOS92104S3)
egen CTOwk4r3WSJHOTFor111=rowtotal(W4TTOS90799S2 W4TTOS90799S3 W8TTOS91788S3)
egen CTOwk5DSmithAbortion=rowtotal(W2TTOS90286S3 W3TTOS90443S3 W4TTOS90695S3 W5TTOS90892S2 W5TTOS90892S3 W5TTOS90892S2 W5TTOS90892S3 W6TTOS91119S3 W7TTOS91386S3 W8TTOS91687S3)
egen CTOwk5DSmithGay=rowtotal(W9TTOS92004S3 W2TTOS90287S3 W3TTOS90444S3 W4TTOS90696S3 W5TTOS90893S2 W5TTOS90893S3 W5TTOS90893S2 W5TTOS90893S3 W6TTOS91120S3 W7TTOS91387S3 W8TTOS91688S3 W9TTOS92005S3)
egen CTOwk5DWilsonAbortion=rowtotal(W2TTOS90303S3 W3TTOS90457S3 W4TTOS90709S3 W5TTOS90906S3 W5TTOS90906S3 W5TTOS90906S2 W5TTOS90906S2 W6TTOS91133S3 W7TTOS91400S3 W8TTOS91701S3 W9TTOS92018S3)
egen CTOwk5DWilsonGay=rowtotal(W2TTOS90304S3 W3TTOS90458S3 W4TTOS90710S3 W5TTOS90907S2 W5TTOS90907S3 W5TTOS90907S3 W5TTOS90907S2 W6TTOS91134S3 W7TTOS91401S3 W8TTOS91702S3 W9TTOS92019S3)
egen CTOwk5RJonesAbortion=rowtotal(W2TTOS90332S3 W3TTOS90485S3 W4TTOS90737S3 W5TTOS90934S2 W5TTOS90934S3 W5TTOS90934S2 W5TTOS90934S3 W6TTOS91161S3 W7TTOS91428S3 W9TTOS92046S3)
egen CTOwk5RJonesGay=rowtotal(W2TTOS90333S3 W3TTOS90486S3 W4TTOS90738S3 W5TTOS90935S3 W5TTOS90935S3 W5TTOS90935S2 W5TTOS90935S2 W6TTOS91162S3 W7TTOS91429S3 W9TTOS92047S3)
egen CTOwk5RWilliamsAbortion=rowtotal(W2TTOS90319S3 W3TTOS90472S3 W4TTOS90724S3 W5TTOS90921S2 W5TTOS90921S3 W5TTOS90921S3 W5TTOS90921S2 W6TTOS91148S3 W7TTOS91415S3 W9TTOS92033S3)
egen CTOwk5RWilliamsGay=rowtotal(W2TTOS90320S3 W3TTOS90473S3 W4TTOS90725S3 W5TTOS90922S2 W5TTOS90922S2 W5TTOS90922S3 W5TTOS90922S3 W6TTOS91149S3 W7TTOS91416S3 W9TTOS92034S3)
egen CTOwk5d1ABCHUFCult5=rowtotal(W5TTOS91009S3 W5TTOS91009S3 W5TTOS91009S2 W5TTOS91009S2 W6TTOS91236S3 W7TTOS91503S3 W8TTOS91804S3 W9TTOS92121S3)
egen CTOwk5d1CNNLATCult21=rowtotal(W5TTOS91011S2 W5TTOS91011S3 W5TTOS91011S2 W5TTOS91011S3 W6TTOS91238S3 W7TTOS91505S3 W8TTOS91806S3)
egen CTOwk5d1NBCHOTCult9=rowtotal(W5TTOS91010S2 W5TTOS91010S3 W5TTOS91010S3 W5TTOS91010S2 W7TTOS91504S3 W8TTOS91805S3)
egen CTOwk5d1NYTBETCult25=rowtotal(W5TTOS91012S3 W5TTOS91012S2 W5TTOS91012S2 W5TTOS91012S3 W6TTOS91239S3 W7TTOS91506S3)
egen CTOwk5d2APAPCult41=rowtotal(W5TTOS91014S2 W5TTOS91014S2 W5TTOS91014S3 W5TTOS91014S3 W6TTOS91241S3 W7TTOS91508S3 W8TTOS91809S3 W9TTOS92126S3)
egen CTOwk5d2CBSCBSCult33=rowtotal(W5TTOS91013S3 W5TTOS91013S3 W5TTOS91013S2 W5TTOS91013S2 W6TTOS91240S3 W9TTOS92125S3)
egen CTOwk5d2REUREUCult45=rowtotal(W5TTOS91015S3 W5TTOS91015S2 W5TTOS91015S2 W5TTOS91015S3 W6TTOS91242S3 W7TTOS91509S3 W8TTOS91810S3 W9TTOS92127S3)
egen CTOwk5d2WSJWSJCult57=rowtotal(W5TTOS91016S3 W5TTOS91016S3 W5TTOS91016S2 W5TTOS91016S2 W6TTOS91243S3 W7TTOS91510S3 W8TTOS91811S3 W9TTOS92128S3)
egen CTOwk5d3ABCHUFCult5=rowtotal(W5TTOS91017S2 W5TTOS91017S3 W5TTOS91017S3 W5TTOS91017S2 W6TTOS91244S3 W8TTOS91812S3)
egen CTOwk5d3CNNLATCult21=rowtotal(W5TTOS91019S2 W5TTOS91019S2 W5TTOS91019S3 W5TTOS91019S3 W6TTOS91246S3)
egen CTOwk5d3NBCHOTCult9=rowtotal(W5TTOS91018S3 W5TTOS91018S2 W5TTOS91018S3 W5TTOS91018S2 W6TTOS91245S3 W7TTOS91512S3 W8TTOS91813S3 W9TTOS92130S3)
egen CTOwk5d3NYTBETCult25=rowtotal(W5TTOS91020S2 W5TTOS91020S3 W5TTOS91020S3 W5TTOS91020S2 W6TTOS91247S3 W9TTOS92132S3)
egen CTOwk5r1ABCHOTCult117=rowtotal(W5TTOS91022S2 W5TTOS91022S3 W5TTOS91022S3 W5TTOS91022S2 W6TTOS91249S3 W7TTOS91516S3 W8TTOS91817S3 W9TTOS92134S3)
egen CTOwk5r1APMSNCult125=rowtotal(W5TTOS91024S2 W5TTOS91024S3 W5TTOS91024S2 W5TTOS91024S3 W6TTOS91251S3 W7TTOS91518S3 W9TTOS92136S3)
egen CTOwk5r1NBCLATCult121=rowtotal(W5TTOS91023S3 W5TTOS91023S2 W5TTOS91023S3 W5TTOS91023S2 W6TTOS91250S3)
egen CTOwk5r1WSJBETCult109=rowtotal(W5TTOS91008S3 W5TTOS91008S2 W5TTOS91008S2 W5TTOS91008S3 W7TTOS91502S3 W9TTOS92120S3)
egen CTOwk5r2CBSCBSCult65=rowtotal(W5TTOS91025S3 W5TTOS91025S3 W5TTOS91025S2 W5TTOS91025S2)
egen CTOwk5r2CNNCNNCult85=rowtotal(W5TTOS91027S3 W5TTOS91027S3 W5TTOS91027S2 W5TTOS91027S2 W7TTOS91521S3 W8TTOS91822S3)
egen CTOwk5r2NYTNYTCult89=rowtotal(W5TTOS91028S2 W5TTOS91028S2 W5TTOS91028S3 W5TTOS91028S3 W6TTOS91255S3 W7TTOS91522S3 W8TTOS91823S3 W9TTOS92140S3)
egen CTOwk5r2REUREUCult81=rowtotal(W5TTOS91026S2 W5TTOS91026S3 W5TTOS91026S2 W5TTOS91026S3 W6TTOS91253S3 W9TTOS92138S3)
egen CTOwk5r3ABCHOTCult117=rowtotal(W5TTOS91030S3 W5TTOS91030S2 W5TTOS91030S2 W5TTOS91030S3 W8TTOS91825S3)
egen CTOwk5r3APMSNCult125=rowtotal(W5TTOS91032S2 W5TTOS91032S3 W5TTOS91032S2 W5TTOS91032S3 W6TTOS91259S3)
egen CTOwk5r3NBCLATCult121=rowtotal(W5TTOS91031S2 W5TTOS91031S2 W5TTOS91031S3 W5TTOS91031S3 W6TTOS91258S3 W7TTOS91525S3 W8TTOS91826S3 W9TTOS92143S3)
egen CTOwk5r3WSJBETCult109=rowtotal(W5TTOS91029S2 W5TTOS91029S3 W5TTOS91029S3 W5TTOS91029S2 W7TTOS91523S3 W9TTOS92141S3)
egen CTOwk6DSmithHealth=rowtotal(W2TTOS90283S3 W3TTOS90440S3 W4TTOS90692S3 W5TTOS90889S3 W5TTOS90889S3 W6TTOS91116S2 W6TTOS91116S3 W7TTOS91383S3 W8TTOS91684S3 W9TTOS92001S3)
egen CTOwk6DSmithTaxes=rowtotal(W2TTOS90288S3 W3TTOS90445S3 W4TTOS90697S3 W5TTOS90894S3 W5TTOS90894S3 W6TTOS91121S2 W6TTOS91121S3 W7TTOS91388S3 W8TTOS91689S3 W9TTOS92006S3)
egen CTOwk6DWilsonHealth=rowtotal(W2TTOS90300S3 W3TTOS90454S3 W4TTOS90706S3 W5TTOS90903S3 W5TTOS90903S3 W6TTOS91130S3 W6TTOS91130S2 W7TTOS91397S3 W8TTOS91698S3 W9TTOS92015S3)
egen CTOwk6DWilsonTaxes=rowtotal(W2TTOS90305S3 W3TTOS90459S3 W4TTOS90711S3 W5TTOS90908S3 W5TTOS90908S3 W6TTOS91135S3 W6TTOS91135S2 W7TTOS91402S3 W8TTOS91703S3 W9TTOS92020S3)
egen CTOwk6RJonesHealth=rowtotal(W2TTOS90334S3 W3TTOS90487S3 W4TTOS90739S3 W5TTOS90936S3 W5TTOS90936S3 W6TTOS91163S2 W6TTOS91163S3 W7TTOS91430S3 W9TTOS92048S3)
egen CTOwk6RJonesTaxes=rowtotal(W2TTOS90336S3 W3TTOS90489S3 W4TTOS90741S3 W5TTOS90938S3 W5TTOS90938S3 W6TTOS91165S2 W6TTOS91165S3 W7TTOS91432S3 W9TTOS92050S3)
egen CTOwk6RWilliamsHealth=rowtotal(W2TTOS90342S3 W3TTOS90494S3 W4TTOS90746S3 W5TTOS90943S3 W5TTOS90943S3 W6TTOS91170S3 W6TTOS91170S2 W7TTOS91437S3 W9TTOS92055S3)
egen CTOwk6RWilliamsTaxes=rowtotal(W2TTOS90321S3 W3TTOS90474S3 W4TTOS90726S3 W5TTOS90923S3 W5TTOS90923S3 W6TTOS91150S3 W6TTOS91150S2 W7TTOS91417S3 W9TTOS92035S3)
egen CTOwk6d1ABCMSNEcon6=rowtotal(W6TTOS91263S3 W6TTOS91263S2 W8TTOS91831S3 W9TTOS92148S3)
egen CTOwk6d1APHOTEcon14=rowtotal(W6TTOS91270S3 W6TTOS91270S2 W7TTOS91537S3 W8TTOS91838S3 W9TTOS92155S3)
egen CTOwk6d1NYTBETEcon26=rowtotal(W6TTOS91271S2 W6TTOS91271S3 W7TTOS91538S3 W9TTOS92156S3)
egen CTOwk6d1WSJLATEcon30=rowtotal(W6TTOS91273S2 W6TTOS91273S3 W8TTOS91841S3 W9TTOS92158S3)
egen CTOwk6d2CBSCBSEcon34=rowtotal(W6TTOS91280S3 W6TTOS91280S2 W9TTOS92164S3)
egen CTOwk6d2CNNCNNEcon50=rowtotal(W6TTOS91282S2 W6TTOS91282S3 W7TTOS91548S3 W8TTOS91849S3 W9TTOS92166S3)
egen CTOwk6d2REUREUEcon46=rowtotal(W6TTOS91281S3 W6TTOS91281S2 W7TTOS91547S3 W9TTOS92165S3)
egen CTOwk6d2WSJWSJEcon58=rowtotal(W6TTOS91283S3 W6TTOS91283S2 W7TTOS91549S3 W8TTOS91850S3 W9TTOS92167S3)
egen CTOwk6d3ABCMSNEcon6=rowtotal(W6TTOS91284S3 W6TTOS91284S2 W7TTOS91550S3 W8TTOS91851S3 W9TTOS92168S3)
egen CTOwk6d3APHOTEcon14=rowtotal(W6TTOS91285S3 W6TTOS91285S2 W7TTOS91551S3 W8TTOS91852S3 W9TTOS92169S3)
egen CTOwk6d3NYTBETEcon26=rowtotal(W6TTOS91277S3 W6TTOS91277S2 W9TTOS92162S3)
egen CTOwk6d3WSJLATEcon30=rowtotal(W6TTOS91248S2 W6TTOS91248S3)
egen CTOwk6r1CBSHOTEcon114=rowtotal(W6TTOS91272S3 W6TTOS91272S2)
egen CTOwk6r1CNNMSNEcon102=rowtotal(W6TTOS91268S3 W6TTOS91268S2 W7TTOS91535S3 W8TTOS91836S3)
egen CTOwk6r1NYTBETEcon106=rowtotal(W6TTOS91269S3 W6TTOS91269S2 W7TTOS91536S3 W8TTOS91837S3 W9TTOS92154S3)
egen CTOwk6r1REULATEcon98=rowtotal(W6TTOS91267S3 W6TTOS91267S2 W9TTOS92152S3)
egen CTOwk6r2ABCABCEcon70=rowtotal(W6TTOS91262S3 W6TTOS91262S2 W8TTOS91830S3 W9TTOS92147S3)
egen CTOwk6r2CBSCBSEcon90=rowtotal(W6TTOS91266S2 W6TTOS91266S3)
egen CTOwk6r2CNNCNNEcon86=rowtotal(W6TTOS91265S2 W6TTOS91265S3 W8TTOS91833S3)
egen CTOwk6r2NBCNBCEcon74=rowtotal(W6TTOS91264S3 W6TTOS91264S2 W9TTOS92149S3)
egen CTOwk6r3CBSHOTEcon114=rowtotal(W6TTOS91278S3 W6TTOS91278S2 W8TTOS91846S3)
egen CTOwk6r3CNNMSNEcon102=rowtotal(W6TTOS91276S2 W6TTOS91276S3)
egen CTOwk6r3NYTBETEcon106=rowtotal(W6TTOS91275S2 W6TTOS91275S3 W7TTOS91542S3 W9TTOS92160S3)
egen CTOwk6r3REULATEcon98=rowtotal(W6TTOS91274S3 W6TTOS91274S2 W7TTOS91541S3 W8TTOS91842S3 W9TTOS92159S3)
egen CTOwk7DSmithAffirm=rowtotal(W2TTOS90289S3 W3TTOS90446S3 W4TTOS90698S3 W5TTOS90895S3 W5TTOS90895S3 W6TTOS91122S3 W7TTOS91389S2 W7TTOS91389S3 W8TTOS91690S3 W9TTOS92007S3)
egen CTOwk7DSmithImmigration=rowtotal(W2TTOS90291S3 W3TTOS90447S3 W4TTOS90699S3 W5TTOS90896S3 W5TTOS90896S3 W6TTOS91123S3 W7TTOS91390S3 W7TTOS91390S2 W8TTOS91691S3 W9TTOS92008S3)
egen CTOwk7DWilsonAffirm=rowtotal(W2TTOS90306S3 W3TTOS90460S3 W4TTOS90712S3 W5TTOS90909S3 W5TTOS90909S3 W6TTOS91136S3 W7TTOS91403S3 W7TTOS91403S2 W8TTOS91704S3 W9TTOS92021S3)
egen CTOwk7DWilsonImmigration=rowtotal(W2TTOS90307S3 W3TTOS90461S3 W4TTOS90713S3 W5TTOS90910S3 W5TTOS90910S3 W6TTOS91137S3 W7TTOS91404S2 W7TTOS91404S3 W8TTOS91705S3 W9TTOS92022S3)
egen CTOwk7RJonesAffirm=rowtotal(W2TTOS90337S3 W3TTOS90490S3 W4TTOS90742S3 W7TTOS91433S2 W7TTOS91433S3 W8TTOS91734S3 W9TTOS92051S3)
egen CTOwk7RJonesImmigration=rowtotal(W2TTOS90313S3 W3TTOS90466S3 W4TTOS90718S3 W5TTOS90915S3 W5TTOS90915S3 W6TTOS91142S3 W7TTOS91409S3 W7TTOS91409S2 W9TTOS92027S3)
egen CTOwk7RWilliamsAffirm=rowtotal(W2TTOS90322S3 W3TTOS90475S3 W4TTOS90727S3 W5TTOS90924S3 W5TTOS90924S3 W6TTOS91151S3 W7TTOS91418S2 W7TTOS91418S3 W9TTOS92036S3)
egen CTOwk7RWilliamsImmigration=rowtotal(W2TTOS90323S3 W3TTOS90476S3 W4TTOS90728S3 W5TTOS90925S3 W5TTOS90925S3 W7TTOS91419S3 W7TTOS91419S2 W8TTOS91720S3 W9TTOS92037S3)
egen CTOwk7d1CBSROOTSoc4=rowtotal(W7TTOS91595S3 W7TTOS91595S2)
egen CTOwk7d1CNNLAT24=rowtotal(W7TTOS91597S2 W7TTOS91597S3 W8TTOS91886S3)
egen CTOwk7d1REUBET20=rowtotal(W7TTOS91596S2 W7TTOS91596S3 W8TTOS91885S3 W9TTOS92197S3)
egen CTOwk7d1WSJHUF32=rowtotal(W7TTOS91598S3 W7TTOS91598S2 W8TTOS91887S3 W9TTOS92199S3)
egen CTOwk7d2ABCABC40=rowtotal(W7TTOS91599S2 W7TTOS91599S3 W8TTOS91888S3 W9TTOS92200S3)
egen CTOwk7d2APAP44=rowtotal(W7TTOS91600S3 W7TTOS91600S2 W9TTOS92201S3)
egen CTOwk7d2CNNCNN52=rowtotal(W7TTOS91601S2 W7TTOS91601S3 W8TTOS91890S3 W9TTOS92202S3)
egen CTOwk7d2NYTNYT56=rowtotal(W7TTOS91602S2 W7TTOS91602S3 W8TTOS91891S3 W9TTOS92203S3)
egen CTOwk7d3CBSROOTSoc4=rowtotal(W7TTOS91588S3 W7TTOS91588S2 W8TTOS91877S3 W9TTOS92189S3)
egen CTOwk7d3CNNLAT24=rowtotal(W7TTOS91592S2 W7TTOS91592S3)
egen CTOwk7d3REUBET20=rowtotal(W7TTOS91590S2 W7TTOS91590S3 W9TTOS92191S3)
egen CTOwk7d3WSJHUF32=rowtotal(W7TTOS91593S3 W7TTOS91593S2 W8TTOS91882S3)
egen CTOwk7r1ABCMSN120=rowtotal(W7TTOS91585S3 W7TTOS91585S2)
egen CTOwk7r1APHOT128=rowtotal(W7TTOS91586S3 W7TTOS91586S2 W9TTOS92187S3)
egen CTOwk7r1NYTROOT108=rowtotal(W7TTOS91582S2 W7TTOS91582S3 W8TTOS91872S3 W9TTOS92184S3)
egen CTOwk7r1WSJUNI112=rowtotal(W7TTOS91584S3 W7TTOS91584S2 W9TTOS92185S3)
egen CTOwk7r2CBSCBSsoc68=rowtotal(W7TTOS91570S2 W7TTOS91570S3)
egen CTOwk7r2CNNCNN88=rowtotal(W7TTOS91576S3 W7TTOS91576S2 W8TTOS91868S3)
egen CTOwk7r2NBCNBC76=rowtotal(W7TTOS91572S2 W7TTOS91572S3 W8TTOS91866S3 W9TTOS92181S3)
egen CTOwk7r2REUREU84=rowtotal(W7TTOS91574S3 W7TTOS91574S2 W9TTOS92182S3)
egen CTOwk7r3ABCMSN120=rowtotal(W7TTOS91591S2 W7TTOS91591S3)
egen CTOwk7r3APHOT128=rowtotal(W7TTOS91594S2 W7TTOS91594S3 W8TTOS91883S3)
egen CTOwk7r3NYTROOT108=rowtotal(W7TTOS91587S2 W7TTOS91587S3 W9TTOS92188S3)
egen CTOwk7r3WSJUNI112=rowtotal(W7TTOS91589S3 W7TTOS91589S2 W8TTOS91878S3 W9TTOS92190S3)
egen CTOwk8DSmithAfghan=rowtotal(W2TTOS90292S3 W3TTOS90448S3 W4TTOS90700S3 W5TTOS90897S3 W5TTOS90897S3 W6TTOS91124S3 W7TTOS91391S3 W8TTOS91692S2 W8TTOS91692S3 W9TTOS92009S3)
egen CTOwk8DSmithMil=rowtotal(W2TTOS90293S3 W3TTOS90449S3 W4TTOS90701S3 W5TTOS90898S3 W5TTOS90898S3 W6TTOS91125S3 W7TTOS91392S3 W8TTOS91693S2 W8TTOS91693S3 W9TTOS92010S3)
egen CTOwk8DWilsonAfghan=rowtotal(W2TTOS90308S3 W3TTOS90462S3 W4TTOS90714S3 W5TTOS90911S3 W5TTOS90911S3 W6TTOS91138S3 W7TTOS91405S3 W8TTOS91706S3 W8TTOS91706S2 W9TTOS92023S3)
egen CTOwk8DWilsonMil=rowtotal(W2TTOS90309S3 W3TTOS90463S3 W4TTOS90715S3 W5TTOS90912S3 W5TTOS90912S3 W6TTOS91139S3 W7TTOS91406S3 W8TTOS91707S3 W8TTOS91707S2 W9TTOS92024S3)
egen CTOwk8JRonesAfghan=rowtotal(W2TTOS90335S3 W3TTOS90488S3 W4TTOS90740S3 W6TTOS91164S3 W7TTOS91431S3)
egen CTOwk8RJonesAfghan=rowtotal(W8TTOS91732S2 W8TTOS91732S3 W9TTOS92049S3)
egen CTOwk8RJonesMil=rowtotal(W2TTOS90339S3 W3TTOS90492S3 W4TTOS90744S3 W5TTOS90941S3 W5TTOS90941S3 W6TTOS91168S3 W7TTOS91435S3 W8TTOS91736S2 W8TTOS91736S3 W9TTOS92053S3)
egen CTOwk8RWilliamsAfghan=rowtotal(W2TTOS90324S3 W3TTOS90477S3 W4TTOS90729S3 W5TTOS90926S3 W5TTOS90926S3 W6TTOS91153S3 W7TTOS91420S3 W8TTOS91721S3 W8TTOS91721S2 W9TTOS92038S3)
egen CTOwk8RWilliamsMil=rowtotal(W2TTOS90325S3 W3TTOS90478S3 W4TTOS90730S3 W5TTOS90927S3 W5TTOS90927S3 W6TTOS91154S3 W7TTOS91421S3 W8TTOS91722S3 W8TTOS91722S2 W9TTOS92039S3)
egen CTOwk8d1APROOTFor15=rowtotal(W8TTOS91897S2 W8TTOS91897S3 W9TTOS92209S3)
egen CTOwk8d1NBCMSNFor11=rowtotal(W8TTOS91896S2 W8TTOS91896S3)
egen CTOwk8d1NYTUNIFor27=rowtotal(W8TTOS91899S3 W8TTOS91899S2 W9TTOS92211S3)
egen CTOwk8d1REUHOTFor19=rowtotal(W8TTOS91898S3 W8TTOS91898S2 W9TTOS92210S3)
egen CTOwk8d2ABCABCFor38=rowtotal(W8TTOS91901S3 W8TTOS91901S2 W9TTOS92213S3)
egen CTOwk8d2CBSCBSFor35=rowtotal(W8TTOS91900S2 W8TTOS91900S3 W9TTOS92212S3)
egen CTOwk8d2CNNCNNFor51=rowtotal(W8TTOS91902S2 W8TTOS91902S3 W9TTOS92214S3)
egen CTOwk8d2WSJWSJFor59=rowtotal(W8TTOS91904S3 W8TTOS91904S2 W9TTOS92216S3)
egen CTOwk8d3APROOTFor15=rowtotal(W8TTOS91913S2 W8TTOS91913S3 W9TTOS92225S3)
egen CTOwk8d3NBCMSNFor11=rowtotal(W8TTOS91912S3 W8TTOS91912S2 W9TTOS92224S3)
egen CTOwk8d3NYTUNIFor27=rowtotal(W8TTOS91915S2 W8TTOS91915S3)
egen CTOwk8d3REUHOTFor19=rowtotal(W8TTOS91914S3 W8TTOS91914S2 W9TTOS92226S3)
egen CTOwk8r1ABCUNIFor119=rowtotal(W8TTOS91910S2 W8TTOS91910S3)
egen CTOwk8r1NBCHUFFor123=rowtotal(W8TTOS91911S3 W8TTOS91911S2)
egen CTOwk8r1NYTFOXFor107=rowtotal(W8TTOS91909S3 W8TTOS91909S2 W9TTOS92221S3)
egen CTOwk8r1REUBETFor99=rowtotal(W8TTOS91908S2 W8TTOS91908S3 W9TTOS92220S3)
egen CTOwk8r2APAPFor79=rowtotal(W8TTOS91905S3 W8TTOS91905S2 W9TTOS92217S3)
egen CTOwk8r2CBSCBSFor67=rowtotal(W8TTOS91903S3 W8TTOS91903S2)
egen CTOwk8r2CNNCNNFor87=rowtotal(W8TTOS91906S3 W8TTOS91906S2)
egen CTOwk8r2WSJWSJFor95=rowtotal(W8TTOS91907S2 W8TTOS91907S3)
egen CTOwk8r3ABCUNIFor119=rowtotal(W8TTOS91918S2 W8TTOS91918S3 W9TTOS92230S3)
egen CTOwk8r3NBCHUFFor123=rowtotal(W8TTOS91919S2 W8TTOS91919S3)
egen CTOwk8r3NYTFOXFor107=rowtotal(W8TTOS91917S3 W8TTOS91917S2)
egen CTOwk8r3REUBETFor99=rowtotal(W8TTOS91916S3 W8TTOS91916S2 W9TTOS92228S3)
egen CTOwk9DSmithDeathPen=rowtotal(W2TTOS90294S3 W3TTOS90450S3 W4TTOS90702S3 W5TTOS90899S3 W5TTOS90899S3 W6TTOS91126S3 W7TTOS91393S3 W8TTOS91694S3 W9TTOS92011S2 W9TTOS92011S3)
egen CTOwk9DSmithStemCells=rowtotal(W2TTOS90295S3 W3TTOS90451S3 W4TTOS90703S3 W5TTOS90900S3 W5TTOS90900S3 W6TTOS91127S3 W7TTOS91394S3 W8TTOS91695S3 W9TTOS92012S3 W9TTOS92012S2)
egen CTOwk9DWilsonDeathPen=rowtotal(W2TTOS90310S3 W3TTOS90464S3 W4TTOS90716S3 W5TTOS90913S3 W5TTOS90913S3 W6TTOS91140S3 W7TTOS91407S3 W8TTOS91708S3 W9TTOS92025S3 W9TTOS92025S2)
egen CTOwk9DWilsonStemCells=rowtotal(W2TTOS90311S3 W3TTOS90465S3 W4TTOS90717S3 W5TTOS90914S3 W5TTOS90914S3 W6TTOS91141S3 W7TTOS91408S3 W8TTOS91709S3 W9TTOS92026S3 W9TTOS92026S2)
egen CTOwk9RJonesDeathPen=rowtotal(W2TTOS90340S3 W3TTOS90493S3 W4TTOS90745S3 W5TTOS90942S3 W5TTOS90942S3 W6TTOS91169S3 W7TTOS91436S3 W9TTOS92054S2 W9TTOS92054S3)
egen CTOwk9RJonesStemCells=rowtotal(W2TTOS90338S3 W3TTOS90491S3 W4TTOS90743S3 W5TTOS90940S3 W5TTOS90940S3 W6TTOS91167S3 W7TTOS91434S3 W8TTOS91735S3 W9TTOS92052S3 W9TTOS92052S2)
egen CTOwk9RWilliamsDeathPen=rowtotal(W2TTOS90326S3 W3TTOS90479S3 W4TTOS90731S3 W6TTOS91155S3 W7TTOS91422S3 W9TTOS92040S2 W9TTOS92040S3)
egen CTOwk9RWilliamsStemCells=rowtotal(W2TTOS90327S3 W3TTOS90480S3 W4TTOS90732S3 W5TTOS90929S3 W7TTOS91423S3 W9TTOS92041S3 W9TTOS92041S2)
egen CTOwk9d1APFOXCult13=rowtotal(W9TTOS92386S2 W9TTOS92386S3)
egen CTOwk9d1CBSUNICult1=rowtotal(W9TTOS92385S2 W9TTOS92385S3)
egen CTOwk9d1REUMSNCult17=rowtotal(W9TTOS92387S3 W9TTOS92387S2)
egen CTOwk9d1WSJFOXCult29=rowtotal(W9TTOS92389S2 W9TTOS92389S3)
egen CTOwk9d2ABCABCCult39=rowtotal(W9TTOS92391S3 W9TTOS92391S2)
egen CTOwk9d2CNNCNNCult49=rowtotal(W9TTOS92392S2 W9TTOS92392S3)
egen CTOwk9d2NBCNBCCult61=rowtotal(W9TTOS92395S2 W9TTOS92395S3)
egen CTOwk9d2NYTNYTCult53=rowtotal(W9TTOS92394S2 W9TTOS92394S3)
egen CTOwk9d3APFOXCult13=rowtotal(W9TTOS92397S3 W9TTOS92397S2)
egen CTOwk9d3CBSUNICult1=rowtotal(W9TTOS92396S3 W9TTOS92396S2)
egen CTOwk9d3REUMSNCult17=rowtotal(W9TTOS92399S2 W9TTOS92399S3)
egen CTOwk9d3WSJFOXCult29=rowtotal(W9TTOS92400S2 W9TTOS92400S3)
egen CTOwk9r1CBSHUFCult113=rowtotal(W9TTOS92403S2 W9TTOS92403S3)
egen CTOwk9r1CNNFOXCult104=rowtotal(W9TTOS92401S3 W9TTOS92401S2)
egen CTOwk9r1NYTUNICult105=rowtotal(W9TTOS92402S2 W9TTOS92402S3)
egen CTOwk9r1REUROOTCult97=rowtotal(W9TTOS92398S2 W9TTOS92398S3)
egen CTOwk9r2ABCABCCult69=rowtotal(W9TTOS92384S2 W9TTOS92384S3)
egen CTOwk9r2APAPCult77=rowtotal(W9TTOS92390S3 W9TTOS92390S2)
egen CTOwk9r2NBCNBCCult73=rowtotal(W9TTOS92388S3 W9TTOS92388S2)
egen CTOwk9r2WSJWSJCult93=rowtotal(W9TTOS92393S3 W9TTOS92393S2)
egen CTOwk9r3CBSHUFCult113=rowtotal(W9TTOS92407S2 W9TTOS92407S3)
egen CTOwk9r3CNNFOXCult104=rowtotal(W9TTOS92405S3 W9TTOS92405S2)
egen CTOwk9r3NYTUNICult105=rowtotal(W9TTOS92406S3 W9TTOS92406S2)
egen CTOwk9r3REUROOTCult97=rowtotal(W9TTOS92404S2 W9TTOS92404S3)

* Ordering
order *, alpha
order PAC ///
SUBJECTIDW1 SUBJECTIDW2 SUBJECTIDW3 SUBJECTIDW4 SUBJECTIDW5 SUBJECTIDW6 SUBJECTIDW7 SUBJECTIDW8 SUBJECTIDW9 SUBJECTIDW10 ///
IPW1 IPW2 IPW3 IPW4 IPW5 IPW6 IPW7 IPW8 IPW9 IPW10 /// 
WEEK1 WEEK2 WEEK3 WEEK4 WEEK5 WEEK6 WEEK7 WEEK8 WEEK9 WEEK10 ///
DATEW1a DATEW2a DATEW3a DATEW4a DATEW5a DATEW6a DATEW7a DATEW8a DATEW9a DATEW10a ///
DATEW1b DATEW2b DATEW3b DATEW4b DATEW5b DATEW6b DATEW7b DATEW8b DATEW9b DATEW10b ///  
DUPW1 DUPW2 DUPW3 DUPW4 DUPW5 DUPW6 DUPW7 DUPW8 DUPW9 DUPW10 DUPfinal

* Sorting
sort PAC, stable

* Save PanelExperiment_Working
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/PanelExperiment_Working.dta", replace
