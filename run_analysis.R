## package needed for melt / dcast
library(reshape2)

## downloads and unzips Data set if not already there
filename <- "data.zip"
url1 = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if(!file.exists("data.zip")) {
  download.file(url1, filename, method = "curl")
}
if(!file.exists("UCI HAR Dataset")) {
  unzip(filename)
}

## reads features as character, and creates sorted index for mean and std columns
features <- as.character(read.table("UCI HAR Dataset/features.txt")[,2])
meanstd <- sort(c(grep("mean()",features), grep("std()",features)))


## only reads xtest data for cols in meanstd index to save time, rbinds together
xtest <- read.table("UCI HAR Dataset/test/X_test.txt")[,meanstd]
xtrain <- read.table("UCI HAR Dataset/train/X_train.txt")[,meanstd]
xdata <- rbind(xtest,xtrain)

## reads and rbinds subject data
subjecttest <- read.table("UCI HAR Dataset/test/subject_test.txt")
subjecttrain <- read.table("UCI HAR Dataset/train/subject_train.txt")
subjectdata <- rbind(subjecttest, subjecttrain)

## reads and rbinds activity data
ytest <- read.table("UCI HAR Dataset/test/y_test.txt")
ytrain <- read.table("UCI HAR Dataset/train/y_train.txt")
ydata <- rbind(ytest,ytrain)

## reads labels data, and overwrites activity indexes with labels
activitylabels <- read.table("UCI HAR Dataset/activity_labels.txt")
ydata$V1 <- activitylabels[ydata$V1,2]

## cbinds our data [subject + activity + meanstd variables]
alldata <- cbind(subjectdata, ydata, xdata)

## gives our data variable names
names(alldata) = c("subject","activity",features[meanstd])

## melts and casts our data as tidy and clean
alldatamelt <- melt(alldata, id = c("subject", "activity"))
tidy <- dcast(alldatamelt, subject + activity ~ variable, mean)

## changes column headers to reflect mean summary
avgof <- c("","",rep("AVGof",length(names(tidy))-2))
names(tidy) <- paste(avgof,names(tidy), sep = "")

## writes tidy into tidyData.txt in working directory
write.table(tidy, file = "tidyData.txt", quote = FALSE, row.names = FALSE)