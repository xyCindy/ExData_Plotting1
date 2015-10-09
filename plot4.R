# Course Project 1
# Plot 4
setwd("~/Documents/ExData_Plotting1")
source("load_data.R")

# Call a png device
png(filename = "plot4.png", 
    width = 480, 
    height = 480, 
    units = "px",
    bg ="transparent")

# Plotting function to make plot4
# seperate screen to 2 rows and 2 columns
par(mfrow = c(2, 2))
# plot top-left
plot(DateTime, 
     Global_active_power, 
     type = "l",
     xlab = "", 
     ylab = "Global Active Power")
# plot top-right
plot(DateTime, 
     Voltage, 
     type = "l",
     xlab = "datetime", 
     ylab = "Voltage")
# plot bottom-left
# Plot Sub_metering_1
plot(DateTime,
     Sub_metering_1, 
     type = "l",
     col = "black",
     xlab = "",
     ylab = "Energy sub metering")
# Plot Sub_metering_2
lines(DateTime,Sub_metering_2,col = "red")
# Plot Sub_metering_3
lines(DateTime,Sub_metering_3,col = "blue")
# Add legend--- remove border by bty="n"
# bty:The type of box to be drawn around the legend. 
legend("topright",
       bty = "n",
       col = c("black", "red", "blue"),
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty=c(1,1,1))
# plot bottom-right
plot(DateTime, 
     Global_reactive_power, 
     type = "l",
     xlab = "datetime")
# Close the PNG device
dev.off()