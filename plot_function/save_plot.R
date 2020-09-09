### save plot to png

### save plot
png("where you want saving file",width=0,heigth=0) ## open file
plot(model) ## you also use ggplot
dev.off() ## close file
