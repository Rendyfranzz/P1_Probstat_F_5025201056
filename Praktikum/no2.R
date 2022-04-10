#Referensi
#https://mse.redwoods.edu/darnold/math15/spring2013/R/Activities/MeanVarStd.html
#a
a <- dbinom(x=4,20,0.2)
a

#b
data <- rbinom(20,20,0.2)
hist(data,xlim = c(0,8))

#c
n=20 #pasien
p=0.2 #peluang
q=1-p #peluang failure

#mean theorytical
me=n*p
me

#mean sample
mean(data)

#variance theorytical
va=n*p*q
va

#variance sample
var(data)