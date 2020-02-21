data <- data.table::fread(file = "household_power_consumption.txt", na.strings = "?")
data <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007"]
data$DateTime <- as.POSIXct(paste(data$Date, data$Time), format = "%d/%m/%Y %H:%M:%S")


png(file = "plot3.png", width=480, height=480, bg="white")

with(data, {
        plot(DateTime, Sub_metering_1, ylim= c(0, 38), type = "n", xlab = "", 
             ylab= "Energy sub metering", )
        lines(DateTime, Sub_metering_1) 
        lines(DateTime, Sub_metering_2, col="red") 
        lines(DateTime, Sub_metering_3, col="blue") 
        
})

legend(x="topright", legend=c("Sub_metering_1", "Sub_metering_2",
                              "Sub_metering_3"), col=c("black", "red","blue"), 
       lwd=1, lty=c(1,1,1), xjust=1, yjust=0, cex=1)
dev.off()



