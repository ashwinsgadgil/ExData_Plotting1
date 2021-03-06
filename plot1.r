#Load and prepare data
datos <- read.table("E:/coursera/exdata-data-household_power_consumption/household_power_consumption.txt", sep=";", header=TRUE, na.strings="?")
datos$DateTime <- paste(datos$Date, datos$Time)
datos$DateTime <- strptime(datos$DateTime, format="%d/%m/%Y %H:%M:%S")
#datos <- datos[c(10,3,4,5,6,7,8,9)]
datos <- datos[datos$DateTime >= as.POSIXlt("2007-02-01 00:00:00") & datos$DateTime <= as.POSIXlt("2007-02-02 23:59:59"),]

#Plot 1
png("plot1.png", width=480, height=480)
hist(datos$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()