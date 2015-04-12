X = read.csv('household_power_consumption.txt', header=TRUE, sep=";", na.strings=c('?', 'nan', ''))

X[,1] = as.POSIXct(strptime(X[,1], "%d/%m/%Y"))
X = X[X$Date>=as.POSIXct("2007-02-01"),]
X = X[X$Date<=as.POSIXct("2007-02-02"),]

png(filename="plot1.png", width=480, height=480)

hist(X$Global_active_power,col='red',xlab='Global Active Power (kilowatts)', ylab=('Frequency'),main='Global Active Power')

dev.off()
