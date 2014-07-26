---
title: "CodeBook.md"
author: "Kim Aquilino"
date: "Friday, July 25, 2014"
output: html_document
---

##**Study Design**
The data set used for this project was obtained from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. It represents data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. Reference and study design information from the source data set is quoted here:  

>Reference: Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

>The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

>The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

The measures for this analysis focused on the mean and standard deviation signal measures provided by the above data set [limited to variable names including mean() and std()]. This analysis determined the mean of these measures for each combination of subject and activity. 

##**Code book**
The source data set code book provided the following information relevant to this analysis:

>The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

>Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

>Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

>These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

>tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

>The set of variables that were estimated from these signals are: 

>mean(): Mean value  
std(): Standard deviation  
...

The following variables are included in the tidy data set. The measurements are summarized by the subject and activity. 

* **Subject**: A sequential number indicating the person for which the activity measurements were taken
* **Activity**: The activity the person was performing WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING  
* Average, time series domain, body acceleration mean in the X, Y and Z directions.    
    + **MeanTimeBodyAccelerationSignalMean.XDirection**
    + **MeanTimeBodyAccelerationSignalMean.YDirection** 
    + **MeanTimeBodyAccelerationSignalMean.ZDirection** 
* Average, time series domain, body acceleration standard deviation the X, Y and Z directions.  
    + **MeanTimeBodyAccelerationSignalStandardDeviation.XDirection**
    + **MeanTimeBodyAccelerationSignalStandardDeviation.YDirection**
    + **MeanTimeBodyAccelerationSignalStandardDeviation.ZDirection**  
* Average, time series domain, gravity acceleration mean in the X, Y and Z directions.  
    + **MeanTimeGravityAccelerationSignalMean.XDirection**  
    + **MeanTimeGravityAccelerationSignalMean.YDirection**    
    + **MeanTimeGravityAccelerationSignalMean.ZDirection**  
* Average, time series domain, gravity acceleration mean in the X, Y and Z directions.  
    + **MeanTimeGravityAccelerationSignalStandardDeviation.XDirection** 
    + **MeanTimeGravityAccelerationSignalStandardDeviation.YDirection** 
    + **MeanTimeGravityAccelerationSignalStandardDeviation.ZDirection** 
* Average, time series domain, body acceleration jerk signal mean in the X, Y and Z directions.  
    + **MeanTimeBodyAccelerationJerkSignalMean.XDirection** 
    + **MeanTimeBodyAccelerationJerkSignalMean.YDirection** 
    + **MeanTimeBodyAccelerationJerkSignalMean.ZDirection** 
* Average, time series domain, body acceleration jerk signal standard deviation in the X, Y and Z directions.  
    + **MeanTimeBodyAccelerationJerkSignalStandardDeviation.XDirection**  
    + **MeanTimeBodyAccelerationJerkSignalStandardDeviation.YDirection**  
    + **MeanTimeBodyAccelerationJerkSignalStandardDeviation.ZDirection**  
* Average, time series domain, gyroscope mean in the X, Y and Z directions.  
    + **MeanTimeBodyGyroscopeSignalMean.XDirection**  
    + **MeanTimeBodyGyroscopeSignalMean.YDirection**  
    + **MeanTimeBodyGyroscopeSignalMean.ZDirection**
* Average, time series domain, gyroscope standard deviation in the X, Y and Z directions.  
    + **MeanTimeBodyGyroscopeSignalStandardDeviation.XDirection** 
    + **MeanTimeBodyGyroscopeSignalStandardDeviation.YDirection** 
    + **MeanTimeBodyGyroscopeSignalStandardDeviation.ZDirection** 
* Average, time series domain, gyroscope jerk signal mean in the X, Y and Z directions.  
    + **MeanTimeBodyGyroscopeJerkSignalMean.XDirection**  
    + **MeanTimeBodyGyroscopeJerkSignalMean.YDirection**  
    + **MeanTimeBodyGyroscopeJerkSignalMean.ZDirection**  
* Average, time series domain, gyroscope jerk signal standard deviation in the X, Y and Z directions.  
    + **MeanTimeBodyGyroscopeJerkSignalStandardDeviation.XDirection** 
    + **MeanTimeBodyGyroscopeJerkSignalStandardDeviation.YDirection** 
    + **MeanTimeBodyGyroscopeJerkSignalStandardDeviation.ZDirection** 
