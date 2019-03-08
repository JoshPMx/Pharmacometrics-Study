###################################################
### chunk number 2: <
###################################################
# create a vector called _a_ containing the numbers 1 - 10
# 创建一个名为a的变量，其为1到10。
a <- 1:10


###################################################
### chunk number 3: 
###################################################
# In the above example 'a' was 'assigned' the numbers 1 - 10
# the 'assignment' operator is '<-'

# create vector then add information
a <- vector("numeric",10) #创建一个包含10个数值型类型的向量
a[1:10] <- 1:10 #向向量中输入信息


###################################################
### chunk number 4: 
###################################################
# create a 2x2 matrix called 'ma' containing the numbers 1 - 4
#创建一个2*2的矩阵，不以行优先。
ma <- matrix(c(1:4), 
             nrow = 2,
             ncol = 2,
             byrow = F
             )
ma


###################################################
### chunk number 5: 
###################################################
# a slightly different version of 'ma' when 'byrow=T'      
#同上，以行优先。
ma <- matrix(c(1:4), 
             nrow = 2,
             ncol = 2,
             byrow = T
             )             
ma


###################################################
### chunk number 6: 
###################################################
# create a 2x2 matrix containing characters rather than numbers
# we do not specify 'byrow' so the default value of 'F' is used
# 创建一个以字符串构建的矩阵。
clra <- c("red","white")
clrb <- c("blue","stars")
flag <- matrix(c(clra,clrb),
              nrow = 2,
              ncol = 2
              )
flag


###################################################
### chunk number 7: 
###################################################
# can't mix data types in a matrix and get expected results
#不能数据和字符串混用于一个矩阵中，如果放在一起，则以字符串的形式展示。
a <- 1:2
mixm <- matrix(c(clra,a),
              nrow = 2,
              ncol = 2
              )              
mixm               


###################################################
### chunk number 8:  eval=FALSE
###################################################
## b[[1]]
## b$name


###################################################
### chunk number 9: 
###################################################
# create a list with the components 'breed', 'ages', 'colors'
# we can start by creating each component then making the list
#创建一个list
breed <- c("beagle","irish setter", "mix")
ages <- c(1, 5, 3)
colors <- c("brown","tan","red")
Lsta <- list(breed, ages, colors)
Lsta


###################################################
### chunk number 10: 
###################################################
# we could have also created 'Lsta' in one step
#也可以直接建立一个list
Lsta <- list(breed = c("beagle","irish setter", "mix"),
             ages = c(1, 5, 3),
             colors = c("brown","tan","red")
             )


###################################################
### chunk number 11: 
###################################################
# create a data frame called 'df1' from five vectors
#创建一个数据框
id <- c(1,3,5,7)
age <- c(35, 46, 50, 25)
wt <- c(70, 100, 67, 40)
sex <- as.factor(c("male","male","female","male")
                 )
trt <- as.logical(c('T','F','T',NA)
                 )

df1 <- data.frame(id, age, wt, sex, trt)

# typing the data frame name (df1) at the R prompt
#  prints out the components of df1
#查看data frame df1
df1


###################################################
### chunk number 12: 
###################################################
#show internal structure df1
str(df1)


###################################################
### chunk number 13: 
###################################################
a <- c(1,2,3,6,10)


###################################################
### chunk number 14: 
###################################################
b <- c(1:5)
b1 <- seq(from=1,to=5)


###################################################
### chunk number 15: 
###################################################
b2 <- seq(from=1, to=5, by=0.5)
b2


###################################################
### chunk number 16: 
###################################################
b3 <- seq(from=1, to=5, length.out=10)
b3


###################################################
### chunk number 17: 
###################################################
d <- c(3,4)
d1 <- rep(d, times=4)
d1


###################################################
### chunk number 18: 
###################################################
e <- rep(seq(from=1, to=10), times=4) 



###################################################
### chunk number 19: 
###################################################
a <- c(1:5)
b <- c(2:6)
a+b


###################################################
### chunk number 20: 
###################################################
a <- c(1:5)
b <- 2
c <- 1
a*b+c


###################################################
### chunk number 21: 
###################################################
a <- data.frame("time" = c(0:10), 
                "conc" = c(0, 20, 100, 96, 94, 92, 
                                   90, 60, 30, 5, 1),
                "dose" = rep(5,11)
                )
a$conc <- a$conc * 10
# we have multiplied the "conc" column by 10 and put the
# new values back into the 'a' data frame
a$conc10 <- a$conc * 10


###################################################
### chunk number 22: 
###################################################
a <- data.frame("time" = c(0:10), 
                "conc" = c(0, 20, 100, 96, 94, 92, 
                                   90, 60, 30, 5, 1),
                "dose" = rep(5,11)
                )
a2 <- a*5
# we have multiplied all of the columns in 'a' by 5. 
# BE CAREFUL this only works if there 
# are no character or factor columns
mly <- c(1,2)
a3 <-a*mly
# This code works but lets see what the results are.
a3


###################################################
### chunk number 23: 
###################################################
a <- data.frame("time" = c(0:10), 
                "conc" = c(0, 20, 100, 96, 94, 92,
                                   90, 60, 30, 5, 1),
                "dose" = rep(5,11)
                )
# data frame 'a' contains three columns 
# with 11 rows per column 
# select only the 'time' and 'conc' columns and 
# place in new data frame call 'f1'
f1 <- a[ ,c("time","conc")]
#or
f1 <- a[ ,c(1,2)]


###################################################
### chunk number 24: 
###################################################
a <- data.frame("time" = c(0:10), 
                "conc" = c(0, 20, 100, 96, 94, 92, 
                                   90, 60, 30, 5, 1),
                "dose" = rep(5,11)
                )
# select only the first 5 rows and all columns
f2 <- a[1:5,]
# select a$time <=5
f3 <- a[a$time<=5,] 


###################################################
### chunk number 25:  eval=FALSE
###################################################
## read.table(file, header=FALSE, sep, row.names, col.names, 
##                     as.is=F, na.strings="NA", skip=0)
## 
## # importing a simple comma delimited *.csv might look like
## 
## test <- read.table(file="/home/billk/example.csv", 
##                   header=TRUE, 
##                   sep=".", 
##                   skip=0)


###################################################
### chunk number 26:  eval=FALSE
###################################################
## 
## write.table(data, file = "", sep = ",", append = F, quote = F, 
##             col.names=T, row.names=F, na = 'NA', eol = "\n")
## 
## # exporting a simple R data frame might look like
## 
## write.table(x = test1, 
##             file = "/home/billk/exampleout.csv", 
##             sep = ",", 
##             append = F, 
##             quote = F, 
##             col.names=T,
##             row.names=F, 
##             na = '.')
## 
## 


###################################################
### chunk number 27:  eval=FALSE
###################################################
## library("package name")


###################################################
### chunk number 28:  eval=FALSE
###################################################
## library(lattice) # loads the lattice graphics package
## installed.packages() # lists all available packages for a given R installation


