
    # working with DATE objects

# dates are seperate data type

setwd("D:\\jigsaw\\R\\data manipulation with R")

library(lubridate)

fd <- read.csv("Fd.csv")
View(fd)

str(fd)

# as flight date has character string (feb) we can convert into date format by using as.Date command


fd$FlightDate<-as.Date(fd$FlightDate,"%d-%b-%y")

str(fd)

# or

# to display date month year format, it is easy in lubridate

fd$FlightDate <- dmy(fd$FlightDate) # instead of delimiters

str(fd)



# extract months and weekdays

head(months(fd$FlightDate))

unique(months(fd$FlightDate))


head(weekdays(fd$FlightDate))

unique(weekdays(fd$FlightDate))


# finding time interval (diff between 2 date values)

fd$FlightDate[60] - fd$FlightDate[900]

# or

difftime(fd$FlightDate[3000], fd$FlightDate[90], units="weeks")  # if diff needed in terms of weeks

difftime(fd$FlightDate[3000], fd$FlightDate[90], units = "days")

difftime(fd$FlightDate[3000], fd$FlightDate[90], units = "hours")


# subsetting data based on time information

# all rows when day is sunday

fd_s <- fd %>% filter(weekdays(FlightDate) == "Sunday")

dim(fd_s)

#find no.of flights on sundays for destination atlanta

fd %>% filter(weekdays(FlightDate) == "Sunday", DestCityName == "Atlanta, GA") %>% nrow()



#     %d  - date  (nmbr)                  dmy() - 26/11/2018
#     %m  - month  (nmbr)                 ymd() - 2018/11/26
#     %b  - month  (abbreviated)          mdy() - 11/26/2018
#     %B  - month  (month full name)      dmy_hm() - 26/11/2018 20":15
#     %y  - year   (2 digits)             dmy_hms() - 26/11/2018 20:15:30
#     %Y  - year   (4 digits)



