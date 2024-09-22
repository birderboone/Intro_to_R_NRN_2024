################################################
# Lesson 00 - Before we start
################################################

# 1. Start RStudio.
# 2. Under the `File` menu, click on `New Project`. Choose `New Directory`, then `New Project`.
# 3. Enter a name for this new folder (or "directory"), and choose the folder where you downloaded our workshop files.
#    This will be your **working directory** for the rest of the day (e.g., `~/Intro_to_R_NRN_2024`).
# 4. Click on `Create Project`.
# 5. Open the 'code_handout.R' file. This will be our code sheet for the workshop
# 6. (Optional) Set Preferences to 'Never' save workspace in RStudio.




################################################
# Lesson 01 - Introduction to R
################################################






### Creating objects in R

















### Challenge
##
## What are the values after each statement in the following?
##
## mass <- 47.5            # mass?
## age  <- 122             # age?
## mass <- mass * 2.0      # mass?
## age  <- age - 20        # age?
## mass_index <- mass/age  # mass_index?




### Functions and their arguments
# - Functions are canned scripts that run all at once
# - A function has arguments as inputs
# - A function often returns a value
# - Functions can be imported via *packages*





################################################
# How to make a Peanut Butter and Jelly Sandwich
################################################
# Ingredients
# - 2 slices of sandwich bread
# - Jelly
# - Peanut butter

# Instructions
# - Lay out two slices of bread
# - Spread 2tbsp of peanut butter on one slice of bread
# - Spread 2tbsp of grape jelly on the other slice of bread
# - Place the two pieces of bread together
# - Cut diagonal with a knife
# - Serve!

sd

round
?round











### Vectors and data types

weight_g <- c(50, 60, 65, 82)
weight_g



#### Characters, string, and quotation marks 

# 4 main data types in R
# - numeric  :
# - character :  
# - logical for TRUE and FALSE (the boolean data type) :  
# - integer 


#### Objects









typeof(weight_g)

## ## ### Challenge
## ## We've seen that atomic vectors can be of type character, numeric, integer, and
## ## logical. But what happens if we try to mix these types in a single
## ## vector?
## 
## ## What will happen in each of these examples? (hint: use `class()` to
## ## check the data type of your object)
## num_char <- c(1, 2, 3, "a")
## 
## num_logical <- c(1, 2, 3, TRUE)
## 
## char_logical <- c("a", "b", "c", TRUE)
## 
## tricky <- c(1, 2, 3, "4")
## 
## ## Why do you think it happens?
## 
## 
## ## How many values in `combined_logical` are `"TRUE"` (as a character) in the
## ## following example:
## combined_logical <- c(num_logical, char_logical)
## 
## ## You've probably noticed that objects of different types get
## ## converted into a single, shared type within a vector. In R, we call
## ## converting objects from one class into another class
## ## _coercion_. These conversions happen according to a hierarchy,
## ## whereby some types get preferentially coerced into other types. Can
## ## you draw a diagram that represents the hierarchy of how these data
## ## types are coerced?

#### Subsetting vectors













### Challenge (optional)
##
## * Can you figure out why `"four" > "five"` returns `TRUE`?

## ### Challenge
## 1. Using our `weight_g` vector can you subset only the values that are less than or equal to 34?
weight_g <- c(21, 34, 39, 54, 55)
##
## 2. Using our `weights_g` and the function `mean` calculate the mean weight with the 21 and 55 values **not included** 
##
## 3. Using our `animals` vector return where the values equal rat, dog, or cat
animals <- c("mouse", "rat", "dog", "cat", "cat")

## Missing data









## ### Challenge
## 1. Using this vector of heights in inches, create a new vector with the NAs removed.
##
heights <- c(63, 69, 60, 65, NA, 68, 61, 70, 61, 59, 64, 69, 63, 63, NA, 72, 65, 64, 70, 63, 65)
##
## 2. Use the function `median()` to calculate the median of the `heights` vector.
##
## 3. Use R to figure out how many people in the set are taller than 67 inches.



################## *NOTE* ######################
# Before we begin the next chapter I want everyone to make sure they've created a `data` folder in their working directory
# Does this code return the value TRUE?

length(list.files(pattern='data'))>0
#################################################


################################################
# Lesson 02 - Starting with data
################################################






### Loading the survey data



library(ratdat)
complete_old

### Reading the data into R

surveys <- read.csv("data/portal_data_joined.csv")
str(surveys)

