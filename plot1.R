# Exploratory Data Analaysis 
# Course Project 1
# Plot 1
setwd("~/Documents/ExData_Plotting1")
source("load_data.R")

# Call a png device
png(filename = "plot1.png", 
    width = 480, 
    height = 480, 
    units = "px",
    bg ="transparent")

# Plotting function to make plot1
hist(Global_active_power, 
     col = "red", 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)")

# Close the PNG device
dev.off()