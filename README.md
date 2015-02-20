# Course project for "Getting and cleaning data"

Also see https://class.coursera.org/getdata-011/human_grading

The run_analysis.R script does the following:

* Read training and test data sets
    * Read measurements (*X_test.txt* and *X_train.txt*)
    * Read subjects (*subject_test.txt* and *subject_train.txt*)
    * Read activities (*y_test.txt* and *y_train.txt*)
* Merge the datasets
* Use descriptive activity names to name the activities in the data set
    * Read the activity names from *activity_labels.txt*
    * Put the activity name in the column *activity*
* Appropriately label the data set with descriptive variable names
    * Read the variable names from *features.txt*
* Create a dataset with the average of each variable for each activity and each subject
    * Write the results to *result.txt*

## Code book

* **activity**: activity label (character)
    * WALKING
    * WALKING_UPSTAIRS
    * WALKING_DOWNSTAIRS
    * SITTING
    * STANDING
    * LAYING
* **subject**: subject index (integer)
* **tBodyAcc.mean...XYZ**: mean of tBodyAcc-XYZ (numeric)
* **tGravityAcc.mean...XYZ**: mean of tGravityAcc-XYZ (numeric)
* **tBodyAccJerk.mean...XYZ**: mean of tBodyAccJerk-XYZ (numeric)
* **tBodyGyro.mean...XYZ**: mean of tBodyGyro-XYZ (numeric)
* **tBodyGyroJerk.mean...X**: mean of tBodyGyroJerk-XYZ (numeric)
* **tBodyAccMag.mean..**: mean of tBodyAccMag (numeric)
* **tGravityAccMag.mean..**: mean of tGravityAccMag (numeric)
* **tBodyAccJerkMag.mean..**: mean of tBodyAccJerkMag (numeric)
* **tBodyGyroMag.mean..**: mean of tBodyGyroMag (numeric)
* **tBodyGyroJerkMag.mean..**: mean of tBodyGyroJerkMag (numeric)
* **fBodyAcc.mean...XYZ**: mean of fBodyAcc-XYZ (numeric)
* **fBodyAccJerk.mean...XYZ**: mean of fBodyAccJerk-XYZ (numeric)
* **fBodyGyro.mean...XYZ**: mean of fBodyGyro-XYZ (numeric)
* **fBodyAccMag.mean..**: mean of fBodyAccMag (numeric)
* **fBodyBodyAccJerkMag.mean..**: mean of fBodyAccJerkMag (numeric)
* **fBodyBodyGyroMag.mean..**: mean of fBodyGyroMag (numeric)
* **fBodyBodyGyroJerkMag.mean..**: mean of fBodyGyroJerkMag (numeric)
* **tBodyAcc.std...XYZ**: standard deviation of tBodyAcc-XYZ (numeric)
* **tGravityAcc.std...XYZ**: standard deviation of tGravityAcc-XYZ (numeric)
* **tGravityAccMag.std..XYZ**: standard deviation of tGravityAccMag (numeric)
* **tBodyAccJerkMag.std..**: standard deviation of tBodyAccJerkMag (numeric)
* **tBodyGyroMag.std..**: standard deviation of tBodyGyroMag (numeric)
* **tBodyGyroJerkMag.std..**: standard deviation of tBodyGyroJerkMag (numeric)
* **fBodyAcc.std...XYZ**: standard deviation of fBodyAcc-XYZ (numeric)
* **fBodyAccJerk.std...XYZ**: standard deviation of fBodyAccJerk-XYZ (numeric)
* **ffBodyGyro.std...XYZ**: standard deviation of fBodyGyro-XYZ (numeric)
* **fBodyAccMag.std..**: standard deviation of fBodyAccMag (numeric)
* **fBodyBodyAccJerkMag.std..**: standard deviation of fBodyAccJerkMag (numeric)
* **fBodyBodyGyroMag.std..**: standard deviation of fBodyGyroMag (numeric)
* **fBodyBodyGyroJerkMag.std..**: standard deviation of fBodyGyroJerkMag (numeric)
