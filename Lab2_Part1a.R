setwd("/Users/prite/Desktop/RPI/Sem 2/Data Analytics/Lab/DataSet/")
EPI_Data <- read.csv("2010EPI_data.csv", skip=1)
attach(EPI_Data)

library(modeest)

# Generate Central Tendency values for AIR_E variable
mean(AIR_E,na.rm = TRUE)
median(AIR_E,na.rm = TRUE)
mfv(AIR_E, na_rm = TRUE)[1]

# Generate Central Tendency values for WATER_E variable
mean(WATER_E, na.rm = TRUE)
median(WATER_E,na.rm = TRUE)
mfv(WATER_E, na_rm = TRUE)[1]

# Boxplots for AIR_E, WATER_E
boxplot(AIR_E)
boxplot(WATER_E)

# Generate Central Tendency values for NOX_pt variable
mean(NOX_pt, na_rm = TRUE, trim = 0.5)
median(NOX_pt,na_rm = TRUE, trim = 0.5)
mfv(NOX_pt, na_rm = TRUE)[1]

# Generate Central Tendency values for SO2_pt variable
mean(SO2_pt, na.rm = TRUE)
median(SO2_pt,na_rm = TRUE)
mfv(SO2_pt, na_rm = TRUE)[1]

# Boxplots for OZONE_pt, WQI_pt
boxplot(OZONE_pt)

# converting vector to numeric value
wqi_pt <- as.numeric(WQI_pt)
boxplot(wqi_pt)

# Generate Central Tendency values for CLIMATE variable
mean(CLIMATE, na_rm = TRUE)
median(CLIMATE, na_rm = TRUE)
mfv(CLIMATE, na_rm = TRUE)[1]

# Generate Central Tendency values for AGRICULTURE variable
mean(AGRICULTURE, na_rm = TRUE)
median(AGRICULTURE, na_rm = TRUE)
mfv(AGRICULTURE, na_rm = TRUE)[1]

# Boxplot for FISHERIES_pt , NMVOC_pt
fisheries <- as.numeric(FISHERIES)
boxplot(fisheries)

# converting vector to numeric value
nmvoc_pt <- as.numeric(NMVOC_pt)
boxplot(nmvoc_pt)

# boxplot for envhealth, ecosystem
boxplot(ENVHEALTH,ECOSYSTEM)

# qqplot for envhealth, ecosystem
qqplot(ENVHEALTH,ECOSYSTEM)

