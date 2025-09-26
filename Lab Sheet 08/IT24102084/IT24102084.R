setwd("C:\\Users\\M.D.I.Mahavithana\\Desktop\\IT24102084")

data<-read.table("Exercise - LaptopsWeights.txt", header=TRUE)
fix (data)
attach (data)
attach (data)

popmn<-mean (Weight.kg.)
popvar<-var (Weight.kg.)
popsd<-sqrt(var (Weight.kg.))

samples<-c()
n<-c()

for(i in 1:25){
  s<-sample(Weight.kg.,6,replace = TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('S',i))
}

colnames(samples)=n

s.means<-apply(samples,2,mean)
s.sds<-sqrt(apply(samples,2,var))

samplemean<-mean(s.means)
samplesd<-sqrt(var(s.means))

popmn
samplemean

truesd=popsd/5
samplesd
