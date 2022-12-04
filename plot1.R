#dataframe made ready in module load_data.R

png(file="plot1.png", width=480,height=480)
par(bg="grey59")
hist(as.numeric(df$Global_active_power), main ="Global Active Power", ylab = "Frequency", 
     xlab = "Global Active Power(kilowatts)",col = 'red' )
dev.off()

