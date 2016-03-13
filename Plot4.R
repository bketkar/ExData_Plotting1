source("readfile.R")

png(filename="plot4.png",width=480,height=480)
par(mfrow=c(2,2))
plot(plotdata$Date,plotdata$Global_active_power,type="l",xlab="",ylab="Global Active Power")
plot(plotdata$Date,plotdata$Voltage,type="l",xlab="Datetime",ylab="Voltage")

plot(plotdata$Date,plotdata$Sub_metering_1,col="black",type="l",xlab="",ylab="Energy sub metering")
lines(plotdata$Date,plotdata$Sub_metering_2,col="red",type="l")
lines(plotdata$Date,plotdata$Sub_metering_3,col="blue",type="l")
legend("topright",legend=c("submetering1","submetering2","submetering3"),col=c("black","red","blue"),lty=c(1,1,1))

plot(plotdata$Date,plotdata$Global_reactive_power,type="l",xlab="Datetime",ylab="Global reactive power")



dev.off()