#read data
library(lubridate)
library(ggplot2)
datsap<- read.csv("K:\\Environmental_Studies\\hkropp\\Data\\campus\\buckthorn\\sapflux\\campbell\\06_25_2021\\Sapflow_TableDT.dat",
                  skip = 4, header = FALSE, na.strings = "NAN")
datNames <- read.csv("K:\\Environmental_Studies\\hkropp\\Data\\campus\\buckthorn\\sapflux\\campbell\\06_25_2021\\Sapflow_TableDT.dat",
                  skip = 1, nrows = 2, header = FALSE)
tabledt <- datsap[,1:18]
colnames(tabledt) <- c("date", "record", paste0("dT",seq(1, 16)))
plot(tabledt$record, tabledt$dT5, type = "l")
#install.packages(c("lubridate", "ggplot2"))
tabledt$datef <- ymd_hms(tabledt$date)
ggplot(data = tabledt,aes(datef, dT1)) +
  geom_path()
ggplot(data = tabledt,aes(datef, dT2)) +
  geom_path()
ggplot(data = tabledt,aes(datef, dT3)) +
  geom_path()
ggplot(data = tabledt,aes(datef, dT4)) +
  geom_path()
ggplot(data = tabledt,aes(datef, dT5)) +
  geom_path()
ggplot(data = tabledt,aes(datef, dT6)) +
  geom_path()
ggplot(data = tabledt,aes(datef, dT7)) +
  geom_path()
ggplot(data = tabledt,aes(datef, dT8)) +
  geom_path()
