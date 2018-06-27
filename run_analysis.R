# This R script reads the Human Activity recognition data sets and prepares a tidy data set as per instructions given in the course project

# Merges the training and the test sets to create one data set.
# This code assumes all the data is available in the current working directory of the R Session in which this script is executed
xtrain <- read.table("X_train.txt")
xtest <- read.table("X_test.txt")
hardf <- rbind(xtrain, xtest)

# Extracts only the measurements on the mean and standard deviation for each measurement.
variablesvector <- scan("features.txt", what = "character", sep = "\n")
#remove the first part of each feature as it is the sequence number of the field
variablesvector <- sub(".* ","", variablesvector)

colnames(hardf) <- variablesvector

#select only variables that have mean() or std() in them
harsubsetdf <- hardf[,grepl("mean[^fF]()|std()", variablesvector)]

ytrain <- read.table("Y_train.txt")
ytest <- read.table("Y_test.txt")
ydf <- rbind(ytrain, ytest)
colnames(ydf) <- "activity"

# Uses descriptive activity names to name the activities in the data set
#replace activity IDs in ydf with Activity names
lookupvector <-  read.table("activity_labels.txt")
ydf$activity <- lookupvector[ydf$activity,c(2)]

harsubsetdf <- cbind(harsubsetdf, ydf)

#add subject info
subject_train <- read.table("subject_train.txt")
subject_test <- read.table("subject_test.txt")
subjectdf <- rbind(subject_train, subject_test)
colnames(subjectdf) <- "subject"
harsubsetdf <- cbind(harsubsetdf, subjectdf)

#delete the intermediate variables
rm(hardf, xtrain, xtest, ytrain, ytest, subject_train, subject_test, ydf, subjectdf, lookupvector, variablesvector)

# Appropriately labels the data set with descriptive variable names.
colnames(harsubsetdf) <- gsub("^t", "time", colnames(harsubsetdf))
colnames(harsubsetdf) <- gsub("Acc", "Acceleromter", colnames(harsubsetdf))
colnames(harsubsetdf) <- gsub("^f", "frequency", colnames(harsubsetdf))
colnames(harsubsetdf) <- gsub("Mag", "Magnitude", colnames(harsubsetdf))
colnames(harsubsetdf) <- gsub("Gyro", "Gyroscope", colnames(harsubsetdf))


# From the data set above, create a second, independent tidy data set with the average of each variable for each activity and each subject.
library(plyr)
hartidy <- ddply(harsubsetdf, .(subject, activity), numcolwise(mean))

#write the tidy data out into a text file
write.table(hartidy,file = "tidyhar.txt", row.names = FALSE, sep = ",")

