##creat text file, no line numbers
#p.s. Jerk is the rate at which Acceleration changes, so is the Acceleration of the Accerleration 
#run_analysis R script, a ReadMe markdown document, a Codebook markdown document, and a tidy data text file

library(data.table)

# Download and unzip dataset
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip","activity_dataset.zip")
unzip("activity_dataset.zip")

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
train <- cbind(test.activity.codes,train.subjects,train.features)

# Get and combined test and train data, merge with activity, subset to mean and std variables only
subj.act.measures <- rbind(test,train)
subj.act.measures <- merge(activity,combined,by="ActivityCode")[,c("Subject","Activity",cols.mean.and.std)]

# Make column names readable by substituting abbreviations with words.
colnames(subj.act.measures) <- sub("\\.\\.","",sub("Z$","ZDirection",sub("Y$","YDirection",sub("X$","XDirection",sub("std","StandardDeviation",sub("mean","Mean",sub("\\.","Signal",sub("Acc","Acceleration",sub("Gyro","Gyroscope",sub("^f","Frequency",sub("^t","Time",colnames(subj.act.measures))))))))))))

# measurement means by subject and activity
subj.act.measure.means <- aggregate(. ~ Subject + Activity,data=combined,mean)

# write to a file
write.table(subj.act.measure.means,file="./subject_activity_measurement_means.txt",row.names=FALSE)
