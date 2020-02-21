test <- group_by(data, data$DateTime)

png(file = "plot2.png", width=480, height=480, bg="white")

with(data, {
        plot(DateTime, Global_active_power, pch = 20, type = "n", xlab = "", 
             ylab="Global Active Power (kilowatts)") 
        lines(DateTime, Global_active_power)
        })

dev.off()