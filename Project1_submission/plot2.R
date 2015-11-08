source("load_data.R")
plot2 <- "plot2.png"
	png(plot2, width = 480, height = 480)
	plot(data$Time, data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
	dev.off()