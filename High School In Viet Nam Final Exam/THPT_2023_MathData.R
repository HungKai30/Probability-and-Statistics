# foward directory to CSV file
# import dataset to the name you want
thpt2023 <- read.csv("C:/Users/Admin/OneDrive/Documents/GitHub/Probability-and-statistics/High School In Viet Nam Final Exam/THPT_2023.csv")
# struct the data 
str(thpt2023)
# import data that has removed every NA value
mathdata<-c(na.omit(thpt2023$toan))
#calculate the mean of math data , note that na.rm is NA remove = True
meantoan <- mean(thpt2023$toan,na.rm = T)
#standard deviation of math data
sdtoan <- sd(thpt2023$toan,na.rm = T)
#check the results
print(meantoan)
#check the results
print(sdtoan)
#plot the data
plot(mathdata,dnorm(mathdata,6.250557,1.633336),
     xlab = "f(math)",
     ylab = "Math",
     main = "norm distri")

