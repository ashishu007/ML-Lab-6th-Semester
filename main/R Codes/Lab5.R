"
Author: Ashish Upadhyay
Branch: Computer Science and Engineering
Semester: 6th
Dr. SP Mukherjee International Institute of Information Technology, Naya Raipur
Subject: Machine Learning Lab 5
Task: Polynomial Regression Implementation
"

setwd("C:/Users/Ashish Upadhyay/Documents/Semester6/MachineLearning/Lab Programs")
getwd()

dmf = read.csv("dmf.csv")
attach(dmf)

# Basic model: Only flor
model= lm(dmf~flor)
summary (model)
err= residuals (model)
hist(err)
plot(model$fitted.values,model$residuals)
plot(model$fitted.values, dmf$dmf)
flor2= dmf$flor^2

# Advance model: flor + flor^2
model2=lm(dmf$dmf~ dmf$flor+flor2)
summary(model2)
err2= residuals(model2)
hist(err2)
plot(model2$fitted.values,model2$residuals)
plot(model2$fitted.values,dmf$dmf)

# More advance model: flor + flor^2 + sqrt(flor)
model3 = lm(dmf$dmf~ dmf$flor+flor2+1/sqrt(flor))
summary(model3)
err3= residuals(model3)
hist(err3)
plot(model3$fitted.values,model3$residuals)
plot(model3$fitted.values,dmf$dmf)