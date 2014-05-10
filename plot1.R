#load data
data <-read.table("./household_power_consumption.txt",sep=";",header=TRUE,na.strings = "?")
#Subset
data2 <- data[data$Date=="1/2/2007" | data$Date=="2/2/2007",]
#Initialize histogram plot 1
png("./plot1.png")
hist(data2$Global_active_power,col="orangered1",main="Global Active Power",xlab="Global Active Power (kilowatts)",ylab="Frequency")
dev.off() #close png device
