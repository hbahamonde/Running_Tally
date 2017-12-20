*** MULTI WEEK***

set more off
clear all

* Open DATASET
use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Parents_Spring/W1/Working/W1S1234_Working.dta", replace

describe, replace
keep  varlab name
keep if strpos(name, "TTO")
encode varlab, gen(varlabcat)
gen varlabcat2=varlabcat
drop varlabcat
gen id = _n
reshape wide name, i(varlabcat2) j(id)
compress



egen concat =  concat(name*), punct(" ")
split concat, destring
drop varlabcat2 name* concat 

gen week2 = substr(varlab, 1, 3)
gen week = lower(week2)
drop week2
drop if missing(concat2)

gen varlab2 = substr(varlab, 4, .)
drop varlab
rename varlab2 varlab

gen varcode = regexs(0) if(regexm(concat1, "[0-9][0-9][0-9][0-9][0-9]"))
drop if missing(varcode)
gen type = "CTO"
gen space = " "




gen equal = "="
gen line1 = "egen"
egen line2 = concat(type week varlab)
gen openpar = "("
gen closepar = ")"
gen quot = char(34)
gen rowtotal = "rowtotal"
egen vars =  concat(concat*), punct(" ")
egen line3 =  concat(line1 space line2 space equal space rowtotal openpar vars closepar)
gen labelvar = "label var"
egen line4 =  concat(labelvar space line2 space quot varlab quot)

keep line3 line4


save CTO, replace



**
set more off
clear all

use "/Users/hectorbahamonde/RU/RA/Rick_Lau/PanelExperiment_Parents_Spring/W1/Working/W1S1234_Working.dta", replace

describe, replace
keep  varlab name
keep if strpos(name, "TOD")
encode varlab, gen(varlabcat)
gen varlabcat2=varlabcat
drop varlabcat
gen id = _n
reshape wide name, i(varlabcat2) j(id)
compress



egen concat =  concat(name*), punct(" ")
split concat, destring
drop varlabcat2 name* concat 

gen week2 = substr(varlab, 1, 3)
gen week = lower(week2)
drop week2
drop if missing(concat2)

gen varlab2 = substr(varlab, 4, .)
drop varlab
rename varlab2 varlab

gen varcode = regexs(0) if(regexm(concat1, "[0-9][0-9][0-9][0-9][0-9]"))
drop if missing(varcode)
gen type = "COD"
gen space = " "




gen equal = "="
gen line1 = "egen"
egen line2 = concat(type week varlab)
gen openpar = "("
gen closepar = ")"
gen quot = char(34)
gen rowtotal = "rowtotal"
egen vars =  concat(concat*), punct(" ")
egen line3 =  concat(line1 space line2 space equal space rowtotal openpar vars closepar)
gen labelvar = "label var"
egen line4 =  concat(labelvar space line2 space quot varlab quot)

keep line3 line4

append using CTO

browse
