#load data
data <-read.table("./household_power_consumption.txt",sep=";",header=TRUE,na.strings = "?",stringsAsFactors=FALSE)
#Subset
Sys.setlocale("LC_TIME", "English") #change locale to english
data2 <- data[data$Date=="1/2/2007" | data$Date=="2/2/2007",]
data2$DateTime<-strptime(paste(data2$Date,data2$Time),"%d/%m/%Y %H:%M:%S")

#Initialize histogram plot 1
png("./plot3.png")

plot(data2$DateTime,data2$Sub_metering_1,type="n",ylab="Energy sub metering",xlab="")
lines(data2$DateTime,data2$Sub_metering_1,col="gray50")
lines(data2$DateTime,data2$Sub_metering_2,col="red")
lines(data2$DateTime,data2$Sub_metering_3,col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("gray50","red","blue"),lty=1,lwd=1,,pch=-1)

dev.off() #close png device
