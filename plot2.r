datos <- read.table("E:/coursera/exdata-data-household_power_consumption/household_power_consumption.txt", sep=";", header=TRUE, na.strings="?")
datos$DateTime <- paste(datos$Date, datos$Time)
datos$DateTime <- strptime(datos$DateTime, format="%d/%m/%Y %H:%M:%S")
datos <- datos[datos$DateTime >= as.POSIXlt("2007-02-01 00:00:00") & datos$DateTime <= as.POSIXlt("2007-02-02 23:59:59"),]

#Plot 2
png("plot2.png", width=480, height=480)
plot(datos$DateTime, datos$Global_active_power, ylab="Global Active Power (kilowatts)", xlab="", type="l")
dev.off()
