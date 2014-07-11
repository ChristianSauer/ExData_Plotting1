#lubridate is used for parsing the date and time
library(lubridate)

#you need an unzippend version of the data in your wd called household_power_consumption.txt

#reading the file, only the first 120.000 rows are read in, as 2007-02-02 is before that line.
#also creates the subsetted data. For details look into the file.
source("read_Data.R")

#the frequncy plot NO 2.

#please note that the labels of the x axis are language dependent. The labels where created on a computer with a german language as default, therefore the language labels appear in german "Do" -> Thu, "Fr" -> Fri, "Sa" -> Sat.
plot(dfDateSubset$DateElem,dfDateSubset$Global_active_power, type='l',ylab="Global Active Power (kilowatts)", xlab="")  ## Line plot

dev.copy(png,'plot2.png')
dev.off()
