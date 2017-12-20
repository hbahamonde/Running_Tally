* Panel Experiment
* Cumulative TTO and TOD
* STATA V13
* Hector Bahamonde [hector.bahamonde@rutgers.edu]


*
set more off
clear all
cd "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment"
*


**************************************************************************************************
*												W	2
**************************************************************************************************


use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W2/WorkingData/DurationData/Labeling/LabelsWithVariables.dta", replace
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W2/Cumulative/cumulativeW2.dta", replace

rename name label
rename objectid code
rename var1 variable

encode label, generate(labelnum)
drop label
rename labelnum label

gen week = regexs(0) if(regexm(variable,  "[A-Z][0-9]"))
gen sub = regexs(0) if(regexm(variable,  "[A-Z][0-9]$"))
gen type1 = regexs(0) if(regexm(variable,  "[A-Z][A-Z][A-Z]"))
gen s = "S"
gen var1= .

encode type1, gen(type2)

keep if type2 == 4 | type2 == 5

gen type3 = "COD"
replace type3 = "CTO" if type2 == 5
encode type3, gen(type4)

drop type1 type3
rename type4 type1


encode sub, gen(sub1)
drop if sub1 == 1 |  sub1 == 4
drop sub
rename sub1 sub

decode label, gen(label1)
drop label
rename label1 label

decode type2, gen(type22)
drop type2
rename type22 type2

decode type1, gen(type11)
drop type1
rename type11 type1

decode sub, gen(sub1)
drop sub
rename sub1 sub

order var1 code variable label week type2 type1 s	sub

compress
save, replace





**************************************************************************************************
*												W	3
**************************************************************************************************

clear all

use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W3/WorkingData/DurationData/Labeling/LabelsWithVariables.dta", replace
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W3/Cumulative/cumulativeW3.dta", replace

rename name label
rename objectid code
rename var1 variable

encode label, generate(labelnum)
drop label
rename labelnum label

gen week = regexs(0) if(regexm(variable,  "[A-Z][0-9]"))
gen sub = regexs(0) if(regexm(variable,  "[A-Z][0-9]$"))
gen type1 = regexs(0) if(regexm(variable,  "[A-Z][A-Z][A-Z]"))
gen s = "S"
gen var1= .

sort type1
encode type1, gen(type2)

keep if type2 == 5 | type2 == 6

gen type3 = "COD"
replace type3 = "CTO" if type2 == 6
encode type3, gen(type4)

drop type1 type3
rename type4 type1

sort sub
encode sub, gen(sub1)
drop if sub1 == 3
drop sub
rename sub1 sub

decode label, gen(label1)
drop label
rename label1 label

decode type2, gen(type22)
drop type2
rename type22 type2

decode type1, gen(type11)
drop type1
rename type11 type1

decode sub, gen(sub1)
drop sub
rename sub1 sub

order var1 code variable label week type2 type1 s	sub

compress
save, replace

**************************************************************************************************
*												W	4
**************************************************************************************************

clear all

use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W4/WorkingData/DurationData/Labeling/LabelsWithVariables.dta", replace
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W4/Cumulative/cumulativeW4.dta", replace

rename name label
rename objectid code
rename var1 variable

encode label, generate(labelnum)
drop label
rename labelnum label

gen week = regexs(0) if(regexm(variable,  "[A-Z][0-9]"))
gen sub = regexs(0) if(regexm(variable,  "[A-Z][0-9]$"))
gen type1 = regexs(0) if(regexm(variable,  "[A-Z][A-Z][A-Z]"))
gen s = "S"
gen var1= .

sort type1
encode type1, gen(type2)

gen type3 = "COD"
replace type3 = "CTO" if type2 == 6
encode type3, gen(type4)

drop type1 type3
rename type4 type1

sort sub
encode sub, gen(sub1)
drop sub
rename sub1 sub

keep if type2 == 5 | type2 == 6
drop if sub == 1 |  sub == 4

