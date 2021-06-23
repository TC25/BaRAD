#date: 2021-6-19
#authors: TC Chakraborty | tc.chakraborty@yale.edu

#Load required libraries
library(randomForest)
library(openxlsx)
library(ggplot2)
library(gridExtra)
library(rsq)
library(ggpubr)
library(randomForestExplainer)


#Load in training data for shortwave radiation
Train= read.csv('../All_v3.csv')
#Training random forest model and save it
rf <- .(GEBA ~ MERRA+CLDFRAC+SAOD+AAOD+COD+Zenith+Alt, data = Train, importance = TRUE, ntree=2000)
save(rf,file = paste("../Short_rf.RData", sep=''))

#Check variable importance and save as csv
#imp <- as.data.frame(sort(importance(rf)[,1],decreasing = TRUE),optional = T)
imp <- as.data.frame(importance(rf)[,1],optional = T)
names(imp) <- "% Inc MSE"
imp

write.csv(imp,paste("../Short_rf_imp.csv", sep=''))

#Load in training data for diffuse radiation
Train= read.csv('../All_diff_v3.csv')
#Training random forest model and save it
rf <- randomForest(GEBA ~ MERRA+CLDFRAC+SAOD+AAOD+COD+Zenith+Alt, data = Train, importance = TRUE, ntree=2000)
save(rf,file = paste("Diff_rf.RData", sep=''))

#Check variable importance and save as csv
#imp <- as.data.frame(sort(importance(rf)[,1],decreasing = TRUE),optional = T)
imp <- as.data.frame(importance(rf)[,1],optional = T)
imp

write.csv(imp,paste("../Diff_rf_imp.csv", sep=''))
