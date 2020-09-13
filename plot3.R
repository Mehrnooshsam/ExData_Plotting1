data_full <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", 
                      nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
data1 <- subset(data_full, Date %in% c("1/2/2007","2/2/2007"))
data1$Date <- as.Date(data1$Date, format="%d/%m/%Y")
datetime <- paste(as.Date(data1$Date), data1$Time)
data1$Datetime <- as.POSIXct(datetime)

with(data1, {
  plot(Sub_metering_1~Datetime, type="l",
       ylab="Global Active Power (kilowatts)", xlab="")
  lines(Sub_metering_2~Datetime,col='Red')
  lines(Sub_metering_3~Datetime,col='Blue')
})
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
> dev.copy((png, file="plot3.png", height=480, width=480)
           Error: unexpected ',' in "dev.copy((png,"
           > dev.copy(png, file="plot3.png", height=480, width=480)
           png 
           5 
           > dev.off
           function (which = dev.cur()) 
           {
             if (which == 1) 
               stop("cannot shut down device 1 (the null device)")
             .External(C_devoff, as.integer(which))
             dev.cur()
           }
           <bytecode: 0x000001e4d1bb8f00>
             <environment: namespace:grDevices>
             > dev.off()
           RStudioGD 
           2 