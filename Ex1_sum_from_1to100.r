# Sum from 1 to 100
#
# written by matt crump
# september 9, 2016

# find the sum of adding all of the numbers from 1 to 100

# note: all text that begins with a # is a comment. These are for making notes in your code.

total_sum <- 0  # creates a variable named total_sum that contains the number 0
                # we will add numbers into the variable

# a loop that repeats 100 times
# the variable i will increment by a value of one during each loop
for (i in 1:100) {
  total_sum <- c(total_sum+i)  # here we add the value of i to total_sum
                               # this is inside the loop, so this line repeats 1:100 times
}

total_sum # a variable name by itself will print the contents of the variable to console
          # The answer should be 5050, and be printed in the console
