# Getting & Cleaning Data Course Project
The run_analysis.R R script in this repository can be run on the UCI HAR Dataset to produce a tidy version of the data. The script generates two data sets; 'full_data' and 'summarised', in the data.table format and data.frame formats respectively. The 'full_data' table contains all the mean and standard deviation measurements taken, labelled with subject and activity for each measurement. The 'summarised' table contains means of each variable for each subject / activity combination. See the code book for more information on the data.

To run the script the UCI HAR Dataset must be in the R working directory and the data.table, plyr, and reshape2 libraries must be installed. After the script has been run the commands 
```R
write.table(full_data, file="full_data.txt", row.names=FALSE) 
```
and
```R
write.table(summarised, file="summarised.txt", row.names=FALSE)
```
can be used to produce csv files containing each data set.

The script is commented with the steps taken to produce the tables.
