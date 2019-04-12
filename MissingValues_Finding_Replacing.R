

          # MISSING VALUE TREATMENT

#  use is.na() to find total no.of missing values

a <- c(1,2,3,NA,NA,NA,7,NA)

is.na(a)    # gives false, true

sum(is.na(a)) # count as t = 1, f = 0


# EXAMPLE

air <- data.frame(Ozone = c(41,36,12,18,NA,28), Solar = c(190,118,149,313,NA,NA))

View(air)

sum(is.na(air$Ozone))

sum(is.na(air$Solar))

summary(air)  # another way


               # IMPUTING MISSING VALUES
  

# replacing missing values with some nmbr

air$Ozone[is.na(air$Ozone)] <- 45

summary(air)


# replacing with mean

air$Solar[is.na(air$Solar)] <- mean(air$Solar, na.rm = TRUE)

summary(air)






              
                




