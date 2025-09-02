setwd("C:\\Users\\it24101668\\Desktop\\IT24101668\\LAB 06")

##Question 01
#Part 1
#Binomial Distribution 
#Here, random variable x has binomial distribution with n = 44 and p = 0.92

#Part 2
#It asks to find p(x = 40). Following command gives the density.
#In other words, probability of getting an exact value can be calculated using "dbinom" command.
dbinom(40, 44, 0.92)

#Part 3
#It asks to find p(x<=35). Following command gives the cumulative probability (<=)
#if "lower.tail" argument equals to "TRUE".
pbinom(35, 44, 0.92, lower.tail = TRUE)

#Part 4
#It asks to find p(40 <= x <= 42)
#You need to rearrange the probability statement as follows.
#p(40 <= x <= 42) = p(x <=  42) - p(x <= 39)
1 - pbinom(37, 44, 0.92, lower.tail = TRUE)
#Or else following command can also used by keeping argument "lower.tail"as "FALSE"
#When the argument is "FALSE", it means that p(x > 37) which is same as p(x >= 38)
pbinom(37, 44, 0.92, lower.tail = FALSE)

#Part 5
#Asks you to find p(40 <= x <= 42)
#You need to rearrange the probability as follows
#p(40 <= x <= 42) = p(x <= 42) - p(x <= 39)
pbinom(42, 44, 0.92, lower.tail = TRUE) - pbinom(39, 44, 0.92, lower.tail = TRUE)


##Question 02
#Part 1
#Number of babies born in a hospital on a given day

#Part 2
#Poisson distribution
#Random variable x has poisson distribution with lambda = 5

#Part 3
#Asks to find p(x = 6). Following command gives the density.
#Probability of getting an exact value can be calculated using "dpois" command
dpois(6, 5)

#Part 4
#Asks to find p(x > 6). This can be found using "ppois"command
#If you keep "lower.tail" argument as "TRUE", that means p(X <= 6)
#Since we need p(x > 6), keep the "lower.tail" argument as "FALSE"
ppois(6, 5, lower.tail = FALSE)



###Exercise
##Question 01
#Part 1
#Binomial Distribution 
#Here, random variable x has binomial distribution with n = 50 and p = 0.85

#Part 2
#It asks to find p(x >= 47)
#keeping argument "lower.tail"as "FALSE"
#When the argument is "FALSE", it means that p(x > 46)
pbinom(46, 50, 0.85, lower.tail = FALSE)


##Question 02
#Part 1
#Here, random variable x is for the number of calls received in one hour

#Part 2
#Poisson distribution
#Random variable x has poisson distribution with lambda = 12

#Part 3
#Asks to find p(x = 15). Following command gives the density.
#Probability of getting an exact value can be calculated using "dpois" command
dpois(15, 12)