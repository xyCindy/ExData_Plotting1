# Exploratory Data Analaysis 
# Course Project 1
# Plot 2
setwd("~/Documents/ExData_Plotting1")
source("load_data.R")

# Call a png device
png(filename = "plot2.png", 
    width = 480, 
    height = 480, 
    units = "px",
    bg ="transparent")

# Plotting function to make plot2
plot(DateTime,
     Global_active_power, 
     type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")

# Close the PNG device
dev.off()