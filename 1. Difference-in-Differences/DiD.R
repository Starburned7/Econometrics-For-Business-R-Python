# pull the data
dataset <- read.csv("njmin3.csv")
summary(dataset)

# dealing with missing data
dataset$fte <- ifelse(is.na(dataset$fte),
                      ave(dataset$fte, FUN = function(x) mean(x, na.rm = TRUE)),
                      dataset$fte)

dataset$demp <- ifelse(is.na(dataset$demp),
                      ave(dataset$demp, FUN = function(x) mean(x, na.rm = TRUE)),
                      dataset$demp)


summary(dataset)
