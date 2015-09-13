source('savepng.R')
savePng(3, function(y,d) {
  plot(d, y$Sub_metering_1, type='l', ylab = 'Energy sub metering', xlab = '')
  lines(d, y$Sub_metering_2, col='red')
  lines(d, y$Sub_metering_3, col='blue')
  legend('topright', names(y)[7:9], col=c('black','red','blue'), lty=1)
})