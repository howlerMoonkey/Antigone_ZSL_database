###  step 1 Adjust dilution factor and concentration #### do for multiple analytes
#####STEP 2 - non-linear regression model ##expand.grid, seq, predict, plot, line

########################## lou and kates script ##### call the model
titration<-read.csv(file.choose())
titration
fitting <- nls(NiV_MFI ~ d+(a-d)/(1+(mAbCEs/cc)^b),data=titration,
               start=list(d=0,a=900,cc=6.1,b=-15.0),algorithm=c("port"),trace=TRUE,
               lower=list(d=0,a=-Inf,cc=-Inf,b=-Inf),upper=list(d=0,a=Inf,cc=Inf,b=Inf))
fit

##### my edits may 2017
titration<-read.csv("titration_data.csv")
names(titration)
plot(titration$mAbCEs, titration$NiV_MFI)

fitting <- nls(NiV_MFI ~ d+(a-d)/(1+(mAbCEs/cc)^b),data=titration,
               start=list(d=0,a=900,cc=6.1,b=-15.0),algorithm=c("port"),trace=TRUE,
               lower=list(d=0,a=-Inf,cc=-Inf,b=-Inf),upper=list(d=0,a=Inf,cc=Inf,b=Inf))
#####plot - do a sequence, predict values and add line to plot

plot(titration$mAbCEs, titration$NiV_MFI)

new = data.frame(mAbCEs = seq(min(titration$mAbCEs),max(titration$mAbCEs),len=200))

lines(new$mAbCEs, predict(fitting, newdata=new), colour = "blue")

#######call a value
newX <- expand.grid(mAbCEs = 6.1)
prediction <- predict(fitting, newdata = newX, interval = "confidence")
###prediction = 8088.69

newX <- expand.grid(mAbCEs = seq(min(titration$mAbCEs),max(titration$mAbCEs),len=200))
newX
newY <- predict(fitting, newdata = list(newX), interval = "confidence")
head(newY)
addThese <- data.frame(newX, newY)
addThese <- rename(addThese, NiV_MFI = fit)

###not working- why
ggplot(titration, aes(x = mAbCEs, y = NiV_MFI)) + 
  geom_point(col = "cornflowerblue", size = 3) +
  labs(x = "mAbCEs", y = "NiV_MFI") +
  theme_bw() +
  geom_smooth(data = addThese, aes(ymin = lwr, ymax = upr), stat = "identity")

##### nls notes from stack
#fit = nls(ydata ~ p1*cos(p2*xdata) + p2*sin(p1*xdata), start=list(p1=p1,p2=p2))
#summary(fit)
#new = data.frame(xdata = seq(min(xdata),max(xdata),len=200))
#lines(new$xdata,predict(fit,newdata=new))

