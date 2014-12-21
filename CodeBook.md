##CodeBook for tidy.txt

###Description of Data
The original data set contained data for thirty subjects, six activities and 561 variables collected via accelerometers (see README.md for more details on the original data set). The methodology required to turn those data sets into tidy.txt per the course assignment were to:

1) Merge the training and the test sets to create one data set.
2) Extract only the measurements on the mean and standard deviation for each measurement. 
3) Use descriptive activity names to name the activities in the data set
4) Appropriately label the data set with descriptive variable names.
5) Create a second, independent tidy data set with the average of each variable for each activity and each subject.

###Data Variables
The final tidy.txt data set contains 68 variables:

-activity - 1 of 6 activities (LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS)
-subject - subject IDs (1-30)

The remaining 66 variables follow the nomenclature of variable + Mean or Standard Deviation + Axis (X, Y or Z):

-tBodyAccMeanX
-tBodyAccMeanY
-tBodyAccMeanZ
-tBodyAccStdX
-tBodyAccStdY
-tBodyAccStdZ
-tGravityAccMeanX
-tGravityAccMeanY
-tGravityAccMeanZ
-tGravityAccStdX
-tGravityAccStdY
-tGravityAccStdZ
-tBodyAccJerkMeanX
-tBodyAccJerkMeanY
-tBodyAccJerkMeanZ
-tBodyAccJerkStdX
-tBodyAccJerkStdY
-tBodyAccJerkStdZ
-tBodyGyroMeanX
-tBodyGyroMeanY
-tBodyGyroMeanZ
-tBodyGyroStdX
-tBodyGyroStdY
-tBodyGyroStdZ
-tBodyGyroJerkMeanX
-tBodyGyroJerkMeanY
-tBodyGyroJerkMeanZ
-tBodyGyroJerkStdX
-tBodyGyroJerkStdY
-tBodyGyroJerkStdZ
-tBodyAccMagMean
-tBodyAccMagStd
-tGravityAccMagMean
-tGravityAccMagStd
-tBodyAccJerkMagMean
-tBodyAccJerkMagStd
-tBodyGyroMagMean
-tBodyGyroMagStd
-tBodyGyroJerkMagMean
-tBodyGyroJerkMagStd
-fBodyAccMeanX
-fBodyAccMeanY
-fBodyAccMeanZ
-fBodyAccStdX
-fBodyAccStdY
-fBodyAccStdZ
-fBodyAccJerkMeanX
-fBodyAccJerkMeanY
-fBodyAccJerkMeanZ
-fBodyAccJerkStdX
-fBodyAccJerkStdY
-fBodyAccJerkStdZ
-fBodyGyroMeanX
-fBodyGyroMeanY
-fBodyGyroMeanZ
-fBodyGyroStdX
-fBodyGyroStdY
-fBodyGyroStdZ
-fBodyAccMagMean
-fBodyAccMagStd
-fBodyBodyAccJerkMagMean
-fBodyBodyAccJerkMagStd
-fBodyBodyGyroMagMean
-fBodyBodyGyroJerkMagMean
-fBodyBodyGyroMagStd
-fBodyBodyGyroJerkMagStd

The data value for each of the 66 variables above represent the mean of that variable for each unique subject and activity combination.

From the original codebook, the background information on these variables prior to the calculation of their means are as follows:

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 