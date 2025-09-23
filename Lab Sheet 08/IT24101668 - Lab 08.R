setwd("C:\\Users\\it24101668\\Desktop\\IT24101668\\LAB 08")

data <- read.table("Data - Lab 8.txt",header = TRUE)
fix(data)
attach(data)

##Question 01
popmn <- mean(Nicotine)
popvar <- var(Nicotine)

##Question 02
samples <-c()
n <- c()

for(i in 1:30){
  s<-sample(Nicotine,5,replace = TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('S',i))
}

colnames(samples)=n

s.means<-apply(samples,2,mean)
s.vars<-apply(samples,2,var)

##Question 03
samplemean<-mean(s.means)
samplelevars<-var(s.means)

##Question 04
popmn
samplemean

##Question 05
truevar=popvar/5
samplelevars


##EXERCISE##
data <- read.table("Exercise - LaptopsWeights.txt",header = TRUE)
fix(data)
attach(data)

# 1. Population mean & population standard deviation
pop_mean <- mean(Weight.kg.)
pop_sd   <- sd(Weight.kg.)

# 2.
sample_means <- numeric(25)
sample_sds   <- numeric(25)

for (i in 1:25) {
  sample_i <- sample(Weight.kg., size = 6, replace = TRUE)
  sample_means[i] <- mean(sample_i)
  sample_sds[i]   <- sd(sample_i)
}

data.frame(Sample = 1:25, SampleMean = sample_means, SampleSD = sample_sds)

#3.
mean_of_sample_means <- mean(sample_means)
sd_of_sample_means   <- sd(sample_means)