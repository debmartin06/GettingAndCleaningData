#Getting and Cleaning Data Code Book

For a full description of the study, please visit the source site here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The full data on the variables can also be found in the features_info.txt file located in the data's zip file.

Below is a snippet from the features_info.txt file, to give a brief explanation of the data. I slightly changed the original file to account for the change in variable names that was part of my assignment.

```
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals timeAcc-XYZ and timeGyro-XYZ. These time domain signals (prefix 'time' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeBodyAcc-XYZ and timeGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccJerk-XYZ and timeBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccMagnitude, timeGravityAccMagnitude, timeBodyAccJerkMagnitude, timeBodyGyroMagnitude, timeBodyGyroJerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing freqBodyAcc-XYZ, freqBodyAccJerk-XYZ, freqBodyGyro-XYZ, freqBodyAccJerkMagnitude, freqBodyGyroMagnitude, freqBodyGyroJerkMagnitude. (Note the 'freq' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

timeBodyAcc-XYZ
timeGravityAcc-XYZ
timeBodyAccJerk-XYZ
timeBodyGyro-XYZ
timeBodyGyroJerk-XYZ
timeBodyAccMagnitude
timeGravityAccMagnitude
timeBodyAccJerkMagnitude
timeBodyGyroMagnitude
timeBodyGyroJerkMagnitude
freqBodyAcc-XYZ
freqBodyAccJerk-XYZ
freqBodyGyro-XYZ
freqBodyAccMagnitude
freqBodyAccJerkMagnitude
freqBodyGyroMagnitude
freqBodyGyroJerkMagnitude

The set of variables that were estimated from these signals are: 

Mean: Mean value
StdDev: Standard deviation

The complete list of variables of each feature vector is available in 'features.txt'
```