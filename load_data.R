# Exploratory Data Analaysis 
# Course Project 1
# Loading the data (read the data from just the dates 2007-02-01 and 2007-02-02)
setwd("~/Documents/Exploratory_Data_Analysis/week1")
data <- read.table("household_power_consumption.txt",
                   header = TRUE,
                   sep = ";",
                   colClasses = c("character", "character", rep("numeric",7)),
                   na = "?")
dim(data)
# Subset data from just the dates 2007-02-01 and 2007-02-02
newData <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007", ]
rownames(newData) <- 1:nrow(newData)
dim(newData)
# Convert the Date and Time variables to Date/Time
# For example,paste("A", 1:6, sep = "")
# [1] "A1" "A2" "A3" "A4" "A5" "A6"
x<-paste(newData$Date,newData$Time)
newData$DateTime <- strptime(x, format="%d/%m/%Y %H:%M:%S")
dim(newData)
attach(newData)