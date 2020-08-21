######### Raderchart with regend
library(fmsb)

subdata3_scale<-as.data.frame(scale(subdata3)) ## make similar value on dataframe

#### this is make 
dfmax<-c(max(subdata3_scale[,1])+1,max(subdata3_scale[,2])+1,max(subdata3_scale[,3])+1,max(subdata3_scale[,4])+1)
dfmin<-c(min(subdata3_scale[,1]),min(subdata3_scale[,2]),min(subdata3_scale[,3]),min(subdata3_scale[,4]))


#### 1. row : max of chart || 2. row : min of chart || 3. dataframe
subdata3_scale<-as.data.frame(rbind(dfmax,dfmin,subdata3_scale))
radarchart(df = subdata3_scale,# The data frame to be used to draw radarchart
           seg = 6, # The number of segments for each axis 
           pty = 16, # A vector to specify point symbol: Default 16 (closed circle)
           pcol = 1:nrow(subdata3_scale), #  color of line
           plty = 1, # line option
           plwd = 2, # thickness of line
           title = c("title")
)
legend("topleft", legend = nameset, col = c(1:nrow(subdata3_scale)), lwd = 2)
