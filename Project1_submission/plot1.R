source("load_data.R")
objectToRead <- "dataRObject.rds"
data <- readRDS(objectToRead)
fileName <- "plot1.png"
png(fileName, width = 480, height = 480)
title <- "Global Active Power"
xAxisLabel <- "Global Active Power (kilowatts)"
yAxisLabel <- "Frequency"
barColor <- "red"
hist(data$Global_active_power, main = title, xlab = xAxisLabel , ylab =yAxisLabel, col = barColor)
dev.off()