setwd("C:\\Users\\M.D.I.Mahavithana\\Desktop\\IT24102084")

#Null hypotheses: customer chooses a snack type will be 0.25.
#Alternative hypothesis: At least a customer choosing a snack type such that probability will be different from 0.25

observed <- c(120,95,85,100)
prob <- c(.25, .25, .25, .25)

chisq.test(x=observed, p=prob)

#p value for the test = 0.089
#0.08 > 0.05
#conclusion: Since p value is greater than 0.05, do not reject null hypothesisat 5% level
#of significanse. Therefore the probability that a customer choosing a snack will be same which is 0.25.