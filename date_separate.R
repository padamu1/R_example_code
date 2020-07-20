### 200607 같은 날짜 데이터 처리하기

## day month year separate example
adk <- as.numeric(as.character(adk)) ## 범주화 된 데이터는 숫자로는 어떠한 의미가 없어 그대로 as.numeric시 오류 발생
day <- adk%%100
adk <- (adk - day)/(100)
month <- adk %% 100
adk <- (adk - month)/(100)
year<- adk %% 100
day
month
year

## day month year better work example
for(x in 1:numRow){
  if(datetemp[x,1]!=''&datetemp[x,3] !=''&datetemp[x,1] != '날짜'){
    temp<-as.Date(as.character(20000000+as.numeric(as.character(durupstart[x,1]))),format='%Y%m%d')
    print(temp)
    temp <- c(as.character(temp),x)
    dataset<-rbind(dataset,temp)
    
  }
  x <- x+1
}