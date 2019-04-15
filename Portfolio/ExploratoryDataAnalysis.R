ggplot(data = gapminder) +
  geom_bar(mapping = aes(x = Region))
#Exploring how the data is distributed
ggplot(data = gapminder) +
  geom_histogram(mapping = aes(x = Life), binwidth = 0.5)
#Histogram to examine the the distribution of the variable 'Life' within the gapminder dataframe
focusdata<-gapminder %>%
  filter(Life<40)
ggplot(data = focusdata, mapping = aes(x = Life)) +
  geom_histogram(binwidth = 0.5)
#Examining the distribution more closely with a filter on values<40
ggplot(data = focusdata, mapping = aes(x = Life, colour = Region)) +
  geom_freqpoly(binwidth = 0.5)
#Comparing the distribution across different 'Regions' by adding geom_freqpoly and color aesthetic to differentiate
ggplot(data = focusdata, mapping = aes(x = Life)) +
  geom_histogram(binwidth = 0.5)
ggplot(gapminder) + 
  geom_histogram(mapping = aes(x = Life), binwidth = 0.5) +
  coord_cartesian(ylim = c(0, 50))
#Examining peaks and unusual patterns with geom_histogram
ggplot(data = gapminder, mapping = aes(x = Life, y = Income)) + 
  geom_point()
ggplot(data = gapminder, mapping = aes(x = Life)) + 
  geom_freqpoly(mapping = aes(colour = Region), binwidth = 500)
#Exploring 'Life' split/categorized by 'Region'