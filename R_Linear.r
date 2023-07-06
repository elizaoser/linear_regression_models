filename = "regrex1.csv"

dataset = read.csv(filename)
dataset

png("ScatterPlot.png")
library(ggplot2)
ggplot() +
  geom_point(aes(x = dataset$x, y = dataset$y),
             colour = 'red') +
  ggtitle('y vs x') +
  xlab('x') +
  ylab('y')
dev.off()

model = lm(formula = y ~ x,
               data = dataset)

png("LinearPlot.png")
library(ggplot2)
ggplot() +
  geom_point(aes(x = dataset$x, y = dataset$y),
             colour = 'red') +
  geom_line(aes(x = dataset$x, y = predict(model, newdata = dataset)),
            colour = 'blue') +
  ggtitle('y vs x') +
  xlab('x') +
  ylab('y')
dev.off()

summary(model)


