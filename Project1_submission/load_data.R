setwd("C:/coursera/DataMining/4 Exploratory Data Analysis/Project1")
dataFile <- "household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", colClasses=c("character", "character", rep("numeric",7)), na="?")
head(data)
data$Time <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
data$Date <- as.Date(data$Date, "%d/%m/%Y")
filter <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
data <- subset(data, Date %in% filter)
head(data)
dataRObject <- "dataRObject.rds"
saveRDS(data, dataRObject)