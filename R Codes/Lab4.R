#Author: Ashish Upadhyay
#Branch: Computer Science and Engineering
#Semester: 6th
#Dr. SP Mukherjee International Institute of Information Technology, Naya Raipur
#Subject: Machine Learning Lab 4
#Task: Linear Regression Implementation


setwd("C:/Users/Ashish Upadhyay/Documents/Semester6/MachineLearning/Lab")
getwd()
drug = read.csv("drug2.csv")
head(drug)
attach(drug)

#Model A
model1 = lm(response~dose)
summary(model1)
err1 = residuals(model1)
hist(err1)
plot(model1$fitted.values,err1)

#Model B
model2 = lm(response~dose+sex)
summary(model2)
err2 = residuals(model2)
hist(err2)
plot(model2$fitted.values,err2)

#Model C - moderation
product = drug$sex * drug$dose
model3 = lm(drug$response~drug$dose+product+drug$sex)
summary(model3)
err3 = residuals(model3)
hist(err3)
plot(model3$fitted.values,err3)
plot(model3$fitted.values,drug$response)

#RMSE and Strandard Deviation
pred=predict(model3, drug)
actual= drug$response
diff= actual-pred
head(diff)
rmse= sqrt(sum(diff**2)/nrow(drug))
rmse
err4=residuals(model3)
rmse2= sqrt(sum(err4**2)/nrow(drug))
rmse2