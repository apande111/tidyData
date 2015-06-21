### Introduction - Dataset

Avarage and Standard deviation for each variable for each Actavity 
(WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
for each Subject (30 Subjects).Total columns in each record are 69.Total number of 
records in summary dataset file are 180. The first three columns are Subject (code),
Activity(code), Activity_Name. The data is ordered by Subject (code) ans Activity (code) 
to follow a common standard.

Dataset created by combining raw data for training and testing provided for 
the project in a readable format. The [ raw data ] (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
was downloaded and uncompressed before tidying up.

### Included files 
Files have detailed comments describing the steps performed. 
1.  download_unzip.txt to download and unzip the raw data in working directory
2.  run_analysis.R to structure data in the desired form. 
3.  Summary Dataset result.txt contains result of the run_analysis script.
4.  CodeBook.md contains description of variables.

### Synopsis of run_analysis.R
Script uses data.table and dplyr libraries. Reads table features features.txt and extracts feature names.
It the reads training and test files (X_train.txt, y_train.txt, subject_train.txt, X_test.txt, y_test.txt,
subject_test.txt)and respective subject identifiers and combines into one dataset.
Subsiquently it reads Activity Names from Activity_labels.txt and joins the merged dataset to provide 
meaningful Activity names in dataset. Finally  independent tidy data set with the average of each variable 
for each activity and each subject is generated in a [result.txt] (result.txt).

#### Ref:

1.  [1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

[Check for details!](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
