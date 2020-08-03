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


#######################

string_1 <-"A~B"
string_2 <-"A"
# find some string in variable
grep("~",string_1)
grep("~",string_2)

# split string to vector
ABC<-unlist(strsplit(string_1,split="~"))
ABC[1]
ABC[2]


# plot label using variable
lab(paste0("spec\n[ value1 : ",mean(subdataframe$value1)," value2 : ",mean(subdataframe$value2)," value3 : ",mean(subdataframe$value3)," value4 : ",mean(subdataframe$value4)," ]"))