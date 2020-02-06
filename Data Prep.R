# download file and load packages
url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(url, destfile = "Data.zip")
unzip(zipfile = "Data.zip")



# calculate a rough estimate of how much memory the dataset will require in memory before reading into R

#       memory required = no. of column * no. of rows * 8 bytes/numeric

#       A gigabyte is 1,073,741,824 bytes
#       Megabyte is 1,000,000 bytes
#       Number of columns is 9 and the number of observations 2,075,259

(9 * 2075259 * 8)/1000000

# Load Data
Data <- read.table("./household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")  

# Convert the Date and Time variables to Date/Time classes in R - By creating a new DateTime Variable
Data$DateTime <- paste(Data$Date, Data$Time)
Data$DateTime <- strptime(Data$DateTime, format = "%d/%m/%Y %H:%M:%S", tz = "")

# Subset the data for dates 2007-02-01 and 2007-02-02
Data <- subset(Data,as.POSIXlt("2007-02-01 00:00:00") <= DateTime & DateTime < as.POSIXlt("2007-02-03 00:00:00"))
