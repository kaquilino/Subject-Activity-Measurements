---
title: "CodeBook.md"
author: "Kim Aquilino"
date: "Friday, July 25, 2014"
output: html_document
---

##**Study Design**
The data set used for this project was obtained from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. It represents data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.  

>Reference: Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

The above study included 30 volunteers (Subjects 1-30) from 18-48 years old. They each performed six activities (walking, walking upstairs, walking downstairs, sitting, standing, laying) wearing the phone that included an acceleromter and gyroscope on their waist. The acceleration and velocity measurements were taken at a constant rate of 50Hz and the activities were manually recorded. 

The measures for this analysis include the mean and standard deviation *for each subject and activity* estimated for the body and gravity acceleration signals, jerk signals from body linear acceleration and angular velocity, the magnitude of these time domain signals, and the frequency domain signals for some of these signals. The X, Y and Z Direction of the variable labels represent the direction of the 3-axial signals.   

##**Code book**
The following variables are included in the tidy data set. The measurements are summarized by the subject and activity. 

* Subject: A sequential number indicating the person for which the activity measurements were taken
* Activity: The activity the person was performing WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING  
* Average, time series domain, body acceleration mean in the X, Y and Z directions.    
    + MeanTimeBodyAccelerationSignalMean.XDirection 
    + MeanTimeBodyAccelerationSignalMean.YDirection 
    + MeanTimeBodyAccelerationSignalMean.ZDirection 
* Average, time series domain, body acceleration standard deviation the X, Y and Z directions.  
    + MeanTimeBodyAccelerationSignalStandardDeviation.XDirection
    + MeanTimeBodyAccelerationSignalStandardDeviation.YDirection
    + MeanTimeBodyAccelerationSignalStandardDeviation.ZDirection  
* Average, time series domain, gravity acceleration mean in the X, Y and Z directions.  
    + MeanTimeGravityAccelerationSignalMean.XDirection  
    + MeanTimeGravityAccelerationSignalMean.YDirection  
    + MeanTimeGravityAccelerationSignalMean.ZDirection  
* Average, time series domain, gravity acceleration mean in the X, Y and Z directions.  
    + MeanTimeGravityAccelerationSignalStandardDeviation.XDirection 
    + MeanTimeGravityAccelerationSignalStandardDeviation.YDirection 
    + MeanTimeGravityAccelerationSignalStandardDeviation.ZDirection 
* Average, time series domain, body acceleration jerk signal mean in the X, Y and Z directions.  
    + MeanTimeBodyAccelerationJerkSignalMean.XDirection 
    + MeanTimeBodyAccelerationJerkSignalMean.YDirection 
    + MeanTimeBodyAccelerationJerkSignalMean.ZDirection 
* Average, time series domain, body acceleration jerk signal standard deviation in the X, Y and Z directions.  
    + MeanTimeBodyAccelerationJerkSignalStandardDeviation.XDirection  
    + MeanTimeBodyAccelerationJerkSignalStandardDeviation.YDirection  
    + MeanTimeBodyAccelerationJerkSignalStandardDeviation.ZDirection  
* Average, time series domain, gyroscope mean in the X, Y and Z directions.  
    + MeanTimeBodyGyroscopeSignalMean.XDirection  
    + MeanTimeBodyGyroscopeSignalMean.YDirection  
    + MeanTimeBodyGyroscopeSignalMean.ZDirection
* Average, time series domain, gyroscope standard deviation in the X, Y and Z directions.  
    + MeanTimeBodyGyroscopeSignalStandardDeviation.XDirection 
    + MeanTimeBodyGyroscopeSignalStandardDeviation.YDirection 
    + MeanTimeBodyGyroscopeSignalStandardDeviation.ZDirection 
* Average, time series domain, gyroscope jerk signal mean in the X, Y and Z directions.  
    + MeanTimeBodyGyroscopeJerkSignalMean.XDirection  
    + MeanTimeBodyGyroscopeJerkSignalMean.YDirection  
    + MeanTimeBodyGyroscopeJerkSignalMean.ZDirection  
* Average, time series domain, gyroscope jerk signal standard deviation in the X, Y and Z directions.  
    + MeanTimeBodyGyroscopeJerkSignalStandardDeviation.XDirection 
    + MeanTimeBodyGyroscopeJerkSignalStandardDeviation.YDirection 
    + MeanTimeBodyGyroscopeJerkSignalStandardDeviation.ZDirection 
* MeanTimeBodyAccelerationMagSignalMean: Average, time series domain, body acceleration magnitude mean
* MeanTimeBodyAccelerationMagSignalStandardDeviation: Average, time series domain, body acceleration magnitude standard deviation
* MeanTimeGravityAccelerationMagSignalMean: Average, time series domain, gravity acceleration magnitude mean
* MeanTimeGravityAccelerationMagSignalStandardDeviation: Average, time series domain, gravity acceleration magnitude standard deviation 
* MeanTimeBodyAccelerationJerkMagSignalMean: Average, time series domain, acceleration jerk magnitude mean
* MeanTimeBodyAccelerationJerkMagSignalStandardDeviation: Average, time series domain, acceleration jerk magnitude standard deviation
* MeanTimeBodyGyroscopeMagSignalMean: Average, time series domain, agyroscope magnitude mean  
* MeanTimeBodyGyroscopeMagSignalStandardDeviation: Average, time series domain, gyroscope magnitude standard deviation
* MeanTimeBodyGyroscopeJerkMagSignalMean: Average, time series domain, gyroscope jerk magnitude mean    
* MeanTimeBodyGyroscopeJerkMagSignalStandardDeviation: Average, time series domain, gyroscope jerk magnitude standard deviation
* Average, frequency series domain, body acceleration mean in the X, Y and Z directions.  
    + MeanFrequencyBodyAccelerationSignalMean.XDirection  
    + MeanFrequencyBodyAccelerationSignalMean.YDirection  
    + MeanFrequencyBodyAccelerationSignalMean.ZDirection  
