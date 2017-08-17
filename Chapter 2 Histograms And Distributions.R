###Chapter 2 Histograms And Distributions

###Creating Histograms In R
#Impact data frame is in Data Camp's workspace.
# Print the impact data frame
impact

# Use the describe() function to see some summary information per variable
describe(impact)

# Select the variable 'verbal_memory_baseline' from the 'impact' data frame and assign it to the variable 'verbal_baseline'
verbal_baseline <- impact$verbal_memory_baseline

# Plot a histogram of the verbal_baseline variable that you have just created
hist(verbal_baseline, main="Distribution of verbal memory baseline scores",xlab="score",ylab="frequency")

###Positive And Negative Skew
#When there are more observations on the left side of a histogram,
#the sample will have a positive skew.

###Red Wine Tasting
## The data frame `red_wine_data` is already pre-loaded in Data Camp's workspace

# Print red_wine_data
red_wine_data

# Print basic statistical properties of red_wine_data
describe(red_wine_data)

# Split the data frame into subsets for each country
red_usa <-  subset(red_wine_data, red_wine_data$condition == "USA")
red_france <-  subset(red_wine_data, red_wine_data$condition == "France")
red_australia <-  subset(red_wine_data, red_wine_data$condition == "Australia")
red_argentina <-  subset(red_wine_data, red_wine_data$condition == "Argentina")

# Select only the Ratings variable for each subset
red_ratings_usa <- red_usa$Ratings
red_ratings_france <- red_france$Ratings
red_ratings_australia <- red_australia$Ratings
red_ratings_argentina <- red_argentina$Ratings

# Create a 2 by 2 matrix of histograms
par(mfrow = c(2, 2))

# Plot four histograms, one for each subset
hist(red_ratings_usa, main = "USA red ratings", xlab = "score")
hist(red_ratings_france, main = "France red ratings", xlab = "score")
hist(red_ratings_australia, main = "Australia red ratings", xlab = "score")
hist(red_ratings_argentina, main = "Argentina red ratings", xlab = "score")

###White Wine Tasting
## white_wine_data is already pre-loaded in Data Camp's workspace

# Print white_wine_data
white_wine_data

# Assign the ratings for each country to a new variable
white_ratings_france <- subset(white_wine_data, white_wine_data$condition == "France")$Ratings
white_ratings_argentina <- subset(white_wine_data, white_wine_data$condition == "Argentina")$Ratings
white_ratings_australia <- subset(white_wine_data, white_wine_data$condition == "Australia")$Ratings
white_ratings_usa <- subset(white_wine_data, white_wine_data$condition == "USA")$Ratings

# Plot histograms for all 4 countries together
par(mfrow = c(2,2))
hist(white_ratings_usa, main = "USA white ratings", xlab = "score")
hist(white_ratings_australia, main = "Australia white ratings", xlab = "score")
hist(white_ratings_argentina, main = "Argentina white ratings", xlab = "score")
hist(white_ratings_france, main = "France white ratings", xlab = "score")


