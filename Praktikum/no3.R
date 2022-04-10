#Referensi
#https://bookdown.org/gabriel_butler/ECON41Labs/tutorial-5-the-poisson-distribution.html
#a
x = 6
lambda = 4.5
dpois(x,lambda)

#b
library(dplyr)
library(ggplot2)
set.seed(2)

babies <- data.frame('data' = rpois(365, 4.5))

babies %>% ggplot() +
  geom_histogram(aes(x = data,
                     y = stat(count / sum(count)),
                     fill = data == 6),
                 binwidth = 1,
                 color = 'black',) +
  scale_x_continuous(breaks = 0:10) + 
  labs(x = 'Number of babies born per period',
       y = 'Proportion',
       title = '365 simulated births in a hospital with Pois(lambda = 4.5)') +
  theme_bw()

#c
babies %>% dplyr::summarize(six_babies = sum(babies$data == 6) / n())
#d
#mean
lambda

#variance
lambda

