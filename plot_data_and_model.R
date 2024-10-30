#Script to plot data and model
library(ggplot2)
growth_data <- read.csv("experiment.csv")

logistic_fun <- function(t) {
  
  N <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
  
  return(N)
  
}

N0 <- exp(6.8941709)  # initial population size at the start
  
r <-  0.0100086 # gto from t intercept of out model
  
K <- 6.00e+10 # maximum populaiton

ggplot(aes(t, N), data = growth_data) +
  
  geom_function(fun=logistic_fun, colour="red") +
  
  geom_point()

  #scale_y_continuous(trans='log10')


