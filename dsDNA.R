install.packages("ggplot2")
install.packages("gridExtra")

library(ggplot2)
library(gridExtra)

dsdnadata <- read.csv("question-5-data/Cui_etal2014.csv")

#convertng data to a log scale
dsdnadata$Genome.length..kb. = log(dsdnadata$Genome.length..kb.)
dsdnadata$Virion.volume..nm.nm.nm. = log(dsdnadata$Virion.volume..nm.nm.nm.)

head(dsdnadata)

#creating linear model of virion volume against genome length
model <- lm(Virion.volume..nm.nm.nm. ~ Genome.length..kb., data=dsdnadata)
summary(model)

A0 <- exp(7.0748)
r = 1.5152
A0

#Plotting the data:
ggplot(aes(Genome.length..kb., Virion.volume..nm.nm.nm.), data = dsdnadata) +
  geom_smooth(method=lm) + 
  geom_point() +
  theme_bw() +
  xlab("log[Genome length {kb)]") + ylab("log[Virion volume (nm3)]")

#Estimated volume of 300kb dsDNA virus
exponential_fun <- function(t) {
  A <- (A0*exp(r))
  
  return(A)
}
exponential_fun(300)  
#I got 5377.614

