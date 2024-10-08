################################################
# Lesson 00 - Before we start
################################################
1+1 # i can type anything I want
# 1 +1 
1+1+1+1

1+1

mean(1+1)

       




# 1. Start RStudio (you should see a view similar to the screenshot above).
# 2. In the top right, you will see a blue 3D cube and the words "Project: (None)". Click on this icon.
# 3. Click **New Project** from the dropdown menu.
# 4. Click **New Directory**, then **New Project**.
# 5. Type out a name for the project, we recommend `R-Ecology-Workshop`.
# 6. Put it in a convenient location using the "Create project as a subdirectory of:" section. We recommend your `Desktop`. You can always move the project somewhere else later, because it will be self-contained.
# 7. Click **Create Project** and your new project will open.




################################################
# Lesson 01 - Introduction to R
################################################
3+5
12/7

weight_kg <- 55

weight_kg <- 77
weight_kg <- 99


# ctrl + enter
# alt + `-`

x <- 1
current_temperatures <- 55

currentTemperatures

Temperature5th <- 77

if

mean <- mean(1+1)

mean

weight_kg <- 77+10

weight_kg
print(weight_kg)

weight_kg <- 55

weight_kg * 2.2

weight_kg <- 57.5

weight_lb <- weight_kg * 2.2

weight_kg <- 100

weight_lb <- weight_kg *2.2
  
### Creating objects in R









### Challenge
##
## What are the values after each statement in the following?
##
# mass <- 47.5            # mass?
# age  <- 122             # age?
# mass <- mass * 2.0      # mass?
# age  <- age - 20        # age?
# mass_index <- mass/age  # mass_index?

mass <- 47.5
age <- 122
mass <- mass * 2.0

age <- age - 20
age

mass_index <- mass/age


### Functions and their arguments
# - Functions are canned scripts that run all at once
# - A function has arguments as inputs
# - A function often returns a value
# - Functions can be imported via *packages*

mean()

weight_kg <- sqrt(10)

weight_kg

weight_kg <-  sqrt(10)





################################################
# How to make a Peanut Butter and Jelly Sandwich
################################################
# Ingredients - Arguments
# - 2 slices of sandwich bread
# - Jelly
# - Peanut butter

# Instructions - the work
# - Lay out two slices of bread
# - Spread 2tbsp of peanut butter on one slice of bread
# - Spread 2tbsp of grape jelly on the other slice of bread
# - Place the two pieces of bread together
# - Cut diagonal with a knife
# - Serve!

sd

sqrt(var(x))

round
?round

make_pbj(bread='white bread', jelly='grape', peanut_butter='crunchy')


round(3.14159)

round(x=3.14159,digits=2)
round(3.14159,3)





### Vectors and data types

weight_g <- c(50, 60, 65, 82)
weight_g

name <- 'matt'

c(1,2,3,4)

weight_g <- c(50,60,65,82)
weight_g

animals <- c("mouse","rat","dog")
#### Characters, string, and quotation marks 
'matt'
"matt"

# 4 main data types in R
# - numeric  :
# - character :  
# - logical for TRUE and FALSE (the boolean data type) :  
# - integer 

# integer = numeric, numeric = integer
mean('site1')
mean('1')
mean(animals)

length(animals)
animals

length(weight_g)
weight_g
str(weight_g)
#### Objects


weight_g
weight_g <- c(weight_g,90)
weight_g

weight_g <- c(100,weight_g)
weight_g

typeof(weight_g)

## ## ### Challenge
## ## We've seen that vectors can be of type character, numeric, integer, and
## ## logical. But what happens if we try to mix these types in a single
## ## vector?
## 
## ## What will happen in each of these examples? (hint: use `class()` to
## ## check the data type of your object)
## num_char <- c(1, 2, 3, "a")
## 
num_char <- c(1,2,3,'a')


## num_logical <- c(1, 2, 3, TRUE)
## 
num_logical <- c(1,2,3,"FALSE")
num_logical
## char_logical <- c("a", "b", "c", TRUE)
## 
char_logical <- c('a','b','c',TRUE)
char_logical
## tricky <- c(1, 2, 3, "4")
tricky <- c(1,2,3,"4")
tricky

matt <- 4
c(1,2,3,matt)
class(matt)
matt <- 'is me'
class(matt)

c(1,2,3,'matt')
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
animals <- c('mouse','rat','dog','cat')
animals

animals[1]

animals[c(2,3)]

animals[c(3,3,3,3,3,3,3,3,3,3,3,3)]

site <- c('site1','site2')

weight_g
site[c(1,1,1,2,2,2)]

weight_g[c(TRUE,FALSE)]
weight_g

weight_g 

weight_g <- c(21,34,39,54,55)

weight_g[weight_g >50]

# weight is greater than 30 and weight is less than 50
weight_g>30
weight_g<50

# & = and
## | = or

weight_g>30 & weight_g<50
weight_g[weight_g>30 & weight_g<50]

# find weight less than or equal to 30 OR weight equals to 55

