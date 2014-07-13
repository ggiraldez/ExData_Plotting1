do_plot <- function() {
	data <- read.csv("data.csv", colClasses = c("character", "POSIXct", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))
	
	par(mfrow = c(2,2))
	
	# top left plot
	with(data, plot(Datetime, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power"))
	
	# top right plot
	with(data, plot(Datetime, Voltage, type = "l", xlab = "datetime"))

	# bottom left plot
	with(data, plot(Datetime, Sub_metering_1, type = "n", xlab = "", ylab = "Energy sub metering"))
	with(data, lines(Datetime, Sub_metering_1, col = "black"))
	with(data, lines(Datetime, Sub_metering_2, col = "red"))
	with(data, lines(Datetime, Sub_metering_3, col = "blue"))
	legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lwd = 1, box.lwd = 0)
	
	# bottom right plot
	with(data, plot(Datetime, Global_reactive_power, type = "l", xlab = "datetime"))	
}

do_plot()
png("plot4.png")
do_plot()
dev.off()

par(mfrow = c(1,1))