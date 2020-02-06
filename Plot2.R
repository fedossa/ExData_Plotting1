# Plot 2

plot(Data$DateTime,Data$Global_active_power, type = "l", lty = 1, xlab = "", ylab = "Global Active Power (Kilowatts)")

dev.copy(png,'Plot2.png')
dev.off()


