### 200607 ���� ��¥ ������ ó���ϱ�

## day month year separate example
adk <- as.numeric(as.character(adk)) ## ����ȭ �� �����ʹ� ���ڷδ� ��� �ǹ̰� ���� �״�� as.numeric�� ���� �߻�
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
  if(datetemp[x,1]!=''&datetemp[x,3] !=''&datetemp[x,1] != '��¥'){
    temp<-as.Date(as.character(20000000+as.numeric(as.character(durupstart[x,1]))),format='%Y%m%d')
    print(temp)
    temp <- c(as.character(temp),x)
    dataset<-rbind(dataset,temp)
    
  }
  x <- x+1
}