* **MeanTimeBodyAccelerationMagSignalMean**: Average, time series domain, body acceleration magnitude mean
* **MeanTimeBodyAccelerationMagSignalStandardDeviation**: Average, time series domain, body acceleration magnitude standard deviation
* **MeanTimeGravityAccelerationMagSignalMean**: Average, time series domain, gravity acceleration magnitude mean
* **MeanTimeGravityAccelerationMagSignalStandardDeviation**: Average, time series domain, gravity acceleration magnitude standard deviation 
* **MeanTimeBodyAccelerationJerkMagSignalMean**: Average, time series domain, acceleration jerk magnitude mean
* **MeanTimeBodyAccelerationJerkMagSignalStandardDeviation**: Average, time series domain, acceleration jerk magnitude standard deviation
* **MeanTimeBodyGyroscopeMagSignalMean**: Average, time series domain, agyroscope magnitude mean  
* **MeanTimeBodyGyroscopeMagSignalStandardDeviation**: Average, time series domain, gyroscope magnitude standard deviation
* **MeanTimeBodyGyroscopeJerkMagSignalMean**: Average, time series domain, gyroscope jerk magnitude mean    
* **MeanTimeBodyGyroscopeJerkMagSignalStandardDeviation**: Average, time series domain, gyroscope jerk magnitude standard deviation
* Average, frequency series domain, body acceleration mean in the X, Y and Z directions.  
    + **MeanFrequencyBodyAccelerationSignalMean.XDirection**  
    + **MeanFrequencyBodyAccelerationSignalMean.YDirection**  
    + **MeanFrequencyBodyAccelerationSignalMean.ZDirection**  
* Average, frequency series domain, body acceleration standard deviation the X, Y and Z directions.  
    + **MeanFrequencyBodyAccelerationSignalStandardDeviation.XDirection** 
    + **MeanFrequencyBodyAccelerationSignalStandardDeviation.YDirection** 
    + **MeanFrequencyBodyAccelerationSignalStandardDeviation.ZDirection**   
* Average, frequency series domain, body acceleration jerk signal mean in the X, Y and Z directions.  
    + **MeanFrequencyBodyAccelerationJerkSignalMean.XDirection**  
    + **MeanFrequencyBodyAccelerationJerkSignalMean.YDirection**  
    + **MeanFrequencyBodyAccelerationJerkSignalMean.ZDirection**  
* Average, frequency series domain, body acceleration jerk signal standard deviation in the X, Y and Z directions.  
    + **MeanFrequencyBodyAccelerationJerkSignalStandardDeviation.XDirection** 
    + **MeanFrequencyBodyAccelerationJerkSignalStandardDeviation.YDirection** 
    + **MeanFrequencyBodyAccelerationJerkSignalStandardDeviation.ZDirection**  
* Average, frequency series domain, gyroscope mean in the X, Y and Z directions.  
    + **MeanFrequencyBodyGyroscopeSignalMean.XDirection** 
    + **MeanFrequencyBodyGyroscopeSignalMean.YDirection** 
    + **MeanFrequencyBodyGyroscopeSignalMean.ZDirection** 
* Average, frequency series domain, gyroscope standard deviation in the X, Y and Z directions.  
    + **MeanFrequencyBodyGyroscopeSignalStandardDeviation.XDirection**  
    + **MeanFrequencyBodyGyroscopeSignalStandardDeviation.YDirection**  
    + **MeanFrequencyBodyGyroscopeSignalStandardDeviation.ZDirection**  
* **MeanFrequencyBodyAccelerationMagSignalMean**: Average, frequency series domain, body acceleration magnitude mean
* **MeanFrequencyBodyAccelerationMagSignalStandardDeviation**: Average, frequency series domain, body acceleration magnitude standard deviation
* **MeanFrequencyBodyBodyAccelerationJerkMagSignalMean**: Average, frequency series domain, body acceleration jerk magnitude mean
* **MeanFrequencyBodyBodyAccelerationJerkMagSignalStandardDeviation**: Average, frequency series domain, body acceleration jerk magnitude standard deviation
* **MeanFrequencyBodyBodyGyroscopeMagSignalMean**: Average, frequency series domain, body gyroscope magnitude mean
* **MeanFrequencyBodyBodyGyroscopeMagSignalStandardDeviation**: Average, frequency series domain, body gyroscope magnitude standard deviation
* **MeanFrequencyBodyBodyGyroscopeJerkMagSignalMean**: Average, frequency series domain, body gyroscope jerk magnitude mean
* **MeanFrequencyBodyBodyGyroscopeJerkMagSignalStandardDeviation**: Average, frequency series domain, body gyroscope jerk magnitude standard deviation 

##**Steps Taken**
```
library(data.table)

# The files are expected to be uncompressed and in your working directory.
# Download and unzip dataset
# download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip","activity_dataset.zip")
# unzip("activity_dataset.zip")

# Get feature column names, make them syntactically valid, subset to mean and std variables only
# as represented by mean() and std() in the column names. 
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
train <- cbind(train.activity.codes,train.subjects,train.features)

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