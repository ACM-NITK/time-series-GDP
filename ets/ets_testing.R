####reading the data
data3<-read.csv(file='IndiaGDP3.csv',header =TRUE)
data4<-ts(data3$GDP , frequency = 1)
data4

####ploting the curve
plot.ts(data4, xlab="Time",ylab ="GDP")

####HoltWinters function with paramters
HW2<-HoltWinters(data4, alph =0.195 ,beta = 0.323 , gamma = FALSE)

####plotting the curve
plot.ts(data4, ylab ="GDP")
lines(HW2$GDP[,1] , lty = 2 , col ="blue")


####estimating using additive seasonality
HW2.pred<-predict(HW2 , 5 , prediction.interval = TRUE)

####ploting the  prediction for the fixed model

plot.ts(data4 , ylab ="GDP" )
lines(HW2$GDP[,1] , lty = 2 ,col ="red" )
lines(HW2.pred[,1] , col = "blue")
lines(HW2.pred[,2] , col = "seagreen" , lty = 2)
lines(HW2.pred[,3] , col = "seagreen" , lty = 2)





