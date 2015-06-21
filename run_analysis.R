library(data.table)
library(dplyr)

# Read Feature Names
features <- read.table("./data/UCI HAR Dataset/features.txt", sep = "")
f_header <- t(select(features,V2))

# Read Training records, Activity, and Subject identifier
train_x <- read.table("./data/UCI HAR Dataset/train/X_train.txt", sep = "",col.names = f_header)
train_y <- read.table("./data/UCI HAR Dataset/train/y_train.txt", sep = "", col.names = "Activity")
train_subject <- read.table("./data/UCI HAR Dataset/train/subject_train.txt", 
                               sep = "", col.names = "Subject")

# Combine Subject, Activity, and Training details into one table - train
train <- cbind(train_subject,train_y,train_x)

# Read Test records, Activity, and Subject identifier
test_x <- read.table("./data/UCI HAR Dataset/test/X_test.txt", sep = "", col.names = f_header)
test_y <- read.table("./data/UCI HAR Dataset/test/y_test.txt", sep = "", col.names = "Activity")
test_subject <- read.table("./data/UCI HAR Dataset/test/subject_test.txt", 
                           sep = "", col.names = "Subject")

# Combine Subject, Activity, and Test details into one table - test
test <- cbind(test_subject,test_y,test_x)

# Create one dataset - total
total <- rbind(train,test)


# Read Activity details
activity_labels <- read.table("./data/UCI HAR Dataset/activity_labels.txt", 
                              sep = "", col.names = c("Activity","Activity_Name"))

# Join to have meaningful names for activity in dataset
complete <- right_join(activity_labels,total)


# Summarize
my_vars <- names(complete) %in% c("Subject","Activity","Activity_Name") | 
           (names(complete) %like% "mean" & !names(complete) %like% "meanFreq") | 
           names(complete) %like% "std"
           

mean_std <- complete[my_vars]
result <-
  mean_std %>%
  group_by(Subject,Activity,Activity_Name) %>%
  summarise_each(funs(mean)) 

#Dataset for analysis in text file
write.table(result, file="result.txt", row.names = FALSE)


#view_r <- read.table("./result.txt", sep = "",header=TRUE)
