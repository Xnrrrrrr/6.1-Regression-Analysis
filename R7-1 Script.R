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

# Plot residuals versus fitted values for homogeneity of variance
plot(lab6.reg, which = 1)

#Test your regression model for normality using a Q-Q plot. 
plot(lab6.reg, which = 2)

# Calculates and stores the residuals
lab6.data$residuals <- residuals(lab6.reg)

# Runs the Shapiro-Wilk test on the residuals
shapiro.test(lab6.data$residuals)

