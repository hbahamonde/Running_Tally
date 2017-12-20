
* Panel Experiment
* Name and Label Generator
* STATA V13
* Hector Bahamonde [hector.bahamonde@rutgers.edu]


**************************************************************************************************
*										W1
**************************************************************************************************

clear all
set more off

* Open DATASET
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W1/Working/W1S1234_Working.dta", replace
describe, replace
drop position format type isnumeric vallab varlab

* Extract only the DPTE code for each ("Object ID"). WE WILL USE THIS NUMBER TO MATCH THEM WITH THE LABEL PROVIDED BY DPTE
gen objectid = regexs(0) if(regexm(name, "[0-9][0-9][0-9][0-9][0-9]"))
gen objectid2 = regexs(0) if(regexm(name, "[0-9][0-9][0-9][0-9]"))

* call it variables.dta
drop objectid2
drop if missing(objectid)

destring, replace
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W1/Working/Labeling/variables.dta", replace


set more off
clear all

* OPEN A DTA FILE CALLED "labels". This one contains DPTE'S CODEBOOK
import delimited "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W1/Original/IDName-table-665.csv", clear
rename name label
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W1/Working/Labeling/labels.dta", replace
drop objecttype
destring, replace

merge 1:m objectid using "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W1/Working/Labeling/variables.dta"
drop _merge objectid
order *, alpha
drop if missing(name)
drop if missing(label)

gen labvar="label variable "
gen space = " "
gen quot = char(34)
egen paste1 =  concat(labvar name space quot label quot)

save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W1/Working/Labeling/LabelsWithVariables.dta", replace
keep paste1
browse


**************************************************************************************************
*										W2
**************************************************************************************************



*
set more off
clear all
cd "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W2/Working/Labeling"
*


* Open DATASET
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W2/Working/W2S1234_Working.dta", replace
describe, replace
drop position format type isnumeric vallab varlab

* Extract only the DPTE code for each ("Object ID"). WE WILL USE THIS NUMBER TO MATCH THEM WITH THE LABEL PROVIDED BY DPTE
gen objectid = regexs(0) if(regexm(name, "[0-9][0-9][0-9][0-9][0-9]"))
gen objectid2 = regexs(0) if(regexm(name, "[0-9][0-9][0-9][0-9]"))

* call it variables.dta
drop objectid2
drop if missing(objectid)

destring, replace
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W2/Working/Labeling/variables.dta", replace


set more off
clear all

* OPEN A DTA FILE CALLED "labels". This one contains DPTE'S CODEBOOK
import delimited "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W2/Original/IDName-table-660.csv", clear
rename name label
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W2/Working/Labeling/labels.dta", replace
drop objecttype
destring, replace

merge 1:m objectid using "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W2/Working/Labeling/variables.dta"
drop _merge objectid
order *, alpha
drop if missing(name)
drop if missing(label)

gen labvar="label variable "
gen space = " "
gen quot = char(34)
egen paste1 =  concat(labvar name space quot label quot)

save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W2/Working/Labeling/LabelsWithVariables.dta", replace
keep paste1
browse

**************************************************************************************************
*										W3
**************************************************************************************************



*
set more off
clear all
cd "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W3/Working/Labeling"
*


* Open DATASET
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W3/Working/W3S1234_Working.dta", replace
describe, replace
drop position format type isnumeric vallab varlab

* Extract only the DPTE code for each ("Object ID"). WE WILL USE THIS NUMBER TO MATCH THEM WITH THE LABEL PROVIDED BY DPTE
gen objectid = regexs(0) if(regexm(name, "[0-9][0-9][0-9][0-9][0-9]"))
gen objectid2 = regexs(0) if(regexm(name, "[0-9][0-9][0-9][0-9]"))

* call it variables.dta
drop objectid2
drop if missing(objectid)

destring, replace
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W3/Working/Labeling/variables.dta", replace


set more off
clear all

* OPEN A DTA FILE CALLED "labels". This one contains DPTE'S CODEBOOK
import delimited "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W3/Original/IDName-table-672.csv", clear
rename name label
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W3/Working/Labeling/labels.dta", replace
drop objecttype
destring, replace

merge 1:m objectid using "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W3/Working/Labeling/variables.dta"
drop _merge objectid
order *, alpha
drop if missing(name)
drop if missing(label)

gen labvar="label variable "
gen space = " "
gen quot = char(34)
egen paste1 =  concat(labvar name space quot label quot)

save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W3/Working/Labeling/LabelsWithVariables.dta", replace
keep paste1
browse


**************************************************************************************************
*										W4
**************************************************************************************************



*
set more off
clear all
cd "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W4/Working/Labeling"
*


* Open DATASET
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W4/Working/W4S1234_Working.dta", replace
describe, replace
drop position format type isnumeric vallab varlab

