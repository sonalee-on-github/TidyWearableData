library(data.table)

features <- fread("features.txt", col.names = c("index", "featureNames"))
activityLabels <- fread("activity_labels.txt", col.names = c("classLabels", "activityName"))
featuresDesired <- grep("(mean|std)\\(\\)", features[, featureNames])
measurements <- features[featuresDesired, featureNames]
measurements <- gsub('[()]', '', measurements)

testData <- fread("test/X_test.txt")[, featuresDesired, with = FALSE]
data.table::setnames(testData, colnames(testData), measurements)
testActivities <- fread("test/y_test.txt", col.names = c("Activity"))
testSubjects <- fread("test/subject_test.txt", col.names = c("Subject_Number"))
testData <- cbind(testSubjects, testActivities, testData)

trainData <- fread("train/X_train.txt")[, featuresDesired, with = FALSE]
data.table::setnames(trainData, colnames(trainData), measurements)
trainActivities <- fread("train/y_train.txt", col.names = c("Activity"))
trainSubjects <- fread("train/subject_train.txt", col.names = c("Subject_Number"))
trainData <- cbind(trainSubjects, trainActivities, trainData)

combinedData <- rbind(trainData, testData, 'fill' = TRUE)  
combinedData$Activity <- ifelse(combinedData$Activity == "1", activityLabels[1, 2], combinedData$Activity)
combinedData$Activity <- ifelse(combinedData$Activity == "2", activityLabels[2, 2], combinedData$Activity)
combinedData$Activity <- ifelse(combinedData$Activity == "3", activityLabels[3, 2], combinedData$Activity)
combinedData$Activity <- ifelse(combinedData$Activity == "4", activityLabels[4, 2], combinedData$Activity)
combinedData$Activity <- ifelse(combinedData$Activity == "5", activityLabels[5, 2], combinedData$Activity)
combinedData$Activity <- ifelse(combinedData$Activity == "6", activityLabels[6, 2], combinedData$Activity)

library(dplyr)
library(tidyr) 
library(reshape2)

combinedData <- transform(combinedData, unlist(combinedData$Activity))

combinedData$Activity <- as.factor(unlist(combinedData$Activity))


combinedData[["Subject_Number"]] <- factor(combinedData[, Subject_Number])
combinedData <- reshape2::melt(data = combinedData, id = c("Subject_Number", "Activity"))
combinedData <- reshape2::dcast(data = combinedData, Subject_Number + Activity ~ variable, fun.aggregate = mean)


write.table(x = combinedData, file = "tidyWearableData.txt", row.names = FALSE)
