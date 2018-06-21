plot2<-function(){
elec<- read.table("C:/Data_Science/data/Exploratory data Analysis course project data/household_power_consumption.txt",stringsAsFactors = FALSE, header = TRUE, sep =";")
datestring<-paste(elec$Date,elec$Time)
strp <- strptime(datestring, "%d/%m/%Y %H:%M:%S")
elec<- cbind(elec, strp)
sub<- subset(elec,elec$Date=="1/2/2007" | elec$Date =="2/2/2007")
 with(sub, plot(strp, as.numeric(as.character(Global_active_power)), type="l", xlab="", ylab="Global Active Power (kilowatts)"))
 dev.copy(png,file="plot2.png", width=480, height=480)
dev.off()
}