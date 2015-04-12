X = read.csv('household_power_consumption.txt', header=TRUE, sep=";", na.strings=c('?', 'nan', ''))

X[,1] = as.POSIXct(paste(X[,1], X[,2]), format="%d/%m/%Y %H:%M:%S")
X = X[X$Date>=as.POSIXct("2007-02-01"),]
X = X[X$Date<as.POSIXct("2007-02-03"),]

png(filename="plot2.png", width=480, height=480)

plot(X$Date, X$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab='')

dev.off()
