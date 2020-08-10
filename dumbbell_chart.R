nrow(nameset)
dataset_frame
subset_1 <- subset(dataset_frame,spec==nameset[1])
subset_1 <- as.matrix(subset_1$info)
subset_2 <- subset(dataset_frame,spec==nameset[2])
subset_2 <- as.matrix(subset_2$info)
subset_3 <- subset(dataset_frame,spec==nameset[3])
subset_3 <- as.matrix(subset_3$info)
subdata <- cbind(subset_1,subset_2)
subdata <- cbind(subdata,subset_3)
subdata
colnames(subdata)<-nameset
subdata<-as.data.frame(subdata)
ggplot(subdata)+
  geom_point(aes(x="value1",y=max(value1)))+
  geom_point(aes(x="value1",y=min(value1)))+
  geom_point(aes(x="value2",y=max(value2)))+
  geom_point(aes(x="value2",y=min(value2)))+
  geom_point(aes(x="vlaue3",y=max(vlaue3)))+
  geom_point(aes(x="vlaue3",y=min(vlaue3)))+
  geom_segment(aes(x="value1",xend="value1",y=max(value1),yend=min(value1)),lineend="butt")+
  geom_segment(aes(x="value2",xend="value2",y=max(value2),yend=min(value2)),lineend="butt")+
  geom_segment(aes(x="vlaue3",xend="vlaue3",y=max(vlaue3),yend=min(vlaue3)),lineend="butt")+
  xlab("spec")+ylab("value")+
  coord_cartesian(ylim=c(30,55))


library("squash")
############## dumb bell chart function + auto color ##################################
dumbell_function <- function(subdata,subdataframe,nameset,title_labeling,y_labeling){
  minval=0   #lowest value to get a colour
  maxval=2.0 #highest value to get a colour
  n.cols=ncol(subdata)+1 #how many colours do you want in your palette?
  col.int=1/n.cols
  
  #create your palette
  colramp=makecmap(x=seq(minval,maxval,col.int),
                   n=n.cols,
                   breaks=prettyLog,
                   symm=F,
                   base=ncol(subdata),#to give ramp a log(base) stretch
                   colFn=jet,
                   col.na="red",
                   right=F,
                   include.lowest=T)
  a <- ggplot(subdata)
  for(x in 1:ncol(subdata)){
    a<-a+
      geom_point(aes_string(x=x,y=subdata[1,x]),color=colramp$colors[x])+
      geom_point(aes_string(x=x,y=subdata[2,x]),color=colramp$colors[x])+
      geom_segment(aes_string(x=x,xend=x,y=subdata[1,x],yend=subdata[2,x]),lineend="butt",color=colramp$colors[x])
  }
  a+
    xlab("spec\n")+ylab(y_labeling)+
    scale_x_continuous(breaks=c(1:ncol(subdata)),labels = nameset)
}