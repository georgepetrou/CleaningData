CleaningData
============

This repo contains files for the course project in the Cleaning Data coursera course

The script operates as follows:

## Step 1
The x and y training data is read first using a default read.table call (the files are "X_train.txt"  and "y_train.txt" in the "UCI HAR DataSet/train" directory )

## Step 2
The x and y test data is then read using a default read.table call (the files are "X_test.txt"  and "y_test.txt" in the "UCI HAR DataSet/test" directory )

## Step 3
The subjects associated with training data set are then read using a default read.table call (the file is "subject_train.txt" in the "UCI HAR DataSet/train" directory )

## Step 4
The subjects associated with test data set are then read using a default read.table call (the file is "subject_test.txt" in the "UCI HAR DataSet/test" directory )

## Step 5
The train and test data rows are then merged since they all have the same columns 

## Step 6
The train and test subject id rows are also merged 

## Step 7
Descriptive names are also read from features.txt (in the "UCI HAR DataSet" directory )

## Step 8
The descriptive names along with the "Subject" name are assigned to the test and train as well as the subject data respectively

## Step 9
Identify all mean and standard deviation measurements by searching for "mean" and "std" in descriptive names (feature labels) read in step 7

## Step 10
Use the column names (descriptive names/feature labels) identified in previous step to select only the column data vectors of interest so that they can be written to the tidy data set later on

## Step 11
Read descriptive names for user activities using a "read.table" call (the file is in "UCI HAR Dataset" and is called "activity_labels.txt")

## Step 12
Join descriptive activity name with actual activity

## Step 13
Collect the the activity vector along with the mean and std data vectors into one frame


## Step 14
Write the data to the "MeanAndStdMeasurements.csv" file.  Note that the uploaded file was renamed to "txt" so that it can be uploaded. If renamed to csv it can be read by EXCEL (it is much more readable in EXCEL)

## Step 15
Combine activity, mean and std deviation vectors (in Step 13) with subject information

## Step 16
Prepare the data (of step 15) to be written in a nice format using reshape2 package and then write "ActivitySubjectMeans.csv" file.  Note that the uploaded file was renamed to "txt" so that it can be uploaded. If renamed to csv it can be read by EXCEL (it is much more readable in EXCEL)






 



