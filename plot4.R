source('savepng.R')
savePng(4, function(y,d) {
  par(mfrow=c(2,2))
  
  plot(d, y$Global_active_power, type = 'l', ylab = 'Global Active Power', xlab='') # no way to set desired locale
  
  plot(d, y$Voltage, type = 'l', xlab='datetime', ylab = 'Voltage')
  
  plot(d, y$Sub_metering_1, type='l', ylab = 'Energy sub metering', xlab = '')
  lines(d, y$Sub_metering_2, col='red')
  lines(d, y$Sub_metering_3, col='blue')
  legend('topright', names(y)[7:9], col=c('black','red','blue'), lty=1, bty = 'n')
  
  plot(d, y$Global_reactive_power, type = 'l', xlab='datetime', ylab = 'Global_reactive_power')
})