decode label, gen(label1)
drop label
rename label1 label

decode type2, gen(type22)
drop type2
rename type22 type2

decode type1, gen(type11)
drop type1
rename type11 type1

decode sub, gen(sub1)
drop sub
rename sub1 sub

order var1 code variable label week type2 type1 s	sub

compress
save, replace

**************************************************************************************************
*												W	5
**************************************************************************************************

clear all

use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W5/WorkingData/Labeling/LabelsWithVariables.dta", replace
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W5/Cumulative/cumulativeW5.dta", replace

rename name label
rename objectid code
rename var1 variable

encode label, generate(labelnum)
drop label
rename labelnum label

gen week = regexs(0) if(regexm(variable,  "[A-Z][0-9]"))
gen sub = regexs(0) if(regexm(variable,  "[A-Z][0-9]$"))
gen type1 = regexs(0) if(regexm(variable,  "[A-Z][A-Z][A-Z]"))
gen s = "S"
gen var1= .

sort type1
encode type1, gen(type2)

gen type3 = "COD"
replace type3 = "CTO" if type2 == 6
encode type3, gen(type4)

drop type1 type3
rename type4 type1

sort sub
encode sub, gen(sub1)
drop sub
rename sub1 sub

drop if code == .
keep if type2 == 9 | type2 == 11
drop if sub == 1 |  sub == 4

decode label, gen(label1)
drop label
rename label1 label

decode type2, gen(type22)
drop type2
rename type22 type2

decode type1, gen(type11)
drop type1
rename type11 type1

decode sub, gen(sub1)
drop sub
rename sub1 sub

order var1 code variable label week type2 type1 s	sub

compress
save, replace

**************************************************************************************************
*												W	6
**************************************************************************************************

clear all

use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W6/WorkingData/Labeling/LabelsWithVariables.dta", replace
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W6/Cumulative/cumulativeW6.dta", replace

rename name label
rename objectid code
rename var1 variable

encode label, generate(labelnum)
drop label
rename labelnum label

gen week = regexs(0) if(regexm(variable,  "[A-Z][0-9]"))
gen sub = regexs(0) if(regexm(variable,  "[A-Z][0-9]$"))
gen type1 = regexs(0) if(regexm(variable,  "[A-Z][A-Z][A-Z]"))
gen s = "S"
gen var1= .

sort type1
encode type1, gen(type2)

gen type3 = "COD"
replace type3 = "CTO" if type2 == 6
encode type3, gen(type4)

drop type1 type3
rename type4 type1

sort sub
encode sub, gen(sub1)
drop sub
rename sub1 sub

drop if code == .
keep if type2 == 5 | type2 == 6
drop if sub == 1 |  sub == 4

decode label, gen(label1)
drop label
rename label1 label

decode type2, gen(type22)
drop type2
rename type22 type2

decode type1, gen(type11)
drop type1
rename type11 type1

decode sub, gen(sub1)
drop sub
rename sub1 sub

order var1 code variable label week type2 type1 s	sub

compress
save, replace

**************************************************************************************************
*												W	7
**************************************************************************************************

clear all

use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W7/WorkingData/Labeling/LabelsWithVariables.dta", replace
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W7/Cumulative/cumulativeW7.dta", replace

rename name label
rename objectid code
drop if code == .

rename var1 variable

encode label, generate(labelnum)
drop label
rename labelnum label

gen week = regexs(0) if(regexm(variable,  "[A-Z][0-9]"))
gen sub = regexs(0) if(regexm(variable,  "[A-Z][0-9]$"))
gen type1 = regexs(0) if(regexm(variable,  "[A-Z][A-Z][A-Z]"))
gen s = "S"
gen var1= .

sort type1
encode type1, gen(type2)

gen type3 = "COD"
replace type3 = "CTO" if type2 == 6
encode type3, gen(type4)

drop type1 type3
rename type4 type1

sort sub
encode sub, gen(sub1)
drop sub
rename sub1 sub

