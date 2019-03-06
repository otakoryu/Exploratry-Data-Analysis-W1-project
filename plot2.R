##Second
plot(FinalData$Global_active_power~FinalData$dateTime,ylab = "Global Active Power(kilowatts)",
     xlab="",type="l")

dev.copy(png, file = "plot2.png")  ## Copy my plot to a PNG file
dev.off()
