df<-read.csv('/Users/barrettjones/Documents/Speed Dating AI/Speed Dating Data.csv')

head(df)

table(df$match)
summary(df)

napct<-function(x){
  m<-mean(is.na(x))
  return(m)
  }

na<-sapply(df, napct)

sort(na)

x<-data.frame(sort(na))
ggplot()+
  geom_bar(aes(x=rownames(x),y=x$sort.na.), stat = 'identity')

tna<-mean(is.na(df))


#### plot amount of missing data
plot(sort(na), type = 'h',
     ylab = 'Proportion of NA values',
     xlab = 'Feature Index',
     main = paste('Overall Proportion of NA values:',round(tna,2))
     )

#axis(1,at = 1:length(sort(na)), labels = names(sort(na)))

head(-1*sort(-na), 10)

### Principle Comp Analysis
#install.packages('nsprcomp')
library(nsprcomp)

head(df)
nsprcomp(df)

attributes()
