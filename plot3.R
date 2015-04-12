X = read.csv('household_power_consumption.txt', header=TRUE, sep=";", na.strings=c('?', 'nan', ''))

X[,1] = as.POSIXct(paste(X[,1], X[,2]), format="%d/%m/%Y %H:%M:%S")
X = X[X$Date>=as.POSIXct("2007-02-01"),]
X = X[X$Date<as.POSIXct("2007-02-03"),]

png(filename="plot3.png", width=480, height=480)

plot(X$Date, X$Sub_metering_1, type="l", ylab="Energy sub metering", xlab='')
lines(X$Date, X$Sub_metering_2, type="l", col="red")
lines(X$Date, X$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c('black', 'red', 'blue'), lty=c(1,1,1))

dev.off()
