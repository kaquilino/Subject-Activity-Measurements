---
title: "README.md"
author: "Kim Aquilino"
date: "Friday, July 25, 2014"
output: html_document
---
This R script (run_analysis.R) uses the Samsung data retreived from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip which should be downloaded, uncompressed and located in your working directory. You may uncomment the lines in the script that can perform this download and uncompress. The script will perform the following to create a tidy data set. 

* Initialize the column name and activity reference data.
* Combine the activity, subject and feature data sets for both the train and test data.
* Merge the training and the test sets to create one data set.
* Extract only the measurements on the mean and standard deviation for each measurement. 
* Use the descriptive activity names to name the activities in the data set
* Label the data set with descriptive variable names. 
* Create a second, independent tidy data set with the average of each variable for each activity and each subject. 

This script requires the data.table package.

This script will create a file in your working directory for the tidy data set with the average of each variable for each activity and subject.