weight_g <= 30
weight_g

weight_g = 55

animals <- c('mouse','rat','dog','cat','cat')

# select cats
animals=='cat'
animals[animals=='rat']

# select cat and rat

animals=='rat'
animals=='cat'
animals=='rat' & animals=='cat'
animals[animals=='rat' | animals=='cat']

animals %in% c('cat','rat')
animals[animals %in% c('cat','rat')]
# searching inside the object
animals
# for the values found IN the vector
c('rat','cat')

animals
c('cat','rat') %in% animals
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



NA



### Loading the survey data



library(ratdat)
complete_old

### Reading the data into R
# Comma separated values
surveys <- read.csv("data/portal_data_joined_backup.csv")
library(readxl)
read_xlsx('myFile.xlsx')




str(surveys)

### Read CSV
head(surveys)




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

nrow(surveys)
ncol(surveys)

summary(surveys)

## Challenge
## Based on the output of `str(surveys)`, can you answer the following questions?
##
## * What is the class of the object `surveys`?
## * How many rows and how many columns are in this object?



## Indexing and subsetting data frames
weight_g
# myObject[row#, col#]
weight_g[1,1]

surveys[1,1]
surveys[1,6]

surveys[1, ]

surveys[,1]

# [row#, col#]

# What if we want to select the first 3 rows and the fifth and the sixth column

surveys[c(1,2,3) , c(5,6)]

c(1,2,3,4,5,6,7,8,9,10)

# firstNumber:lastNumber
1:10

surveys[1:3, 5:6]

surveys1 <- surveys[1:1000, -1]

surveys[,6]

surveys[,"species_id"]

surveys$species_id
### Challenges:
###
### 1. Create a `data.frame` called (`surveys_200`) containing only the
###    data in row 200 of the `surveys` dataset.
# [nrow,ncol]
surveys_200 <-  surveys[200,]


###
### 2. Notice how `nrow()` gave you the number of rows in a `data.frame`?
nrow(surveys)
###
###      * Use that number to pull out just that last row in the data frame
surveys[34786,]
surveys[nrow(surveys),]

tail(surveys)
###      * Compare that with what you see as the last row using `tail()` to make
###        sure it's meeting expectations.
###      * Pull out that last row using `nrow()` instead of the row number
###      * Create a new data frame object (`surveys_last`) from that last row
###
surveys_last <- surveys[nrow(surveys),]
surveys[34786,]
surveys[nrow(surveys),]
### 3. Use `nrow()` to extract the row that is in the middle of the
###    data frame. Store the content of this row in an object named
###    `surveys_middle`. row 17000 -ish
###
surveys/2
surveys[(34786/2),]
surveys[34785/2,]


### 4. Combine `nrow()` with the `-` notation above to reproduce the behavior of
###    `head(surveys)`, keeping just the first through 6th rows of the surveys
###    dataset.
head(surveys)
# cut out the first 6 rows of data using the `-` sign
surveys[1:6,]
surveys[-(7:nrow(surveys)),]

# 2:25pm

### Converting data types
surveys$plot_id
surveys$plot_id_character <-  as.character(surveys$plot_id)
surveys$plot_id_character

# find record then change record to new value
# step 1
# find record_id=72 and select column named sex
surveys[surveys$record_id==72,'sex']
surveys$sex[surveys$record_id==72] <- 'F'
# step 2 change value
### Factors
# numeric, characters, logical, integers, factor

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
# install.packages("tidyverse")
# DPLYR
# warblR
library('dplyr')
library(tidyverse)

surveys
# select columns named plot_id, species_id, and weight
surveys[,c('plot_id','specie_id',etcetcetc)]

select(surveys, plot_id,species_id,weight )

# remove column named species_id
select(surveys, -species_id )

# choose the rows where year == 1995
surveys[surveys$year==1995,]

surveys_1995 <- filter(surveys, year==1995)

### What is dplyr














### Pipes

# choose the rows where weight <5 and select the columns: 
# species id, sex, weight

surveys2 <- filter(surveys, weight<5)
surveys3 <- select(surveys2, species_id, sex, weight )

# %>% # pipe
  
# takes 1 thing -> next thing -> next thing

surveys_sml <- surveys %>% filter(weight<5) %>% select(species_id,sex,weight)

# %>%
# ctrl + shift + m

# %>%  %>% %>% %>% %>% %>% 

# data object, file name
write.csv(surveys_sml,'data/output.csv')
# take the surveys data set
# THEN
# filter where weight is less than 5
# THEN
# select the columns species_id, sex, weight

#



## ## Pipes Challenge:
## ##  Using pipes, subset the data to include animals collected
## ##  before 1995, and retain the columns `year`, `sex`, and `weight.`


### Mutate
# convert weight (in grams) to weight in kilograms
mutate(surveys, weight_kg = weight/1000)

# 
surveys2 <- surveys %>% 
  mutate(weight_kg=weight/1000,
         weight_lb=weight_kg *2.2)


# NAs
mean(surveys$weight, na.rm=TRUE)

