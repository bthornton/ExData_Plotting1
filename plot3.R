# Load in the lines from the text file
# NOTE -- We skip to the first line with the correct data (1/2/2007)
#         and we only load in the rows (2,880) for the two dates
pwr <- read.table('../household_power_consumption.txt', header = FALSE, sep = ";", skip = 66637, nrows = 2880)

# Skipping the lines stripped the header.  Adding back in
colnames(pwr) = c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")

# Creating new field, DateTime by merging the Date and Time fields and formatting correctly
pwr$DateTime <- strptime(paste(pwr$Date,pwr$Time), "%d/%m/%Y %H:%M")

# Set the graphic device
png(file = "plot3.png")

# Create the plot
with(pwr, plot(DateTime,Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = ""))
with(pwr,lines(DateTime,Sub_metering_2, col = "red", type = "l"))
with(pwr,lines(DateTime,Sub_metering_3, col = "blue", type = "l"))
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col = c("black","red","blue"), lwd = 1)

# Close the device
dev.off()