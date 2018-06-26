data <- read.csv(file.choose())
data1960 <- data[data$Year == 1960,]
data2013 <- data[data$Year == 2013,]
head(data1960)
head(data2013)

givenVectors1960 <- data.frame(Code=Country_Code,
                           Life.Expectancy=Life_Expectancy_At_Birth_1960)
givenVectors2013 <- data.frame(Code=Country_Code,
                               Life.Expectancy=Life_Expectancy_At_Birth_2013)

merged1960 <- merge(data1960, givenVectors1960, by.x="Country.Code", by.y="Code")
merged2013 <- merge(data2013, givenVectors2013, by.x="Country.Code", by.y="Code")
head(merged1960)
head(merged2013)

# Scatterplot for 1960
qplot(main="Life Expectancy vs Fertility Rate for 1960", data=merged1960,
      x=Fertility.Rate, y=Life.Expectancy, color=Region, size=I(2), alpha=I(0.6))

# Scatterplot for 2013
qplot(main="Life Expectancy vs Fertility Rate for 2013", data=merged2013,
      x=Fertility.Rate, y=Life.Expectancy, color=Region, size=I(2), alpha=I(0.6))

#Insights
#1960 has a negative concavity, while 2013 has an upward concavity
#1960 has a more even spread, while 2013 is mostly concentrated at the top left
#1960's life expectancy was more up in the air for high fertility rates
#2013's life expectancy seems to correlate more heavily with lower fertility rate
#Pretty much everyone across the board with lower fertility rate, had higher life expectancy








