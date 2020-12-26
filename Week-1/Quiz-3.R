# Question #5
set.seed(42)

m = 1e5
a = 5
b = 3

theta = rbeta(m, a,b)
head(theta)
mean(theta)
odd_samples = theta/(1-theta)
head(odd_samples)
mean(odd_samples)

# Question #6
ind = odd_samples > 1
head(ind)
table(ind)
mean(ind)

# Question #7
y = rnorm(m, 0, 1)
quantile(y, probs = 0.3)
qnorm(p = 0.3, mean = 0, sd = 1)

# Question #8
sqrt(5.2/5000)
