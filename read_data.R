#Please set your wd
#setwd('yourwd')
#please provide an unzipped version of the data, named household_power_consumption.txt in the wd

#you need an unzippend version of the data in your wd called household_power_consumption.txt

#reading the file, only the first 120.000 rows are read in, as 2007-02-02 is before that line.
df <- read.table("household_power_consumption.txt", header=TRUE, sep=";", dec=".", stringsAsFactors=FALSE,comment.char="", nrows=119577 , na.strings = "?", colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))

#parsing the date and time to something usable
df$DateAndTime <- paste(df$Date, df$Time)
df$DateElem <- parse_date_time(df$DateAndTime, "dmy_hms")
df$Date <- as.Date(df$Date, "%d/%m/%Y")
endDate <- as.Date('2007-2-2')
StartDate <-as.Date('2007-2-1')
dfDateSubset <- df[df$Date <= endDate ,]
dfDateSubset <- df[dfDateSubset$Date >= StartDate ,]