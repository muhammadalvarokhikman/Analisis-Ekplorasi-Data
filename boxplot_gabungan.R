#Membuat boxplot gabungan

#panggil data
library(readxl)
data <- read_excel("C:\\Users\\alvar\\OneDrive\\Documents\\Latihan Ujian AED\\DATA_TB.xlsx")

dataTB = data.frame(
  Kelas_A = c(data$`TB A`),
  Kelas_B = c(data$`TB B`)
)

boxplot(dataTB, main="Boxplot Tinggi Badan Kelas A dan B",
        col = c("green", "skyblue"),
        xlab = c('Kelas'),
        ylab = "Tinggi Badan")
legend("topleft", legend=c("Tinggi badan A", "Tinggi badan B"), col = c("green", "skyblue"), pch = 20, cex = 1, horiz = FALSE, inset = c(0.1, .1))

boxplot(dataTB)$out
