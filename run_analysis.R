#Step 0. Preparing and reading in the data. 

#set the working directory: I will not be showing this on my PC
setwd("C:/Peti/Gettingand cleaning")

require(dplyr)

#reading in training datasets
subjecttrain<-read.table("UCI HAR Dataset/train/subject_train.txt")
xtrain<-read.table("UCI HAR Dataset/train/X_train.txt")
ytrain<-read.table("UCI HAR Dataset/train/y_train.txt")


#reading in test datasets
subjecttest<-read.table("UCI HAR Dataset/test/subject_test.txt")
xtest<-read.table("UCI HAR Dataset/test/X_test.txt")
ytest<-read.table("UCI HAR Dataset/test/y_test.txt")

#and reading in labels (features and activity labels)
features <- read.table("UCI HAR Dataset/features.txt")
activitylabels<-read.table("UCI HAR Dataset/activity_labels.txt")

#cleaning up names, before combining the parts of the databases

colnames(subjecttest)<-"subject"
colnames(subjecttrain)<-"subject"

colnames(xtrain)<-t(features[2])
colnames(xtest)<-t(features[2])

colnames(ytest)<-"activity"
colnames(ytrain)<-"activity"

colnames(activitylabels)<-c("activitynumber", "activityname")

#Attaching subjects to dataframes, first to x then to y measurements
train<-cbind(subjecttrain,ytrain, xtrain)
test<-cbind(subjecttest,ytest,xtest)






#Actual assignment starts here

#1.	Merging the training and the test sets to create one data set.

complete<-rbind(train,test)

#2. getting means and standard deviations. 
#I will interpret means and standard deviations as statistical properties of the individual variables,
#and will not include angles between various means such as gravityMeans

meanstd.list <- (grepl("subject", names(complete)) | grepl("activity", names(complete)) |grepl("mean()", names(complete)) |grepl("std.." , names(complete))) 
meanstd <- complete[ , meanstd.list == TRUE]

#3.	Uses descriptive activity names to name the activities in the data set
#factorizing activity varaible

meanstd$activity <- factor(meanstd$activity, levels = activitylabels[,"activitynumber"], labels = activitylabels[,"activityname"])

#4.	Appropriately labels the data set with descriptive variable names.

#based on features_info:
names(meanstd) <- gsub("^t", "time", names(meanstd))
names(meanstd) <- gsub("^f", "frequency", names(meanstd))

names(meanstd) <- gsub("Acc", "Accelerator", names(meanstd))
names(meanstd) <- gsub("Mag", "Magnitude", names(meanstd))
names(meanstd) <- gsub("Gyro", "Gyroscope", names(meanstd))


#5.	From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


tidy<-aggregate(. ~subject + activity, meanstd, mean)
tidy<-tidy[order(tidy$subject,tidy$activity),]
write.table(tidy, file = "tidydata.txt",row.name=FALSE)
