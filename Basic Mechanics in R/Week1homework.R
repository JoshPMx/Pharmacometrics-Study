# homework answers for Week 1 lab
setwd('D:/Studies/r/Pharmacometrics/mi205_materials/01/basicmechanics')
getwd()
week1<- read.table("MI205/basicmechanics/problems/week1.csv",skip=0,header=TRUE,sep=',')
dim(week1)# 50 6
summary(week1)
week1b <- week1[,c('id','time','conc')]
week1b$nid <- week1b$id
write.csv(
    week1b,
    "MI205/basicmechanics/problems/week1.csv",
    row.names=FALSE
)
head(week1)
head(week1b)
