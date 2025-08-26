setwd("C:\\Users\\it24101668\\Desktop\\IT24101668\\LAB 05")

data <- read.table("Data.txt",header = TRUE, sep = ",")
fix(data)
attach(data)

names(data)<- c("X1","X2")
attach(data)

hist(X2,main = "Histogram for Number of Shareholders")


histogram<-hist(X2,main = "Histogram for Number of Shareholders",breaks = seq(130, 270, length = 8), right = FALSE)
?hist

breaks <- round(histogram$breaks)
freq <- histogram$counts
mids <- histogram$mids

classes <- c()

for(i in 1:length(breaks)-1) {
  classes[i] <- paste0("[", breaks[i], ",", breaks[i+1], ")")
}

cbind(Classes = classes, Frequency = freq)

lines(mids, freq)

plot(mids, freq, type = 'l', main = "Frequency Polygan for Shareholders", xlab = "Shareholders", ylab =  "Frequency", ylim = c(0,max(freq)))

cum.freq <- cumsum(freq)

new <- c()
for (i in 1:length(breaks)) {
  if(i==1) {
    new[i] = 0
  }
  else {
    new[i] = cum.freq[i-1]
  }
}

plot(breaks, new, type = 'l', main = "Cumalative Frequency Polygon for Shareholders",
     xlab = "Shareholders", ylab = "Cumulative Frequency", ylim = c(0,max(cum.freq)))

cbind(Upper = breaks, CumFreq = new)

# EXERCISE

Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE)
str(Delivery_Times)
head(Delivery_Times)


breaks <- seq(20, 70, length.out = 10)

hist(Delivery_Times$Delivery_Time_.minutes.,
     breaks = breaks,
     right = FALSE,
     main = "Histogram of Delivery Times (9 Classes)",
     xlab = "Delivery Time",
     ylab = "Frequency",
     col = "skyblue",
     border = "black")


freq_table <- hist(Delivery_Times$Delivery_Time_.minutes.,
                   breaks = breaks,
                   right = FALSE,
                   plot = FALSE)

cum_freq <- cumsum(freq_table$counts)

boundaries <- freq_table$breaks

plot(boundaries[-1], cum_freq, type = "o",
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Delivery Time (minutes)",
     ylab = "Cumulative Frequency",
     col = "red")

grid()