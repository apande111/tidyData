### Summary Feature Selection - Dataset


For each Subject(1 to 30), Activity (1 to 6), Activity_Name (WALKING, WALKING_UPSTAIRS,
WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) the Mean and Standard Deviation 
for following features are included in the dataset.

The features selected for this dataset [file] (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) 
the accelerometer and gyroscope 3-axial signals tAcc-XYZ and tGyro-XYZ. 
Similarly, the acceleration signal was then separated into body and gravity 
acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ). 

Subsequently, the body linear acceleration and angular 
velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ).
Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm 
(tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, 
fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

### Structure of output file result.txt

* Subject
* Activity
* Activity_Name
* mean & std (	tBodyAcc-XYZ
*	   	tGravityAcc-XYZ
*	   	tBodyAccJerk-XYZ
*		tBodyGyro-XYZ
*		tBodyGyroJerk-XYZ
*		tBodyAccMag
*		tGravityAccMag
*		tBodyAccJerkMag
*		tBodyGyroMag
*		tBodyGyroJerkMag
*		fBodyAcc-XYZ
*		fBodyAccJerk-XYZ
*		fBodyGyro-XYZ
*		fBodyAccMag
*		fBodyAccJerkMag
*		fBodyGyroMag
*		fBodyGyroJerkMag)

##### Note:
mean(3) & std(3) of 8 XYZ variabls above = (3+3) * 8 = 48
mean(1) & std(1) of 9 other variables above = (1+1) * 9 = 18
(Subject code, Activity code, Activity_Name = 3
SO total Columns in the file are 69 (48+18+3).

30 Subjects & 6 Activities = 30 * 6 =180
So total records in file are 180.
