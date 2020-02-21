png(file = "plot1.png", width=480, height=480,  bg="white")

par(mar = c(4,4,4,5))

hist(test$Global_active_power, col = "Red", xlab = "Global Active Power (kilowatts)",
     main = "Global Active Power", ylim = c(0, 1200))
dev.off()