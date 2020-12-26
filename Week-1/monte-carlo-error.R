set.seed(42)

m = 10000
a = 2.0
b = 1.0 / 3.0

theta = rgamma(m, shape = a, rate = b)

##Std Err
se = sd(theta)/sqrt(m) # Central Limit Theorem
se

#Confidence interval
mean(theta) - 2*se #Lower edge of CI
mean(theta) + 2*se #Upper edge of CI

#Qunatile CDF
ind = theta < 5.0
mean(ind)
pgamma(5.0, shape = a, rate = b)
se = sd(ind) / sqrt(m)
2*se



