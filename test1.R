df  = read.csv('IPL.csv',header= TRUE )
names(df)
class(df)

dim(df)
summary(df)
library(dplyr)
######runs#####
runs  = df %>%
  group_by(batsman,id)%>%
  summarize("score" = sum(batsman_runs))
runs
unique(runs$batsman)
dim(runs)
runs$round = substr(runs$id, start = 1, stop = 3)

str(runs$round)
unique(runs$round)
####wickets#####
wickets  = df %>%
  group_by(bowler, id)%>%
  summarize(wicket = sum(is_wicket))
wickets
unique(wickets$bowler)

