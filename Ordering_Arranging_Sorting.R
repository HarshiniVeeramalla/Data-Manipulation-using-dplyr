

          # ORDERING DATA : arrange()

# ascndng / descnding

# ascending

# syntax : arrange(name of data set, field to sort)

dat13 <- arrange(oj,INCOME)
View(dat13)
min(oj$INCOME)

# descending

dat14 <- arrange(oj,desc(INCOME))
View(dat14)

dat15 <- arrange(oj,-INCOME)
View(dat15)

max(oj$INCOME)








