data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]##This subsets the data between the 1st and 2nd feb 2007
str(subSetData)##it give the subset data
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <-as.numeric(subSetData$Global_active_power)
png("plot2.png", width=480, height=480)
a<-plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")##gives the final plot
dev.off()
