# Getting & Cleaning Data Course Project
The run_analysis.R R script in this repositary can be run on the UCI HAR Dataset to produce a tidy version of the data. The sript generates two data sets , 'full_data' and 'summarised', in the data.table format. The 'full_data' table contains all the mean and standard deviation measurements taken, labelled with subject and activity for each measurement. The 'summarised' table contains means of each varible for each subject / activity combination. See the code book for more information on the data.

To run run the script the UCI HAR Dataset must be the R working directory and the data.table, plyr, and reshape2 libraries must be installed. After the script has been run the commands 
```R
write.table(full_data, file="full_data.csv", row.names=FALSE) 
```
and
```R
write.table(summarised, file="summarised.csv", row.names=FALSE)
```
can be used to produce csv files containing each data set.

The script is commented with the steps taken to produce the tables.
