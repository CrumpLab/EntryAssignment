# Sum of all integers between any two numbers
#
# written by matt crump
# september 9, 2016

# A function to find the sum of all integers between starting and stopping number

# note: all text that begins with a # is a comment. These are for making notes in your code.
# In this example we will create a function to run our program. 
# First we write the function, then we call the function and view it's output

# writing the function
# we will use the same basic code from the first example
# but it will be placed inside a function names sum_between_two_numbers
# the function allows us to declare the first and second number
# when we run the code from line 19-30, we will load the new function into R-studio.

# the variables first_num and second_num are the inputs to the function
sum_between_two_numbers <- function(first_num,second_num){
  total_sum <- 0  # creates a variable named total_sum that contains the number 0
  # we will add numbers into the variable
  
  # a loop that repeats x times (from first_num  to second_num)
  # the variable i will increment by a value of one during each loop
  for (i in first_num:second_num) {
    total_sum <- c(total_sum+i)  # here we add the value of i to total_sum
    # this is inside the loop, so this line repeats 1:100 times
  }
 return(total_sum) # this will return the total_sum as the output of the function
}

# using the function after it has been loaded
# now you can find the sum of all the integers between any two integers

sum_between_two_numbers(1,100)  # should return 5050
sum_between_two_numbers(1,1000) # should return 500500