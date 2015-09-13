source('savepng.R')
savePng(1, function(y,d) {
  hist(y$Global_active_power, col = 'red', main = 'Global Active Power', xlab = 'Global Active Power (kilowatts)')
})