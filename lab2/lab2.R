library(RColorBrewer)

risk <- read.csv('lab2/Risk.csv')

print(head(risk, n=5))

palette = brewer.pal(3, "Set2")


risk$Gender <- factor(risk$Gender)
risk$State <- factor(risk$State)
risk$Risk <- factor(risk$Risk)

plot(
  x = risk[1:7], 
  col = palette[as.numeric(risk$Risk)],
  pch = 5)

