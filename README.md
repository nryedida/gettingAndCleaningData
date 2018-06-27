##Analysis of Human Activity Recognition data
The R script, run_analysis.R, reads the Human Activity recognition data sets and prepares a tidy data set as per instructions given in the course project

###Step 1
- Merges the training and the test sets to create one data set.
- This code assumes all the data is available in the current working directory of the R Session in which this script is executed

###Step 2
- Extracts only the measurements on the mean and standard deviation for each measurement.
- remove the first part of each feature as it is the sequence number of the field
- select only variables that have mean() or std() in them using regular expressions

###Step 3
- Uses descriptive activity names to name the activities in the data set
- replace activity IDs with Activity names
- add subject info
- delete the intermediate variables

###Step 4
- Appropriately labels the data set with descriptive variable names.
- Uses gsub function to expand the variable names

###Step 5
- From the data set in Step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject. Uses the ddply function of the plyr package.
- Writes the tidy data out into a text file, tidyhar.txt