### Read CSV





### Data frames



##################################
# Functions to inspect data.frames
##################################
#-   Size:
#
#    -   `dim(surveys)` - returns a vector with the number of rows in the
#        first element, and the number of columns as the second element
#        (the **dim**ensions of the object)
#    -   `nrow(surveys)` - returns the number of rows
#     -   `ncol(surveys)` - returns the number of columns
# 
# -   Content:
# 
#     -   `head(surveys)` - shows the first 6 rows
#     -   `tail(surveys)` - shows the last 6 rows
# 
# -   Names:
# 
#     -   `names(surveys)` - returns the column names (synonym of
#         `colnames()` for `data.frame` objects)
#     -   `rownames(surveys)` - returns the row names
# 
# -   Summary:
# 
#     -   `str(surveys)` - structure of the object and information about
#         the class, length and content of each column
#     -   `summary(surveys)` - summary statistics for each column
#################################




## Challenge
## Based on the output of `str(surveys)`, can you answer the following questions?
##
## * What is the class of the object `surveys`?
## * How many rows and how many columns are in this object?



## Indexing and subsetting data frames









### Challenges:
###
### 1. Create a `data.frame` (`surveys_200`) containing only the
###    data in row 200 of the `surveys` dataset.
###
### 2. Notice how `nrow()` gave you the number of rows in a `data.frame`?
###
###      * Use that number to pull out just that last row in the data frame
###      * Compare that with what you see as the last row using `tail()` to make
###        sure it's meeting expectations.
###      * Pull out that last row using `nrow()` instead of the row number
###      * Create a new data frame object (`surveys_last`) from that last row
###
### 3. Use `nrow()` to extract the row that is in the middle of the
###    data frame. Store the content of this row in an object named
###    `surveys_middle`.
###
### 4. Combine `nrow()` with the `-` notation above to reproduce the behavior of
###    `head(surveys)`, keeping just the first through 6th rows of the surveys
###    dataset.



### Factors


## Factors have:
# - Predefined values  
# - These values have levels.  
# - The values some order to them, whether its meaningful or not








## ## Challenge:
## ##  There are a few mistakes in this hand-crafted `data.frame`,
## ##  can you spot and fix them? Don't hesitate to experiment!
## animal_data <- data.frame(
##       animal = c(dog, cat, sea cucumber, sea urchin),
##       feel = c("furry", "squishy", "spiny"),
##       weight = c(45, 8 1.1, 0.8)
##       )



## ## Challenge:
## ##   Can you predict the class for each of the columns in the following
## ##   example?
## ##   Check your guesses using `str(country_climate)`:
## ##   * Are they what you expected? Why? why not?
## ##   * What would you need to change to ensure that each column had the
## ##     accurate data type?
## country_climate <- data.frame(country = c("Canada", "Panama", "South Africa", "Australia"),
##                                climate = c("cold", "hot", "temperate", "hot/temperate"),
##                                temperature = c(10, 30, 18, "15"),
##                                northern_hemisphere = c(TRUE, TRUE, FALSE, "FALSE"),
##                                has_kangaroo = c(FALSE, FALSE, FALSE, 1))

## ### Installing the tidyverse
## # Before we move onto the next lesson I want to make sure everyone has already installed the tidyverse package
## # Run this script below if you havent already
## install.packages("tidyverse")
################################################
# Lesson 03 - Manipulating, analyzing and exporting data with tidyverse
################################################









### What are dplyr and tidyr














### Pipes











## ## Pipes Challenge:
## ##  Using pipes, subset the data to include animals collected
## ##  before 1995, and retain the columns `year`, `sex`, and `weight.`


### Mutate











## ## Mutate Challenge:
## ##  Create a new data frame from the `surveys` data that meets the following
## ##  criteria: contains only the `species_id` column and a new column called
## ##  `hindfoot_cm` containing the `hindfoot_length` values converted to centimeters.
## ##  In this `hindfoot_cm` column, there are no `NA`s and all values are less
## ##  than 3.
## 
## ##  Hint: think about how the commands should be ordered to produce this data frame!


### Split-apply-combine data analysis
















### Counting

















## ## Count Challenges:
## ##  1. How many animals were caught in each `plot_type` surveyed?
## 
## ##  2. Use `group_by()` and `summarize()` to find the mean, min, and max
## ## hindfoot length for each species (using `species_id`). Also add the number of
## ## observations (hint: see `?n`).
## 
## ##  3. What was the heaviest animal measured in each year? Return the
## ##  columns `year`, `genus`, `species_id`, and `weight`.


