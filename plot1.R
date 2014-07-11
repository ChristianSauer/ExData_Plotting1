#lubridate is used for parsing the date and time
library(lubridate)

#you need an unzippend version of the data in your wd called household_power_consumption.txt

#reading the file, only the first 120.000 rows are read in, as 2007-02-02 is before that line.
#also creates the subsetted data. For details look into the file.
source("read_Data.R")

#the histogram for plot 1
hist(dfDateSubset$Global_active_power, col="red", main="Global Active Power",xlab="Global Active Power (kilowatts)") 

#saving the plit
dev.copy(png,'plot1.png')
dev.off()
