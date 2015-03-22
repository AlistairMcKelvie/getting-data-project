## Load features data as data.table
library(data.table)
features <- fread("./UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)
## Select only feature with mean() and std() in their name
features <- features[(V2 %like% 'mean[()]') | (V2 %like% 'std[()]')]

## Load x data
x_train <- data.table(read.table("./UCI HAR Dataset/train/X_train.txt"))
x_test  <- data.table(read.table("./UCI HAR Dataset/test/X_test.txt"))

## Join data into one table
x_full <- list(x_train, x_test)
x_full <- rbindlist(x_full)

## Throw out all cols that are not in the features selected earlier
x_full <- x_full[, features[, V1], with=FALSE]
setnames(x_full, names(x_full), features[, V2])

## Read y data and join
y_train <- data.table(read.table("./UCI HAR Dataset/train/y_train.txt"))
y_test <- data.table(read.table("./UCI HAR Dataset/test/y_test.txt"))
y_full <- list(y_train, y_test)
y_full <- rbindlist(y_full)

# Convert y data to activity names
library(plyr)
activities <- as.character(y_full[,V1])
activities <- revalue(activities, c("1"="WALKING", "2"="WALKING_UPSTAIRS",
                                    "3"="WALKING_DOWSTAIRS", "4"="SITTING",
                                    "5"="STANDING", "6"="xLAYING"))

## Read subject numbers and join
subjects_train <- fread("./UCI HAR Dataset/train/subject_train.txt")
subjects_test <- fread("./UCI HAR Dataset/test/subject_test.txt")
subjects <- list(subjects_train, subjects_test)
subjects <- rbindlist(subjects)[,V1]

## Join activities, subjects and x data
full_data <- cbind(subjects, activities, x_full)