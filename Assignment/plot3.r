plot3 <- function(){
	data <- read.table("data/household_power_consumption.txt", header=T, sep=";")
	data$Date <- as.Date(data$Date, "%d/%m/%Y")
	final.data <- subset(data, Date >= "2007-02-01" & Date <= "2007-02-02")
	final.data$DateTime <- as.POSIXct(paste(final.data$Date, final.data$Time))
	plot(final.data$DateTime, final.data$Sub_metering_1, type='l', ylab="Energy sub metering", xlab="")
	lines(final.data$DateTime, final.data$Sub_metering_2, col="red", type='l')
	lines(final.data$DateTime, final.data$Sub_metering_3, col="blue", type='l')
	legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=c(2.5,2.5,2.5), col=c("black", "red", "blue"))
}
