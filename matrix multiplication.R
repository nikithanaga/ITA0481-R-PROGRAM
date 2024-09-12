m1<-matrix(c(1,2,3,4),nrow=2,ncol=2,byrow=TRUE)
m2<-matrix(c(2,3,4,5),nrow=2,ncol=2,byrow=TRUE)
r<-m1%*%m2
print(r)