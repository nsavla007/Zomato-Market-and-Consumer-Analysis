setwd("~/Desktop/csula/bi")
getwd()
a <- read.csv("zomato.csv")
attach(a)
top10ZomatoNumeric <- data.frame(Restaurant.ID,Restaurant.Name, Average.Cost.for.two)
top10ZomatoNumeric$Average.Cost.for.two <- a$Average.Cost.for.two
top10ZomatoNumeric$Restaurant.ID <- a$Restaurant.ID
top10ZomatoNumeric$Restaurant.Name <- a$Restaurant.Name
top10ZomatoNumericPie <- top10ZomatoNumeric[order(-top10ZomatoNumeric$Average.Cost.for.two) , ][1:10,]
print(top10ZomatoNumericPie)
top10Zomato <- data.frame(Restaurant.ID,Restaurant.Name, Average.Cost.for.two)
pie(top10ZomatoNumericPie[1:10] ,labels = top10Zomato$Restaurant.Name[1:10],main = "Top 10 Restaurants according to Average Cost",clockwise = TRUE,col = terrain.colors(10))
