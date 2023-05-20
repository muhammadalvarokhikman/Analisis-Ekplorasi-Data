#Membuat scatterplot

#panggil data
library(readxl)
data <- read_excel("C:\\Users\\alvar\\OneDrive\\Documents\\Latihan Ujian AED\\DATA_TB.xlsx")

#Inisiasi data
TB_A = c(data$`TB A`)
BB_A = c(data$BBA)

#Cetak gambar
plot(TB_A, BB_A, main = "Scatterplot TB dan BB", col = "skyblue", pch= 20, cex=3)
