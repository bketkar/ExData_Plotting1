power <- read.table("../household_power_consumption.txt",header=TRUE,sep=";",na.string="?",colClasses = c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
plotdata <- subset(power,Date == "1/2/2007" | Date == "2/2/2007")
plotdata$Date <- strptime(paste(plotdata$Date,plotdata$Time),"%d/%m/%Y %H:%M:%S")