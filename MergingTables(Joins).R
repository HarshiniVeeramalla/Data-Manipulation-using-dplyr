
              
                      # MERGING TABLES : merge

     #   JOINING DATAFRAMES (JOINING TABLES)

# INNER JOIN

# only common elements

merge(x = table 1, y= table 2, by = "key column")
  
 
# FULL OUTER JOIN

# both tables are joined irrespective of any match between rows
  
# gives all

merge(x = table1, y = table2, by = "keycol(cust id", all = True)
      

            # LEFT OUTER JOIN

#  all rows on left + matching of right

merge(x = table1, y = table2, by = "keycol", all.x = TRUE) # X here is table


            # RIGHT OUTER JOIN

# all rows on right + matching rows of left

merge(x = table1, y = table2, by = "keycol", all.y = TRUE)











