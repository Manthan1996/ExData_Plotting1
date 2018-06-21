plot1<-function(){
elec<- read.table("C:/Data_Science/data/Exploratory data Analysis course project data/household_power_consumption.txt",stringsAsFactors = FALSE, header = TRUE, sep =";")
sub<- subset(elec,elec$Date=="1/2/2007" | elec$Date =="2/2/2007")
hist(as.numeric(as.character(sub$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")
title(main="Global Active Power")
dev.copy(png,file="plot1.png", width=480, height=480)
dev.off()
}