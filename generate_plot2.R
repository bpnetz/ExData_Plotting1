# share the same preprocessing code
png("plot2.png", width = 480, height = 480)
with(df_sub, plot(timestamp, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)"))
dev.off()
