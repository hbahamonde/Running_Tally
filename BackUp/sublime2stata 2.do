set more off
clear all
* Set Working Directory (comment it with a "*", don't delet it)
cd "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Parents/W1/"

**************************************************************************************************
*											W1S1
**************************************************************************************************


*Open W1S1 and save a Working Copy (We wanna keep a copy of the original data)
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Parents/W1/W1S1.dta", replace
destring, replace
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Parents/W1/W1S1_Working.dta", replace

* From Excel to STATA everything enters as lower case. Lets reverse it to its original: Upper Case
rename *, upper

* Now lets keep what we need
capture keep GRP* Q* FOD* TTO* TOD* DATE* WORDS* FTA* GAP* TIME_END_FLOWPHASE TOTAL_FLOW_ACCESSED TIME TIME_BEGIN_FLOWPHASE SUBJECT_ID
