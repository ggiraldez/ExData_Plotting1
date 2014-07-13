do_plot <- function() {
	data <- read.csv("data.csv", colClasses = c("character", "POSIXct", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))
	with(data, plot(Datetime, Sub_metering_1, type = "n", xlab = "", ylab = "Energy sub metering"))
	with(data, lines(Datetime, Sub_metering_1, col = "black"))
	with(data, lines(Datetime, Sub_metering_2, col = "red"))
	with(data, lines(Datetime, Sub_metering_3, col = "blue"))
	legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lwd = 1)
}

do_plot()
png("plot3.png")
do_plot()
dev.off()
