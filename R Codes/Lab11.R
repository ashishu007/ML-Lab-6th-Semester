#Author: Ashish Upadhyay
#Branch: Computer Science and Engineering
#Semester: 6th
#Dr. SP Mukherjee International Institute of Information Technology, Naya Raipur
#Subject: Machine Learning Lab 11
#Task: Multinomial Logistic Regression Implementation



#Task I

setwd("C:/Users/Ashish Upadhyay/Documents/Semester6/MachineLearning/Lab Programs")
getwd()

data_set <- read.csv("glass_multiclass.csv")
head(data_set)
nrow(data_set)

names(data_set)
dim(data_set)

summary(data_set)

data_set$Type <- as.factor(data_set$Type)

library(caTools)
set.seed(88)
split <- sample.split(data_set$Type, SplitRatio = 0.75)

#get training and test data
train <- subset(data_set, split == TRUE)
test <- subset(data_set, split == FALSE)

dim(test)
dim(train)

table(train$Type)
table(test$Type)

#install.packages('nnet')
library("nnet")





model <- multinom(Type ~ ., data = train, maxit = 1000)
summary(model)

predictions_train <- predict(model, train)
con_mat_train_model <- table(predicted = predictions_train, actual = train$Type)
con_mat_train_model
accuracy_train_model <- sum(diag(con_mat_train_model)) / sum(con_mat_train_model)
accuracy_train_model
error_rate_train_model <- 1 - accuracy_train_model
error_rate_train_model

predictions_test <- predict(model, test)
con_mat_test_model <- table(predicted = predictions_test, actual = test$Type)
con_mat_test_model
accuracy_test_model <- sum(diag(con_mat_test_model)) / sum(con_mat_test_model)
accuracy_test_model
error_rate_test_model <- 1 - accuracy_train_model
error_rate_test_model






#Task II

model1 <- multinom(Type ~ RI + Na + Mg, data = train, maxit = 1000)
summary(model1)

predictions_train1 <- predict(model1, train)
con_mat_train_model1 <- table(predicted = predictions_train1, actual = train$Type)
con_mat_train_model1
accuracy_train_model1 <- sum(diag(con_mat_train_model1)) / sum(con_mat_train_model1)
accuracy_train_model1
error_rate_train_model1 <- 1 - accuracy_train_model1
error_rate_train_model1

predictions_test1 <- predict(model1, test)
con_mat_test_model1 <- table(predicted = predictions_test1, actual = test$Type)
con_mat_test_model1
accuracy_test_model1 <- sum(diag(con_mat_test_model1)) / sum(con_mat_test_model1)
accuracy_test_model1
error_rate_test_model1 <- 1 - accuracy_train_model1
error_rate_test_model1








model2 <- multinom(Type ~ RI + Na + Mg + Al + Si + K, data = train, maxit = 1000)
summary(model2)

predictions_train2 <- predict(model2, train)
con_mat_train_model2 <- table(predicted = predictions_train2, actual = train$Type)
con_mat_train_model2
accuracy_train_model2 <- sum(diag(con_mat_train_model2)) / sum(con_mat_train_model2)
accuracy_train_model2
error_rate_train_model2 <- 1 - accuracy_train_model2
error_rate_train_model2

predictions_test2 <- predict(model2, test)
con_mat_test_model2 <- table(predicted = predictions_test2, actual = test$Type)
con_mat_test_model2
accuracy_test_model2 <- sum(diag(con_mat_test_model2)) / sum(con_mat_test_model2)
accuracy_test_model2
error_rate_test_model2 <- 1 - accuracy_train_model2
error_rate_test_model2








model3 <- multinom(Type ~ RI + Na + Mg + Al + Si + K + Ca + Ba +Fe, data = train, maxit = 1000)
summary(model3)

predictions_train3 <- predict(model3, train)
con_mat_train_model3 <- table(predicted = predictions_train3, actual = train$Type)
con_mat_train_model3
accuracy_train_model3 <- sum(diag(con_mat_train_model3)) / sum(con_mat_train_model3)
accuracy_train_model3
error_rate_train_model3 <- 1 - accuracy_train_model3
error_rate_train_model3

predictions_test3 <- predict(model3, test)
con_mat_test_model3 <- table(predicted = predictions_test3, actual = test$Type)
con_mat_test_model3
accuracy_test_model3 <- sum(diag(con_mat_test_model3)) / sum(con_mat_test_model3)
accuracy_test_model3
error_rate_test_model3 <- 1 - accuracy_train_model3
error_rate_test_model3








model4 <- multinom(Type ~ Si + K + Ca + Ba + Fe, data = train, maxit = 1000)
summary(model4)

predictions_train4 <- predict(model4, train)
con_mat_train_model4 <- table(predicted = predictions_train4, actual = train$Type)
#con_mat_train_model4
accuracy_train_model4 <- sum(diag(con_mat_train_model4)) / sum(con_mat_train_model4)
accuracy_train_model4
error_rate_train_model4 <- 1 - accuracy_train_model4
error_rate_train_model4

predictions_test4 <- predict(model4, test)
con_mat_test_model4 <- table(predicted = predictions_test4, actual = test$Type)
#con_mat_test_model4
accuracy_test_model4 <- sum(diag(con_mat_test_model4)) / sum(con_mat_test_model4)
accuracy_test_model4
error_rate_test_model4 <- 1 - accuracy_train_model4
error_rate_test_model4