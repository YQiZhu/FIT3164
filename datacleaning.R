install.packages("readxl")
library("readxl")
data <- read.xlsx('Police Station Data.xlsx', 1 )

data <- subset(data, select = -c(11) )

data$Suburb_Cap = data$Suburb

data$Suburb_Cap <- toupper(data$Suburb_Cap)

write.csv(data,"/Users/angelinejo/Downloads/police.csv", row.names = FALSE)

melbdata <- read.csv('melb_data.csv')
melbdata = melbdata[!duplicated(melbdata$Suburb),]

melbdata$Suburb_Cap = melbdata$Suburb
melbdata$Suburb_Cap <- toupper(melbdata$Suburb_Cap)

write.csv(melbdata,"/Users/angelinejo/Downloads/melbsuburbs.csv", row.names = FALSE)
