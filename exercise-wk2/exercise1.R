## Part 1: Debugging

my.num <- 6
initials <- "Hello World"

my.vector <- c(my.num, initials)
my.vector

# run ?sum to get more info
vector.sum <- sum(my.vector)

# Describe why this doesn't work: 
# Because  the value initials is a string not integer, so you can't add words and numbers

install.packages("stringr")
library(stringr)
my.line <- "Hey, hey, this is the library"

print(str_length(my.line))

# Describe why this doesn't work: 
# library(stringr)

said.the.famous <- paste(my.line, " - ", initials)
said.the.famous
# Describe why this doesn't work: 
# because the variable "initial" was not put in correctly


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be
x <- seq(1,10)
y <- seq(1,5)
y.words <- c("David", "Jess", "Harry")
typeof(x)
# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"

a <- 10
b <- 5
CompareLength <- function(a, b) {
  z <- length(a) - length(b)
  length.diff <- paste("The difference in lengths is", z)
  print(length.diff)

  }
CompareLength(10,5)

# Pass two vectors of different length to your `CompareLength` function
CompareLength(17, 9)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDiff <- function(d, e){
  f <- d - e 
  if(f > 0) {
  first.length <- paste("Your first vector is longer by", f,"elements")
  print(first.length)
  } else  {
    second.length <- paste("Your second vector is longer by", f*(-1), "elements")
  print(second.length)
    }
}
DescribeDiff(3,5)



# Pass two vectors to your `DescribeDifference` function


# Write a function `CombineVectors` that takes in 3 vectors and combines them into one

# Send 3 vectors to your function to test it.

# Write a function `CapsTime` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters

CapTime <- function(courses){
  return(gsub("[A-Z]", "", courses))
}
CapTime(c("Informatics", "Math126", "Machine Learning"))