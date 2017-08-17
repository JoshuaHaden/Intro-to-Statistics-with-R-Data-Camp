###Chapter 3 Scales of Measurement

###Converting A Distribution To Z-Scale
## ratings_australia is already loaded in Data Camp's workspace

# Print the ratings for the Australian red wine
ratings_australia

# Convert these ratings to Z-scores using the scale() function
z_scores_australia <- scale(ratings_australia)

# Arrange the histograms side-by-side
par(mfrow = c(1, 2))

# Plot the histogram for the original scores
hist(ratings_australia, main = "Australia red wine ratings", xlab = "score")

# Plot the histogram for the Z-scores
hist(z_scores_australia, main = "Scaled ratings", xlab = "Z-score")

