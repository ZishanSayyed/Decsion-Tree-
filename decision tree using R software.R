## Prediction using Decision tree algorthim 


#importing the dataset iris
iris=read.csv("C:/Users/ADMIN/OneDrive/Desktop/spark intenship/Task3-Decision tree/Iris.csv",header = TRUE)

#viewing data 
View(iris)
#to check if data contain any missing values or a outlier 
summary(iris)
#from the result we can see that data does not contain any outliar as well as it doesnot have any missing value


## predictive modleing##
#using traing and Test
#for that we split our data in two part traing and test

set.seed(1)
index=sample(100,50) #as we have 150 obs we split it into 2 group where 100 obs are in traing data set and 50 be on test 
index #will creat 50 random sample form the data 

#as we are creating 50 test obs
iris.test=iris[index,]
dim(iris.test)

#and 100 traing obs
iris.trainging=iris[-index,]
dim(iris)

library(party) #Decision tree model
library(rpart)
library(rpart.plot) #Decision tree plot drawing 

tree=rpart(Species~.,iris.trainging)
rpart.plot(tree)

tree2=rpart(Species~.,iris.test)
rpart.plot(tree2)

