do_plot <- function() {
	data <- read.csv("data.csv", colClasses = c("character", "POSIXct", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))
	with(data, plot(Datetime, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)"))
}

do_plot()
png("plot2.png")
do_plot()
dev.off()
