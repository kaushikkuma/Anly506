library(tidyverse)
# Attaching packages
gapminder<-read.csv("C:/Users/Kaushik K Kumar/Documents/ak/CPT@HU/ANLY506/Final project/GapMinder.csv")
#data from gapminder table
str(gapminder)
#Structure of the table with all the variables and their data type
ggplot(data = gapminder) + 
  geom_point(mapping = aes(x = gapminder$Country, y = gapminder$income))
#Creating a ggplot to view how income varies by country
ggplot(data = gapminder) + 
  geom_point(mapping = aes(x = gapminder$Country, y = gapminder$income, color=gapminder$region))
#Adding the color aesthetic to the plot such that the incomes for every country is further categorized by different regions
ggplot(data = gapminder) + 
  geom_point(mapping = aes(x = gapminder$Country, y = gapminder$income, color=gapminder$region, size=gapminder$Country))
#Interpreting data with another aesthetic - "size"
ggplot(data = gapminder) + 
  geom_point(mapping = aes(x = gapminder$Country, y = gapminder$income, shape=gapminder$region))
#Using the shape aesthetic to differentiate between the regions
ggplot(data = gapminder) + 
  geom_point(mapping = aes(x = gapminder$Country, y = gapminder$income)) + 
  facet_wrap(~ gapminder$region, nrow = 2)
#Breaking the data into subplots through facets
