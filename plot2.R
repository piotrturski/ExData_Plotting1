source('savepng.R')
savePng(2, function(y,d) {
  
  # no way to set desired locale - need to run with LC_ALL=C environment variable; for example:
  # LC_ALL=C rstudio rstudio
  plot(d, y$Global_active_power, type = 'l', ylab = 'Global Active Power (kilowatts)', xlab='')
})