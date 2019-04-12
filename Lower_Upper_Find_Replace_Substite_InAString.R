
            # sqldf

a <- "Batman"

substr(a,start = 2, stop = 6)

# no.of elements in a string

nchar(a)

# convert everything into small/lower case

tolower(a)

# convert into upper case

toupper(a)


b <- "Bat-Man"

# split the string based on '-'

strsplit(b,split = "-")

c <- "Bat/Man"

strsplit(c, split = "/")


# concatenate 2 string objects

paste(b, split = c)


# where a specific pattern occurs in a particular string

c(b,c)    # creating c string

# grep("find what", in what)

grep("-",c(b,c))    # - occurs in first element i.e., b


# can also use grepl : outputs logical values true,false

c(b,c)
grepl("/",c(b,c))

c(c,b)
grepl("/",c(c,b))


# substituting one element in place of other element

b
sub("-","/",b)


d <- "Bat-Ma-n"

sub("-", "/",d)   # replaces only first occurence of '-'


# for substituting all the '-' use : gsub()

gsub("-","/",d)


























