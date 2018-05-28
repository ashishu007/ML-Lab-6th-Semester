
#1.Perform basic mathematics operations on variable such as (addition/substation/multiplication division/power/modulo operator). Also #perform relational and logical operations.
x=12
y=6
12+6

12-6

12*6

12/6

12**6

12%%6

x<y

x>y

x == 12

x != 5

x|y

x&y

#2.Create vector and perform various operations
#Create numerical vector
x <- c(2,8,3)
y <- c(6,6,1)

#Operation between scalar and vector
x <- c(2,8,3)
z = 1
x + z

x - z

#Operations between vectors
x+y

x>y

#Text variable and vector
s = c ('p','q','r')
length(s)

nchar(s)

t = c(n,s)
t

#Create matrices
B = matrix (c(1,2,3,4,5,6),nrow=3,ncol=2)
B

#3. Manage the workspace (setw() and getw())
getwd()
setwd("C:/Users/Ashish Upadhyay/Documents/Semester6/MachineLearning/Lab")
getwd()

#4. Understand data data frames and list.
n = c(1, 2, 3)
s = c("abc","def","ghi")
df = data.frame(n,s)
df

n = c(1, 2, 3)
s = c("abc","def","ghi")
l = list(n,s)
l

#5.How to import and export the data.
testdata <- read.table ("C:/Users/Ashish Upadhyay/Documents/Semester6/MachineLearning/Lab/drug2.csv", header=TRUE, sep=",") 

library(xlsx)
write.xlsx(mydata, "/home/mydata.xlsx")

#6. How to read and write CSV/text files.
drug = read.csv("drug2.csv")
head(drug)
write.csv(drug, file = "drug3.csv")

#7.Installation and loading packages.
install.packages("e1071")
library(e1071)

#8.Perform various loop and conditional statement.
for(i in 1:10) {
  print(i)
  }

#9.How function works in R.
add <- function(x,y){
  x= 10
  y= 1
  result <-x+y
  print(result)
}
add()

#10.Practice plotting and charting.
val <- c(1, 3, 6, 4, 9)
plot(val)

#11.Understand the factor variable.
data = c(1,2,2,3,1,2,3,3,1,2,3,3,1)
fdata = factor(data)
fdata