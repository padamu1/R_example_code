## input data
setwd("C:/Users/padam/Desktop/lab")
durup <- read.csv("µÎ¸¨.csv",header=TRUE,
                  stringsAsFactors = TRUE)
durupstart<-durup[-1,]
x <- 1
while(x >= row(durupstart)){
  durupstart[1,x]
  x <- 1+x
}