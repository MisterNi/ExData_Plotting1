png(filename='plot3.png',bg='transparent')
data<-read.table('household_power_consumption.txt',header=TRUE,sep=';',nrows=71000,colClasses='character')
power<-subset(data,data$Date=='1/2/2007'|data$Date=='2/2/2007')
power$DateTime <- as.POSIXct(paste(power$Date, power$Time), format="%d/%m/%Y %H:%M:%S") 
dt<-power$DateTime
par(mfrow=c(1,1))
sm1<-power$'Sub_metering_1'
sm2<-power$'Sub_metering_2'
sm3<-power$'Sub_metering_3'
plot(sm1~dt,type='n',xlab='',ylab='Energy sub metering')
lines(dt,sm1)
lines(dt,sm2,col='red')
lines(dt,sm3,col='blue')
legend('topright',legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),lty=1,col=c('black','red','blue'),cex=.8)
dev.off()