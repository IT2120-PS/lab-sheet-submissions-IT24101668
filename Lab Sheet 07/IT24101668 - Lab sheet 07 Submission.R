setwd("C:\\Users\\pcadmin\\Desktop\\IT24101668")

##Question 01
# Uniform Distribution
# Random variable X ~ U(0,30)

# Part i: P(X <= 10)
punif(10, min = 0, max = 30, lower.tail = TRUE)

# Part ii: P(X > 20) = 1 - P(X <= 20)
1 - punif(20, min = 0, max = 30, lower.tail = TRUE)

# OR directly
punif(20, min = 0, max = 30, lower.tail = FALSE)


##Question 02
# Exponential Distribution
# Random variable X ~ Exp(λ = 0.5)

# Part i: P(X <= 3)
pexp(3, rate = 0.5, lower.tail = TRUE)

# Part ii: P(X > 4) = 1 - P(X <= 4)
1 - pexp(4, rate = 0.5, lower.tail = TRUE)

# OR directly
pexp(4, rate = 0.5, lower.tail = FALSE)

# Part iii: P(2 < X < 4) = P(X < 4) - P(X <= 2)
pexp(4, rate = 0.5, lower.tail = TRUE) - pexp(2, rate = 0.5, lower.tail = TRUE)


##Question 03
# Normal Distribution
# Random variable X ~ N(36.8, 0.4^2)

# Part i: P(X > 37.9)
1 - pnorm(37.9, mean = 36.8, sd = 0.4, lower.tail = TRUE)

# OR directly
pnorm(37.9, mean = 36.8, sd = 0.4, lower.tail = FALSE)

# Part ii: P(36.4 < X < 36.9) = P(X <= 36.9) - P(X <= 36.4)

pnorm(36.9, mean = 36.8, sd = 0.4, lower.tail = TRUE) - 
  pnorm(36.4, mean = 36.8, sd = 0.4, lower.tail = TRUE)

# Part 3
# Find value "b" such that P(X < b) = 0.012

qnorm(0.012, mean = 36.8, sd = 0.4, lower.tail = TRUE)

# Part 4
# Find value "b" such that P(X > b) = 0.01
# => P(X <= b) = 0.99, but here we use lower.tail = FALSE directly.

qnorm(0.01, mean = 36.8, sd = 0.4, lower.tail = FALSE)


##EXERCISE##

#Question 1

# Uniform Distribution
# Range: 0 to 40 minutes
# Probability between 10 and 25

p <- punif(25, min = 0, max = 40) - punif(10, min = 0, max = 40)
p

#Question 2

# Exponential Distribution
# Rate λ = 1/3
# Probability that X <= 2

p <- pexp(2, rate = 1/3)
p

#Question 3

##Part i
# Normal Distribution
# P(X > 130)

p <- 1 - pnorm(130, mean = 100, sd = 15)
p

##Part ii

# 95th percentile value

q <- qnorm(0.95, mean = 100, sd = 15)
q





