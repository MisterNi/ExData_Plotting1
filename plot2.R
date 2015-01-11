png(filename='plot2.png',bg='transparent')
data<-read.table('household_power_consumption.txt',header=TRUE,sep=';',nrows=71000,colClasses='character')
power<-subset(data,data$Date=='1/2/2007'|data$Date=='2/2/2007')
power$DateTime <- as.POSIXct(paste(power$Date, power$Time), format="%d/%m/%Y %H:%M:%S") 
ap<-power$'Global_active_power'
dt<-power$DateTime
par(mfrow=c(1,1))
plot(ap~dt,type='n',xlab='',ylab='Global Active Power (kilowatts)')
lines(dt,ap)
dev.off()