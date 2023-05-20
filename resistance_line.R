#Membuat garis resistance

#install package
install.packages("remotes")
remotes::install_github("mgimond/tukeyedar")

data <- read_excel("C:\\Users\\alvar\\OneDrive\\Documents\\Latihan Ujian AED\\temperature.xlsx")
temperature = c(data$Temperature)
icesales = c(data$`Ice Sales`)

library(tukeyedar)
Resline <- eda_rline(data, temperature, icesales)
Resline

#membuat plot rline
plot(icesales~temperature, data, pch=20)
abline(a=Resline$a, b=Resline$b, col="green")

#plot rline dengan median
plot(icesales~temperature, data, pch=20)
abline(a = Resline$a, b= Resline$b, col='blue')
points(x = Resline$xmed, y= Resline$ymed, col='green', pch = 20)
