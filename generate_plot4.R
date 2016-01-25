png("plot4.png", width = 480, height = 480)
par(mfrow = c(2, 2))
with(df_sub, plot(timestamp, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power"))
with(df_sub, plot(timestamp, Voltage, type = "l", xlab = "datetime", ylab = "Voltage"))
with(df_sub, {
  plot(timestamp, Sub_metering_1, type = "n", xlab = "", ylab = "Energy sub metering")
  lines(timestamp, Sub_metering_1, col = "black")
  lines(timestamp, Sub_metering_2, col = "red")
  lines(timestamp, Sub_metering_3, col = "blue")
  legend("topright", lty = c(1,1), lwd=c(2,2), col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
})  
with(df_sub, plot(timestamp, Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global Reactive Power"))
dev.off()