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
