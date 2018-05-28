# Set device as PNG
png(file = "plot2.png")

# Create the plot
with(pwr, plot(DateTime,Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = ""))

# Close the device
dev.off()