keep if type2 == 5 | type2 == 6
drop if sub == 1 |  sub == 4

decode label, gen(label1)
drop label
rename label1 label

decode type2, gen(type22)
drop type2
rename type22 type2

decode type1, gen(type11)
drop type1
rename type11 type1

decode sub, gen(sub1)
drop sub
rename sub1 sub

order var1 code variable label week type2 type1 s	sub

compress
save, replace

**************************************************************************************************
*												W	8
**************************************************************************************************

clear all

use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W8/WorkingData/Labeling/LabelsWithVariables.dta", replace
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W8/Cumulative/cumulativeW8.dta", replace

rename name label
rename objectid code
drop if code == .

rename var1 variable

encode label, generate(labelnum)
drop label
rename labelnum label

gen week = regexs(0) if(regexm(variable,  "[A-Z][0-9]"))
gen sub = regexs(0) if(regexm(variable,  "[A-Z][0-9]$"))
gen type1 = regexs(0) if(regexm(variable,  "[A-Z][A-Z][A-Z]"))
gen s = "S"
gen var1= .

sort type1
encode type1, gen(type2)

gen type3 = "COD"
replace type3 = "CTO" if type2 == 6
encode type3, gen(type4)

drop type1 type3
rename type4 type1

sort sub
encode sub, gen(sub1)
drop sub
rename sub1 sub

keep if type2 == 5 | type2 == 6
drop if sub == 1 |  sub == 4


decode label, gen(label1)
drop label
rename label1 label

decode type2, gen(type22)
drop type2
rename type22 type2

decode type1, gen(type11)
drop type1
rename type11 type1

decode sub, gen(sub1)
drop sub
rename sub1 sub


order var1 code variable label week type2 type1 s	sub

compress
save, replace

**************************************************************************************************
*												W	9
**************************************************************************************************

clear all

use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W9/WorkingData/Labeling/LabelsWithVariables.dta", replace
save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W9/Cumulative/cumulativeW9.dta", replace

rename name label
rename objectid code
drop if code == .

rename var1 variable

encode label, generate(labelnum)
drop label
rename labelnum label

gen week = regexs(0) if(regexm(variable,  "[A-Z][0-9]"))
gen sub = regexs(0) if(regexm(variable,  "[A-Z][0-9]$"))
gen type1 = regexs(0) if(regexm(variable,  "[A-Z][A-Z][A-Z]"))
gen s = "S"
gen var1= .

sort type1
encode type1, gen(type2)

gen type3 = "COD"
replace type3 = "CTO" if type2 == 6
encode type3, gen(type4)

drop type1 type3
rename type4 type1

sort sub
encode sub, gen(sub1)
drop sub
rename sub1 sub

keep if type2 == 5 | type2 == 6
drop if sub == 1 |  sub == 4

decode label, gen(label1)
drop label
rename label1 label

decode type2, gen(type22)
drop type2
rename type22 type2

decode type1, gen(type11)
drop type1
rename type11 type1

decode sub, gen(sub1)
drop sub
rename sub1 sub

order var1 code variable label week type2 type1 s	sub

compress
save, replace

**************************************************************************************************
*				 C	U	M	U	L	A	T	I	V	E	 	T	O	T	A	L
**************************************************************************************************

clear all

append using ///
/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W2/Cumulative/cumulativeW2.dta ///
/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W3/Cumulative/cumulativeW3.dta ///
/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W4/Cumulative/cumulativeW4.dta ///
/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W5/Cumulative/cumulativeW5.dta ///
/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W6/Cumulative/cumulativeW6.dta ///
/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W7/Cumulative/cumulativeW7.dta ///
/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W8/Cumulative/cumulativeW8.dta ///
/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/W9/Cumulative/cumulativeW9.dta

save "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment/Cumu23456789.dta", replace

drop objecttype var1

sort label
encode label, gen(label1)
drop  label
rename label1 label

gen labcode = label

save, replace