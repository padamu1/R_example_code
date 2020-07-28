# cut code : 1 ~ startnum
value1 <- value1[c(-1:-startnum),]
value1

# add variable by using function "for"
for(i in 1:nrow(nameset)){
  assign(paste0("subset",i),subset(dataset_frame,spec==nameset[i]))
}

# get variable by using function "for"
for(i in 1:nrow(nameset)){
  get(paste0("subset",i))
}

# make function example
matrix_for_subset <- function(subset_new){
  subset_new <- as.matrix(subset_new[,2])
  return(subset_new)
}