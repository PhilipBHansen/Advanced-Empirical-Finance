
NA_permnos<- crsp_monthly %>% filter(month>="1962-01-01") %>% filter(month<="2020-12-01") %>% filter(is.na(ret_excess)) %>% select(permno) %>% unique()

NA_permnos


mydata  = tibble(important_a = c("Value2", NA, "Value1", NA, NA),
                       important_b = c(NA, NA, "Value", "Value", NA),
                       whatever_c  = c(NA, "Value", NA, NA, NA))
mydata

tmp<-mydata %>% filter(important_a %in% c("Value1","Value2"))

tmp

crsp_monthly %>% filter(month=="1962-01-01") %>% select(permno)
crsp_monthly %>% filter(month=="2019-12-01") %>% select(permno)

intersect(crsp_monthly %>% filter(month=="1962-01-01") %>% select(permno),crsp_monthly %>% filter(month=="2019-12-01") %>% select(permno)) %>% class

crsp_monthly_reduced<-crsp_monthly %>% filter(month>="1962-01-01") %>% filter(month<="2020-12-01") %>% filter(permno %in% c("10006","10014"))

crsp_monthly_reduced

crsp_monthly_reduced %>% select(permno) %>% unique() %>% nrow

nrow(intersect(crsp_monthly %>% filter(month=="2007-01-01") %>% select(permno),crsp_monthly %>% filter(month=="2016-12-01") %>% select(permno)))


