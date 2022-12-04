#dataframe made ready in module load_data.R

png(file="plot2.png", width=480,height=480)
par(bg="grey59")
plot(df$date_time,df$Global_active_power,type="l",ylab = "Global Active Power(kilowatts)",xlab = "")
dev.off()

