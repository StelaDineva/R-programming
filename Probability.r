f=function()
{
    sample(5,1)
}
x=simple.sim(1000,f)
count=0
for(i in x) 
    if(i==1||i==2) count=count+1
print("Probability is")
p=count/1000
p 
count=0
m = 1000
alpha=0.05
phat = rbinom(m,n,p)/n 
SE = sqrt(phat*(1-phat)/n)
zstar = qnorm(1-alpha/2)
for(i in phat) 
    if ((p>=(i-zstar*SE))&&(p<=(i + zstar*SE)))  count=count+1
count/m