* Average, frequency series domain, body acceleration standard deviation the X, Y and Z directions.  
    + MeanFrequencyBodyAccelerationSignalStandardDeviation.XDirection 
    + MeanFrequencyBodyAccelerationSignalStandardDeviation.YDirection 
    + MeanFrequencyBodyAccelerationSignalStandardDeviation.ZDirection   
* Average, frequency series domain, body acceleration jerk signal mean in the X, Y and Z directions.  
    + MeanFrequencyBodyAccelerationJerkSignalMean.XDirection  
    + MeanFrequencyBodyAccelerationJerkSignalMean.YDirection  
    + MeanFrequencyBodyAccelerationJerkSignalMean.ZDirection  
* Average, frequency series domain, body acceleration jerk signal standard deviation in the X, Y and Z directions.  
    + MeanFrequencyBodyAccelerationJerkSignalStandardDeviation.XDirection 
    + MeanFrequencyBodyAccelerationJerkSignalStandardDeviation.YDirection 
    + MeanFrequencyBodyAccelerationJerkSignalStandardDeviation.ZDirection  
* Average, frequency series domain, gyroscope mean in the X, Y and Z directions.  
    + MeanFrequencyBodyGyroscopeSignalMean.XDirection 
    + MeanFrequencyBodyGyroscopeSignalMean.YDirection 
    + MeanFrequencyBodyGyroscopeSignalMean.ZDirection 
* Average, frequency series domain, gyroscope standard deviation in the X, Y and Z directions.  
    + MeanFrequencyBodyGyroscopeSignalStandardDeviation.XDirection  
    + MeanFrequencyBodyGyroscopeSignalStandardDeviation.YDirection  
    + MeanFrequencyBodyGyroscopeSignalStandardDeviation.ZDirection  
* MeanFrequencyBodyAccelerationMagSignalMean: Average, frequency series domain, body acceleration magnitude mean
* MeanFrequencyBodyAccelerationMagSignalStandardDeviation: Average, frequency series domain, body acceleration magnitude standard deviation
* MeanFrequencyBodyBodyAccelerationJerkMagSignalMean: Average, frequency series domain, body acceleration jerk magnitude mean
* MeanFrequencyBodyBodyAccelerationJerkMagSignalStandardDeviation: Average, frequency series domain, body acceleration jerk magnitude standard deviation
* MeanFrequencyBodyBodyGyroscopeMagSignalMean: Average, frequency series domain, body gyroscope magnitude mean
* MeanFrequencyBodyBodyGyroscopeMagSignalStandardDeviation: Average, frequency series domain, body gyroscope magnitude standard deviation
* MeanFrequencyBodyBodyGyroscopeJerkMagSignalMean: Average, frequency series domain, body gyroscope jerk magnitude mean
* MeanFrequencyBodyBodyGyroscopeJerkMagSignalStandardDeviation: Average, frequency series domain, body gyroscope jerk magnitude standard deviation 

##**Steps Taken**
```
library(data.table)

# Download and unzip dataset
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip","activity_dataset.zip")
unzip("activity_dataset.zip")

# Get feature column names, make them syntactically valid, subset to mean and std variables only as represented by mean() and std() in the column names. 
col.names <- make.names(read.table("./UCI HAR Dataset/features.txt")$V2)
cols.mean.and.std <- grep("((mean\\.\\.)|(std\\.\\.))",col.names,value=TRUE)

# Get activity codes
activity <- read.table("./UCI HAR Dataset/activity_labels.txt",col.names=c("ActivityCode","Activity"))

# Get and combine activity code, subject and feature vectors for both test and train data
test.activity.codes <- data.table(read.table("./UCI HAR Dataset/test/y_test.txt",col.names="ActivityCode"))
test.subjects <- data.table(read.table("./UCI HAR Dataset/test/subject_test.txt",col.names="Subject"))
test.features <- data.table(read.table("./UCI HAR Dataset/test/X_test.txt",col.names=col.names))
test <- cbind(test.activity.codes,test.subjects,test.features)

train.activity.codes <- data.table(read.table("./UCI HAR Dataset/train/y_train.txt",col.names="ActivityCode"))
train.subjects <- data.table(read.table("./UCI HAR Dataset/train/subject_train.txt",col.names="Subject"))
train.features <- data.table(read.table("./UCI HAR Dataset/train/X_train.txt",col.names=col.names))
train <- cbind(test.activity.codes,train.subjects,train.features)

# Get and combined test and train data, merge with activity, subset to mean and std variables only
subj.act.measures <- rbind(test,train)
subj.act.measures <- merge(activity,subj.act.measures,by="ActivityCode")[,c("Subject","Activity",cols.mean.and.std)]

# Make column names readable by substituting abbreviations with words.
colnames(subj.act.measures) <- sub("\\.\\.","",sub("Z$","ZDirection",sub("Y$","YDirection",sub("X$","XDirection",sub("std","StandardDeviation",sub("mean","Mean",sub("\\.","Signal",sub("Acc","Acceleration",sub("Gyro","Gyroscope",sub("^f","Frequency",sub("^t","Time",colnames(subj.act.measures))))))))))))

# Measurement means by subject and activity
subj.act.measure.means <- aggregate(. ~ Subject + Activity,data=combined,mean)

# Update columns names to reflect that they are means.
colnames(subj.act.measure.means) <- sub("^Freq","MeanFreq",sub("^Time","MeanTime",colnames(subj.act.measure.means)))

# Write to a file
write.table(subj.act.measure.means,file="./subject_activity_measurement_means.txt",row.names=FALSE)
```