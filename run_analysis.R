# Getting and Cleaning Data Course Project 
#   The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. 
#   The goal is to prepare tidy data that can be used for later analysis. 
#   You will be graded by your peers on a series of yes/no questions related to the project. 
#   You will be required to submit: 
#     1) a tidy data set as described below, 
#     2) a link to a Github repository with your script for performing the analysis, and 
#     3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. 
#   You should also include a README.md in the repo with your scripts. 
#   This repo explains how all of the scripts work and how they are connected.

#   One of the most exciting areas in all of data science right now is wearable computing - see for example this article . 
#   Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. 
#   The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. 
#   A full description is available at the site where the data was obtained:
#     http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
#   Here are the data for the project:
#     https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

#   You should create one R script called run_analysis.R that does the following.
#     1. Merges the training and the test sets to create one data set.
#     2. Extracts only the measurements on the mean and standard deviation for each measurement.
#     3. Uses descriptive activity names to name the activities in the data set
#     4. Appropriately labels the data set with descriptive variable names.
#     5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.



# Download the files
filename <- "dataset.zip"
if (!file.exists(filename)){
        fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        download.file(fileURL, filename)
}  

# Unzip the files
if (!file.exists("UCI HAR Dataset")) { 
        unzip(filename) 
}

# Load activity labels and features
activitylabels <- read.table("./UCI HAR Dataset/activity_labels.txt")
features <- read.table("./UCI HAR Dataset/features.txt")

# Load train and test datasets
train_data <- read.table("./UCI HAR Dataset/train/X_train.txt")
train_label <- read.table("./UCI HAR Dataset/train/y_train.txt")
train_subject <- read.table("./UCI HAR Dataset/train/subject_train.txt")
test_data <- read.table("./UCI HAR Dataset/test/X_test.txt")
test_label <- read.table("./UCI HAR Dataset/test/y_test.txt")
test_subject <- read.table("./UCI HAR Dataset/test/subject_test.txt")

# Extract only the measurements on the mean and the standard deviation
features_meanstd <- features[grep("mean|std", features[,2]), ]
train_data_meanstd <- train_data[, as.numeric(features_meanstd[,1])]
test_data_meanstd <- test_data[, as.numeric(features_meanstd[,1])]

# Merge the datasets
train <- cbind(train_subject, train_label, train_data_meanstd)
test <- cbind(test_subject, test_label, test_data_meanstd)
merged_data <- rbind(train, test)

# Use descriptive variable names
features_meanstd[,2]<- gsub("[()]","", features_meanstd[,2])
features_meanstd[,2]<- gsub("-","", features_meanstd[,2])
colnames(merged_data) <- c("subject", "activity", tolower(features_meanstd[,2]))
write.table(merged_data, file="merged_data.txt", row.names = FALSE)
head(merged_data)


# Use descriptive activity names to name the activities in the data set
merged_data$activity <- factor(merged_data$activity, levels = activity_labels[, 1], labels = activity_labels[, 2])

# create data set with the average of each variable for each activity and each subject
average_data <-aggregate(merged_data[, 3:ncol(merged_data)], by=list(mergeddata$subject,merged_data$activity), FUN=mean, na.rm=TRUE)
colnames(average_data) [1:2]<- c("subject", "activity") 
write.table(average_data, file="average_data.txt", row.names = FALSE)
head(average_data)

