#a
x = 2
df = 10
dchisq(x , df)

#b
p <- rchisq(100,df)

hist(p,
     freq = FALSE,
     xlim = c(0,30),
     ylim = c(0,0.2),
     main = "Histogram Of Chisquare")

#c

mean = df
mean

var= 2*df
var

