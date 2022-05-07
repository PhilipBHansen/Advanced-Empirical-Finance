install.packages("tidyquant")
library(tidyverse)
library(tidyquant)


Dataprice <- tq_get("TSLA", get = "stock.prices")
TSLA <- Dataprice
TSLA %>% ggplot(aes(x=date, y = adjusted))+geom_line()+labs(x=NULL, y=NULL, title = "TSLA stock")+theme_bw() 

returns <- TSLA %>% mutate(return = adjusted/lag(adjusted)-1) %>% drop_na() %>% select(date,return)

head(returns)

returns %>% hist(returns)

install.packages("kableExtra")

?kable_styling


ticker <- tq_index("S&P500") # constituents of the Dow Jones index
index_prices <- tq_get(ticker,
                       get = "stock.prices",
                       from = "2000-01-01"
) %>%
  filter(symbol != "S&P500") # Exclude the index itself


x <- "Hej"
if(x == "hej" | "Hej"){
  print("Non-negative number")
} else{
  print("Negative number")
}

install.packages("tinytex")

?last