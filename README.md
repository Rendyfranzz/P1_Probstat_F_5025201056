# P1_Probstat_F_5025201056

# 3c
Dapat dilihat bahwa hasil simulasi nya sekitar 11.5% sedangkan nilai exact nya yaitu 12,8% yang artinya sesuai karena nilai simulasi mendekati nilai exact
# Referensi
- no 1
https://rpubs.com/mpfoley73/458721

- no 2
https://mse.redwoods.edu/darnold/math15/spring2013/R/Activities/MeanVarStd.html

- no 3
https://bookdown.org/gabriel_butler/ECON41Labs/tutorial-5-the-poisson-distribution.html

- no 5
-- https://rpubs.com/carlosehernandezr/Exponential-Distribution
-- https://rstudio-pubs-static.s3.amazonaws.com/122318_18a1529811ab4874b999a3f7c408c66a.html

## Penjelasan Pengerjaan


### Soal 1 Distribusi Geomatrik

#### 1.a. Mencari peluang distribusi geometrik dengan x = 3, p = 0.2 dengan menggunakan `dgeom`
```
dgeom(3, 0.2)
```
hasil outputnya 0.1024

#### 1.b. Mencari mean dengan data random yang berjumlah 10000, dimana hasil dari distrubusi geometriknya 3
karena yang diminta data random maka menggunakan `rgeom`
```
mean(rgeom(10000, 0.2) == 3)
```
hasil outpunya tergantung hasil data yang diacak

#### 1.c. Bandingkan hasil a dan b
berdasarkan hasil keduanya nilai percobaan yang ada di poin b itu hampir mendekati nilai exact yang adad di poin a

#### 1.d. Membuat histogram distribusi geometrik

![Histogram Distribusi Geometrik](https://user-images.githubusercontent.com/90760961/162613069-1446064f-3146-455c-9590-225f4aee3172.png)

Referensi : https://rpubs.com/mpfoley73/458721 
#### 1.e. Nilai rataan dapat dicari dengan `μ = 1/p` sedangkan varian `σ² = 1-p/p^2` 


### Soal 2 Distribusi Binominal

#### 2.a. Mencari peluang distribusi binominal dengan n = 4, size = 20, p = 0.2 dengan menggunakan `dbinom`
```
dbinom(4, 20, 0.2)
```
hasil outputnya 0.21819

#### 2.b. Membuat histogram distribusi binominal
```x <- rbinom(4, 20, 0.2)```

![Histogram Distribusi Binominal](https://user-images.githubusercontent.com/90760961/162613123-402a6a0b-7eff-4e5b-aafe-02095157ebf4.png)

#### 2.c. Nilai rataan dapat dicari dengan `μ = n*p` sedangkan varian `σ² = npq` 


### Soal 3 Distribusi Poisson

#### 3.a. Mencari peluang distribusi poisson dengan x = 6, lamba = 4.5 dengan menggunakan `dpois`
```
dpois(6, 4.5)
```
hasil outputnya 0.12812

#### 3.b. Membuat histogram distribusi poisson

![Histogram Distribusi Poisson](https://user-images.githubusercontent.com/90760961/162613162-c38b3f7f-ed84-42bd-8696-c8abf233749b.png)

REFERENSI : https://bookdown.org/gabriel_butler/ECON41Labs/tutorial-5-the-poisson-distribution.html 

#### 3.c. Bandingkan a dan b
pada soal a adalah nilai exactnya, sedangkan soal b itu adalah nilai simulasi yang memiliki hasil 11.50% hampir mendekati dengan nilai exact yaitu 12.81%

#### 3.d. Nilai rataan dapat dicari dengan `μ = λ` dan varian `σ² = λ` 


### Soal 4 Distribusi Chi-Square

#### 4.a. Mencari peluang distribusi chi-square dengan x = 2, df = 10 dengan menggunakan `dchisq`
```
dchisq(4, 20, 0.2)
```
hasil outputnya 0.0076641

#### 4.b. Membuat histogram distribusi chi-square
```
x <- rchisq(100, 10)
```

![Histogram Distribusi Chi_Square](https://user-images.githubusercontent.com/90760961/162613193-df95a022-0767-450b-9f66-109bed210c91.png)

#### 4.c. Nilai rataan dapat dicari dengan `μ = df` sedangkan varian `σ² = 2*df`


### Soal 5 Distribusi Eksponensial

#### 5.a. Mencari peluang distribusi eksponensial dengan n = 10, rate = 3 dengan menggunakan `rexp`
```
rexp(10, 3)
```
hasil outputnya berupa data yang berjumlah 10 
```
0.25172728 0.39388093 0.04856891 0.04659842 0.14535621 0.96498951 0.40985402 0.17989428 0.31885583 0.04901533
```

#### 5.b. Membuat histogram distribusi eksponensial dengan n = 10, 100, 1000, 10000
```
set.seed(1)
x1 <- rexp(n, 3)
```
![Histogram Distribusi Eksponensial n = 10](https://user-images.githubusercontent.com/90760961/162613214-4afcc64f-6353-42ae-829f-3574058d48d0.png)

![Histogram Distribusi Eksponensial n = 100](https://user-images.githubusercontent.com/90760961/162613231-9137edd4-dc3f-4fe0-8794-2f4239bbf25f.png)

![Histogram Distribusi Eksponensial n = 1000](https://user-images.githubusercontent.com/90760961/162613247-272cd4a4-4190-4846-8aec-849bf2e50063.png)

![Histogram Distribusi Eksponensial n = 10000](https://user-images.githubusercontent.com/90760961/162613260-47aacabf-9d53-45dc-b496-f4f47255e8e3.png)

#### 5.c. Nilai rataan dapat dicari dengan `μ = mean(rexp(100, 3)` sedangkan varian `σ² = var(rexp(100, 3)`


### Soal 6 Distribusi Normal

#### 6.a. Mencari peluang distribusi normal dengan data acak dengan syarat P(X1 ≤ x ≤ X2) dengan menggunakan `rnorm`
```
data <- rnorm(100, 50, 8)
avg <- mean(data)
```
Lalu untuk mendapatkan x1 dan x2 menggunakan `floor` dan `ceiling`
```
x1 <- floor(avg)
x2 <- ceiling(avg)
```
Lalu hitung z_scorenya 
```
z_score <- (data - mean(data)/ sd(data))
```
Lalu digambarkan dengan grafik menggunakan `plot()`
```
plot(z_score, type = 'l', col='red')
```
![Grafik Plot](https://user-images.githubusercontent.com/90760961/162613312-be701e9b-7586-4e1f-a587-2d66261fa545.png)

#### 6.b. Membuat histogram distribusi chi-square
```
hist(data, 
     main = "5025201056_Rendi Dwi Francisko_Probstat_F_DNhistogram",
     breaks = 50)
 ```

![Histogram Distribusi Normal](https://user-images.githubusercontent.com/90760961/162613337-4ba64894-b31c-4a7b-869e-19850149f37b.png)

#### 6.c. Nilai varian dapat dicari dengan `σ² = var(data)`
