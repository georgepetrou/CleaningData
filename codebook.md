# Codebook Description

This code book describes the data analyzed, the variables extracted from the data analyzed and any transofmrations perfoemed on the data

# Data for the project assignment
The data presented below is a subset of the data for the project assignment.  The project assignment data can be found at
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.  They represent accelerometer data collected from the Samsung Galaxy S smartphones of a group of 30 volunteers. Each volunteer perfomed identical activities while wearing the Samsung Galaxy S smartphone on their waist.  The activities were:  Walking, Walking Upstairs, Walking Downstairs, Sitting, Standing and Laying. The smartphone embedded accelerometer and gyroscope, was used to capture 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 
The obtained dataset was randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

# Data set 
The dataset includes the following files:

'README.txt'

'features_info.txt': Shows detailed information about the feature variables.

'features.txt': List of all features measured.

'activity_labels.txt': Links the identification of the activity (ID) with the activity name.

'train/X_train.txt': Training set.

'train/y_train.txt': Training labels.

'test/X_test.txt': Test set.

'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent.

'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis.

'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration.

'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.

# Project assignment output data.  The run_analysis.R scirpt outputed the data below. The data are a small subset of all data collected.

Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

# Means for time domain measurements 

## Means in X, Y, Z directions of the time domain linear acceleration signal
tBodyAcc-mean()-X	
tBodyAcc-mean()-Y	
tBodyAcc-mean()-Z	

## Means in X, Y, Z directions of the time domain gravitational acceleration signal
tGravityAcc-mean()-X	
tGravityAcc-mean()-Y	
tGravityAcc-mean()-Z	

## Means in X, Y, Z directions of the time domain linear acceleration jerk signal
tBodyAccJerk-mean()-X	
tBodyAccJerk-mean()-Y	
tBodyAccJerk-mean()-Z	

## Means in X, Y, Z directions of the time domain angular velocity signal
tBodyGyro-mean()-X	
tBodyGyro-mean()-Y	
tBodyGyro-mean()-Z	

## Means in X, Y, Z directions of the time domain angular velocity jerk signal
tBodyGyroJerk-mean()-X	
tBodyGyroJerk-mean()-Y	
tBodyGyroJerk-mean()-Z	

## Magnitudes (i.e. Euclidean norm which is X^2 + Y^2 + Z^2 for each of the (X,Y,Z) time domain triples above
tBodyAccMag-mean()	
tGravityAccMag-mean()	
tBodyAccJerkMag-mean()	
tBodyGyroMag-mean()	
tBodyGyroJerkMag-mean()	


# Means for frequency domain measurements 

## The means in X, Y, Z direction of frequency domain body linear acceleration signal 
fBodyAcc-mean()-X	
fBodyAcc-mean()-Y	
fBodyAcc-mean()-Z	

## The means in X, Y, Z direction of frequency domain linear acceleration jerk signal 
fBodyAccJerk-mean()-X	
fBodyAccJerk-mean()-Y	
fBodyAccJerk-mean()-Z	

## The means in X, Y, Z direction of frequency domain angular velocity signal 
fBodyGyro-mean()-X	
fBodyGyro-mean()-Y	
fBodyGyro-mean()-Z	

## The means in X, Y, Z direction of frequency domain angular velocity signal 
fBodyGyroJerk-mean()-X	
fBodyGyroJerk-mean()-Y	
fBodyGyroJerk-mean()-Z	

## Magnitudes (of means) (i.e. Euclidean norm which is X^2 + Y^2 + Z^2 for each of the (X,Y,Z) frequency domain triples above
fBodyAccMag-mean()	
fBodyAccJerkMag-mean()	
fBodyGyroMag-mean()	
fBodyGyroJerkMag-mean()	


# Standard deviation measurements (time domain first and then frequency domain)

## Standard deviations for time domain measurements

## Standard deviation in X, Y, Z directions of the time domain linear acceleration signal
tBodyAcc-std()-X	
tBodyAcc-std()-Y	
tBodyAcc-std()-Z	

## Standard deviation in X, Y, Z directions of the time domain gravitational acceleration signal
tGravityAcc-std()-X	
tGravityAcc-std()-Y	
tGravityAcc-std()-Z	

## Standard deviation in X, Y, Z directions of the time domain linear acceleration jerk signal
tBodyAccJerk-std()-X	
tBodyAccJerk-std()-Y	
tBodyAccJerk-std()-Z	

## Standard deviation in X, Y, Z directions of the time domain angular velocity signal
tBodyGyro-std()-X	
tBodyGyro-std()-Y	
tBodyGyro-std()-Z	

## Standard deviation in X, Y, Z directions of the time domain angular velocity jerk signal
tBodyGyroJerk-std()-X	
tBodyGyroJerk-std()-Y	
tBodyGyroJerk-std()-Z	

## Magnitudes (i.e. Eucliedean norm which is X^2 + Y^2 + Z^2 for each of the (X,Y,Z) standard deviation time domain triples above
tBodyAccMag-std()	
tGravityAccMag-std()	
tBodyAccJerkMag-std()	
tBodyGyroMag-std()	
tBodyGyroJerkMag-std()	

## Standard deviations for frequency domain measurements 

## Standard deviation in X, Y, Z directions of the frequency domain linear acceleration signal
fBodyAcc-std()-X	
fBodyAcc-std()-Y	
fBodyAcc-std()-Z	

## Standard deviation in X, Y, Z directions of the frequency domain linear acceleration jerk signal
fBodyAccJerk-std()-X	
fBodyAccJerk-std()-Y	
fBodyAccJerk-std()-Z	

## Standard deviation in X, Y, Z directions of the frequency domain angular velocity signal
fBodyGyro-std()-X	
fBodyGyro-std()-Y	
fBodyGyro-std()-Z	

## Standard deviation in X, Y, Z directions of the frequency domain angular velocity jerk signal
fBodyGyroJerkMag-std()-X
fBodyGyroJerkMag-std()-Y
fBodyGyroJerkMag-std()-Z

## Magnitudes (i.e. Eucliedean norm which is X^2 + Y^2 + Z^2 for each of the (X,Y,Z) standard deviation frequency domain triples above
fBodyAccMag-std()	
fBodyAccJerkMag-std()	
fBodyGyroMag-std()	
fBodyGyroJerkMag-std()


# How run_analysis.R works
Please see README.md
