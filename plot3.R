# Course Project 1
# Plot 3
setwd("~/Documents/ExData_Plotting1")
source("load_data.R")

# Call a png device
png(filename = "plot3.png", 
    width = 480, 
    height = 480, 
    units = "px",
    bg ="transparent")

# Plotting function to make plot3
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
# Add legend
legend("topright",
       col = c("black", "red", "blue"),
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty=c(1,1,1))

# Close the PNG device
dev.off()