---
title: "README.md"
author: "Kim Aquilino"
date: "Friday, July 25, 2014"
output: html_document
---
This R script uses the data at: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and performs the following to create a tidy data set. 

* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names. 
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

It requires the data.table package.

This script will create a file in your working directory for the tidy data set with the average of each variable for each activity and subject.