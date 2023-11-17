setwd("C:/Users/prite/Desktop/RPI/Sem 2/Data Analytics/Lab/DataSet/")
mulReg <- read.csv("dataset_multipleRegression.csv")
attach(mulReg)

# Perform multiple regression analysis
model <- lm(ROLL ~ UNEM + HGRAD)

#creating a new data frame
mulReg_newDF <- data.frame(UNEM = 0.07, HGRAD = 90000)

# predicitng the value of roll
#plmmR<-predict(model,mulReg_newDF, interval = 'prediction')
predictions <- predict(model, mulReg_newDF)

# Print the predicted value for ROLL
cat("Predicted ROLL with UNEM=7%, HGRAD=90,000 :", round(predictions, 2))

# performing regression analysis taking into account INC
model1 <- lm(ROLL ~ UNEM + HGRAD + INC)

# creating a new dataframe
mulReg_DF <- data.frame(UNEM = 0.07, HGRAD = 90000, INC = 25000)

# predicting the value of roll
predict_roll <- predict(model1, mulReg_DF, interval = "prediction")

# Print the predicted value for ROLL
cat("Predicted ROLL with UNEM=7%, HGRAD=90,000 & INC=25000:", round(predict_roll, 2))
