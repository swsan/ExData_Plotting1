#dataframe made ready in module load_data.R

png(file="plot4.png", width=480,height=480)
par(bg="grey59")
par(mfrow=c(2,2))

#quard 1
plot(df$date_time,df$Global_active_power,type="l",ylab = "Global Active Power",xlab = "")

#quard 2
plot(df$date_time,df$Voltage,type="l",ylab = "Voltage",xlab = "datetime")

#quard 3
plot(df$date_time,df$Sub_metering_1,type="l",ylab = "Energy Sub metering ",xlab = "")
lines(df$date_time,df$Sub_metering_2,col='red')
lines(df$date_time,df$Sub_metering_3,col='blue')

legend("topright", 
       legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),
       lty = c(1, 1, 1),
       col = c("black", "red","blue"),
       lwd = 2, bty = "n")

#quard 4
plot(df$date_time,df$Global_reactive_power,type="l",ylab = "Global_reactive_power",xlab = "datetime")

dev.off()


