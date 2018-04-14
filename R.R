#If I execute the expression x <- 4L in R, what is the class of the object `x' as determined by the `class()' function?
x<-4L
class(x) #"integer"
#What is the class of the object defined by the expression x <- c(4, "a", TRUE)?
y <- c(4, "a", TRUE)
class(y) # "character"
#If I have two vectors x <- c(1,3, 5) and y <- c(3, 2, 10), what is produced by the expression rbind(x, y)?
x<-c(1,3,5)
y<-c(3,2,10)
z<-rbind(x,y)
dim(z) #[1] 2 3 -2 rows and 3 columns matrix
#Suppose I have a vector x <- 1:4 and a vector y <- 2. What is produced by the expression x + y?
x<-1:4
y<-2
x+y #a numeric vector with elements 3, 4, 5, 6.
class(x+y) #numeric
#Suppose I have a vector x <- c(3, 5, 1, 10, 12, 6) and I want to set all elements of this vector that are less than 6 to be equal to zero. What R code achieves this? Select all that apply.
x<-c(3,5,1,10,12,6)
x[x<6]<-0
x
x<-c(3,5,1,10,12,6)
x
x[x%in%1:5]<-0
x[x<=5]<-0
x
#Use the Week 1 Quiz Data Set to answer questions 11-20.
c<-read.csv("C:/Users/blessy/Desktop/Personal/DataScience/Course-2/Practice/hw1_data.CSV")
#Extract the first 2 rows of the data frame and print them to the console. What does the output look like?
head(c,2)
#How many observations (i.e. rows) are in this data frame?
nrow(c) #153
#Extract the last 2 rows of the data frame and print them to the console. What does the output look like?
tail(c,2)
#What is the value of Ozone in the 47th row?
c[47,1] #21
#How many missing values are in the Ozone column of this data frame?
c1<-c[,1]
c1<-as.matrix(c1)
dim(c1)
c1
c1[!is.na(c1)]<-0
c1[is.na(c1)]<-1
c1
sum(c1) #37
#What is the mean of the Ozone column in this dataset? Exclude missing values (coded as NA) from this calculation.
c1<-c[,1]
mean(c1,na.rm=TRUE) #42.12931
#Extract the subset of rows of the data frame where Ozone values are above 31 and Temp values are above 90. What is the mean of Solar.R in this subset?
c2<-subset(c,c[,1]>31 & c[,4]>90) #c2<-subset(c,Ozone>31 & Temp>90)
c2
mean(c2[, 2], na.rm = TRUE) #212.8 #mean(c2[, "Solar.R"], na.rm = TRUE) 
#What is the mean of "Temp" when "Month" is equal to 6?
c3<-subset(c,Month ==6)
mean(c3[,"Temp"],na.rm = TRUE) #79.1
#What was the maximum ozone value in the month of May (i.e. Month is equal to 5)?
c4<-subset(c,Month ==5)
max(c4[,1],na.rm=TRUE) #115



