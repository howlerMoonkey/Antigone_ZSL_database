titration<-read.csv(file.choose())
titration
fitting <- nls(NiV_MFI ~ d+(a-d)/(1+(mAbCEs/cc)^b),data=titration,
               start=list(d=0,a=900,cc=6.1,b=-15.0),algorithm=c("port"),trace=TRUE,
               lower=list(d=0,a=-Inf,cc=-Inf,b=-Inf),upper=list(d=0,a=Inf,cc=Inf,b=Inf))
fit