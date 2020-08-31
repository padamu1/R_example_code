# change color by option
library(RColorBrewer)
# 1. fill auto grey - species using colour and change color option "grey"
scale_colour_grey()

# 2. fill auto using option "color"

scale_colour_brewer(palette = "Dark2")
#this code using palette you can find color option using "display.brewer.all"


# make own your palette

install.packages("squash")
library("squash")

#choose your colour thresholds - outliers will be RED
minval=0   #lowest value to get a colour
maxval=2.0 #highest value to get a colour
n.cols=100 #how many colours do you want in your palette?
col.int=1/n.cols

#create your palette
colramp=makecmap(x=seq(minval,maxval,col.int),
                 n=n.cols,
                 breaks=prettyLog,
                 symm=F,
                 base=10,#to give ramp a log(base) stretch
                 colFn=jet,
                 col.na="red",
                 right=F,
                 include.lowest=T)


# R color option site - http://www.stat.auckland.ac.nz/~ihaka/courses/787/R-colours-a4.pdf


# 3. x scale display date on your data with ggplot
# date_format is format of DATA
scale_x_date(breaks="""DATE DATA""",labels=date_format("%m/%d"))

# 4. add text in chart with ggplot
annotate("text", x = "x location", y = "y location", label = "text what you want")+
    