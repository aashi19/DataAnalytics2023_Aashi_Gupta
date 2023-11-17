setwd("/Users/prite/Desktop/RPI/Sem 2/Data Analytics/Lab/DataSet/")
EPI_Data <- read.csv("EPI_Data.csv", skip=1)
attach(EPI_Data)

# boxplot
boxplot(ENVHEALTH,DALY,AIR_H,WATER_H)

lmENVH <-lm(ENVHEALTH~DALY+AIR_H+WATER_H)
lmENVH

summary(lmENVH)

cENVH <-coef(lmENVH)

#Predict
DALYNEW<-c(seq(5,95,5))
AIR_HNEW<-c(seq(5,95,5))
WATER_HNEW<-c(seq(5,95,5))

#creating a new data frame
NEW <- data.frame(DALYNEW,AIR_HNEW,WATER_HNEW)

pENV <- predict(lmENVH,NEW, interval = "prediciton")
cENV <- predict(lmENVH,NEW, interval = "confidence")

# using the response variable as: AIR_E
Model1 <- lm(AIR_E~DALY+AIR_H+WATER_H)
summary(Model1)

# using the response variable as: CLIMATE
Model2 <- lm(CLIMATE~DALY+AIR_H+WATER_H)
summary(Model2)
