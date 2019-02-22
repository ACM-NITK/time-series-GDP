library(forecast)
data3<-read.csv(file.choose(),header =TRUE)
data4<-ts(data3$GDP , frequency = 1)
data4

fit1 <- ets(data4)
fit1
plot(forecast(fit1))

