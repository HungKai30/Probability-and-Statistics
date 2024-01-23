###
#a
Xi <- runif(30, min=0, max=10)
# Tính giá trị thống kê
summary(Xi)
hist(Xi, freq = FALSE, col='lightgreen', main='Histogram và Phân bố đều')
###
#b
rate_parameter <- 0.2
Yi <- rexp(30, rate = rate_parameter)
#lý thuyết
theoretical_mean <- 1 / rate_parameter
theoretical_variance <- 1 / rate_parameter^2

#theo bài
sample_mean <- mean(Yi)
sample_variance <- var(Yi)

# Display Results
cat("Theoretical Mean:", theoretical_mean, "\n")
cat("Sample Mean:", sample_mean, "\n")
cat("\nTheoretical Variance:", theoretical_variance, "\n")
cat("Sample Variance:", sample_variance, "\n")

# Plot Histogram
hist(Yi, freq = FALSE, col = 'lightyellow', main = 'Mẫu so với lý thuyết')

# Overlay Theoretical Density
curve(dexp(x, rate = rate_parameter), add = TRUE, col = 'blue', lwd = 2)
#c
x<-seq(0,10,by=0.1)
model <- lm(Yi ~ Xi) #Yi = aXi + b
summary(model)
plot(Xi, Yi)
lines(x, model$coefficients[1] + model$coefficients[2]*x, col = "blue", lw = 3)