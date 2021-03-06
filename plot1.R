file <- "household_power_consumption.txt"
data <- read.table(file, header = TRUE,sep = ";", stringsAsFactors = FALSE,dec = ".")
subsetData <- data[data$Date %in% c("1/2/2007","2/2/2007"),]

dataToPlot <- as.numeric(subsetData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(dataToPlot, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)",ylab="frequency")
dev.off()