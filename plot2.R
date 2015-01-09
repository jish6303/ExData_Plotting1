setwd("C:/Users/Jiaju/Documents/RData/ExploratoryDataAnalysis/Programming Assignment1/")
data<-read.table("household_power_consumption.txt", header=T, sep=';')
attach(data)
subset <- Date == "1/2/2007" | Date == "2/2/2007"
subData <- data[subset, ]
attach(subData)
x <- paste(Date, Time)
subData$DateTime <- strptime(x, "%d/%m/%Y %H:%M:%S")
attach(subData)
png(filename='plot2.png',units = "px", bg = "transparent")
temp1<-as.numeric(as.character(Global_active_power))
plot(DateTime, temp1, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()
