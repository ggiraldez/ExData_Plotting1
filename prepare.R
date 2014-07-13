classes <- c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric")
all_data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", colClasses = classes, na.strings = "?")
all_data$Datetime <- strptime(paste(all_data$Date, all_data$Time), "%d/%m/%Y %H:%M:%S")
since <- strptime("2007-02-01 00:00:00", "%Y-%m-%d %H:%M:%S")
until <- strptime("2007-02-02 23:59:59", "%Y-%m-%d %H:%M:%S")
data <- subset(all_data, Datetime >= since & Datetime <= until)
data <- data[c("Datetime", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")]
write.csv(data, "data.csv")
