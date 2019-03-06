data<-read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings = "?",
                 colClasses = c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))

##Extract data
dataE<-data[data$Date %in% c("1/2/2007","2/2/2007"),]

##Removing missing sample
dataE<-dataE[complete.cases(dataE),]

##Combining date and time and setting time variable
dataTime<-strptime(paste(dataE$Date,dataE$Time,sep = ""),"%d/%m/%Y %H:%M:%S")


##Name vecotor
dateTime<-setNames(dataTime,"DateTime")


##Removing date and time from dataF
drops<-c("Date","Time")
dataF<-dataE[,!(names(dataE) %in% drops)]

###Column binding dataF and DateTime
FinalData<-cbind(dateTime,dataF)


##First graph
hist(FinalData$Global_active_power,col="red",main="Glabal Active power",
     xlab="GlobalActive Power(kilowatts)")

dev.copy(png, file = "plot1.png")  ## Copy my plot to a PNG file
dev.off()