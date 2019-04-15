gapminder<-data.frame("Country"=gapminder$Country,"Year"=gapminder$Year,"Population"=gapminder$population,"Life"=gapminder$life,"Income"=gapminder$life,"Region"=gapminder$region)
#Creating a gapminder dataframe with all the necessary attributes
str(gapminder)
#Shows how the data is structured within the dataframe
gapminder
head(gapminder)
#Displays the first 6 rows of the data
tail(gapminder)
#Displays the last few rows of the data
summary(gapminder)
#Provides summary statistics of the gapminder dataframe
gapminder[1:5,2]
gapminder[1:3, c(1,3)]
#Slicing the dataframe
subset(x = gapminder,
       subset= Country == "Afghanistan" &
         Year >= 1804 & Year<=1820)
#creating a subset of the dataframe with conditions
subset(x=gapminder, 
       subset= Country=="Albania" & Region=="Europe & Central Asia")
#How many in Europe & Central Asia were from Albania?
