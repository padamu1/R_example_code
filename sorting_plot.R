### sort of value and plotting

### dataset make
help("colnames")
dataset <- matrix(0,1,4)
colnames(dataset)<-c('spec1','spec2','spec3','spec4')

### sort by dataset
y <- 2
datetemp <- dateset[1,1]
for(x in 1:numRow){
  if(x >= as.numeric(dateset[y,2])){
    datetemp <- dateset[y,1]
    y <- y+1
  }
  if(datatemp[x,3]!=""){
    temp<-c(datetemp,as.character(datatemp[x,5]),as.character(datatemp[x,6]),as.character(datatemp[x,3]))
    dataset <- rbind(dataset,temp)
  }
  if (x == as.numeric(dateset[7,2])-3)
    break
  x <- x+1
}
dataset


### plotting

library(ggplot2)
require(graphics)
help(par)

##[reform data]
dataset_frame <- as.data.frame(dataset[-1,])
dataset_frame$spec1 <- as.Date(as.character(dataset_frame$spec1))
dataset_frame$spec2 <- as.numeric(as.character(dataset_frame$spec2))
dataset_frame$spec3 <- as.numeric(as.character(dataset_frame$spec3))

##[plotting value sort by code "colour ="]
ggplot(data=dataset_frame, aes(x=spec1,y=spec2,colour=spec3) )+
  geom_line()+
  coord_cartesian(xlim=c(min(dataset_frame$spec1)-4,max(dataset_frame$spec1)+4),ylim=c(min(dataset_frame$spec2)-3,max(dataset_frame$spec2)+3))

