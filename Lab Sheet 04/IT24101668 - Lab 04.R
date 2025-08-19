setwd("C:\\Users\\it24101668\\Desktop\\IT24101668")

branch_data <- read.table("Exercise.txt", header=TRUE, sep = ",")
head(branch_data)

boxplot(branch_data$Sales, 
        main = "Boxplot of Sales", 
        col = "skyblue", 
        ylab = "Sales")

fivenum(branch_data$Advertising_X2)
IQR(branch_data$Advertising_X2)

find_outliers <- function(x) {
  Q1 <- quantile(x, 0.25)
  Q3 <- quantile(x, 0.75)
  IQR_value <- Q3 - Q1
  lower <- Q1 - 1.5 * IQR_value
  upper <- Q3 + 1.5 * IQR_value
  outliers <- x[x < lower | x > upper]
  return(outliers)
}


data <- read.table("DATA 4.txt", header=TRUE, sep="")
attach(data)

boxplot(X1, main="Box plot for Team Attendance", outline=TRUE, outpch=8, horizontal=TRUE)
boxplot(X2, main="Box plot for Team Salary", outline=TRUE, outpch=8, horizontal=TRUE)
boxplot(X3, main="Box plot for Years", outline=TRUE, outpch=8, horizontal=TRUE)

hist(X1, ylab="Frequency", xlab="Team Attendance", main="Histogram for Team Attendance")
hist(X2, ylab="Frequency", xlab="Team Salary", main="Histogram for Team Salary")
hist(X3, ylab="Frequency", xlab="Years", main="Histogram for Years")

stem(X1)
stem(X2)
stem(X3)

mean_X1 <- mean(X1)
mean_X2 <- mean(X2)
mean_X3 <- mean(X3)

median_X1 <- median(X1)
median_X2 <- median(X2)
median_X3 <- median(X3)

sd_X1 <- sd(X1)
sd_X2 <- sd(X2)
sd_X3 <- sd(X3)


summary(X1)
summary(X2)
summary(X3)

Q1_X1 <- quantile(X1)[2]
Q3_X1 <- quantile(X1)[4]

Q1_X2 <- quantile(X2)[2]
Q3_X2 <- quantile(X2)[4]

Q1_X3 <- quantile(X3)[2]
Q3_X3 <- quantile(X3)[4]

IQR_X1 <- IQR(X1)
IQR_X2 <- IQR(X2)
IQR_X3 <- IQR(X3)

get.mode <- function(y) {
  counts <- table(y)
  names(counts[counts == max(counts)])
}

mode_X3 <- get.mode(X3)

get.outliers <- function(z) {
  q1 <- quantile(z)[2]
  q3 <- quantile(z)[4]
  iqr <- q3 - q1
  ub <- q3 + 1.5 * iqr
  lb <- q1 - 1.5 * iqr
  print(paste("Upper Bound =", ub))
  print(paste("Lower Bound =", lb))
  print(paste("Outliers:", paste(sort(z[z < lb | z > ub]), collapse=",")))
}

outliers_X1 <- get.outliers(X1)
outliers_X2 <- get.outliers(X2)
outliers_X3 <- get.outliers(X3)