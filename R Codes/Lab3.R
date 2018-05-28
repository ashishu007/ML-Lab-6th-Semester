#Author: Ashish Upadhyay
#Branch: Computer Science and Engineering
#Enrollment Number: 15100007
#Semester: 6th
#Dr. SP Mukherjee International Institute of Information Technology, Naya Raipur
#Subject: Machine Learning Lab 3
#Task: R functions

#Creating a vector
lst<-c(2,5,7,8,4,8,2,3,9,5,6,4,3,2,2,2)

#Mean, Trimmed mean, Median and Mode calculation
mean(lst)
median(lst)
mean(lst, trim=0.40)
mode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
mode(lst)

#Other mathematical functions
range(lst)
quantile(lst)
IQR(lst)
var(lst)
sd(lst)
mad(lst,center = mean(lst))
mad(lst)