surveys$weight[!is.na(surveys$weight)]

# using dplyr take out rows with weight == NA

surveys_clean <- surveys %>% 
  filter(!is.na(weight),
         sex!=''
         )

# group_by

# summarise() o summarize()
surveys$sex[3]
# calculate mean weight by sex

surveys_clean %>% 
  group_by(sex) %>% 
  summarise(mean_weight=mean(weight),
            standard_deviation=sd(weight),
            max_weight=max(weight)
            )


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





# We are interested in plotting **how species abundances have changed
# through time**, so we are also going to remove observations for rare species (i.e.,
# that have been observed less than 50 times). We will do this in two steps: first
# we are going to create a data set that counts how often each species has been
# observed, and filter out the rare species; then, we will extract only the
# observations for these more common species:


## Extract the most common species_id
species_counts <- surveys_complete %>%
    count(species_id) %>%
    filter(n >= 50)

## Only keep the most common species
surveys_complete <- surveys_complete %>%
  filter(species_id %in% species_counts$species_id)

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

## write.csv(surveys_complete, file = "data/portal_surveys_complete.csv")


################################################
# Lesson 04 - Data visualization with ggplot2
################################################








library(ggplot2)
library(ratdat)

surveys_complete <- complete_old
# surveys_complete <- read.csv("data/portal_surveys_complete.csv")

### Plotting with ggplot2

# For every plot we use the following structure: 
# ggplot(data = <DATA>, mapping = aes(<MAPPINGS>)) + <GEOM_FUNCTION>()

# first plot + add a line + change the legend + add a title
# layer1 + layer2
# plot x = weight and y = hindfoot_length
# geom_{plotType}
ggplot(data=surveys_complete, 
       mapping=aes(x=weight, y=hindfoot_length,color=plot_type)) +
      geom_point(alpha=0.2)
  

# color by plot_type
ggplot(data=surveys_complete) +
  geom_point(mapping=aes(x=weight, y=hindfoot_length,
                         color=plot_type), alpha=0.2) +
  scale_color_viridis_d() +
  scale_x_log10()
#
# plot plot_type on the x and hindfoot_length on the y
myplot <- ggplot(data=surveys_complete)+
  geom_boxplot(mapping=aes(x=plot_type,y=hindfoot_length,fill=plot_type))+
  scale_x_discrete(labels=label_wrap_gen(width=10))+
  geom_point(aes(x=plot_type,y=hindfoot_length,fill=plot_type),alpha=0.2)

###################################

myplot <- ggplot(data=surveys_complete,
       mapping=aes(x=plot_type,y=hindfoot_length))+
  geom_jitter(aes(color=plot_type),alpha=0.2)+
  geom_boxplot(fill=NA)+
  scale_x_discrete(labels=label_wrap_gen(width=10)) +
  theme_bw() + 
  labs(
    title='Rodent size by plot type',
    x = 'Plot Type',
    y = 'Hindfoot length (mm)'
  )
  
ggsave(filename='rodent_size.png', plot=myplot,
       height=6,width=8)



### Adding another variable



## ### Challenge 1: Modifying plots:
## ##
## ## 1. Try modifying the plot so that the `shape` of the point varies by `sex`.
## ## You will set the `shape` the same way you set the `color`.
## 
## ## Do you think this is a good way to represent `sex` with these data?
## 
## ## ##
## ## 2. Now try changing the plot so that the `color` of the points vary by `year`.
## ## Do you notice a difference in the color scale compared to changing color
## ## by plot type? Why do you think this happened?









## Boxplot













## Adding geoms 
















## ### Challenge 2: Modifying plots:
## ##
## ## 1. Violin plots are similar to boxplots- try making one using `plot_type`
## ## and `hindfoot_length` as the x and y variables. Remember that all geom
## ## functions start with `geom_`, followed by the type of geom.
## 
## ## It is often useful to search for `R package_name stuff you want to search`.
## ## So for this example we might search for `R ggplot2 violin plot`.
## 
## ## ##
## ## 2. Make the color of the points and outlines of the violins vary by
## ## `plot_type`, and set the fill of the violins to white. Try playing with
## ## the order of the layers to see what looks best.





## Changing themes













## Changing labels




## ### Challenge 3: Customizing a plot:
## ##
## ## 1. Modify the previous plot by adding a descriptive subtitle.
## ## Increase the font size of the plot title and make it bold.
## 
## ## **Hint**: "bold" is referred to as a font "face"
## 



## Faceting




## Exporting plots







## ### Challenge 4: Make your own plot:
## ##
## ## Try making your own plot! You can run `str(surveys_complete)` or
## ## `?surveys_complete` to explore variables you might use in your new plot.
## ## Feel free to use variables we have already seen, or some we haven't explored yet.
## 
## ## ##
## ## Here are a couple ideas to get you started:
## ##
## ##  - make a histogram of one of the numeric variables
## ##  - try using a different color `scale_`
## ##  - try changing the size of points or thickness of lines in a `geom`
## 
