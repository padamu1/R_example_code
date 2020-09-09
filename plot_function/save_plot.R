### save plot

### save plot to png - you only save own chart
png("where you want saving file",width=0,heigth=0) ## open file // size unit is pixel
plot(model) ## you also use ggplot
dev.off() ## close file


### save plot to pdf - you can save lots of chart
pdf.options(family = "Korea1deb") ## this is option of pdf's font
pdf("where you want saving file",width=0,heigth=0) ## open file // size unit is inch
dev.off() ## close file