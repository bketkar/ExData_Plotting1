source("readfile.R")
png(filename="plot3.png",width=480,height=480)
plot(plotdata$Date,plotdata$Sub_metering_1,col="black",type="l",xlab="",ylab="Energy submetering")
lines(plotdata$Date,plotdata$Sub_metering_2,col="red",type="l")
lines(plotdata$Date,plotdata$Sub_metering_3,col="blue",type="l")
legend("topright",legend=c("submetering1","submetering2","submetering3"),col=c("black","red","blue"),lty=c(1,1,1))
dev.off()
  