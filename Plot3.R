# Plot 2

png("Plot3.png", width = 480, height = 480)

# Prepare the graphic device first
plot(Data$DateTime, Data$Sub_metering_1, type="n", ylab = "Energy sub metering", xlab = "")

# Add the points
points(Data$DateTime, Data$Sub_metering_1, type = "l", lty = 1, col = "black")
points(Data$DateTime, Data$Sub_metering_2, type = "l", lty = 1, col = "red")
points(Data$DateTime, Data$Sub_metering_3, type = "l", lty = 1, col = "blue")

# Add the legend
legend("topright",lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))


dev.off()
