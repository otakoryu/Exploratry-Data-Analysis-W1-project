##4th
par(mfrow=c(2,2))
with(FinalData,{
  plot(Global_active_power~dateTime,ylab = "Global Active Power(Kilowatts)",type="l")
  
  plot(Voltage~dateTime,ylab = "Voltage",xlab="",type="l")
  
  plot(Sub_metering_1~dateTime,type = "l",ylab = "Energy sub metering",xlab="")
  lines(Sub_metering_2~dateTime,col="red")
  lines(Sub_metering_3~dateTime,col="blue")
  legend("topright",col = c("black","red","blue"),c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd = c(1,1,1))
  
  
  plot(Global_reactive_power~dateTime,ylab="Global_reactive_power",xlab="",type="l")
  
})

dev.copy(png, file = "plot4.png")  ## Copy my plot to a PNG file
dev.off()