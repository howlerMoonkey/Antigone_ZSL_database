########## NB Ruminex now been archives- replaced with package ncal
##################################################################

install.packages("Ruminex") ## built befre 3.3.0- please reinstall
install.packages("Rlabkey")
install.packages("rCurl") ##no such package
install.packages("rjson")
install.packages("xtable")
install.packages("drc")
install.packages("Cairo")

library(Ruminex) ## package 'drc' cannot me loaded
Loading required package: drc
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ?pbkrtest?
In addition: Warning message:
package ?drc? was built under R version 3.2.5 
Error: package ?drc? could not be loaded

library(Rlabkey)
library(RCurl) 
library(rjson)
library(xtable)
library(drc) ####
library(Cairo) 

library(plus) 
library(alr3)
library(car)
library(gtools)
library(magic)
library(abind)
library(plotrix)
library(bitops)

###R scripting engine added in on localhost
##An error occurred when running the script 'labkey_luminex_transform.R', exit code: 1).
##'C:\Program' is not recognized as an internal or external command,
##operable program or batch file.

The validation script: C:\Program Files\LabKey Server\Scripts\labkey_luminex_transform.R 
configured for this Assay does not exist. Please check the configuration for this Assay design.


20 march
An error occurred when running the script 'labkey_luminex_transform.R', exit code: 1).
Processing start time: 2017-03-21 09:29:53 

Warning message:
package 'xtable' was built under R version 3.3.3 
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called 'car'
In addition: Warning message:
package 'drc' was built under R version 3.3.3 
Error: package 'drc' could not be loaded
Execution halted

previous message was 
Error in library(xtable) : there is no package called 'xtable'
Calls: source -> withVisible -> eval -> eval -> library
Execution halted


