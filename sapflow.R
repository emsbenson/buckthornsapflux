#read data
library(lubridate)
library(ggplot2)
<<<<<<< HEAD
datsap<- read.csv("K:\\Environmental_Studies\\hkropp\\Data\\campus\\buckthorn\\sapflux\\campbell\\07_20_2021\\Sapflow_TableDT.dat",
                  skip = 4, header = FALSE, na.strings = "NAN")
datNames <- read.csv("K:\\Environmental_Studies\\hkropp\\Data\\campus\\buckthorn\\sapflux\\campbell\\07_20_2021\\Sapflow_TableDT.dat",
=======
datsap<- read.csv("K:\\Environmental_Studies\\hkropp\\Data\\campus\\buckthorn\\sapflux\\campbell\\07_16_2021\\Sapflow_TableDT.dat",
                  skip = 4, header = FALSE, na.strings = "NAN")
datNames <- read.csv("K:\\Environmental_Studies\\hkropp\\Data\\campus\\buckthorn\\sapflux\\campbell\\07_16_2021\\Sapflow_TableDT.dat",
>>>>>>> c3ca484f1149ea99e5e60464c5006cb2b9292c5e
                  skip = 1, nrows = 2, header = FALSE)
tabledt <- datsap[,1:18]
colnames(tabledt) <- c("date", "record", paste0("dT",seq(1, 16)))
plot(tabledt$record, tabledt$dT5, type = "l")

tabledt$datef <- ymd_hms(tabledt$date)
ggplot(data = tabledt,aes(datef, dT1)) +
  geom_path()+
<<<<<<< HEAD
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

=======
  ggtitle("Sensor 1 7/16/21")
ggplot(data = tabledt,aes(datef, dT2)) +
  geom_path() +
  ggtitle("Sensor 2 7/16/21")
ggplot(data = tabledt,aes(datef, dT3)) +
  geom_path()+
  ggtitle("Sensor 3 7/16/21")
ggplot(data = tabledt,aes(datef, dT4)) +
  geom_path()+
  ggtitle("Sensor 4 7/16/21")
ggplot(data = tabledt,aes(datef, dT5)) +
  geom_path()+
  ggtitle("Sensor 5 7/16/21")
ggplot(data = tabledt,aes(datef, dT6)) +
  geom_path()+
  ggtitle("Sensor 6 7/16/21")
ggplot(data = tabledt,aes(datef, dT7)) +
  geom_path()+
  ggtitle("Sensor 7 7/16/21")
ggplot(data = tabledt,aes(datef, dT8)) +
  geom_path()+
  ggtitle("Sensor 8 7/16/21")


sensors <- read.csv("K://Environmental_Studies/hkropp/Data/campus/buckthorn/sapflux/sensors_meta.csv")
ash <- sensors[sensors$Type == "Ash", ]
ash$sd.cm <- -36.33 + (44.28*(1-exp(-0.1306*ash$DBH.cm)))


tabledt$doy <- yday(tabledt$date)
tabledt$hour <- hour(tabledt$date)+(minute(tabledt$date)/60)

dtAll <- data.frame(date= rep(tabledt$date, times = 16), 
                    doy = rep(tabledt$doy, times = 16),
                    hour = rep(tabledt$hour, times = 16),
                    sensor = rep(seq(1,16), each = nrow(tabledt)), 
                    dT = c(tabledt[,3],
                           tabledt[,4],
                           tabledt[,5],
                           tabledt[,6],
                           tabledt[,7],
                           tabledt[,8],
                           tabledt[,9],
                           tabledt[,10],
                           tabledt[,11],
                           tabledt[,12],
                           tabledt[,13],
                           tabledt[,14],
                           tabledt[,15],
                           tabledt[,16],
                           tabledt[,17],
                           tabledt[,18]))

night <- dtAll[dtAll$hour < 5|dtAll$hour >= 22,]
maxnight <- aggregate(night$dT, by = list(sensor = night$sensor, 
                                          doy = night$doy), 
                                          FUN = "max")
>>>>>>> c3ca484f1149ea99e5e60464c5006cb2b9292c5e
