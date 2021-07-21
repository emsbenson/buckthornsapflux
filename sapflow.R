#read data
library(lubridate)
library(ggplot2)
datsap<- read.csv("K:\\Environmental_Studies\\hkropp\\Data\\campus\\buckthorn\\sapflux\\campbell\\07_20_2021\\Sapflow_TableDT.dat",
                  skip = 4, header = FALSE, na.strings = "NAN")
datNames <- read.csv("K:\\Environmental_Studies\\hkropp\\Data\\campus\\buckthorn\\sapflux\\campbell\\07_20_2021\\Sapflow_TableDT.dat",
                  skip = 1, nrows = 2, header = FALSE)
tabledt <- datsap[,1:18]
colnames(tabledt) <- c("date", "record", paste0("dT",seq(1, 16)))
plot(tabledt$record, tabledt$dT5, type = "l")
#install.packages(c("lubridate", "ggplot2"))
tabledt$datef <- ymd_hms(tabledt$date)
ggplot(data = tabledt,aes(datef, dT1)) +
  geom_path()+
  ggtitle("Sensor 1 7/20/21")
ggplot(data = tabledt,aes(datef, dT2)) +
  geom_path()+
  ggtitle("Sensor 2 7/20/21")
ggplot(data = tabledt,aes(datef, dT3)) +
  geom_path()+
  ggtitle("Sensor 3 7/20/21")
ggplot(data = tabledt,aes(datef, dT4)) +
  geom_path()+
  ggtitle("Sensor 4 7/20/21")
ggplot(data = tabledt,aes(datef, dT5)) +
  geom_path()+
  ggtitle("Sensor 5 7/20/21")
ggplot(data = tabledt,aes(datef, dT6)) +
  geom_path()+
  ggtitle("Sensor 6 7/20/21")
ggplot(data = tabledt,aes(datef, dT7)) +
  geom_path()+
  ggtitle("Sensor 7 7/20/21")
ggplot(data = tabledt,aes(datef, dT8)) +
  geom_path()+
  ggtitle("Sensor 8 7/20/21")
ggplot(data = tabledt,aes(datef, dT9)) +
  geom_path()+
  ggtitle("Sensor 9 7/20/21")
ggplot(data = tabledt,aes(datef, dT10)) +
  geom_path()+
  ggtitle("Sensor 10 7/20/21")
ggplot(data = tabledt,aes(datef, dT11)) +
  geom_path()+
  ggtitle("Sensor 11 7/20/21")
ggplot(data = tabledt,aes(datef, dT12)) +
  geom_path()+
  ggtitle("Sensor 12 7/20/21")
ggplot(data = tabledt,aes(datef, dT13)) +
  geom_path()+
  ggtitle("Sensor 13 7/20/21")
ggplot(data = tabledt,aes(datef, dT14)) +
  geom_path()+
  ggtitle("Sensor 14 7/20/21")
ggplot(data = tabledt,aes(datef, dT15)) +
  geom_path()+
  ggtitle("Sensor 15 7/20/21")
ggplot(data = tabledt,aes(datef, dT16)) +
  geom_path()+
  ggtitle("Sensor 16 7/20/21")

