# make subset function
matrix_for_subset <- function(subset_new){
  subset_new <- as.matrix(subset_new[,2])
  return(subset_new)
}

#column bind function use with make subset

for(i in 1:count){
  subdatatemp<-c(max(get(paste0("subset_",i))$value1),min(get(paste0("subset_",i))$value1))
  subdata<-cbind(subdata,subdatatemp)
  subdatatemp<-c(max(get(paste0("subset_",i))$value1),min(get(paste0("subset_",i))$value1))
  subdata2<-cbind(subdata2,subdatatemp)
}