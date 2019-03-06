##Third 
with(FinalData,{
  plot(Sub_metering_1~dateTime,type = "l",ylab = "Energy sub metering",xlab="")
  lines(Sub_metering_2~dateTime,col="red")
  lines(Sub_metering_3~dateTime,col="blue")
  
})
legend("topright",col = c("black","red","blue"),c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd = c(1,1,1))

dev.copy(png, file = "plot3.png")  ## Copy my plot to a PNG file
dev.off()
