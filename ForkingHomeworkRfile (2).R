library(tidyverse)
library(dplyr)
library(data.table)

diamonds

diamonds%>%
  select(carat,cut,price)%>%
  filter(cut == "Premium")%>%
  filter(price > 7000 & price < 10000)%>%
  arrange(desc(carat))%>%
  slice(1:20)



diamonds
d<-data.table(diamonds)
head(d)
d[, .(carat, cut, price)]->d2
d2[cut == "Premium" & price >7000 & price<10000, .(carat,cut,price)]->d3
d3[order(-carat)][1:20]
