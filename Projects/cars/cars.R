# create descriptive statistics

# set the working directory
setwd("C:/Users/user/Documents/science/project/R/cars")


# read a CSV data file
cars <- read.csv("Cars.csv")

# peek at the data
head(cars)

# create a frequency table
table(cars$Transmission)

# get the minimum value and maximum value of Fuel.Economy 
min(cars$Fuel.Economy)
max(cars$Fuel.Economy)

# get the average value
mean(cars$Fuel.Economy)

# get the median value
median(cars$Fuel.Economy)

# get the quartiles
quantile(cars$Fuel.Economy)

# get standard deviation
sd(cars$Fuel.Economy)

# get total value
sum(cars$Fuel.Economy)

# get the correlation coefficient
cor(
   x = cars$Cylinders,
   y = cars$Fuel.Economy)

# summarize an entire table
summary(cars)

# data visualization

# load the ggplot2 library
library(ggplot2)

# create a frequency bar chart
ggplot(
      data = cars,
      aes(x = Transmission)) +
      geom_bar() +
      ggtitle("Count of Cars by Transmission Type") +
      xlab("Transmission Type") +
      ylab("Count of Cars")

# create a histogram
ggplot(
      data = cars,
      aes(x = Fuel.Economy)) +
      geom_histogram(bins = 10) +
      ggtitle("Distribution of Fuel Economy") +
      xlab("Fuel Economy (mpg)") +
      ylab("Count of Cars")

# create a density plot
ggplot(data = cars,
       aes(x = Fuel.Economy)) +
       geom_density() +
       ggtitle("Distribution of Fuel Economy") +
       xlab("Fuel Economy (mpg)") +
       ylab("Density")

# create a scatterplot
ggplot(data = cars, 
       aes(x = Cylinders, y = Fuel.Economy)) +
       geom_point() +
       ggtitle("Fuel Economy by Cylinders") +
       xlab("Number of Cylinders") +
       ylab("Fuel Economy (mpg)")

