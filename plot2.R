data <- data.table::fread(file = "household_power_consumption.txt", na.strings = "?")
data <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007"]
data$DateTime <- as.POSIXct(paste(data$Date, data$Time), format = "%d/%m/%Y %H:%M:%S")


test <- group_by(data, data$DateTime)

png(file = "plot2.png", width=480, height=480, bg="white")

with(data, {
        plot(DateTime, Global_active_power, type = "n", xlab = "", 
             ylab="Global Active Power (kilowatts)") 
        lines(DateTime, Global_active_power)
        })

dev.off()