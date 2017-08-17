###Chapter 5 Measures Of Variability

###Michael Jordan's First NBA Season
## The dataset `data_jordan` is already loaded in Data Camp's Workspace

# View Michael Jordan's first season data 
data_jordan

# Make a scatterplot of his points per game
plot(data_jordan$points, main = "Michael Jordan's first season")

# Calculate mean_jordan
mean_jordan <- mean(data_jordan$points)

# Add horizontal line with abline()
abline(h = mean_jordan)

###Calculate The Variance Manually
## The dataset `data_jordan` is already loaded

# Calculate mean points per game
mean_ppg <- mean(data_jordan$points)

# Calculate deviations from mean
diff <- data_jordan$points - mean_ppg

# Calculate squared deviations
squared_diff <- diff^2

# Combine everything to compute sample variance
sum(squared_diff) / (length(data_jordan$points) - 1)

# Compare with the result of var()
var(data_jordan$points)

