# Classification

setwd("C:/Users/prite/Desktop/RPI/Sem 2/Data Analytics/Lab/DataSet/")
abalone <-read.csv("abalone.csv")
attach(abalone)
summary(abalone)

# predicting the age of abalone
Rings <- as.numeric(Rings)
Rings <- cut(Rings, br = c(-1,8,11,35), labels = c("young","adult","old"))
Rings <- as.factor(Rings)
summary(Rings)

# remove the "sex" variable in abalone
aba <- abalone
aba <- subset(aba, select = -Sex)
str(aba)

# using min max normalization 
normalize <- function(x) {return ((x - min(x)) / (max(x) - min(x))) }
aba[1:7] <- as.data.frame(lapply(aba[1:7], normalize))
summary(Shucked.weight)

# After Normalization, each variable has a min of 0 and a max of 1.
# in other words, values are in the range from 0 to 1.
# We’ll now split the data into training and testing sets.

ind <- sample(2, nrow(aba), replace=TRUE, prob=c(0.7, 0.3))
KNNtrain <- aba[ind==1,]
KNNtest <- aba[ind==2,]
str(KNNtrain)
sqrt(2918) # As sqrt is 54 so, k=55

# knn model
# knn() is in the "class" library. Make sure to install it first on your RStudio.
library(class)
?knn

KNNpred <- knn(train = KNNtrain[1:7], test = KNNtest[1:7], cl = KNNtrain$rings, k = 55)
KNNpred
table(KNNpred)

