##CodeBook

###Identifiers
* `subject` - the ID of the subject being recorded.  Ranges from `1` to `30`
* `activity` - the activity being taken while the data was recorded. There are 6 activities
  1. `WALKING`
  2. `WALKING_UPSTAIRS`
  3. `WALKING_DOWNSTAIRS`
  4. `SITTING`
  5. `STANDING`
  6. `LAYING`
 
###Values
There were 79 value variables having to do with mean and std.  When the data was melted and cast I took the mean of these descriptive stats.  To maintain distinct names, I appended the suffix "AVGof" in front of the previous variable name.  

  *Units*

Each mean() value is the average of the mean of a measurement by a gyroscope or accelerometer of a samsung phone

Each std() value is the average of the standard deviation of a measurement by a gyroscope or accelerometer of a samsung phone

*The list of values* :


`AVGoftBodyAcc-mean()-X`

`AVGoftBodyAcc-mean()-Y`

`AVGoftBodyAcc-mean()-Z`

`AVGoftBodyAcc-std()-X`

`AVGoftBodyAcc-std()-Y`

`AVGoftBodyAcc-std()-Z`

`AVGoftGravityAcc-mean()-X`

`AVGoftGravityAcc-mean()-Y`

`AVGoftGravityAcc-mean()-Z`

`AVGoftGravityAcc-std()-X`

`AVGoftGravityAcc-std()-Y`

`AVGoftGravityAcc-std()-Z`

`AVGoftBodyAccJerk-mean()-X`

`AVGoftBodyAccJerk-mean()-Y`

`AVGoftBodyAccJerk-mean()-Z`

`AVGoftBodyAccJerk-std()-X`

`AVGoftBodyAccJerk-std()-Y`

`AVGoftBodyAccJerk-std()-Z`

`AVGoftBodyGyro-mean()-X`

`AVGoftBodyGyro-mean()-Y`

`AVGoftBodyGyro-mean()-Z`

`AVGoftBodyGyro-std()-X`

`AVGoftBodyGyro-std()-Y`

`AVGoftBodyGyro-std()-Z`

`AVGoftBodyGyroJerk-mean()-X`

`AVGoftBodyGyroJerk-mean()-Y`

`AVGoftBodyGyroJerk-mean()-Z`

`AVGoftBodyGyroJerk-std()-X`

`AVGoftBodyGyroJerk-std()-Y`

`AVGoftBodyGyroJerk-std()-Z`

`AVGoftBodyAccMag-mean()`

`AVGoftBodyAccMag-std()`

`AVGoftGravityAccMag-mean()`

`AVGoftGravityAccMag-std()`

`AVGoftBodyAccJerkMag-mean()`

`AVGoftBodyAccJerkMag-std()`

`AVGoftBodyGyroMag-mean()`

`AVGoftBodyGyroMag-std()`

`AVGoftBodyGyroJerkMag-mean()`

`AVGoftBodyGyroJerkMag-std()`

`AVGoffBodyAcc-mean()-X`

`AVGoffBodyAcc-mean()-Y`

`AVGoffBodyAcc-mean()-Z`

`AVGoffBodyAcc-std()-X`

`AVGoffBodyAcc-std()-Y`

`AVGoffBodyAcc-std()-Z`

`AVGoffBodyAcc-meanFreq()-X`

`AVGoffBodyAcc-meanFreq()-Y`

`AVGoffBodyAcc-meanFreq()-Z`

`AVGoffBodyAccJerk-mean()-X`

`AVGoffBodyAccJerk-mean()-Y`

`AVGoffBodyAccJerk-mean()-Z`

`AVGoffBodyAccJerk-std()-X`

`AVGoffBodyAccJerk-std()-Y`

`AVGoffBodyAccJerk-std()-Z`

`AVGoffBodyAccJerk-meanFreq()-X`

`AVGoffBodyAccJerk-meanFreq()-Y`

`AVGoffBodyAccJerk-meanFreq()-Z`

`AVGoffBodyGyro-mean()-X`

`AVGoffBodyGyro-mean()-Y`

`AVGoffBodyGyro-mean()-Z`

`AVGoffBodyGyro-std()-X`

`AVGoffBodyGyro-std()-Y`

`AVGoffBodyGyro-std()-Z`

`AVGoffBodyGyro-meanFreq()-X`

`AVGoffBodyGyro-meanFreq()-Y`

`AVGoffBodyGyro-meanFreq()-Z`

`AVGoffBodyAccMag-mean()`

`AVGoffBodyAccMag-std()`

`AVGoffBodyAccMag-meanFreq()`

`AVGoffBodyBodyAccJerkMag-mean()`

`AVGoffBodyBodyAccJerkMag-std()`

`AVGoffBodyBodyAccJerkMag-meanFreq()`

`AVGoffBodyBodyGyroMag-mean()`

`AVGoffBodyBodyGyroMag-std()`

`AVGoffBodyBodyGyroMag-meanFreq()`

`AVGoffBodyBodyGyroJerkMag-mean()`

`AVGoffBodyBodyGyroJerkMag-std()`

`AVGoffBodyBodyGyroJerkMag-meanFreq()`
 
