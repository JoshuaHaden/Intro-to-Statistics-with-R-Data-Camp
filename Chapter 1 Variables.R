###Chapter 1 Variables

###Basketball Standings
#NBA Analyst analyzes the standings for each team.
#The variable standings is an ordinal variable.

###Longitude And Latitude
#Longitude and latitude are example of interval variables.

###Nominal Variables In R
# Create a numeric vector with the identifiers of the participants of your survey
participants1 <- c(2, 3, 5, 7, 11, 13, 17)

# Check what type of values R thinks the vector consists of
class(participants1)

# Transform the numeric vector to a factor vector
participants2 <- factor(participants1)

# Check what type of values R thinks the vector consists of now
class(participants2)

###Ordinal Variables In R
# Create a vector of temperature observations
temperature_vector <- c("High", "Low", "High", "Low", "Medium")

# Specify that they are ordinal variables with the given levels
factor_temperature_vector <- factor(temperature_vector, order = TRUE, 
                                    levels = c("Low", "Medium", "High"))

# Print the result to the console
factor_temperature_vector

###Interval And Ratio Variables In R
# Create an interval variable called longitudes
longitudes <- c(10, 20, 30, 40)

# Create a ratio variable called chronos
chronos <- c(10.60, 10.12, 9.58, 11.1)

###On The Theory Of Scales Of Measurement (Stevens, 1946)
#http://www.mpopa.ro/statistica_licenta/Stevens_Measurement.pdf
