#date: 2021-6-19
#authors: TC Chakraborty | tc.chakraborty@yale.edu

#Load required libraries

library(randomForest)
library(openxlsx)
library(ggplot2)
library(gridExtra)
library(rsq)
library(ggpubr)

#Load random forest models

load("../Short_rf.RData")
rf_short<-rf
load("../Diff_rf.RData")
rf_diff<-rf

#Load all MERRA-2 files

temp = list.files(path='../All_compiled/',pattern=glob2rx("*.csv"))


#Correct data and save files
for (i in 1:length(temp)){
  Dat_short<-assign(temp[i], read.csv(paste('../All_compiled/',temp[i], sep='')))
  Short <- data.frame(predict(rf_short,Dat_short))
  Dat_short$MERRA=Dat_short$MERRA_diff
  Diff <- data.frame(predict(rf_diff,Dat_short))
  Pred<-data.frame(Short, Diff)
  colnames(Pred)<-c("Pred_short","Pred_diff")
  write.table(Pred, file = paste('../All_Corrected/Corrected_',temp[i],'.csv',sep = ""), sep = ",", dec =".", row.names = F)
}