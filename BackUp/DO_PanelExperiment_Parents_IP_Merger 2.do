* IP ADRESSES CODE* STATA 13
* Hector Bahamonde hector.bahamonde@rutgers.edu
clear all

**************************************************************************************************
*											W1
**************************************************************************************************

import delimited "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Parents_Spring/W1/IP/DPTE_665_SubjectVars_1433364117856.csv", clear
keep if subj_var == "SYS_VAR_SUBJECT_IP_ADDRESS"
rename subj_var_val IP
rename subject_id PAC
keep IP PAC
destring, replace
compress
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Parents_Spring/W1/IP/IPW1.dta", replace


**************************************************************************************************
*											W2
**************************************************************************************************
import delimited "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Parents_Spring/W2/IP/DPTE_660_SubjectVars_1433364524251.csv", clear
keep if subj_var == "SYS_VAR_SUBJECT_IP_ADDRESS"
rename subj_var_val IP
rename subject_id SUBJECTID
keep IP SUBJECTID
destring, replace
compress
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Parents_Spring/W2/IP/IPW2.dta", replace
**************************************************************************************************
*											W3
**************************************************************************************************
import delimited "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Parents_Spring/W3/IP/DPTE_672_SubjectVars_1433364827334.csv", clear
keep if subj_var == "SYS_VAR_SUBJECT_IP_ADDRESS"
rename subj_var_val IP
rename subject_id SUBJECTID
keep IP SUBJECTID
destring, replace
compress
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Parents_Spring/W3/IP/IPW3.dta", replace

**************************************************************************************************
*											W4
**************************************************************************************************
import delimited "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Parents_Spring/W4/IP/DPTE_674_SubjectVars_1433365150754.csv", clear
keep if subj_var == "SYS_VAR_SUBJECT_IP_ADDRESS"
rename subj_var_val IP
rename subject_id SUBJECTID
keep IP SUBJECTID
destring, replace
compress
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Parents_Spring/W4/IP/IPW4.dta", replace
**************************************************************************************************
*											W5
**************************************************************************************************
import delimited "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Parents_Spring/W5/IP/DPTE_676_SubjectVars_1433365445609.csv", clear
keep if subj_var == "SYS_VAR_SUBJECT_IP_ADDRESS"
rename subj_var_val IP
rename subject_id SUBJECTID
keep IP SUBJECTID
destring, replace
compress
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Parents_Spring/W5/IP/IPW5.dta", replace
**************************************************************************************************
*											W6
**************************************************************************************************
import delimited "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Parents_Spring/W6/IP/DPTE_678_SubjectVars_1433365680589.csv", clear
keep if subj_var == "SYS_VAR_SUBJECT_IP_ADDRESS"
rename subj_var_val IP
rename subject_id SUBJECTID
keep IP SUBJECTID
destring, replace
compress
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Parents_Spring/W6/IP/IPW6.dta", replace
**************************************************************************************************
*											W7
**************************************************************************************************
import delimited "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Parents_Spring/W7/IP/DPTE_679_SubjectVars_1433365945577.csv", clear
keep if subj_var == "SYS_VAR_SUBJECT_IP_ADDRESS"
rename subj_var_val IP
rename subject_id SUBJECTID
keep IP SUBJECTID
destring, replace
compress
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Parents_Spring/W7/IP/IPW7.dta", replace
**************************************************************************************************
*											W8
**************************************************************************************************
import delimited "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Parents_Spring/W8/IP/DPTE_680_SubjectVars_1433366219475.csv", clear
keep if subj_var == "SYS_VAR_SUBJECT_IP_ADDRESS"
rename subj_var_val IP
rename subject_id SUBJECTID
keep IP SUBJECTID
destring, replace
compress
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Parents_Spring/W8/IP/IPW8.dta", replace
**************************************************************************************************
*											W9
**************************************************************************************************
import delimited "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Parents_Spring/W9/IP/DPTE_681_SubjectVars_1433366443519.csv", clear
keep if subj_var == "SYS_VAR_SUBJECT_IP_ADDRESS"
rename subj_var_val IP
rename subject_id SUBJECTID
keep IP SUBJECTID
destring, replace
compress
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Parents_Spring/W9/IP/IPW9.dta", replace
**************************************************************************************************
*											W10
**************************************************************************************************
* import delimited "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Parents_Spring/W10/IP/DPTE_681_SubjectVars_1433366443519.csv", clear
* keep if subj_var == "SYS_VAR_SUBJECT_IP_ADDRESS"
* rename subj_var_val IP
* rename subject_id SUBJECTID
* keep IP SUBJECTID
* destring, replace
* compress
* save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Parents_Spring/W10/IP/IPW10.dta", replace
