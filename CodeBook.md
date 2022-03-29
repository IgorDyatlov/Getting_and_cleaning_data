# CodeBook

### 1. All measurements: 
tBodyAccMeanX tBodyAccMeanY 
tBodyAccMeanZ tBodyAccStdX 
tBodyAccStdY tBodyAccStdZ 
tGravityAccMeanX tGravityAccMeanY 
tGravityAccMeanZ tGravityAccStdX 
tGravityAccStdY tGravityAccStdZ 
tBodyAccJerkMeanX tBodyAccJerkMeanY 
tBodyAccJerkMeanZ tBodyAccJerkStdX 
tBodyAccJerkStdY fBodyBodyGyroJerkMagStd
tBodyAccJerkStdZ tBodyGyroMeanX 
tBodyGyroMeanY tBodyGyroMeanZ 
tBodyGyroStdX tBodyGyroStdY 
tBodyGyroStdZ tBodyGyroJerkMeanX 
tBodyGyroJerkMeanY tBodyGyroJerkMeanZ 
tBodyGyroJerkStdX tBodyGyroJerkStdY 
tBodyGyroJerkStdZ tBodyAccMagMean 
tBodyAccMagStd tGravityAccMagMean 
tGravityAccMagStd tBodyAccJerkMagMean 
tBodyAccJerkMagStd tBodyGyroMagMean 
tBodyGyroMagStd tBodyGyroJerkMagMean 
tBodyGyroJerkMagStd fBodyAccMeanX 
fBodyAccMeanY fBodyAccMeanZ 
fBodyAccStdX fBodyAccStdY 
fBodyAccStdZ fBodyAccJerkMeanX 
fBodyAccJerkMeanY fBodyAccJerkMeanZ 
fBodyAccJerkStdX fBodyAccJerkStdY 
fBodyAccJerkStdZ fBodyGyroMeanX 
fBodyGyroMeanY fBodyGyroMeanZ 
fBodyGyroStdX fBodyGyroStdY 
fBodyGyroStdZ fBodyAccMagMean 
fBodyAccMagStd fBodyBodyAccJerkMagMean 
fBodyBodyAccJerkMagStd fBodyBodyGyroMagMean 
fBodyBodyGyroMagStd fBodyBodyGyroJerkMagMean

### 2. Subject and activity:
Subject is an ID of a test subject, activity is a type of activity which was performed by a test subject

### 3. Activity labels:
WALKING (1) - Test subject was walking during the test

WALKING_UPSTAIRS (2) - Test subject was walking upstairs during the test

WALKING_DOWNSTAIRS (3) - Test subject was walking downstairs during the test

SITTING (4) - Test subject was sitting during the test

STANDING (5): Test subject was standing during the test

LAYING (6) - Test subject was laying down during the test

### 4. Variables:
wdpath - Path for your working directory

features - A table with all features

activity - A table with all activities

ourCollumns - Collumns with info about mean or standart deviation

ourCollumnsWithNames - Same as the last one, but with some changed elements and with names


subject_test, x_test, y_test - numbers, features and activities of a first batch of test subjects

subject_train, x_train, y_train - numbers, features and activities of a second batch of test subjects

testing - merged info about the first batch

training - merged info about the second batch

test_and_train - fully merged info
