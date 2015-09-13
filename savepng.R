savePng <- function(plotNumber, draw) { # number of file (1-4) and a function that will plot
  
  y <- read.csv('household_power_consumption.txt',sep=';',skip=66637, nrow=69517-66637, header=F, stringsAsFactors = FALSE, na.strings= "?")
  colnames(y) <- read.table('household_power_consumption.txt', nrows = 1, header = FALSE, sep =';', stringsAsFactors = FALSE)
  d <- as.POSIXlt(paste(y$Date, y$Time), format='%d/%m/%Y %T')
  
  png(paste0('plot',  plotNumber, '.png'), width = 480, height = 480)
  par(mfrow=c(1,1))
  
  draw(y, d) # provide plotting function with original data and a dateTime
  
  dev.off()
}