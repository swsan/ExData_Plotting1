#dataframe made ready in module load_data.R

png(file="plot3.png", width=480,height=480)
par(bg="grey59")
plot(df$date_time,df$Sub_metering_1,type="l",ylab = "Energy Sub metering ",xlab = "")
lines(df$date_time,df$Sub_metering_2,col='red')
lines(df$date_time,df$Sub_metering_3,col='blue')

legend("topright", 
       legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),
       lty = c(1, 1, 1),
       col = c("black", "red","blue"),
       lwd = 2)

dev.off()

