data <- read.csv("C:/Users/Admin/OneDrive/Documents/GitHub/Probability-and-statistics/High School In Viet Nam Final Exam/THPT_2023.csv")

str(data)

#math 

math <-data$toan
mathdata<- na.omit(math)
mean_math <- mean(mathdata,na.rm = T)
sd_math <- sd(mathdata,na.rm = T)
hist(mathdata,prob =T,col = "blue",main = "Histogram of Math")
mathrnorm <- rnorm(length(mathdata),mean = mean_math,sd= sd_math)
par(new = T) #samegraph
lines(density(mathrnorm),col="red")#lines of density

# literature 

van <-data$ngu_van
vandata<- na.omit(van)
mean_van <- mean(vandata,na.rm = T)
sd_van <- sd(vandata,na.rm = T)
hist(vandata,prob =T,col = "pink",main= "Histogram of Literature")
vanrnorm <- rnorm(length(vandata),mean = mean_van,sd= sd_van)
par(new = T)
lines(density(vanrnorm),col="red")

#physics
physics<-data$vat_li
physicsdata<- na.omit(physics)
mean_physics <- mean(physicsdata,na.rm = T)
sd_physics <- sd(physicsdata,na.rm = T)
hist(physicsdata,prob =T,col = "purple",main = "Histogram of Physics")
physicsrnorm <- rnorm(length(physicsdata),mean = mean_physics,sd= sd_physics)
par(new = T)
lines(density(physicsrnorm),col="red")


#chemistry

chemistry<-data$hoa_hoc
chemistrydata<- na.omit(chemistry)
mean_chemistry <- mean(chemistrydata,na.rm = T)
sd_chemistry <- sd(chemistrydata,na.rm = T)
hist(chemistrydata,prob =T,col = "green",main = "Histogram of Chemistry")
chemistryrnorm <- rnorm(length(chemistrydata),mean = mean_chemistry,sd= sd_chemistry)
par(new = T)
lines(density(chemistryrnorm),col="red")
#sinhhoc
biology<-data$sinh_hoc
biologydata<- na.omit(biology)
mean_biology <- mean(biologydata,na.rm = T)
sd_biology <- sd(biologydata,na.rm = T)
hist(biologydata,prob =T,col = "yellow",main= "Histogram of Biology")
biologyrnorm <- rnorm(length(biologydata),mean = mean_biology,sd= sd_biology)
par(new = T)
lines(density(biologyrnorm),col="red")
#lichsu
history<-data$lich_su
historydata<- na.omit(history)
mean_history <- mean(historydata,na.rm = T)
sd_history <- sd(historydata,na.rm = T)
hist(historydata,prob =T,col = "black",main="Histogram of History")
historyrnorm <- rnorm(length(historydata),mean = mean_history,sd= sd_history)
par(new = T)
lines(density(historyrnorm),col="red")
#diali
geology<-data$dia_li
geologydata<- na.omit(geology)
mean_geology <- mean(geologydata,na.rm = T)
sd_geology <- sd(geologydata,na.rm = T)
hist(geologydata,prob =T,col = "grey",main="Histogram of Geology")
geologyrnorm <- rnorm(length(geologydata),mean = mean_geology,sd= sd_geology)
par(new = T)
lines(density(geologyrnorm),col="red")
#gdcd
giaoduc<-data$gdcd
giaoducdata<- na.omit(giaoduc)
mean_giaoduc <- mean(giaoducdata,na.rm = T)
sd_giaoduc <- sd(giaoducdata,na.rm = T)
hist(giaoducdata,prob =T,col = "blue",main="Histogram of GDCD")
giaoducrnorm <- rnorm(length(giaoducdata),mean = mean_giaoduc,sd= sd_giaoduc)
par(new = T)
lines(density(giaoducrnorm),col="red")
#tienganh
english <- data$ma_ngoai_ngu == "N1"
englishdata<- c(data$ngoai_ngu[english])
mean_english <- mean(englishdata,na.rm = T)
sd_english <- sd(englishdata,na.rm = T)
hist(englishdata,prob =T,col = "violet",main="Histogram of English")
englishrnorm <- rnorm(length(englishdata),mean = mean_english,sd= sd_english)
par(new = T)
lines(density(englishrnorm),col="red")