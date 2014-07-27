
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

## Unzip the testset and get the data to a table in R
testset_unzip <- unz("./data/samsung_acc.zip", 'UCI HAR Dataset/test/X_test.txt')
testset <- read.table(testset_unzip, header=FALSE, sep='\t')

## Unzip the trainset and get the data to a table in R
trainset_unzip <- unz("./data/samsung_acc.zip", 'UCI HAR Dataset/train/X_train.txt')
trainset <- read.table(trainset_unzip, header=FALSE, sep=' ')

## Combine these together
dataset <- rbind(testset,trainset)

## check total number of rows
nrow(trainset)
nrow(testset)
nrow(dataset)
