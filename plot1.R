png(filename='plot1.png',bg='transparent')
data<-read.table('household_power_consumption.txt',header=TRUE,sep=';',nrows=71000,colClasses='character')
power<-subset(data,data$Date=='1/2/2007'|data$Date=='2/2/2007')
ap<-power$'Global_active_power'
par(mfrow=c(1,1))
hist(as.numeric(ap),xlab='Global Active Power (kilowatts)',ylab='Frequency',col='Red',main='Global Active Power')
dev.off()