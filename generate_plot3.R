frame <- read.csv("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?", colClasses = c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))
frame$Date <- as.Date(frame$Date, "%d/%m/%Y")

df_sub <- subset(frame, Date >= "2007-02-01" & Date <= "2007-02-02")
df_sub$timestamp <- as.POSIXct(paste(df_sub$Date, df_sub$Time, sep = " "))

png("plot3.png", width = 480, height = 480)
with(df_sub, {
  plot(timestamp, Sub_metering_1, type = "n", xlab = "", ylab = "Energy sub metering")
  lines(timestamp, Sub_metering_1, col = "black")
  lines(timestamp, Sub_metering_2, col = "red")
  lines(timestamp, Sub_metering_3, col = "blue")
  legend("topright", lty = c(1, 1), lwd=c(2, 2), col = c("black", "red", "blue"), 
         legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
})
dev.off()
