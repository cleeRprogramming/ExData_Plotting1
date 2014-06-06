plot1 <- function(){
	data <- read.table("data/household_power_consumption.txt", header=T, sep=";")
	data$Date <- as.Date(data$Date, "%d/%m/%Y")
	final.data <- subset(data, Date >= "2007-02-01" & Date <= "2007-02-02")
	final.data$Global_active_power <- as.numeric(as.character(final.data$Global_active_power))
	hist(final.data$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
}
