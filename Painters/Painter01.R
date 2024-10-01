library (MASS)
colors = c("red","orange","yellow","green","blue","magenta","black","purple")
painter_schoolcomp_average = tapply(painters[[1]], painters[[5]], mean)
painter_schooldrawing_average = tapply(painters[[2]], painters[[5]], mean)
painter_schoolcolors_average = tapply(painters[[3]], painters[[5]], mean)
painter_schoolexpression_average = tapply(painters[[4]], painters[[5]], mean)
painter_superaverage = (painter_schoolcomp_average + painter_schooldrawing_average+painter_schoolcolors_average+painter_schoolexpression_average)/4

barplot(painter_superaverage, col=colors,main = "Sum of Average Score for 8 schools")
scorelevels=c("A","B","C","D","E","F","G","H")

piepercent=100*painter_superaverage/sum(painter_superaverage)
pie(painter_superaverage,col = colors,labels=paste0(scorelevels,"(",piepercent,"%)"),main="Sum of AverageScore for 8 schools")
legend("topleft",c("A","B","C","D","E","F","G","H"),fill=colors,cex=0.5)