#Author: Ashish Upadhyay
#Branch: Computer Science and Engineering
#Semester: 6th
#Dr. SP Mukherjee International Institute of Information Technology, Naya Raipur
#Subject: Machine Learning Lab 8
#Task: Logistic Regression Implementation - Part II

setwd("C:/Users/Ashish Upadhyay/Documents/Semester6/MachineLearning/Lab Programs")
getwd()

train <- read.csv("blooddonation.csv")
nrow(train)
head(train)

#install.packages('caTools')
library(caTools)

set.seed(88)
split <- sample.split(train$donate, SplitRatio = 0.75)

#get training and test data
dresstrain <- subset(train, split == TRUE)
dresstest <- subset(train, split == FALSE)

#Logistic Regression Model
model <- glm (donate ~ ., data = dresstrain, family = binomial)

#Summary
summary(model)

#Probability
probability <- predict(model, type = 'response')
probability

#Confusion Matrix (Cut-off value = 0.5)
con_mat <- table(dresstrain$donate, probability > 0.5)
con_mat

#Accuracy
accuracy <- ((con_mat[1, 1] + con_mat[2, 2])/(con_mat[1, 1] + con_mat[1, 2] + con_mat[2, 1] + con_mat[2, 2])) * 100
accuracy

#Precision
precision <- ((con_mat[2, 2]) / (con_mat[1, 2] + con_mat[2, 2])) * 100
precision

#Recall
recall <- (con_mat[2, 2] / (con_mat[2, 1] + con_mat[2, 2])) * 100
recall

#Error Rate
error_rate <- (con_mat[1, 1] / (con_mat[1, 1] + con_mat[1, 2] + con_mat[2, 1] + con_mat[2, 2])) * 100
error_rate

#ROCR Curve
#install.packages('ROCR')
library(ROCR)
ROCRpred <- prediction(probability, dresstrain$donate)
ROCRperf <- performance(ROCRpred, 'tpr','fpr')
plot(ROCRperf, colorize = TRUE, text.adj = c(-0.2,1.7))



#Confusion Matrix (Cut-off value = 0.2)
con_mat <- table(dresstrain$donate, probability > 0.2)
con_mat

#Accuracy
accuracy <- ((con_mat[1, 1] + con_mat[2, 2])/(con_mat[1, 1] + con_mat[1, 2] + con_mat[2, 1] + con_mat[2, 2])) * 100
accuracy

#Precision
precision <- ((con_mat[2, 2]) / (con_mat[1, 2] + con_mat[2, 2])) * 100
precision

#Recall
recall <- (con_mat[2, 2] / (con_mat[2, 1] + con_mat[2, 2])) * 100
recall

#Error Rate
error_rate <- (con_mat[1, 1] / (con_mat[1, 1] + con_mat[1, 2] + con_mat[2, 1] + con_mat[2, 2])) * 100
error_rate

#ROCR Curve
#install.packages('ROCR')
library(ROCR)
ROCRpred <- prediction(probability, dresstrain$donate)
ROCRperf <- performance(ROCRpred, 'tpr','fpr')
plot(ROCRperf, colorize = TRUE, text.adj = c(-0.2,1.7))



#Confusion Matrix (Cut-off value = 0.2)
con_mat <- table(dresstrain$donate, probability > 0.8)
con_mat

#Accuracy
accuracy <- ((con_mat[1, 1] + con_mat[2, 2])/(con_mat[1, 1] + con_mat[1, 2] + con_mat[2, 1] + con_mat[2, 2])) * 100
accuracy

#Precision
precision <- ((con_mat[2, 2]) / (con_mat[1, 2] + con_mat[2, 2])) * 100
precision

#Recall
recall <- (con_mat[2, 2] / (con_mat[2, 1] + con_mat[2, 2])) * 100
recall

#Error Rate
error_rate <- (con_mat[1, 1] / (con_mat[1, 1] + con_mat[1, 2] + con_mat[2, 1] + con_mat[2, 2])) * 100
error_rate

#ROCR Curve
#install.packages('ROCR')
library(ROCR)
ROCRpred <- prediction(probability, dresstrain$donate)
ROCRperf <- performance(ROCRpred, 'tpr','fpr')
plot(ROCRperf, colorize = TRUE, text.adj = c(-0.2,1.7))