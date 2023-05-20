#Membuat single boxplot

#panggil data
library(readxl)
data <- read_excel("C:\\Users\\alvar\\OneDrive\\Documents\\Latihan Ujian AED\\DATA_TB.xlsx")

#inisiasi data
TB_A = c(data$`TB A`)

#statistik deskriptif dan length
summary(TB_A)
length(TB_A)

#Membuat boxplot sendiri-sendiri
boxplot(TB_A, main="Boxplot Tinggi Badan A", col = "skyblue", xlab="Kelas A", ylab='Tinggi Badan')
#Melihat nilai outlier
boxplot(TB_A)$out
