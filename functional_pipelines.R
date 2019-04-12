
          # FUNCTIONAL PIPELINES : %>%

# %>% : pipe

# ex : find mean price for all people whose income >= 10.5

# all class of outputs should be data frame

oj %>% filter(INCOME >= 10.5) %>% summarize(mean(price))

# ex : subset data based on price >= 2.5, create a column logIncome. compute the mean,sd,median of logIncome

oj %>% filter(price >= 2.5) %>% mutate(logIncome = log(INCOME)) %>% summarize(mean(logIncome), median(logIncome), sd(logIncome))






