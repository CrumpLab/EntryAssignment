# Sum of all EVEN integers between any two numbers
#
# written by matt crump
# september 9, 2016

# A function to find the sum of all even integers between starting and stopping number

# note: all text that begins with a # is a comment. These are for making notes in your code.
# In this example we will create a function to run our program. 
# First we write the function, then we call the function and view it's output

# writing the function
# we will use the same basic code from the second example
# the difference is we will use logic statement inside the loop
# the logic statements will check each number
# if the number is even it will be added to the sum
# if the number is odd it will not be added to the sum

# the variables first_num and second_num are the inputs to the function
sum_between_even_only <- function(first_num,second_num){
  total_sum <- 0  # creates a variable named total_sum that contains the number 0
  # we will add numbers into the variable
  
  # a loop that repeats x times (from first_num  to second_num)
  # the variable i will increment by a value of one during each loop
  for (i in first_num:second_num) {
    # below we use the modulus operater %% to check if the number in i is divisible by 2
    # i %% 2 will equal zero when i is divisible by 2
    # i %% 2 will not equal zero when i is not divisible by 2
    if (i %% 2 == 0) { # we check to see that i is divisible by 2, making it an even number
      total_sum <- c(total_sum+i) # this line is only run when the if condition is true
    }
  }
 return(total_sum) # this will return the total_sum as the output of the function
}

# using the function after it has been loaded
# now you can find the sum of all the integers between any two integers

sum_between_even_only(1,100)  # should return 2550
sum_between_even_only(1,1000) # should return 250500