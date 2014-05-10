#load data
data <-read.table("./household_power_consumption.txt",sep=";",header=TRUE,na.strings = "?",stringsAsFactors=FALSE)
#Subset
Sys.setlocale("LC_TIME", "English") #change locale to english
data2 <- data[data$Date=="1/2/2007" | data$Date=="2/2/2007",]
data2$DateTime<-strptime(paste(data2$Date,data2$Time),"%d/%m/%Y %H:%M:%S")

#Initialize histogram plot 1
png("./plot2.png")

plot(data2$DateTime,data2$Global_active_power,type="n",ylab="Global Active Power(kilowatts)",xlab="")
lines(data2$DateTime,data2$Global_active_power)

dev.off() #close png device
