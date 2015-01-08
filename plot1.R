setwd("C:/Users/Jiaju/Documents/RData/ExploratoryDataAnalysis/Programming Assignment1/")
data<-read.table("household_power_consumption.txt", header=T, sep=';')
attach(data)
subset <- Date == "1/2/2007" | Date == "2/2/2007"
subData <- data[subset, ]
attach(subData)
x <- paste(Date, Time)
subData$DateTime <- strptime(x, "%d/%m/%Y %H:%M:%S")
rownames(subData) <- 1:nrow(subData)
attach(subData)
png(filename='plot1.png',units = "px", bg = "transparent")
temp<-as.numeric(as.character(Global_active_power))
hist(temp, main='Global Active Power', xlab='Global Active Power (kilowatts)', col='red')
dev.off()
