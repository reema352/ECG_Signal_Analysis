# BITalino (R)evolutions ECG Signals 
# ------

# clear workspace
rm(list=ls())

# set directory
setwd(("~/Desktop/rolfslab/BITalino"))

# read raw data
dr <- read.table("Reema_run1.txt") #dataReema (Reema run 1 signals)
dt <- read.table("testfiles.txt")  #dataTest (test signals)

# organizing the data table
# Reema Data
names(dr) <- c("time","V2","V3","V4","V5","ECG","LUX")
channels <- c("time", "ECG", "LUX") # subset with used channels
setR <- dr [channels] # data set with only the used channels
# Test Data
names(dt) <- c("time","V2","V3","V4","V5","ECG","LUX")
channels <- c("time", "ECG", "LUX") 
setT <- dt [channels] 

# visualizing random data subset 
xr <-as.matrix(setR[,2])          
plot(xr)
plot(xr[50000:51000])
plot(xr[50000:50500])
plot(xr[50000:50300])


       








