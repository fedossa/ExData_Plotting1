source("Data Prep.R")

# Plot 4

png("Plot4.png", width = 480, height = 480)

par(mfrow = c(2,2), mar = c(4, 4, 1, 1), oma = c(0, 0, 1, 0))

# plot 4.1
plot(Data$DateTime,Data$Global_active_power, type = "l", lty = 1, xlab = "", ylab = "Global Active Power (Kilowatts)")

# plot 4.2
plot(Data$DateTime,Data$Voltage, type = "l", lty = 1, xlab = "datetime", ylab = "Voltage", adj = 0.5)


# plot 4.3
plot(Data$DateTime, Data$Sub_metering_1, type="n", ylab = "Energy sub metering", xlab = "")
points(Data$DateTime, Data$Sub_metering_1, type = "l", lty = 1, col = "black")
points(Data$DateTime, Data$Sub_metering_2, type = "l", lty = 1, col = "red")
points(Data$DateTime, Data$Sub_metering_3, type = "l", lty = 1, col = "blue")
legend("topright",lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"), bty = "n", text.font = 1)


# plot 4.4
plot(Data$DateTime,Data$Global_reactive_power, type = "l", lty = 1, xlab = "datetime", ylab = "Global_reactive_power", adj = 0.5)


dev.off()

