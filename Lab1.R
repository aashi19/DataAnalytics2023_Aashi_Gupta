days <- c('Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday')
temp <- c(28.5,30.7,12.4,23,13.9,22.6,16.5)
snowed <- c('T','F','T','T','T','F','T')
RPI_Weather_Week <- data.frame(days,temp,snowed)     #created a data frame
RPI_Weather_Week
head(RPI_Weather_Week)
str(RPI_Weather_Week)
summary(RPI_Weather_Week)
RPI_Weather_Week[1,]  #shows first row and all columns
RPI_Weather_Week[,1]  #shows first column and all rows
RPI_Weather_Week['snowed']
RPI_Weather_Week['days']
RPI_Weather_Week['temp']
RPI_Weather_Week[1:5,c('days','temp')]
RPI_Weather_Week$temp
subset(RPI_Weather_Week,subset = snowed == TRUE)
sorted.snow <-order(RPI_Weather_Week['snowed'])
sorted.snow