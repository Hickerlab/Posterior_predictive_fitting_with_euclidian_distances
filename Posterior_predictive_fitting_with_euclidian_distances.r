    
rm(list=ls(all=TRUE))
#print(getwd())


#install.packages("VGAM", dependencies=TRUE, repo="http://cran.stat.sfu.ca/")

Posterior <- scan(("PosteriorOBS"),nlines=500)
POSTVEC<-matrix(Posterior,ncol=92,byrow=T)
#500 accepted sumstat vectors
MZ_OBS<- scan(("obsSumVectcrustaceans_WE_VICDIS"),nlines=1)
#observed sumstat vector
OBS<-matrix(MZ_OBS,ncol=92,byrow=T)

x<-OBS[1,c(15:20,27:32,57:52,69:74,81:86)]
#columns correspond to summary statistics one wants to use for calculation and plotting of euclidean distances
obs<-matrix(x,ncol=36,byrow=T)
for (i in 1:500)

{
y<-POSTVEC[i,c(15:20,27:32,57:52,69:74,81:86)]
#yy<-matrix(OBS[1,c(15:20,27:32,57:52,69:74,81:86)],ncol=36,byrow=T)
yy<-matrix(y,ncol=36,byrow=T)



sum <- 0        
        for(j in 1:36)
            { sum <- sum + (obs[,j] - yy[,j])^2 }   
        
        eD <- sqrt(sum)       
  write(c(eD),file=paste("eDtotalwo3rd"),ncol=1,append=T)  

}


zz<-0
z<-0
x<-OBS[1,c(15,27,57,69,81)]
obs<-matrix(x,ncol=5,byrow=T)
for (i in 1:500)

{
y<-POSTVEC[i,c(15,27,57,69,81)]
yy<-matrix(OBS[1,c(15,27,51,57,69,81)],ncol=5,byrow=T)
yy<-matrix(y,ncol=5,byrow=T)

sum <- 0        
        for(j in 1:5)
            { sum <- sum + (obs[,j] - yy[,j])^2 }   
        
        eD <- sqrt(sum)       
  write(c(eD),file=paste("eD1wo3rd"),ncol=1,append=T)  
}


zz<-0
z<-0
x<-OBS[1,c(16,28,58,70,82)]
obs<-matrix(x,ncol=5,byrow=T)
for (i in 1:500)

{
y<-POSTVEC[i,c(16,28,58,70,82)]
yy<-matrix(OBS[1,c(16,28,58,70,82)],ncol=5,byrow=T)
yy<-matrix(y,ncol=5,byrow=T)

sum <- 0        
        for(j in 1:5)
            { sum <- sum + (obs[,j] - yy[,j])^2 }   
        
        eD <- sqrt(sum)       
  write(c(eD),file=paste("eD2wo3rd"),ncol=1,append=T)  
}


zz<-0
z<-0
x<-OBS[1,c(17,29,59,71,83)]
obs<-matrix(x,ncol=5,byrow=T)
for (i in 1:500)

{
y<-POSTVEC[i,c(17,29,59,71,83)]
yy<-matrix(OBS[1,c(17,29,59,71,83)],ncol=5,byrow=T)
yy<-matrix(y,ncol=5,byrow=T)

sum <- 0        
        for(j in 1:5)
            { sum <- sum + (obs[,j] - yy[,j])^2 }   
        
        eD <- sqrt(sum)       
  write(c(eD),file=paste("eD3wo3rd"),ncol=1,append=T)  
}


zz<-0
z<-0
x<-OBS[1,c(18,30,60,72,84)]
obs<-matrix(x,ncol=5,byrow=T)
for (i in 1:500)

{
y<-POSTVEC[i,c(18,30,60,72,84)]
yy<-matrix(OBS[1,c(18,30,60,72,84)],ncol=5,byrow=T)
yy<-matrix(y,ncol=5,byrow=T)

sum <- 0        
        for(j in 1:5)
            { sum <- sum + (obs[,j] - yy[,j])^2 }   
        
        eD <- sqrt(sum)       
  write(c(eD),file=paste("eD4wo3rd"),ncol=1,append=T)  
}



zz<-0
z<-0
x<-OBS[1,c(19,31,61,73,85)]
obs<-matrix(x,ncol=5,byrow=T)
for (i in 1:500)

{
y<-POSTVEC[i,c(19,31,61,73,85)]
yy<-matrix(OBS[1,c(19,31,61,73,85)],ncol=5,byrow=T)
yy<-matrix(y,ncol=5,byrow=T)

sum <- 0        
        for(j in 1:5)
            { sum <- sum + (obs[,j] - yy[,j])^2 }   
        
        eD <- sqrt(sum)       
  write(c(eD),file=paste("eD5wo3rd"),ncol=1,append=T)  
}



zz<-0
z<-0
x<-OBS[1,c(20,32,63,74,86)]
obs<-matrix(x,ncol=5,byrow=T)
for (i in 1:500)

{
y<-POSTVEC[i,c(20,32,63,74,86)]
yy<-matrix(OBS[1,c(20,32,63,74,86)],ncol=5,byrow=T)
yy<-matrix(y,ncol=5,byrow=T)

sum <- 0        
        for(j in 1:5)
            { sum <- sum + (obs[,j] - yy[,j])^2 }   
        
        eD <- sqrt(sum)       
  write(c(eD),file=paste("eD6wo3rd"),ncol=1,append=T)  

}



EDtotal <- scan(("eDtotal"),nlines=500)
EuDtotal<-matrix(EDtotal,ncol=1,byrow=T)


ED1 <- scan(("eD1wo3rd"),nlines=500)
EuD1<-matrix(ED1,ncol=1,byrow=T)
ED2 <- scan(("eD2wo3rd"),nlines=500)
EuD2<-matrix(ED2,ncol=1,byrow=T)
ED3 <- scan(("eD3wo3rd"),nlines=500)
EuD3<-matrix(ED3,ncol=1,byrow=T)
ED4 <- scan(("eD4wo3rd"),nlines=500)
EuD4<-matrix(ED4,ncol=1,byrow=T)
ED5 <- scan(("eD5wo3rd"),nlines=500)
EuD5<-matrix(ED5,ncol=1,byrow=T)
ED6 <- scan(("eD6wo3rd"),nlines=500)
EuD6<-matrix(ED6,ncol=1,byrow=T)


pdf("6taxafits_eDwo_3rd.pdf")
hist(EuD2[,1],br=15,col="white",xlim=c(0,5),prob=TRUE)
lines(density(EuD1[,1],bw=0.1),col="black",lty=1,main="species 1")
lines(density(EuD2[,1],bw=0.1),col="black",lty=2,main="species 2")
lines(density(EuD3[,1],bw=0.1),col="black",lty=4,main="species 3")
lines(density(EuD4[,1],bw=0.1),col="black",lty=6,main="species 4")
lines(density(EuD5[,1],bw=0.1),col="black",lty=8,main="species 5")
lines(density(EuD6[,1],bw=0.1),col="black",lty=10,main="species 6")
dev.off()


