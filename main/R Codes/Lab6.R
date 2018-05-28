#Author: Ashish Upadhyay
#Branch: Computer Science and Engineering
#Semester: 6th
#Dr. SP Mukherjee International Institute of Information Technology, Naya Raipur
#Subject: Machine Learning Lab 6
#Task: Linear Regression Validation

setwd("C:/Users/Ashish Upadhyay/Documents/Semester6/MachineLearning/Lab Programs")
getwd()

drug = read.csv("drug2.csv")
attach(drug)
head(drug)
nrow(drug)

model1 = lm(response~dose)
summary(model1)
err1 = residuals(model1)
plot(model1$fitted.values, err1)
hist(err1)
plot(model1$fitted.values, drug$response)
mean <- mean(response)
sst <- sum((response-mean)**2)
sse <- sum((response-model1$fitted.values)**2)
rsq <- 1 - (sse/sst)
fuv <- sse/sst
fuv
rsq
a <- (nrow(drug)-1)*(1-rsq)
b <- nrow(drug)-2
rad <- 1-(a/b)
rad