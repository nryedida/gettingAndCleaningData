##Human Activity Recognition Using Smartphones  - Dataset

Experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

A full description is available at the site where the data was obtained: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

###Analysis of Human Activity Recognition data

The R script, run_analysis.R, reads the Human Activity recognition data sets and prepares a tidy data set as per instructions given in the course project

- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement.
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names.
- From the data set that is obtained as a result of the above processing, created a second, independent tidy data set with the average of each variable for each activity and each subject.
- Writes the tidy data out into a text file, tidyhar.txt

###Variables in the tidy data set

####The values are the averages of the mean and standard deviations of the selected feature readings grouped by each activity for each subject.

- subject
- activity
- timeBodyAcceleromter-mean()-X
- timeBodyAcceleromter-mean()-Y
- timeBodyAcceleromter-mean()-Z
- timeBodyAcceleromter-std()-X
- timeBodyAcceleromter-std()-Y
- timeBodyAcceleromter-std()-Z
- timeGravityAcceleromter-mean()-X
- timeGravityAcceleromter-mean()-Y
- timeGravityAcceleromter-mean()-Z
- timeGravityAcceleromter-std()-X
- timeGravityAcceleromter-std()-Y
- timeGravityAcceleromter-std()-Z
- timeBodyAcceleromterJerk-mean()-X
- timeBodyAcceleromterJerk-mean()-Y
- timeBodyAcceleromterJerk-mean()-Z
- timeBodyAcceleromterJerk-std()-X
- timeBodyAcceleromterJerk-std()-Y
- timeBodyAcceleromterJerk-std()-Z
- timeBodyGyroscope-mean()-X
- timeBodyGyroscope-mean()-Y
- timeBodyGyroscope-mean()-Z
- timeBodyGyroscope-std()-X
- timeBodyGyroscope-std()-Y
- timeBodyGyroscope-std()-Z
- timeBodyGyroscopeJerk-mean()-X
- timeBodyGyroscopeJerk-mean()-Y
- timeBodyGyroscopeJerk-mean()-Z
- timeBodyGyroscopeJerk-std()-X
- timeBodyGyroscopeJerk-std()-Y
- timeBodyGyroscopeJerk-std()-Z
- timeBodyAcceleromterMagnitude-mean()
- timeBodyAcceleromterMagnitude-std()
- timeGravityAcceleromterMagnitude-mean()
- timeGravityAcceleromterMagnitude-std()
- timeBodyAcceleromterJerkMagnitude-mean()
- timeBodyAcceleromterJerkMagnitude-std()
- timeBodyGyroscopeMagnitude-mean()
- timeBodyGyroscopeMagnitude-std()
- timeBodyGyroscopeJerkMagnitude-mean()
- timeBodyGyroscopeJerkMagnitude-std()
- frequencyBodyAcceleromter-mean()-X
- frequencyBodyAcceleromter-mean()-Y
- frequencyBodyAcceleromter-mean()-Z
- frequencyBodyAcceleromter-std()-X
- frequencyBodyAcceleromter-std()-Y
- frequencyBodyAcceleromter-std()-Z
- frequencyBodyAcceleromterJerk-mean()-X
- frequencyBodyAcceleromterJerk-mean()-Y
- frequencyBodyAcceleromterJerk-mean()-Z
- frequencyBodyAcceleromterJerk-std()-X
- frequencyBodyAcceleromterJerk-std()-Y
- frequencyBodyAcceleromterJerk-std()-Z
- frequencyBodyGyroscope-mean()-X
- frequencyBodyGyroscope-mean()-Y
- frequencyBodyGyroscope-mean()-Z
- frequencyBodyGyroscope-std()-X
- frequencyBodyGyroscope-std()-Y
- frequencyBodyGyroscope-std()-Z
- frequencyBodyAcceleromterMagnitude-mean()
- frequencyBodyAcceleromterMagnitude-std()
- frequencyBodyBodyAcceleromterJerkMagnitude-mean()
- frequencyBodyBodyAcceleromterJerkMagnitude-std()
- frequencyBodyBodyGyroscopeMagnitude-mean()
- frequencyBodyBodyGyroscopeMagnitude-std()
- frequencyBodyBodyGyroscopeJerkMagnitude-mean()
- frequencyBodyBodyGyroscopeJerkMagnitude-std()


### Units

- Accelerometer readings are in gravity units 'g'
- Gyroscope readings are in radians/second
