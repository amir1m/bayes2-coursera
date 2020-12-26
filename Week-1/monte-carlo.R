set.seed(42)

m = 10000
a = 2.0
b = 1.0 / 3.0

theta = rgamma(m, shape = a, rate = b)
hist(theta, freq = FALSE)
curve(dgamma(x, shape = a, rate = b), col="blue", add = TRUE)

#Mean
sum(theta)/m
mean(theta)
a/b

#Variance
var(theta)
a/b^2

#CDF
ind = theta < 5.0
head(ind)
mean(ind)
pgamma(q = 5.0, shape = a, rate = b)

#0.9 Qunatile or 90th percentile
quantile(theta, probs = 0.9) #Monte carlo approximation to qunatile
qgamma(p = 0.9, shape = a, rate = b) #True value


