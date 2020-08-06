### function to make plot use loop -to dumb bell chart
dumbell_function <- function(subdata,subdataframe,nameset,title_labeling,y_labeling){
  a <- ggplot(subdata)
  for(x in 1:ncol(subdata)){
    a<-a+
      geom_point(aes_string(x=x,y=subdata[1,x]))+
      geom_point(aes_string(x=x,y=subdata[2,x]))+
      geom_segment(aes_string(x=x,xend=x,y=subdata[1,x],yend=subdata[2,x]),lineend="butt")
  }
  a+
    ylab(y_labeling)+
    scale_x_discrete(labels=NULL)+
    theme(plot.title=element_text(face="bold",hjust=0.5,size=15,color = "darkblue"))
}
