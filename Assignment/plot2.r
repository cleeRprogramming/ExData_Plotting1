plot2 <- function(){
	data <- read.table("household_power_consumption.txt", header=T, sep=";")
	data$Date <- as.Date(data$Date, "%d/%m/%Y")
	final.data <- subset(data, Date >= "2007-02-01" & Date <= "2007-02-02")
	final.data$Global_active_power <- as.numeric(as.character(final.data$Global_active_power))
	final.data$DateTime <- as.POSIXct(paste(final.data$Date, final.data$Time))
	plot(final.data$DateTime, final.data$Global_active_power, type='l', ylab="Global Active Power (kilowatts)", xlab="")
}
