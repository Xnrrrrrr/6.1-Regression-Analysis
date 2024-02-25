#Read the data into a dataframe

lab6.data <- read.csv("lab 6 sra 365 wc-1.csv", header = TRUE)

#Test your regression model for independence of observations.

#Install required package
install.packages("car")

# Load the required package
library(car)

# Run a regression model
lab6.reg <- lm(dys_detect ~ per_sensitive, data = lab6.data)

#Run the Durbin-Watson test on your regression model.
dwt(lab6.reg)


