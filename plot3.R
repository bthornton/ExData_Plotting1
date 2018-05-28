# Set the graphic device
png(file = "plot3.png")

# Create the plot
with(pwr, plot(DateTime,Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = ""))
with(pwr,lines(DateTime,Sub_metering_2, col = "red", type = "l"))
with(pwr,lines(DateTime,Sub_metering_3, col = "blue", type = "l"))
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col = c("black","red","blue"), lwd = 1)

# Close the device
dev.off()