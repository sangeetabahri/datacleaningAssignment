### Project Assignment - Analysis

### Path for the data files
dataDir <- "./data/"

## Reading features
features <- read.table(paste0(dataDir,"features.txt"))

## Reading activities
activity <- read.table(paste0(dataDir,"activity_labels.txt"))

## Reading X data ( X_tain, and X_test)
xTrain <- read.table(paste0(dataDir,"train/X_train.txt"))
xTest <- read.table(paste0(dataDir,"test/X_test.txt"))

## Merging the two data set with rbind, both data file have same number of columns
allX <- rbind(xTrain,xTest)

## Creating Xsubset for columns name containing "mean() or std()" rest are dropped.
## the number of columns is same as number of observations from features.txt
colnames(allX) <- features[,2]

## Creating Xsubset for columns name containing "mean() or std()" rest are dropped.
XSubset <- allX[,grepl("mean()",colnames(allX)) | grepl("std()",colnames(allX))]


## Reading Y data ( Y_tain, and Y_test)
yTrain <- read.table(paste0(dataDir,"train/Y_train.txt"))
yTest <- read.table(paste0(dataDir,"test/Y_test.txt"))

## Merging the two data set with rbind, both data file have same number of columns
allY <- rbind(yTrain,yTest)

## The id in Y match to activity_id, will replace activity description in Y
## create a factor, and then by using mapvalues from plyr package one can achieve this very easily.
yFactor <- as.factor(allY[,1])
## mapvalues from the plyr package can do this efficiently. Declaring the library.
library(plyr)
yFactor <- mapvalues(yFactor,from = as.character(activity[,1]), to = as.character(activity[,2]))

## Read subjec data
subjectTrain <- read.table(paste0(dataDir,"train/subject_train.txt"))
subjectTest <- read.table(paste0(dataDir,"test/subject_test.txt"))
## Combine all subjects with rbind
allSubjects <- rbind(subjectTrain,subjectTest)
## Assign Column Name to subject
colnames(allSubjects) <- "subjectid"

## Combine subject, Y data, and X data with cbind
allData <- cbind(allSubjects,yFactor,XSubset)
colnames(allData)[2] <- "activity"

library("reshape2")

## Calculating average of each variable groupby "subject and activity"
grpData <- melt(allData,id=c("subjectid","activity"))
finalData <- dcast(grpData,subjectid + activity ~ variable,mean)
write.table(finalData,"./tidy_data.txt",row.name=F)

