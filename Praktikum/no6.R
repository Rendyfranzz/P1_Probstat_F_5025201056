#a
n = 100
m = 50
std = 8

data <- rnorm(n,m,std)
rata_rata <- mean(data)
x1 <- floor(mean(data))
x2 <- round(mean(data))

z_scores <- (data - mean(data) / sd(data))

plot(z_scores, type = "o", col="blue")

#b
x <- rnorm(100,50,8)
hist(x,
     breaks = 50,
     main = "5025201056_Rendi Dwi Francisko_Probstat_F_DNhistogram")

#c
var(x)