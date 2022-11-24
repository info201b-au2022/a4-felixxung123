library(tidyverse)

# The functions might be useful for A4
source("../source/a4-helpers.R")

## Test queries ----
#----------------------------------------------------------------------------#
# Simple queries for basic testing
#----------------------------------------------------------------------------#
# Return a simple string
test_query1 <- function() {
  return ("Hello world")
}

# Return a vector of numbers
test_query2 <- function(num=6) {
  v <- seq(1:num)
  return(v)
}

## Section 2  ---- 

# How many incarcerations are in Washington each year?

washington_incarcerations <- incarceration_data %>%
  group_by(year, state) %>%
  filter(state == "WA") %>%
  summarize(sum(total_prison_pop), na.rm = TRUE)
View(washington_incarcerations)

# How many black incarcerations are in Washington each year?

black_incarcerations <- incarceration_data %>%
  group_by(year, state) %>%
  filter(state == "WA") %>%
  summarize(sum(black_jail_pop), na.rm = TRUE)
View(black_incarcerations)

# How many white incarcerations are in Washington each year?

white_incarcerations <- incarceration_data %>%
  group_by(year, state) %>%
  filter(state == "WA") %>%
  summarize(sum(white_jail_pop), na.rm = TRUE)
View(white_incarcerations)




## Section 3  ---- 
#----------------------------------------------------------------------------#
# Growth of the U.S. Prison Population
# Your functions might go here ... <todo:  update comment>
#----------------------------------------------------------------------------#
# This function ... <todo:  update comment>
get_year_jail_pop <- function() {
  # TODO: Implement this function 
  return()   
}

# This function ... <todo:  update comment>
plot_jail_pop_for_us <- function()  {
  # TODO: Implement this function 
  return()   
} 



incarceration_data <- read.csv ("https://raw.githubusercontent.com/vera-institute/incarceration-trends/master/incarceration_trends.csv")
incarceration_data

library(dplyr)
library(ggplot2)
library(leaflet)
library(plotly)
library(maps)

View(incarceration_data)

year <- incarceration_data$year
total_prison_pop <- incarceration_data$total_prison_pop

new_dataframe1 <- tibble(year, total_prison_pop) %>%
  na.omit()

View(new_dataframe1)


  new_dataframe1 %>% ggplot(aes(x = year, y = total_prison_pop)) + 
  geom_bar(stat = "identity", fill = "black" ) +
  labs(title = "Growth of the U.S Prison Population",
       x = "Years",
       y = "U.S Prison Population",)

# This graph shows the growth of the U.S prison population. You can see in the graph 
# that the overall pattern of the data is moving up. There are some subtle dips but 
# you can see that the prison population in the U.S is growing. 





## Section 4  ---- 
#----------------------------------------------------------------------------#
# Growth of Prison Population by State 
# Your functions might go here ... <todo:  update comment>
# See Canvas
#----------------------------------------------------------------------------#


  
  
  
  
    
  
  
  
  
  
  
  
## Section 5  ---- 
#----------------------------------------------------------------------------#
# <variable comparison that reveals potential patterns of inequality>
# Your functions might go here ... <todo:  update comment>
# See Canvas
#----------------------------------------------------------------------------#

  
  
  
  
  
  
  
  
## Section 6  ---- 
#----------------------------------------------------------------------------#
# <a map shows potential patterns of inequality that vary geographically>
# Your functions might go here ... <todo:  update comment>
# See Canvas
#----------------------------------------------------------------------------#

  
  
  
  
  
  
  
  
## Load data frame ---- 


