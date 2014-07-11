#lubridate is used for parsing the date and time
library(lubridate)

#you need an unzippend version of the data in your wd called household_power_consumption.txt

#reading the file, only the first 120.000 rows are read in, as 2007-02-02 is before that line.
#also creates the subsetted data. For details look into the file.
source("read_Data.R")

#the frequncy plot NO 3.

#please note that the labels of the x axis are language dependent. The labels where created on a computer with a german language as default, therefore the language labels appear in german "Do" -> Thu, "Fr" -> Fri, "Sa" -> Sat.
plot(dfDateSubset$DateElem,dfDateSubset$Sub_metering_1, type='l',ylab="Energy sub metering", xlab="" ,col="black")  ## Line plot
lines(dfDateSubset$DateElem,dfDateSubset$Sub_metering_2, type='l' ,col="red")  ## Line plot
lines(dfDateSubset$DateElem,dfDateSubset$Sub_metering_3, type='l' ,col="blue")  ## Line plot
legend("topright", col = c("black" , "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2)

dev.copy(png,'plot3.png')
dev.off()
