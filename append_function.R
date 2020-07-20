##append function 

nametemp <- ''
for(x in 1:as.numeric(dateset[2,2])){
  testdata <- FALSE
  if(datetemp[x,3] != ''){
    print(datetemp[x,3])
    if(nametemp=='')
      nametemp <- as.character(datetemp[x,3])
    else{
      for (y in nametemp){
        if(datetemp[x,3] == y)
          testdata <- TRUE
      }
      if(testdata == FALSE){
        nametemp <- rbind(nametemp,as.character(datetemp[x,3]))
      }
    }
  }
}
nametemp
