# clear the whole R environment
rm(list=ls())

# having set the working directory where this code runs we can read the train files for
# measurements, subjects and activities
df_train = read.table("./train/X_train.txt", header = F)
sub_train= read.table("./train/subject_train.txt", header = F)
act_train = read.table("./train/y_train.txt", header = F)

# we also read the test files for measurements, subjects and activities in the corresponding directory
df_test = read.table("./test/X_test.txt", header = F)
sub_test= read.table("./test/subject_test.txt", header = F)
act_test = read.table("./test/y_test.txt", header = F)

(activity = read.table("activity_labels.txt", header=F))

act_train_label = t( activity[act_train[, 1],2])
act_train =as.data.frame( t(act_train_label))

act_test_label = t( activity[act_test[, 1],2])
act_test =as.data.frame( t(act_test_label))

# since the file of features has unfriendly names for using with R we need to do some processing
# removing, for instance characters like "()", "-" and ","
features = read.table("features.txt", header = F)
# class(df_train_features)
# dim(df_train_features)
# head(df_train_features)

# select only the 2nd column
features = features[,2]

# let s verify the number of features is the same as the number of df_train columns
length(features)

# displaying the list of features
features

# formatting the names of features, appropriate for assigning as column names
# removing hyphens and "()"
features = gsub("-mean\\(\\)-X", "MeanX", features)
features = gsub("-mean\\(\\)-Y", "MeanY", features)
features = gsub("-mean\\(\\)-Z", "MeanZ", features)
features = gsub("-mean\\(\\)", "Mean", features)

features = gsub("-std\\(\\)-X", "StdX", features)
features = gsub("-std\\(\\)-Y", "StdY", features)
features = gsub("-std\\(\\)-Z", "StdZ", features)
features = gsub("-std\\(\\)", "Std", features)

features = gsub("-mad\\(\\)-X", "MadX", features)
features = gsub("-mad\\(\\)-Y", "MadY", features)
features = gsub("-mad\\(\\)-Z", "MadZ", features)
features = gsub("-mad\\(\\)", "Mad", features)

features = gsub("-max\\(\\)-X", "MaxX", features)
features = gsub("-max\\(\\)-Y", "MaxY", features)
features = gsub("-max\\(\\)-Z", "MaxZ", features)
features = gsub("-max\\(\\)", "Max", features)

features = gsub("-min\\(\\)-X", "MinX", features)
features = gsub("-min\\(\\)-Y", "MinY", features)
features = gsub("-min\\(\\)-Z", "MinZ", features)
features = gsub("-min\\(\\)", "Min", features)

features = gsub("-energy\\(\\)-X", "EnergyX", features)
features = gsub("-energy\\(\\)-Y", "EnergyY", features)
features = gsub("-energy\\(\\)-Z", "EnergyZ", features)
features = gsub("-energy\\(\\)", "Energy", features)

features = gsub("-iqr\\(\\)-X", "IqrX", features)
features = gsub("-iqr\\(\\)-Y", "IqrY", features)
features = gsub("-iqr\\(\\)-Z", "IqrZ", features)
features = gsub("-iqr\\(\\)", "Iqr", features)

features = gsub("-entropy\\(\\)-X", "EntropyX", features)
features = gsub("-entropy\\(\\)-Y", "EntropyY", features)
features = gsub("-entropy\\(\\)-Z", "EntropyZ", features)
features = gsub("-entropy\\(\\)", "Entropy", features)

features = gsub("-correlation\\(\\)-X,Y", "CorrelationXY", features)
features = gsub("-correlation\\(\\)-X,Z", "CorrelationXZ", features)
features = gsub("-correlation\\(\\)-Y,Z", "CorrelationYZ", features)

features = gsub("-sma\\(\\)", "Sma", features)

features = gsub("-meanFreq\\(\\)-X", "MeanFreqX", features)
features = gsub("-meanFreq\\(\\)-Y", "MeanFreqY", features)
features = gsub("-meanFreq\\(\\)-Z", "MeanFreqZ", features)
features = gsub("-meanFreq\\(\\)", "MeanFreq", features)

features = gsub("-skewness\\(\\)-X", "SkewnessX", features)
features = gsub("-skewness\\(\\)-Y", "SkewnessY", features)
features = gsub("-skewness\\(\\)-Z", "SkewnessZ", features)
features = gsub("-skewness\\(\\)", "Skewness", features)

