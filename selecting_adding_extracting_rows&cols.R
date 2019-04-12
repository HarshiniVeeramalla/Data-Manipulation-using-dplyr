
# dplyr (powerful data manipulation tool)

# for fast and big datasets

# works only with dataframes

library(dplyr)


                # SUB SETTING :  (filter)

# syntax : filter(data set name, logical statement)

# all rows where brand sold is tropicana

dat8 <- filter(oj,brand == "tropicana")

dim(filter(oj,oj$brand == "tropicana"))


# using 'OR'

# want rows of brand tropicana or dominicks

dat9 <- filter(oj, brand == "tropicana" | brand == "dominicks")
dim(dat9)


          # SELECTING COLUMNS : select ()


# syntax : select(dataset name, req fields)

# select col brand,income,feat

dat10 <- select(oj,brand,INCOME,feat)
dim(dat10)


# we can also deselect or drop the cols by using"minus"

dat11 <- select(oj,-brand,-INCOME,-feat)
View(dat11)


              # CREATE NEW COLUMN : mutate()


# create logincome from existing income data

# syntax : mutate(dataset, new name = old data name)

dat12 <- mutate(oj,logIncome = log(INCOME))

