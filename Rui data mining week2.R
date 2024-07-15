install.packages('caTools')
library(caTools)
year_salary.data <- data.frame(
  year = c(1.1,1.3,1.5,2.0,2.2,2.9,3.0,3.2,3.2,3.7),
  salary = c(39343.00,46205.00,37731.00,43525.00,39891.00,56642.00,60150.00,54445.00,64445.00,57189.00)
  )

plot(year_salary.data$year,year_salary.data$salary)

simple.regression <- lm(year~salary, data = year_salary.data)

summary(simple.regression)
abline(simple.regression, col = "blue",lwd = 3)