* Extract only the DPTE code for each ("Object ID"). WE WILL USE THIS NUMBER TO MATCH THEM WITH THE LABEL PROVIDED BY DPTE
gen objectid = regexs(0) if(regexm(name, "[0-9][0-9][0-9][0-9][0-9]"))
gen objectid2 = regexs(0) if(regexm(name, "[0-9][0-9][0-9][0-9]"))

* call it variables.dta
drop objectid2
drop if missing(objectid)

destring, replace
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W4/Working/Labeling/variables.dta", replace


set more off
clear all

* OPEN A DTA FILE CALLED "labels". This one contains DPTE'S CODEBOOK
import delimited "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W4/Original/IDName-table-674.csv", clear
rename name label
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W4/Working/Labeling/labels.dta", replace
drop objecttype
destring, replace

merge 1:m objectid using "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W4/Working/Labeling/variables.dta"
drop _merge objectid
order *, alpha
drop if missing(name)
drop if missing(label)

gen labvar="label variable "
gen space = " "
gen quot = char(34)
egen paste1 =  concat(labvar name space quot label quot)

save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W4/Working/Labeling/LabelsWithVariables.dta", replace
keep paste1
browse


**************************************************************************************************
*										W5
**************************************************************************************************



*
set more off
clear all
cd "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W5/Working/Labeling"
*


* Open DATASET
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W5/Working/W5S1234_Working.dta", replace
describe, replace
drop position format type isnumeric vallab varlab

* Extract only the DPTE code for each ("Object ID"). WE WILL USE THIS NUMBER TO MATCH THEM WITH THE LABEL PROVIDED BY DPTE
gen objectid = regexs(0) if(regexm(name, "[0-9][0-9][0-9][0-9][0-9]"))
gen objectid2 = regexs(0) if(regexm(name, "[0-9][0-9][0-9][0-9]"))

* call it variables.dta
drop objectid2
drop if missing(objectid)

destring, replace
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W5/Working/Labeling/variables.dta", replace


set more off
clear all

* OPEN A DTA FILE CALLED "labels". This one contains DPTE'S CODEBOOK
import delimited "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W5/Original/IDName-table-676.csv", clear
rename name label
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W5/Working/Labeling/labels.dta", replace
drop objecttype
destring, replace

merge 1:m objectid using "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W5/Working/Labeling/variables.dta"
drop _merge objectid
order *, alpha
drop if missing(name)
drop if missing(label)

gen labvar="label variable "
gen space = " "
gen quot = char(34)
egen paste1 =  concat(labvar name space quot label quot)

save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W5/Working/Labeling/LabelsWithVariables.dta", replace
keep paste1
browse


**************************************************************************************************
*										W6
**************************************************************************************************



*
set more off
clear all
cd "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W6/Working/Labeling"
*


* Open DATASET
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W6/Working/W6S1234_Working.dta", replace
describe, replace
drop position format type isnumeric vallab varlab

* Extract only the DPTE code for each ("Object ID"). WE WILL USE THIS NUMBER TO MATCH THEM WITH THE LABEL PROVIDED BY DPTE
gen objectid = regexs(0) if(regexm(name, "[0-9][0-9][0-9][0-9][0-9]"))
gen objectid2 = regexs(0) if(regexm(name, "[0-9][0-9][0-9][0-9]"))

* call it variables.dta
drop objectid2
drop if missing(objectid)

destring, replace
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W6/Working/Labeling/variables.dta", replace


set more off
clear all

* OPEN A DTA FILE CALLED "labels". This one contains DPTE'S CODEBOOK
import delimited "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W6/Original/IDName-table-678.csv", clear
rename name label
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W6/Working/Labeling/labels.dta", replace
drop objecttype
destring, replace

merge 1:m objectid using "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W6/Working/Labeling/variables.dta"
drop _merge objectid
order *, alpha
drop if missing(name)
drop if missing(label)

gen labvar="label variable "
gen space = " "
gen quot = char(34)
egen paste1 =  concat(labvar name space quot label quot)

save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W6/Working/Labeling/LabelsWithVariables.dta", replace
keep paste1
browse


**************************************************************************************************
*										W7
**************************************************************************************************



*
set more off
clear all
cd "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W7/Working/Labeling"
*


* Open DATASET
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W7/Working/W7S1234_Working.dta", replace
describe, replace
drop position format type isnumeric vallab varlab

* Extract only the DPTE code for each ("Object ID"). WE WILL USE THIS NUMBER TO MATCH THEM WITH THE LABEL PROVIDED BY DPTE
gen objectid = regexs(0) if(regexm(name, "[0-9][0-9][0-9][0-9][0-9]"))
gen objectid2 = regexs(0) if(regexm(name, "[0-9][0-9][0-9][0-9]"))

* call it variables.dta
drop objectid2
drop if missing(objectid)

destring, replace
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W7/Working/Labeling/variables.dta", replace


set more off
clear all

