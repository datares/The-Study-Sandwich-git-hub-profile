## reading in data
unicef_df <- read.csv("unicef_csv.csv")
covid_19_risk <- unique(unicef_df$INFORM.COVID.19.Risk.Class)
hiv_priority <- unique(unicef_df$HIV.Priority)
child_poverty <- unique(unicef_df$Child.Poverty.Priority)
malaria_poverty <- unique(unicef_df$Malaria.Priority)

#from the above analysis, unicef has classified HIV, child, and Malaria poverty as "yes" or "no"

#Below is a line graph showing relative percentages of each COVID 19 Inform class - and how many surveys were determined to be a priority for HIV, Malaria, and Child poverty
library(ggplot2)
ggplot(data=unicef_df, aes(`INFORM.COVID.19.Risk.Class`, fill = `HIV.Priority`)) +
  geom_bar() + xlab("COVID 19 Risk Class") + ylab("Count") + ggtitle("HIV Priority by COVID 19 Risk Class")

ggplot(data=unicef_df, aes(`INFORM.COVID.19.Risk.Class`, fill = `Malaria.Priority`)) +
  geom_bar() + xlab("COVID 19 Risk Class") + ylab("Count") + ggtitle("Malaria Priority by COVID 19 Risk Class")

ggplot(data=unicef_df, aes(`INFORM.COVID.19.Risk.Class`, fill = `Child.Poverty.Priority`)) +
  geom_bar() + xlab("COVID 19 Risk Class") + ylab("Count") + ggtitle("Malaria Priority by COVID 19 Risk Class")





