set.seed(123) # for reproducibility
size <- 50
prob <- 0.5
random_numbers <- rbinom(n = 50, size = size, prob = prob)

# Task 2: Describe the set of 50 random numbers and compare it with theoretical binomial distribution
summary(random_numbers) # basic statistics

hist(random_numbers, main = "Histogram of Random Numbers", xlab = "Random Numbers") # histogram

# Theoretical binomial distribution
x <- seq(0, size, 1)
y <- dbinom(x, size = size, prob = prob)
plot(x, y, type = "h", main = "Theoretical Binomial Distribution", xlab = "Random Numbers", ylab = "Density")
# Task 3: Test if the 50 random numbers follow a normal distribution
shapiro.test(random_numbers) # Shapiro-Wilk normality test
tx<-table(random_numbers)
tx
random_numbers
ntX<-as.numeric(rownames(tx))
ntX
ptX<-dnorm(x=ntX,mean = mean(random_numbers),sd= sd(random_numbers))
ptX
sum(ptX)
nptX<-ptX/sum(ptX)
nptX
sum(nptX)
(tx -50*nptX)^2 /(50*nptX)
chisq.test(random_numbers)
chisq.test(table(random_numbers))
chisq.test(random_numbers)
chihung<- (tx -50*nptX)^2 /(50*nptX)
chihung
random_numbers
sum(chihung)
chisq.test(x=ntX,p=nptX)
nptX
chisq.test(x=tx,p =nptX)

