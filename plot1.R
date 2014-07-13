do_plot <- function() {
	data <- read.csv("data.csv", colClasses = c("character", "POSIXct", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))
	with(data, hist(Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)"))
}

do_plot()
png("plot1.png")
do_plot()
dev.off()
