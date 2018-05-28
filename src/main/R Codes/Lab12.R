#Author: Ashish Upadhyay
#Branch: Computer Science and Engineering
#Semester: 6th
#Dr. SP Mukherjee International Institute of Information Technology, Naya Raipur
#Subject: Machine Learning Lab 12
#Task: Naive Bayes Implementation

setwd("C:/Users/Ashish Upadhyay/Documents/Semester6/MachineLearning/Lab Programs")
getwd()
d <- read.csv("iris.csv")
head(d)
nrow(d)
summary(d)

#converting as a factor to class
d$class=factor(d$class)
#Finding structure of iris data
str(d)

# Creating table for class variable 
table(d$class)

sample_iris=sample(150,110,replace = FALSE)

#creating training and test dataset
iris_training=d[sample_iris,]
iris_test=d[-sample_iris,]
#creating levels 
iris_training_labels=d[sample_iris,]$class
iris_test_labels=d[-sample_iris,]$class

table(iris_training$class)
table(iris_test$class)

library(e1071)
iris_classifier=naiveBayes(class ~ ., data = iris_training)
class(iris_classifier)
print(iris_classifier)
summary(iris_classifier)
#Evaluvating model performance
iris_test_pred=predict(iris_classifier,iris_test)
iris_test_pred

#install.packages("gmodels")
#library(gmodels)
conf_matrix <- table(iris_test_pred, iris_test$class)
conf_matrix
accuracy <- sum(diag(conf_matrix)) / sum(conf_matrix)
accuracy