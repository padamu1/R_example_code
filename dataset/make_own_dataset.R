for(i in 1:nrow(nameset)){
  assign(paste0("subset_",i),subset(dataset_frame,spec2==nameset[i]))
  count <- count+1
}
subdata <- c(0,0)
for(i in 1:count){
  subdatatemp<-c(max(get(paste0("subset_",i))$value),min(get(paste0("subset_",i))$value))
  subdata<-cbind(subdata,subdatatemp)
}

#nameset -> spec make subset and make their own dataset