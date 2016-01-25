frame <- read.csv("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?", colClasses = c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))
frame$Date <- as.Date(frame$Date, "%d/%m/%Y")

df_sub <- subset(frame, Date >= "2007-02-01" & Date <= "2007-02-02")
df_sub$timestamp <- as.POSIXct(paste(df_sub$Date, df_sub$Time, sep = " "))

png("plot1.png", width = 480, height = 480)
hist(df_sub$Global_active_power, main = "Global Active Power", col = "red", xlab = "Global Active Power (kilowatts)")
dev.off()

