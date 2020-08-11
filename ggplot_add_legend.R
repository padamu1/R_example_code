## ggplot add legned

ggplot(subdataframe, aes(x=spec) )+
  geom_point(aes(y=value1,colour="red"))+
  geom_line(aes(y=value1,colour="red"))+
  geom_point(aes(y=value2,colour="blue"))+
  geom_line(aes(y=value2,colour="blue"))+
  geom_point(aes(y=value3,colour="black"))+
  geom_line(aes(y=value3,colour="black"))+
  geom_point(aes(y=value4,colour="green"))+
  geom_line(aes(y=value4,colour="green"))+
  scale_color_discrete(name="value option",labels = c("value1","value2","value3","value4"))+
  ggtitle("value spec")+
  theme(plot.title=element_text(face="bold",hjust=0.5,size=15,color = "darkblue"),legend.position = "right")