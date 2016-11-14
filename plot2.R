############################################
# Author: Medina Colic
# Course: Exploratory Data Analysis
# Assignment: Course Project I
############################################


epcData <- read.table("household_power_consumption.txt", header = T, sep = ";", na.strings = "?")
subData <- epcData[epcData$Date %in% c("1/2/2007","2/2/2007") ,]

datetime <- strptime(paste(subData$Date, subData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
globalActivePower <- as.numeric(subData$Global_active_power)

plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.copy(png, file = "plot2.png", width = 480, height = 480)
dev.off()
