gapminder<-read.csv("C:/Users/Kaushik K Kumar/Documents/ak/CPT@HU/ANLY506/Final project/GapMinder.csv")
#Reading the gapminder csv file from its source directory 
Country<-gapminder$Country
Year<-gapminder$Year
Population<-gapminder$population
Life<-gapminder$life
Income<-gapminder$income
Region<-gapminder$region
#Creating variable names for each of the columns in the gapminder table
filter(gapminder,gapminder$Country=="Afghanistan")
#filter to only display rows that correspond to Afghanistan
filter(gapminder,gapminder$region=="South Asia")
#Filter to only display rows for the 'South Asia' region
filter(gapminder,gapminder$income>=1000 & gapminder$income<2000)
#Using more than 1 filter condition - filtering down to rows that are in the 1500-2000 income range
arrange(gapminder,gapminder$Year,gapminder$Country,gapminder$region)
#Organizes the results by Year starting from 1800
arrange(gapminder,desc(gapminder$income))
#Displaying data in the descending order of income shows that people with highest income usually belong to the Middle East & North Africa
mutate(gapminder,
       incomepercapita=mean(Population)/mean(Income))
min_rank(desc(Income))
#Assigning ranks to Income - the highest income has the lowest rank
summarise(gapminder, income = mean(Income, na.rm = TRUE))
ggplot(data = gapminder, mapping = aes(x = Country, y = Income)) +
  geom_point(aes(size = region), alpha = 1/3) +
  geom_smooth(se = FALSE)
