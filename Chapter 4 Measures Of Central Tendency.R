###Chapter 4 Measures Of Central Tendency

###The Mean Of A Fibonacci Sequence
# Create a vector that contains the Fibonacci elements
fibonacci <- c(0, 1, 1, 2, 3, 5, 8, 13)

# Calculate the mean manually using sum() and length()
mean_manual <- sum(fibonacci) / length(fibonacci)

# Calculate the mean the easy way
mean_check <- mean(fibonacci)

###Setting Up Histograms
#Wine_data in Data Camp's workspace
# Print the data in order to figure out which subsets are included
wine_data

# Create red_wine and white_wine
red_wine <- subset(wine_data, wine_data[, 1] == "Red")
white_wine <- subset(wine_data, wine_data[, 1] == "White")

# Plot the histograms of the ratings of both subsets
par(mfrow = c(1,2))
hist(red_wine$Ratings, xlab = "Ratings", main = "Shiraz")
hist(white_wine$Ratings, xlab = "Ratings", main = "Pinot Grigio")

###Robustness To Outliers
# Calculate the change in mean
diff_mean <- mean(red_wine_extreme$Ratings) - mean(red_wine$Ratings)

# Calculate the change in median
diff_median <- median(red_wine_extreme$Ratings) - median(red_wine$Ratings)

# Print both differences
diff_mean
diff_median

