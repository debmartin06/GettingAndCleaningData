# GettingAndCleaningData

In this project, we were tasked with compiling and tidying data provided from a study done to track the moment of Samsung Galaxy S smartphone users.

First and foremost, the data *must* be downloaded on your computer for the script to work. You can find the zipped files here: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Unzip the files once downloaded, and make sure the folder they were downloaded to is set as your working directory in R.

The script is named run_analysis.R, and there are comments interspersed throughout the script to explain what is happening each step of the way, but here is a brief synopsis of what it's doing:
1. Merges the training and test sets into one data set.
2. Extracts the mean and standard deviation measurements for each variable.
3. Assigns descriptive activity names to the data set.
4. Labels the data set with descriptive variable names.
5. Creates a second, tidy data set that takes the average of each variable, grouped by subject ID and activity ID.