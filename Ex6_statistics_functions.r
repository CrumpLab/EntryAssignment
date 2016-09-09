# Some simple statistical functions
#
# written by matt crump
# september 9, 2016

# The following are functions for computing the mean and standard deviation

# Notes: R comes with intrinsic functions for computing the mean and standard deviatino
# Nevertheless it can be helpful to practice building these kinds of simple functions
# as a way to develop your programming skills

# compute_mean 
# the mean is the sum of all numbers divided by the total number of numbers
compute_mean <- function(input_vector){
  n <- length(input_vector) 
  total_sum <- 0
  for (i in 1: n){
    total_sum <- total_sum + input_vector[i]
  }
  return(total_sum/n)
}

# example usage

a <- c(1,4,3,5,6,7) # an example vector of numbers
compute_mean(a)

# alternative one-liners

mean(a) # uses R function
sum(a)/length(a) # uses R's sum and length functions

# compute_std
# function for computing standard deviation
compute_std <- function(input_vector){
  n <- length(input_vector)
  # note we can use previously defined functions inside new functions
  the_mean <- compute_mean(input_vector)  
  deviations_from_the_mean <- the_mean-input_vector
  square_deviations <- deviations_from_the_mean^2
  SS <- sum(square_deviations) # sum of squared deviations
  standard_deviation <- sqrt(SS/(n-1))
  return(standard_deviation)
}

compute_std(a) # see if it works
sd(a) # check it against R's version

# a one liner illustrating ways of combining R's functions

sqrt(sum((mean(a)-a)^2)/(length(a)-1))




