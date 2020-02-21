png(file = "plot4.png", width=480, height=480, bg="white")

par(mfrow = c(2, 2), mar = c(4, 4, 1, 1))

with(data, {
        plot(DateTime, Global_active_power, type = "l", xlab = "", 
             ylab="Global Active Power (kilowatts)") 
})

with(data, {
        plot(DateTime, Voltage, type = "n", xlab = "datetime", 
             ylab="Voltage") 
        lines(DateTime, Voltage)
})

with(data, {
        plot(DateTime, Sub_metering_1, ylim= c(0, 38), type = "n", xlab = "", 
             ylab= "Energy sub metering", )
        lines(DateTime, Sub_metering_1) 
        lines(DateTime, Sub_metering_2, col="red") 
        lines(DateTime, Sub_metering_3, col="blue") 
        
})

legend(x="topright", legend=c("Sub_metering_1", "Sub_metering_2",
                              "Sub_metering_3"), col=c("black", "red","blue"),
       lwd=1, lty=c(1,1,1), xjust=1, yjust=0, cex=1, bty = "n")

with(data, {
        plot(DateTime, Global_reactive_power, type = "l", xlab = "datetime", 
             ylab="Global_reactive_power") 
})

dev.off()