* OPEN A DTA FILE CALLED "labels". This one contains DPTE'S CODEBOOK
import delimited "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W7/Original/IDName-table-679.csv", clear
rename name label
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W7/Working/Labeling/labels.dta", replace
drop objecttype
destring, replace

merge 1:m objectid using "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W7/Working/Labeling/variables.dta"
drop _merge objectid
order *, alpha
drop if missing(name)
drop if missing(label)

gen labvar="label variable "
gen space = " "
gen quot = char(34)
egen paste1 =  concat(labvar name space quot label quot)

save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W7/Working/Labeling/LabelsWithVariables.dta", replace
keep paste1
browse


**************************************************************************************************
*										W8
**************************************************************************************************



*
set more off
clear all
cd "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W8/Working/Labeling"
*


* Open DATASET
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W8/Working/W8S1234_Working.dta", replace
describe, replace
drop position format type isnumeric vallab varlab

* Extract only the DPTE code for each ("Object ID"). WE WILL USE THIS NUMBER TO MATCH THEM WITH THE LABEL PROVIDED BY DPTE
gen objectid = regexs(0) if(regexm(name, "[0-9][0-9][0-9][0-9][0-9]"))
gen objectid2 = regexs(0) if(regexm(name, "[0-9][0-9][0-9][0-9]"))

* call it variables.dta
drop objectid2
drop if missing(objectid)

destring, replace
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W8/Working/Labeling/variables.dta", replace


set more off
clear all

* OPEN A DTA FILE CALLED "labels". This one contains DPTE'S CODEBOOK
import delimited "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W8/Original/IDName-table-680.csv", clear
rename name label
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W8/Working/Labeling/labels.dta", replace
drop objecttype
destring, replace

merge 1:m objectid using "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W8/Working/Labeling/variables.dta"
drop _merge objectid
order *, alpha
drop if missing(name)
drop if missing(label)

gen labvar="label variable "
gen space = " "
gen quot = char(34)
egen paste1 =  concat(labvar name space quot label quot)

save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W8/Working/Labeling/LabelsWithVariables.dta", replace
keep paste1
browse


**************************************************************************************************
*										W9
**************************************************************************************************



*
set more off
clear all
cd "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W9/Working/Labeling"
*


* Open DATASET
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W9/Working/W9S1234_Working.dta", replace
describe, replace
drop position format type isnumeric vallab varlab

* Extract only the DPTE code for each ("Object ID"). WE WILL USE THIS NUMBER TO MATCH THEM WITH THE LABEL PROVIDED BY DPTE
gen objectid = regexs(0) if(regexm(name, "[0-9][0-9][0-9][0-9][0-9]"))
gen objectid2 = regexs(0) if(regexm(name, "[0-9][0-9][0-9][0-9]"))

* call it variables.dta
drop objectid2
drop if missing(objectid)

destring, replace
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W9/Working/Labeling/variables.dta", replace


set more off
clear all

* OPEN A DTA FILE CALLED "labels". This one contains DPTE'S CODEBOOK
import delimited "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W9/Original/IDName-table-681.csv", clear
rename name label
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W9/Working/Labeling/labels.dta", replace
drop objecttype
destring, replace

merge 1:m objectid using "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W9/Working/Labeling/variables.dta"
drop _merge objectid
order *, alpha
drop if missing(name)
drop if missing(label)

gen labvar="label variable "
gen space = " "
gen quot = char(34)
egen paste1 =  concat(labvar name space quot label quot)

save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W9/Working/Labeling/LabelsWithVariables.dta", replace
keep paste1
browse


**************************************************************************************************
*										W10
**************************************************************************************************



*
set more off
clear all
cd "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W10/Working/Labeling"
*


* Open DATASET
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W10/Working/W10S12_Working.dta", replace
describe, replace
drop position format type isnumeric vallab varlab

* Extract only the DPTE code for each ("Object ID"). WE WILL USE THIS NUMBER TO MATCH THEM WITH THE LABEL PROVIDED BY DPTE
gen objectid = regexs(0) if(regexm(name, "[0-9][0-9][0-9][0-9][0-9]"))
gen objectid2 = regexs(0) if(regexm(name, "[0-9][0-9][0-9][0-9]"))

* call it variables.dta
drop objectid2
drop if missing(objectid)

destring, replace
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W10/Working/Labeling/variables.dta", replace


set more off
clear all

* OPEN A DTA FILE CALLED "labels". This one contains DPTE'S CODEBOOK
import delimited "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W10/Original/IDName-table-682.csv", clear
rename name label
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W10/Working/Labeling/labels.dta", replace
drop objecttype
destring, replace

merge 1:m objectid using "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W10/Working/Labeling/variables.dta"
drop _merge objectid
order *, alpha
drop if missing(name)
drop if missing(label)

gen labvar="label variable "
gen space = " "
gen quot = char(34)
egen paste1 =  concat(labvar name space quot label quot)

save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Master/W10/Working/Labeling/LabelsWithVariables.dta", replace
keep paste1
browse
