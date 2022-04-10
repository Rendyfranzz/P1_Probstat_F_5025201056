#referensi
#https://rpubs.com/mpfoley73/458721
#a
p = 0.20
n = 3
dgeom(x = n, prob = p)

#b
mean(rgeom(n = 10000, prob = p) == 3)

#c
#pada soal 1.a itu merupakan nilai exact nya, yaitu 0.1024
#sedangkan 1.b merupakan nilai dari simulasi ketika diambil dengan 10000 data random pada kasus yang serupa
#dan ternyata hasil nya mendekati nilai exact nya

#d
library(dplyr)
library(ggplot2)

data.frame(x = 0:10, prob = dgeom(x = 0:10, prob = p)) %>%
  mutate(Failures = ifelse(x == n, n, "other")) %>%
  ggplot(aes(x = factor(x), y = prob, fill = Failures)) +
  geom_col() +
  geom_text(
    aes(label = round(prob,2), y = prob + 0.01),
    position = position_dodge(0.9),
    size = 3,
    vjust = 0
  ) +
  labs(title = "Probability of X = 3 Failures Prior to First Success",
       subtitle = "Geometric(.2)",
       x = "Failures prior to first success (x)",
       y = "Probability")


#e
#mean
mean = 1 / p
mean

#variance
var = (1 - p) / p^2
var

