

# when data has time along with date, R uses POSIXct and POSIXlt

library(lubridate)  # lubridate library reads the class as POSIXct by default

# for todays (present) date and time

date1 <- Sys.time()

date1

weekdays(date1)   #  for todays day

months(date1)   # for todays month

class(date1)


# POSIXct : stores date objects as a list and allows users to extract components like weekdays, months, time zones easily


date2 <- as.POSIXct(date1)

date2

str(date2)

date2 <- as.POSIXlt(date1)  # weekday, zone, hour are only in POSIXlt

date2

date2$wday    # weekday in number

date2$zone

date2$hour