features = gsub("-kurtosis\\(\\)-X", "KurtosisX", features)
features = gsub("-kurtosis\\(\\)-Y", "KurtosisY", features)
features = gsub("-kurtosis\\(\\)-Z", "KurtosisZ", features)
features = gsub("-kurtosis\\(\\)", "Kurtosis", features)

# before removing hyphens and "()" we need to fix the file features.txt. The name of features that have 
# "bandEnergy()<band range>" inside lacked the distiguishing X, Y or Z which caused features 
# names won't be assigned to the dataset
features = gsub("-bandsEnergy\\(\\)-X", "BandsEnergyX", features)
features = gsub("-bandsEnergy\\(\\)-Y", "BandsEnergyY", features)
features = gsub("-bandsEnergy\\(\\)-Z", "BandsEnergyZ", features)

features = gsub("-arCoeff\\(\\)-X,1", "ArCoeffX1", features)
features = gsub("-arCoeff\\(\\)-X,2", "ArCoeffX2", features)
features = gsub("-arCoeff\\(\\)-X,3", "ArCoeffX3", features)
features = gsub("-arCoeff\\(\\)-X,4", "ArCoeffX4", features)

features = gsub("-arCoeff\\(\\)-Y,1", "ArCoeffY1", features)
features = gsub("-arCoeff\\(\\)-Y,2", "ArCoeffY2", features)
features = gsub("-arCoeff\\(\\)-Y,3", "ArCoeffY3", features)
features = gsub("-arCoeff\\(\\)-Y,4", "ArCoeffY4", features)

features = gsub("-arCoeff\\(\\)-Z,1", "ArCoeffZ1", features)
features = gsub("-arCoeff\\(\\)-Z,2", "ArCoeffZ2", features)
features = gsub("-arCoeff\\(\\)-Z,3", "ArCoeffZ3", features)
features = gsub("-arCoeff\\(\\)-Z,4", "ArCoeffZ4", features)

features = gsub("-arCoeff\\(\\)1", "ArCoeff1", features)
features = gsub("-arCoeff\\(\\)2", "ArCoeff2", features)
features = gsub("-arCoeff\\(\\)3", "ArCoeff3", features)
features = gsub("-arCoeff\\(\\)4", "ArCoeff4", features)

# removing hyphens
features = gsub("-maxInds-X", "MaxIndsX", features)
features = gsub("-maxInds-Y", "MaxIndsY", features)
features = gsub("-maxInds-Z", "MaxIndsZ", features)
features = gsub("-maxInds", "MaxInds", features)

features = gsub("gravity", "Gravity", features)

features = gsub("-1,8", "1_8", features)
features = gsub("-9,16", "9_16", features)
features = gsub("-17,24", "17_24", features)
features = gsub("-25,32", "25_32", features)
features = gsub("-33,40", "33_40", features)
features = gsub("-41,48", "41_48", features)
features = gsub("-49,56", "49_56", features)
features = gsub("-57,64", "57_64", features)

features = gsub("-1,16", "1_16", features)
features = gsub("-17,32", "17_32", features)
features = gsub("-33,48", "33_48", features)
features = gsub("-49,64", "49_64", features)

features = gsub("-1,24", "1_24", features)
features = gsub("-25,48", "25_48", features)
features = gsub("-17,24", "17_24", features)

features = gsub("\\(", "", features)
features = gsub("\\)", "", features)
features = gsub(",", "", features)

# verifying features names
features

# assigning pre processed feature names to the dataframe 
names(df_train) = features
names(df_test) = features

# also assigning appropriate names to the vector of subjects and activities
#--------------------------------------

names(sub_train)="subject"
names(act_train) = "activity"

#--------------------------------------
names(sub_test)="subject"
names(act_test) = "activity"

# binding subject, activity and dataframe columns of set train and df_test
#-------------------------------------------

df_train = cbind(sub_train, act_train, df_train)
df_test = cbind(sub_test, act_test, df_test)

# now binding df_train and df_test dataframes
#-------------------------------------------------
df_all = rbind(df_train, df_test)

library(dplyr)
df_reduced = select(df_all, subject | activity | contains("Mean") | contains("Std")  )

# summarizing

df_aggdata = aggregate(df_reduced, by=list(df_reduced$subject, df_reduced$activity),
                      FUN = mean, na.rm=TRUE)

# remove unneeded columns and rename new aggregates columns
df_aggdata = df_aggdata[, -c(3,4)] 
colnames(df_aggdata)[1:2] = c("subject", "activity")

write.table(df_aggdata, "summarized.txt")
