#lubridate is used for parsing the date and time
library(lubridate)

#you need an unzippend version of the data in your wd called household_power_consumption.txt

#reading the file, only the first 120.000 rows are read in, as 2007-02-02 is before that line.
#also creates the subsetted data. For details look into the file.
source("read_Data.R")

#the frequncy plot NO 4.

#please note that the labels of the x axis are language dependent. The labels where created on a computer with a german language as default, therefore the language labels appear in german "Do" -> Thu, "Fr" -> Fri, "Sa" -> Sat.

#settings for 4 columns
par(mfrow = c(2, 2))

#plot 1 row 1, col 1
plot(dfDateSubset$DateElem,dfDateSubset$Global_active_power, type='l',ylab="Global Active Power (kilowatts)", xlab="") 

#plot 2 row 1, col 2
plot(dfDateSubset$DateElem,dfDateSubset$Voltage, type='l',ylab="Voltage", xlab="datetime")

#plot 3 row 2, col 2
plot(dfDateSubset$DateElem,dfDateSubset$Sub_metering_1, type='l',ylab="Energy sub metering", xlab="" ,col="black")  ## Line plot
lines(dfDateSubset$DateElem,dfDateSubset$Sub_metering_2, type='l' ,col="red")  ## Line plot
lines(dfDateSubset$DateElem,dfDateSubset$Sub_metering_3, type='l' ,col="blue")  ## Line plot
legend("topright", col = c("black" , "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, bty="n", y=0.4)

#plot 4 row 2, col 2
plot(dfDateSubset$DateElem,dfDateSubset$Global_reactive_power, type='l',ylab="Global_reactive_power", xlab="datetime")

dev.copy(png,'plot4.png')
dev.off()
