dataM <- read.csv("K:\\Environmental_Studies\\hkropp\\Data\\campus\\buckthorn\\green ash olson paper measurements.csv")
tableM <- dataM[, c(2,4)]
library(ggplot2)

plot(tableM$DBH..inches., tableM$Sapwood.Volume..ft.3.)

ggplot(data = tableM, aes(DBH..inches., Sapwood.Volume..ft.3., group = 1)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE, formula = y ~ splines::bs(x, 3))
help("geom_smooth")
