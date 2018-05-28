# Set graphics device
png(file = "plot1.png")

# Plot the data
hist(pwr$Global_active_power,col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

# Close device
dev.off()