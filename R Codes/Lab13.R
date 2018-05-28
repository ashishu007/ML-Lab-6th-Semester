#Author: Ashish Upadhyay
#Branch: Computer Science and Engineering
#Semester: 6th
#Dr. SP Mukherjee International Institute of Information Technology, Naya Raipur
#Subject: Machine Learning Lab 13
#Task: k-Nearest Neighbour Implementation

setwd("C:/Users/Ashish Upadhyay/Documents/Semester6/MachineLearning/Lab Programs")
getwd()

data_set <- read.csv("wisc_bc_data.csv", stringsAsFactors = FALSE)
stringsAsFactors = FALSE
#head(data_set)
nrow(data_set)
str(data_set)
data_set <- data_set[-1]
str(data_set)
table(data_set$diagnosis)
data_set$diagnosis <- as.factor(data_set$diagnosis)

#Normalization
normalize <- function(x) {
  return ((x - min(x)) / (max(x) - min(x)))
}
# One could also use sequence such as df[1:2]
dfNorm <- as.data.frame(lapply(data_set[2:31], normalize))
head(dfNorm)

data_train <- dfNorm[1:400,]
data_test <- dfNorm[401:569,]

data_train_labels <- data_set[1:400, 1]
data_test_labels <- data_set[401:569, 1]

#install.packages("class")
library(class)

data_test_pred <- knn(train = data_train, test = data_test,cl = data_train_labels, k=21)
#summary(data_test_pred)

#install.packages("gmodels")
library(gmodels)
CrossTable(x=data_test_labels, y=data_test_pred, prop.chisq=FALSE)

#Z-score standardization
stad <- function(x) {
  return ((x - mean(x)) / sqrt(var(x)))
}
# One could also use sequence such as df[1:2]
dfNorm <- as.data.frame(lapply(data_set[2:31], stad))
head(dfNorm)

data_train <- dfNorm[1:400,]
data_test <- dfNorm[401:569,]

data_train_labels <- data_set[1:400, 1]
data_test_labels <- data_set[401:569, 1]

#install.packages("class")
library(class)

data_test_pred <- knn(train = data_train, test = data_test,cl = data_train_labels, k=21)
#summary(data_test_pred)

#install.packages("gmodels")
library(gmodels)
CrossTable(x=data_test_labels, y=data_test_pred, prop.chisq=FALSE)