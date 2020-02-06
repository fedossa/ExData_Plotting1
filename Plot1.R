# Plot 1 
hist(Data$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")

dev.copy(png,'Plot1.png')
dev.off()
