# Import necessary libraries
library(tidyverse)
library(optparse)

# Create an option parser
option_list <- list(
  make_option(c("-m", "--mean1"), type = "numeric", default = 0,
              help = "Mean of the first normal distribution"),
  make_option(c("-s", "--sd1"), type = "numeric", default = 1,
              help = "Standard deviation of the first normal distribution"),
  make_option(c("-M", "--mean2"), type = "numeric", default = 0,
              help = "Mean of the second normal distribution"),
  make_option(c("-S", "--sd2"), type = "numeric", default = 1,
              help = "Standard deviation of the second normal distribution"),
  make_option(c("-n", "--num_samples"), type = "integer", default = 10,
              help = "Number of samples to generate")
)

parser <- OptionParser(option_list = option_list)

# Parse the command-line arguments
opt <- parse_args(parser)

# Generate data from normal distributions
data <- data.frame(
  Name = sample(c("John", "Alice", "Bob"), opt$num_samples, replace = TRUE),
  Age = rnorm(opt$num_samples, mean = opt$mean1, sd = opt$sd1),
  Salary = rnorm(opt$num_samples, mean = opt$mean2, sd = opt$sd2)
)

# Specify the file path for the CSV
file_path <- "output.csv"

# Write the data frame to a CSV file
write_csv(data, file_path)

# Print a success message
cat("CSV file generated successfully at:", file_path)