### Exporting data





## ### Create the dataset for exporting:
## ##  Start by removing observations for which the `species_id`, `weight`,
## ##  `hindfoot_length`, or `sex` data are missing:
## surveys_complete <- surveys %>%
##     filter(species_id != "",        # remove missing species_id
##            !is.na(weight),                 # remove missing weight
##            !is.na(hindfoot_length),        # remove missing hindfoot_length
##            sex != "")                      # remove missing sex
## 
## ##  Now remove rare species in two steps. First, make a list of species which
## ##  appear at least 50 times in our dataset:
## species_counts <- surveys_complete %>%
##     count(species_id) %>%
##     filter(n >= 50) %>%
##     select(species_id)
## 
## ##  Second, keep only those species:
## surveys_complete <- surveys_complete %>%
##     filter(species_id %in% species_counts$species_id)
knitr::opts_chunk$set(dpi = 200, out.height = 600, out.width = 600, R.options = list(max.print = 100))

library(ggplot2)

library(ratdat)
surveys_complete <- complete_old
# surveys_complete <- read.csv("data/portal_surveys_complete.csv")
################################################
# Lesson 04 - Data visualization with ggplot2
################################################











### Plotting with ggplot2









## ## Create a ggplot and draw it.
## surveys_plot <- ggplot(data = surveys_complete,
##                        aes(x = weight, y = hindfoot_length))
## 
## surveys_plot +
##   geom_point()













## ### Challenge with scatter plot:
## ##
## ##  Use what you just learned to create a scatter plot of `weight`
## ## over `species_id` with the plot types showing in different colors.
## ## Is this a good way to show this type of data?


### Boxplots











## ## Challenge with boxplots:
## ##  Start with the boxplot we created:
## ggplot(data = surveys_complete, mapping = aes(x = species_id, y = weight)) +
##   geom_jitter(alpha = 0.3, color = "tomato") +
##   geom_boxplot(outlier.shape = NA)
## ## By ordering the geom layers like this, we can make sure that the boxplot is
## ## layered over the jittered points.
## 
## ##  1. Replace the box plot with a violin plot; see `geom_violin()`.
## 
## ##  2. Represent weight on the log10 scale; see `scale_y_log10()`.
## 
## ##  3. Create boxplot for `hindfoot_length` overlaid on a jitter layer.
## 
## ##  4. Add color to the data points on your boxplot according to the
## ##  plot from which the sample was taken (`plot_id`).
## ##  *Hint:* Check the class for `plot_id`. Consider changing the class
## ##  of `plot_id` from integer to factor. Why does this change how R
## ##  makes the graph?
## 


### Plotting time series data










### The pipe operator with ggplot2






### Quick challenge together

















## ### Plotting time series challenge:
## ##
## ##  Use what you just learned to create a plot that depicts how the
## ##  average weight of each species changes through the years.
## 


### Customization











## ### Final plotting challenge:
## ##  With all of this information in hand, please take another five
## ##  minutes to either improve one of the plots generated in this
## ##  exercise or create a beautiful graph of your own. Use the RStudio
## ##  ggplot2 cheat sheet for inspiration:
## ##  https://posit.co/wp-content/uploads/2022/10/data-visualization-1.pdf


ggplot(data = yearly_counts, aes(x = year, y = n)) +
    geom_line() +
    facet_wrap(facets = vars(genus))+
  ylab("n")+
  theme(axis.text.x = element_text(size = 15, ang=90, color = "purple"), 
        axis.text.y = element_text(size = 2, color = "red"), 
        axis.title.y = element_text(size = 20), 
        plot.background = element_rect(fill="green"), 
        panel.background = element_rect(fill="red", color="black"), 
        panel.grid.major = element_line(colour = "red"), 
        panel.grid.minor = element_line(colour = "purple"), 
        title = element_text(size = 1), 
#        axis.line.x = element_line(colour = "black"), 
#        axis.line.y = element_line(colour = "black"), 
        strip.background = element_rect(fill = "orange", color = "black"), 
        strip.text = element_text(size = 15, color="red"),
        legend.background = element_rect(fill="black"),
        legend.text = element_text(color="gray"),
        legend.key=element_rect(fill="white"))
