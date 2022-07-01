library(stringr)
source("./Functions/LogData.R")

RunCentury <- function(scheduleFile) {
  PartialCentury(scheduleFile, 1)
  PartialCentury(scheduleFile, 2)
  PartialCentury(scheduleFile, 3)
  rm(list=ls())
}

PartialCentury <- function(scheduleFile,  number) {
  data <- paste0(GetSiteNames(number), collapse = ' ')
  
  setwd("./Century")
  
  OS = Sys.info()[['sysname']]
  if (OS == "Linux") {
    command <- paste0("wine Centx.exe -s ../Schedules/", scheduleFile)
  } else {
    command <- paste0("./Centx.exe -s ../Schedules/", scheduleFile)
  }
  command <- paste0(command, " -t ../Data/data", number, " -v ")
  command <- paste0(command, data)
  system(command)
  
  setwd("../")
  rm(list=ls())
}
