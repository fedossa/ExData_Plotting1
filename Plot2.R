source("Data Prep.R")

# Plot 2
png("Plot2.png", width = 480, height = 480)

plot(Data$DateTime,Data$Global_active_power, type = "l", lty = 1, xlab = "", ylab = "Global Active Power (Kilowatts)")


dev.off()


