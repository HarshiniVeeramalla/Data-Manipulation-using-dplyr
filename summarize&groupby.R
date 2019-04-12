
            # SUMMARIZING DATA : summarize() and group_by()


# group_by() : used to create groups based on grouping variable or set of grouping variables

# summarize() : used to apply specific function on grouped data

# these 2 are used together


# ex : find mean, stndard deviation of income based on brand grouping

gr_brand <- group_by(oj,brand)
summarize(gr_brand, mean(INCOME), sd(INCOME))


