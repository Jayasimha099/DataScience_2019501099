setwd("D:\\msit2\\DataMining\\Data Mining Assignments\\DM Assignment5")
x<-c(1,2,2.5,3,3.5,4,4.5,5,7,8,8.5,9,9.5,10)
center1<-1
center2<-2
for (k in 2:10){
  cluster1<-x[abs(x-center1[k-1])<=abs(x-center2[k-1])]
  cluster2<-x[abs(x-center1[k-1])>abs(x-center2[k-1])]
  center1[k]<-mean(cluster1)
  center2[k]<-mean(cluster2)
}
print(cluster1)
print(cluster2)
kmeans(x,2)

x1<-c(1,2)
x2<-c(5,10)
res = ((x1[1]-x2[1])^2 + (x1[2]-x2[2])^2)^0.5
print(res)

x1<-c(1,2,3,6)
x2<-c(5,10,4,12)
res = ((x1[1]-x2[1])^2 + (x1[2]-x2[2])^2 + (x1[3]-x2[3])^2 + (x1[4]-x2[4])^2)^0.5
print(res)
