# 1. Simulate phi_i from Beta(2,2)
# 2. Simulate y_i using phi from Bin(10, phi_i) 

set.seed(42)

m = 1e5
a = 2
b = 2
phi = rbeta(m, 2,2)
y = rbinom(n = m, size = 10, prob = phi_i)
head(y)

table(y)
table(y)/m
plot(table(y)/m) # NOT a Binomial dist but a Beta-Binomial dist

mean(y)
