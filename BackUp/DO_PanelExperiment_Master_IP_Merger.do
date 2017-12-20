* IP ADRESSES CODE* STATA 13
* Hector Bahamonde hector.bahamonde@rutgers.edu
clear all

**************************************************************************************************
*											W1
**************************************************************************************************

clear all
import delimited "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W1/IP/DPTE_665_SubjectVars_1434123647367.csv", clear
keep if subj_var == "SYS_VAR_SUBJECT_IP_ADDRESS"
rename subj_var_val IP
rename subject_id PAC
keep IP PAC
destring, replace
compress
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W1/IP/IPW1.dta", replace


**************************************************************************************************
*											W2
**************************************************************************************************
clear all
import delimited "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W2/IP/", clear
keep if subj_var == "SYS_VAR_SUBJECT_IP_ADDRESS"
rename subj_var_val IP
rename subject_id SUBJECTID
keep IP SUBJECTID
destring, replace
compress
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W2/IP/IPW2.dta", replace
**************************************************************************************************
*											W3
**************************************************************************************************
clear all
import delimited "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W3/IP/DPTE_672_SubjectVars_1434123762228.csv", clear
keep if subj_var == "SYS_VAR_SUBJECT_IP_ADDRESS"
rename subj_var_val IP
rename subject_id SUBJECTID
keep IP SUBJECTID
destring, replace
compress
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W3/IP/IPW3.dta", replace

**************************************************************************************************
*											W4
**************************************************************************************************
clear all
import delimited "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W4/IP/DPTE_674_SubjectVars_1434124216521.csv", clear
keep if subj_var == "SYS_VAR_SUBJECT_IP_ADDRESS"
rename subj_var_val IP
rename subject_id SUBJECTID
keep IP SUBJECTID
destring, replace
compress
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W4/IP/IPW4.dta", replace
**************************************************************************************************
*											W5
**************************************************************************************************
clear all
import delimited "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W5/IP/DPTE_676_SubjectVars_1434124340727.csv", clear
keep if subj_var == "SYS_VAR_SUBJECT_IP_ADDRESS"
rename subj_var_val IP
rename subject_id SUBJECTID
keep IP SUBJECTID
destring, replace
compress
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W5/IP/IPW5.dta", replace
**************************************************************************************************
*											W6
**************************************************************************************************
clear all
import delimited "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W6/IP/DPTE_678_SubjectVars_1434124409243.csv", clear
keep if subj_var == "SYS_VAR_SUBJECT_IP_ADDRESS"
rename subj_var_val IP
rename subject_id SUBJECTID
keep IP SUBJECTID
destring, replace
compress
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W6/IP/IPW6.dta", replace
**************************************************************************************************
*											W7
**************************************************************************************************
clear all
import delimited "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W7/IP/DPTE_679_SubjectVars_1434124495488.csv", clear
keep if subj_var == "SYS_VAR_SUBJECT_IP_ADDRESS"
rename subj_var_val IP
rename subject_id SUBJECTID
keep IP SUBJECTID
destring, replace
compress
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W7/IP/IPW7.dta", replace
**************************************************************************************************
*											W8
**************************************************************************************************
clear all
import delimited "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W8/IP/DPTE_680_SubjectVars_1434124576139.csv", clear
keep if subj_var == "SYS_VAR_SUBJECT_IP_ADDRESS"
rename subj_var_val IP
rename subject_id SUBJECTID
keep IP SUBJECTID
destring, replace
compress
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W8/IP/IPW8.dta", replace
**************************************************************************************************
*											W9
**************************************************************************************************
clear all
import delimited "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W9/IP/DPTE_681_SubjectVars_1434124663447.csv", clear
keep if subj_var == "SYS_VAR_SUBJECT_IP_ADDRESS"
rename subj_var_val IP
rename subject_id SUBJECTID
keep IP SUBJECTID
destring, replace
compress
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W9/IP/IPW9.dta", replace
**************************************************************************************************
*											W10
**************************************************************************************************
clear all
import delimited "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W10/IP/DPTE_682_SubjectVars_1434124776978.csv", clear
keep if subj_var == "SYS_VAR_SUBJECT_IP_ADDRESS"
rename subj_var_val IP
rename subject_id SUBJECTID
keep IP SUBJECTID
destring, replace
compress
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W10/IP/IPW10.dta", replace
