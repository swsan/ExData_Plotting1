library(dplyr)

fileurl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileurl,destfile = "./household_power_consumption.zip",method = "curl")
unzip(zipfile = "./household_power_consumption.zip")

df <- read.table("./household_power_consumption.txt",sep = ";",header = TRUE)
start_date_time_str <- "2007-02-01 00:00:00"
end_date_time_str <- "2007-02-02 23:59:59"
start_date_time <- strptime(start_date_time_str,"%Y-%m-%d %H:%M:%S",tz="GMT")
end_date_time <- strptime(end_date_time_str,"%Y-%m-%d %H:%M:%S",tz="GMT")

df <- df %>% mutate(date_time = strptime(paste(Date,Time), "%d/%m/%Y %H:%M:%S",tz = "GMT")) %>%
#        select(!Date & !Time ) %>%
        filter( date_time >= start_date_time & date_time <= end_date_time )


