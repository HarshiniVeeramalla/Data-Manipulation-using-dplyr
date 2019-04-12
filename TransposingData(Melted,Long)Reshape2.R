

            # TRANSPOSING DATA : reshape2()

# converts data from long to wide and wide to long
# used when running specialised tools like annova

# wide format, long format

library(reshape2)

person <- c("Sankar", "Aiyer", "Singh")
age <- c(26, 24, 25)
weight <- c(70, 60, 65)
wide <- data.frame(person,age,weight)
wide

# melt : to convert from wide format to long

melted <- melt(wide, id.vars = "person", value.name="Demo_Value")


# dcast : to convert from long format to wide format

dcast(melted,person~variable,value.var = "Demo_Value")



