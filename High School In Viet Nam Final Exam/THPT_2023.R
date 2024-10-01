# foward directory to CSV file
# import dataset to the name you want
data <- read.csv("C:/Users/Admin/OneDrive/Documents/GitHub/Probability-and-statistics/High School In Viet Nam Final Exam/THPT_2023.csv")
# struct the data 
str(data)
# show the D01 score
# D01 have 3 score : Math, Literature, English

English <- data$ma_ngoai_ngu == "N1"

# frame the data from 3 score
df <-data.frame(x=c(data$toan[English]),y=c(data$ngu_van[English]),z=c(data$ngoai_ngu[English]))
# remove all NA value
df=na.omit(df)

# D01 calculation
D01 <-c(df$x+df$y+df$z)
# show D01
print(D01)
#calculate Mean
mean(D01)
#calculate Median
median(D01)
#calculate Variance
var(D01)
#calculate Standard Deviation
sd(D01)