setwd("/Users/prite/Desktop/RPI/Sem 2/Data Analytics/Lab/DataSet/")
EPI_Data <- read.csv("EPI_Data.csv", skip=1)
attach(EPI_Data)

# shapiro test
shapiro.test(ENVHEALTH)  #reject, because w is less than 0.5
shapiro.test(ECOSYSTEM)  #reject, because w is less than 0.5
shapiro.test(DALY)
shapiro.test(AIR_H)
shapiro.test(WATER_H)

# histogram
hist(ENVHEALTH)
hist(ECOSYSTEM)

EPI_2010 <- read.csv("2010EPI_data.csv")
nrow(EPI_2010)   #finding number of rows in the dataset

EPI_2010_sample <- Sample(EPI_2010,5000)    #sampling the dataset for the Shapiro wilk test

shapiro.test(ENVHEALTH)
shapiro.test(DALY)
shapiro.test(AIR_H)
shapiro.test(WATER_H)

