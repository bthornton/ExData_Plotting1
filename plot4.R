# Set the graphic device
png(file = "plot4.png")

# Set up the layout
par(mfrow = c(2,2))

# Create the plot
with(pwr, plot(DateTime,Global_active_power, type = "l", ylab = "Global Active Power", xlab = ""))
with(pwr, plot(DateTime,Voltage, type = "l", ylab = "Voltage", xlab = "datetime"))
with(pwr, plot(DateTime,Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = ""))
with(pwr,lines(DateTime,Sub_metering_2, col = "red", type = "l"))
with(pwr,lines(DateTime,Sub_metering_3, col = "blue", type = "l"))
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col = c("black","red","blue"), lwd = 1, box.lwd = 0)
with(pwr, plot(DateTime,Global_reactive_power, type = "l", xlab = "datetime"))

# Close the device
dev.off()