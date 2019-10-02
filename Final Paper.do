clear all 
set more off



import delimited "/Users/gheberts/Dropbox/School/Fall 2016/ECON 643/Group Project/Excel Data/Team Data 1871_2015.csv", varnames(1) encoding(ISO-8859-1)

drop if year < 1996
drop if year > 2013

sum homeruns attendance if year < 2004
sum homeruns attendance if year > 2003 



reg attendance homeruns if year < 2004
reg attendance homeruns if year > 2003
