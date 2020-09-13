> head(fulldata)
Date.Time.Global_active_power.Global_reactive_power.Voltage.Global_intensity.Sub_metering_1.Sub_metering_2.Sub_metering_3
1                                                         16/12/2006;17:24:00;4.216;0.418;234.840;18.400;0.000;1.000;17.000
2                                                         16/12/2006;17:25:00;5.360;0.436;233.630;23.000;0.000;1.000;16.000
3                                                         16/12/2006;17:26:00;5.374;0.498;233.290;23.000;0.000;2.000;17.000
4                                                         16/12/2006;17:27:00;5.388;0.502;233.740;23.000;0.000;1.000;17.000
5                                                         16/12/2006;17:28:00;3.666;0.528;235.680;15.800;0.000;1.000;17.000
6                                                         16/12/2006;17:29:00;3.520;0.522;235.020;15.000;0.000;2.000;17.000
> names(power) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
Error in names(power) <- c("Date", "Time", "Global_active_power", "Global_reactive_power",  : 
                             names() applied to a non-vector
                           > subpower <- subset(power,power$Date=="1/2/2007" | power$Date =="2/2/2007")
                           Error in power$Date : object of type 'closure' is not subsettable
                           > names(power) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
                           Error in names(power) <- c("Date", "Time", "Global_active_power", "Global_reactive_power",  : 
                                                        names() applied to a non-vector
                                                      > 
                                                        > power <- read.table("household_power_consumption.txt",skip=1,sep=";")
                                                      > names(power) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
                                                      > subpower <- subset(power,power$Date=="1/2/2007" | power$Date =="2/2/2007")
                                                      > hist(as.numeric(as.character(subpower$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")
                                                      > 
                                                        > dev.copy(png, filename="plot1.png")
                                                      png 
                                                      4 
                                                      > dev.off()
                                                      RStudioGD 
                                                      2 