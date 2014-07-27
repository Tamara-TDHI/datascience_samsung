
############################################################################################
##  Code to download the file is here.
##  The Coursera Programming assignment assumes the downloaded file is already in your directory:
##    "The code should have a file run_analysis.R in the main directory that can be run 
##     as long as the Samsung data is in your working directory."
##  So everything is in comment here

##  You could set a workdirectory here. If you do not set a specific directory,
##  the program will run in your root directory default.

## setwd("C:/Coursera/Getting and Cleaning Data")

## if (!file.exists("data")) {
##  dir.create("data")
## }

## fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
## download.file(fileUrl, destfile = "./data/samsung_acc.zip")

## dateDownloaded <-(date)
## dateDownloaded



############################################################################################

########################################################################### X tables
## Unzip the X_testset and get the data to a table in R
x_testset_unzip <- unz("./data/samsung_acc.zip", 'UCI HAR Dataset/test/X_test.txt')
x_testset <- read.table(x_testset_unzip, header=FALSE, sep='')

## Unzip the X_trainset and get the data to a table in R
x_trainset_unzip <- unz("./data/samsung_acc.zip", 'UCI HAR Dataset/train/X_train.txt')
x_trainset <- read.table(x_trainset_unzip, header=FALSE, sep='')

## Combine these together
Xdataset <- rbind(x_testset,x_trainset)

########################################################################### Y tables
## Unzip the Y_testset and get the data to a table in R
y_testset_unzip <- unz("./data/samsung_acc.zip", 'UCI HAR Dataset/test/y_test.txt')
y_testset <- read.table(y_testset_unzip, header=FALSE, sep='')

## Unzip the X_trainset and get the data to a table in R
y_trainset_unzip <- unz("./data/samsung_acc.zip", 'UCI HAR Dataset/train/y_train.txt')
y_trainset <- read.table(y_trainset_unzip, header=FALSE, sep='')

## Combine these together
Ydataset <- rbind(y_testset,y_trainset)

########################################################################### subject tables
## Unzip the Y_testset and get the data to a table in R
subject_testset_unzip <- unz("./data/samsung_acc.zip", 'UCI HAR Dataset/test/subject_test.txt')
subject_testset <- read.table(subject_testset_unzip, header=FALSE, sep='')

## Unzip the X_trainset and get the data to a table in R
subject_trainset_unzip <- unz("./data/samsung_acc.zip", 'UCI HAR Dataset/train/subject_train.txt')
subject_trainset <- read.table(subject_trainset_unzip, header=FALSE, sep='')

## Combine these together
subjectdataset <- rbind(subject_testset,subject_trainset)

## check total number of rows


########################################################################### features tables

features_unzip <- unz("./data/samsung_acc.zip", 'UCI HAR Dataset/features.txt')
features <- read.table(features_unzip, header=FALSE, sep='')


nrow(Xdataset)
nrow(Ydataset)
nrow(subjectdataset)
nrow(features)

## Get the relevant columns 

mean_and_std_features <- grep("-mean\\(\\)|-std\\(\\)",features[,2])
xMeanStd <- Xdataset[,mean_and_std_features]

