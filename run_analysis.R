##
##  Assumes the input data is in the same directory as run_analysis.R script file
##  Assumes reshape2 package has been installed 
##



##
## Read x and y train data.  
##
xtrain <- read.table("UCI HAR Dataset/train/X_train.txt")
ytrain <- read.table("UCI HAR Dataset/train/y_train.txt")
##
## Read x and y test data
##
xtest <- read.table("UCI HAR Dataset/test/X_test.txt")
ytest <- read.table("UCI HAR Dataset/test/y_test.txt")
##
## Read subjects for train and test data
##
subjects.train <- read.table("UCI HAR Dataset/train/subject_train.txt")
subjects.test <- read.table("UCI HAR Dataset/test/subject_test.txt")

##
## Merge training and test data sets (for both x and y) as well as subjects for each 
##
x.data <- rbind(xtrain,xtest)
y.data <- rbind(ytrain,ytest)
subjects <- rbind(subjects.train,subjects.test)

##
## Read features from features.txt file
##
features <- read.table("UCI HAR Dataset/features.txt")[,"V2"]


##
## Assign descriptive names
##
colnames(x.data) <- features
colnames(subjects)<-"Subject"

##
## Select mean and standard deviation measurements by searching for "mean" and "std" of feature labels
## 
means <- grep("-mean\\(\\)", features, value=TRUE)
stds <- grep("-std\\(\\)", features, value=TRUE)
FeaturesToExtract <- c(means, stds)
ExtractedMeasures <- x.data[, FeaturesToExtract]

##
## y data identify user activities 
##
colnames(y.data)<-"Activity_ID"

##
## Read in descriptive names for user activities
##
activities <- read.table("UCI HAR Dataset/activity_labels.txt")
colnames(activities) <- c("Activity_ID", "Activity")

##
## Join activity dataset (y.data) with descriptive labels (activities)
##
ActivitiesWithLabels <- merge(y.data, activities)

##
## Collect final data
##
FinalData <- cbind(ExtractedMeasures, ActivitiesWithLabels["Activity"])

##
## Write first result data set to csv
##
write.csv(FinalData, "MeanAndStdMeasurements.csv")

##
## Join Final Data to subject ids
##
ActivitySubjectPair <- cbind(FinalData, subjects)

##
## Summarize means per unique (activity, subject) pair by using melt and dcast (assumes "reshape2" package)
##
DataToMelt <- melt(ActivitySubjectPair, id=c("Subject", "Activity"))
CastedData <- dcast(DataToMelt, Activity + Subject ~ variable, mean)

## write second result data set to csv
write.csv(CastedData, "ActivitySubjectMeans.csv")


