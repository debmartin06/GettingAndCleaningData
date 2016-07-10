#Step 1: Merge the training and test data into one dataset. Files need to be downloaded into working directory for script to work correctly.

#Step 1a: Read data and assign to variables
xtrain <- read.table('~/train/X_train.txt', header = FALSE)
ytrain <- read.table('~/train/y_train.txt', header = FALSE)
trainsubjects <- read.table('~/train/subject_train.txt', header = FALSE)
xtest <- read.table('~/test/X_test.txt', header = FALSE)
ytest <- read.table('~/test/y_test.txt', header = FALSE)
testsubjects <- read.table('~/test/subject_test.txt', header = FALSE)
features <- read.table('~/features.txt', header = FALSE)
actlabels <- read.table('~/activity_labels.txt', header = FALSE)

#Step 1b: Name Columns
colnames(xtrain) <- features[, 2]
colnames(xtest) <- features[, 2]
colnames(ytrain) <- 'activityID'
colnames(ytest) <- 'activityID'
colnames(actlabels) <- c('activityID', 'activityName')
colnames(trainsubjects) <- 'subjectID'
colnames(testsubjects) <- 'subjectID'

#Step 1c: Combine training data fields into one variable
trainingdata <- cbind(trainsubjects, ytrain, xtrain)

#Step 1d: Combine test data fields into one variable
testdata <- cbind(testsubjects, ytest, xtest)

#Step 1e: Combine training data and test data into one dataset
alldata <- rbind(trainingdata, testdata)

#Step 2: Extract only the identifier columns, mean columns, and standard deviation columns from the dataset
desiredcolumns <- grepl('subjectID', colnames(alldata)) | grepl('activityID', colnames(alldata)) | grepl('mean()', colnames(alldata)) & !grepl('meanFreq()', colnames(alldata)) | grepl('std()', colnames(alldata))
alldata <- alldata[, desiredcolumns]

#Step 3: Use descriptive activity names to name the activities in the data set
alldata <- merge(alldata, actlabels, by = 'activityID', all.x = TRUE)

#Step 4: Appropriately label the data set with descriptive variable names.
colnamelist <- colnames(alldata)
colnamelist <- gsub('\\()','', colnamelist, ignore.case = TRUE)
colnamelist <- gsub('mean', 'Mean', colnamelist, ignore.case = TRUE)
colnamelist <- gsub('std', 'StdDev', colnamelist, ignore.case = TRUE)
colnamelist <- gsub('^t', 'time', colnamelist, ignore.case = TRUE)
colnamelist <- gsub('^f', 'freq', colnamelist, ignore.case = TRUE)
colnamelist <- gsub('Mag', 'Magnitude', colnamelist, ignore.case = TRUE)
colnames(alldata) <- colnamelist

#Step 5: Create a second, independent tidy data set with the average of each variable for each activity and each subject.
datatotidy <- alldata[, colnames(alldata) !="activityName"]
tidydata <- aggregate(datatotidy[, 3:68], by = list(subjectID = datatotidy$subjectID, activityID = datatotidy$activityID), mean)
tidydata <- merge(tidydata, actlabels, all.x = TRUE)
write.table(tidydata, "tidytable.txt", row.names = FALSE, quote = FALSE)