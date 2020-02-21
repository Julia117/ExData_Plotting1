data <- data.table::fread(file = "household_power_consumption.txt", na.strings = "?")
data <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007"]
data$DateTime <- as.POSIXct(paste(data$Date, data$Time), format = "%d/%m/%Y %H:%M:%S")


png(file = "plot1.png", width=480, height=480,  bg="white")

par(mar = c(4,4,4,5))

hist(test$Global_active_power, col = "Red", xlab = "Global Active Power (kilowatts)",
     main = "Global Active Power", ylim = c(0, 1200))
dev.off()