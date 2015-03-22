### Code Book
The run_analyis.R script produces two tables from the raw UCI HAR Dataset, the full_data table and the summarised table, as described in the README file.

These tables contain tidied data from the UCI HAR experiments. Below is a quote from the README.txt file in raw data describing the experiments.
>The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
>
>The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

The full_data table has 10299 rows, each containing one sample, a subjects column, which contains a the number of human subject from which the sample was taken, an activities column, which contains the activity the subject was performing when the sample was taken, and 66 columns containing the the sample values for each of the selected variables. These 10299 samples are the combination of the training and test data provided in the raw data, as required by the project description.

The variables in this table produced from the a set of measured features. Below is a quote from the features.txt file in the raw data describing the features.
>The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
>
>Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
>
>Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

>These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The raw data includes 16 variables derived from the raw feature data, this tidied data, however, only contains the mean and standard deviation of the of the feature data, as required by the project description. Some additional variables were included in the raw data which were produce by "averaging the signals in a signal window sample", these are named as means, I interpret them as effectively being additional features, and not the means the project asks for.

The variables in this tidy data are:
* The mean and std deviation of Body Acceleration in the X, Y and Z directions:
 * tBodyAcc.mean.X
 * tBodyAcc.mean.Y
 * tBodyAcc.mean.Z
 * tBodyAcc.std.X
 * tBodyAcc.std.Y
 * tBodyAcc.std.Z
* The mean and std deviation of Body Acceleration Jerk the X, Y and Z directions:
 * tBodyAccJerk.mean.X
 * tBodyAccJerk.mean.Y
 * tBodyAccJerk.mean.Z
 * tBodyAccJerk.std.X
 * tBodyAccJerk.std.Y
 * tBodyAccJerk.std.Z
* The mean and std deviation of Gravity Acceleration in the X, Y and Z directions:
 * tGravityAcc.mean.X
 * tGravityAcc.mean.Y
 * tGravityAcc.mean.Z
 * tGravityAcc.std.X
 * tGravityAcc.std.Y
 * tGravityAcc.std.Z
* The mean and std deviation of Body Gyro in the X, Y and Z directions:
 * tBodyGyro.mean.X
 * tBodyGyro.mean.Y
 * tBodyGyro.mean.Z
 * tBodyGyro.std.X
 * tBodyGyro.std.Y
 * tBodyGyro.std.Z
* The mean and std deviation of Body Gyro Jerk in the X, Y and Z directions:
 * tBodyGyroJerk.mean.X
 * tBodyGyroJerk.mean.Z
 * tBodyGyroJerk.std.Y
 * tBodyGyroJerk.mean.Y
 * tBodyGyroJerk.std.X
 * tBodyGyroJerk.std.Z
* The mean and std deviation of Body Acceleration Magnitude:
 * tBodyAccMag.mean
 * tBodyAccMag.std
* The mean and std deviation of Body Acceleration Jerk Magnitude:
 * tBodyAccJerkMag.mean
 * tBodyAccJerkMag.std
* The mean and std deviation of Gravity Acceleration Magnitude:
 * tGravityAccMag.mean
 * tGravityAccMag.std
* The mean and std deviation of Body Gyro Magnitude:
 * tBodyGyroMag.mean
 * tBodyGyroMag.std
* The mean and std deviation of Body Gyro Jerk Magnitude:
 * tBodyGyroJerkMag.mean
 * tBodyGyroJerkMag.std

And the Fast Fourier Transform (FFT) versions of the above varaibles
 * fBodyAcc.mean.X
 * fBodyAcc.mean.Y
 * fBodyAcc.mean.Z
 * fBodyAcc.std.X
 * fBodyAcc.std.Y
 * fBodyAcc.std.Z
 * fBodyAccJerk.mean.X
 * fBodyAccJerk.mean.Y
 * fBodyAccJerk.mean.Z
 * fBodyAccJerk.std.X
 * fBodyAccJerk.std.Y
 * fBodyAccJerk.std.Z
 * fGravityAcc.mean.X
 * fGravityAcc.mean.Y
 * fGravityAcc.mean.Z
 * fGravityAcc.std.X
 * fGravityAcc.std.Y
 * fGravityAcc.std.Z
 * fBodyGyro.mean.X
 * fBodyGyro.mean.Y
 * fBodyGyro.mean.Z
 * fBodyGyro.std.X
 * fBodyGyro.std.Y
 * fBodyGyro.std.Z
 * fBodyGyroJerk.mean.X
 * fBodyGyroJerk.mean.Z
 * fBodyGyroJerk.std.Y
 * fBodyGyroJerk.mean.Y
 * fBodyGyroJerk.std.X
 * fBodyGyroJerk.std.Z
 * fBodyAccMag.mean
 * fBodyAccMag.std
 * fBodyAccJerkMag.mean
 * fBodyAccJerkMag.std
 * fGravityAccMag.mean
 * fGravityAccMag.std
 * fBodyGyroMag.mean
 * fBodyGyroMag.std
 * fBodyGyroJerkMag.mean
 * fBodyGyroJerkMag.std
 

