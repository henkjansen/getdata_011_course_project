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
    * Rename column name: fBodyBody\* should be fFreqBody\*
* Create a dataset with the average of each variable for each activity and each subject
    * Write the results to *result.txt*

## Code book

Variable name               | Variable number | Variable type | Variable description                                                                                      | Units                                 | Values
----------------------------|-----------------|---------------|-----------------------------------------------------------------------------------------------------------|---------------------------------------|--------------------------------------------------------------------------
activity                    | 1               | character     | Activity name                                                                                             | factor                                | WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
subject                     | 2               | integer       | Subject identifier                                                                                        | identifier                            |
tBodyAcc.mean...X           | 3               | number        | Linear body acceleration in x direction (mean value)                                                      | g (gravity of earth = 9.80665 m/seg2) |
tBodyAcc.mean...Y           | 4               | number        | Linear body acceleration in y direction (mean value)                                                      | g (gravity of earth = 9.80665 m/seg2) |
tBodyAcc.mean...Z           | 5               | number        | Linear body acceleration in z direction (mean value)                                                      | g (gravity of earth = 9.80665 m/seg2) |
tGravityAcc.mean...X        | 6               | number        | Gravity acceleration in x direction (mean value)                                                          | g (gravity of earth = 9.80665 m/seg2) |
tGravityAcc.mean...Y        | 7               | number        | Gravity acceleration in y direction (mean value)                                                          | g (gravity of earth = 9.80665 m/seg2) |
tGravityAcc.mean...Z        | 8               | number        | Gravity acceleration in z direction (mean value)                                                          | g (gravity of earth = 9.80665 m/seg2) |
tBodyAccJerk.mean...X       | 9               | number        | Linear body acceleration with jerk signal in x direction (mean value)                                     | g (gravity of earth = 9.80665 m/seg2) |
tBodyAccJerk.mean...Y       | 10              | number        | Linear body acceleration with jerk signal in y direction (mean value)                                     | g (gravity of earth = 9.80665 m/seg2) |
tBodyAccJerk.mean...Z       | 11              | number        | Linear body acceleration with jerk signal in z direction (mean value)                                     | g (gravity of earth = 9.80665 m/seg2) |
tBodyGyro.mean...X          | 12              | number        | Body gyroscope in x direction (mean value)                                                                | rad/seg                               |
tBodyGyro.mean...Y          | 13              | number        | Body gyroscope in y direction (mean value)                                                                | rad/seg                               |
tBodyGyro.mean...Z          | 14              | number        | Body gyroscope in z direction (mean value)                                                                | rad/seg                               |
tBodyGyroJerk.mean...X      | 15              | number        | Body gyroscope with jerk signal in x direction (mean value)                                               | rad/seg                               |
tBodyGyroJerk.mean...Y      | 16              | number        | Body gyroscope with jerk signal in y direction (mean value)                                               | rad/seg                               |
tBodyGyroJerk.mean...Z      | 17              | number        | Body gyroscope with jerk signal in z direction (mean value)                                               | rad/seg                               |
tBodyAccMag.mean..          | 18              | number        | Linear body acceleration magnitude (mean value)                                                           | g (gravity of earth = 9.80665 m/seg2) |
tGravityAccMag.mean..       | 19              | number        | Gravity acceleration magnitude (mean value)                                                               | g (gravity of earth = 9.80665 m/seg2) |
tBodyAccJerkMag.mean..      | 20              | number        | Linear body acceleration magnitude with jerk signal (mean value)                                          | g (gravity of earth = 9.80665 m/seg2) |
tBodyGyroMag.mean..         | 21              | number        | Body gyroscope magnitude (mean value)                                                                     | rad/seg                               |
tBodyGyroJerkMag.mean..     | 22              | number        | Body gyroscope magnitude with jerk signal (mean value)                                                    | rad/seg                               |
fBodyAcc.mean...X           | 23              | number        | Fast fourier transform linear body acceleration in x direction (mean value)                               | g (gravity of earth = 9.80665 m/seg2) |
fBodyAcc.mean...Y           | 24              | number        | Fast fourier transform linear body acceleration in y direction (mean value)                               | g (gravity of earth = 9.80665 m/seg2) |
fBodyAcc.mean...Z           | 25              | number        | Fast fourier transform linear body acceleration in z direction (mean value)                               | g (gravity of earth = 9.80665 m/seg2) |
fBodyAccJerk.mean...X       | 26              | number        | Fast fourier transform linear body acceleration with jerk signal in x direction (mean value)              | g (gravity of earth = 9.80665 m/seg2) |
fBodyAccJerk.mean...Y       | 27              | number        | Fast fourier transform linear body acceleration with jerk signal in y direction (mean value)              | g (gravity of earth = 9.80665 m/seg2) |
fBodyAccJerk.mean...Z       | 28              | number        | Fast fourier transform linear body acceleration with jerk signal in z direction (mean value)              | g (gravity of earth = 9.80665 m/seg2) |
fBodyGyro.mean...X          | 29              | number        | Fast fourier transform body gyroscope in x direction (mean value)                                         | rad/seg                               |
fBodyGyro.mean...Y          | 30              | number        | Fast fourier transform body gyroscope in y direction (mean value)                                         | rad/seg                               |
fBodyGyro.mean...Z          | 31              | number        | Fast fourier transform body gyroscope in z direction (mean value)                                         | rad/seg                               |
fBodyAccMag.mean..          | 32              | number        | Fast fourier transform linear body acceleration magnitude (mean value)                                    | g (gravity of earth = 9.80665 m/seg2) |
fFreqBodyAccJerkMag.mean..  | 33              | number        | Fast fourier transform linear body acceleration frequency magnitude with jerk signal (mean value)         | g (gravity of earth = 9.80665 m/seg2) |
fFreqBodyGyroMag.mean..     | 34              | number        | Fast fourier transform body gyroscope frequency magnitude (mean value)                                    | rad/seg                               |
fFreqBodyGyroJerkMag.mean.. | 35              | number        | Fast fourier transform body gyroscope frequency magnitude with jerk signal (mean value)                   | rad/seg                               |
tBodyAcc.std...X            | 36              | number        | Linear body acceleration in x direction (standard deviation)                                              | g (gravity of earth = 9.80665 m/seg2) |
tBodyAcc.std...Y            | 37              | number        | Linear body acceleration in y direction (standard deviation)                                              | g (gravity of earth = 9.80665 m/seg2) |
tBodyAcc.std...Z            | 38              | number        | Linear body acceleration in z direction (standard deviation)                                              | g (gravity of earth = 9.80665 m/seg2) |
tGravityAcc.std...X         | 39              | number        | Gravity acceleration in x direction (standard deviation)                                                  | g (gravity of earth = 9.80665 m/seg2) |
tGravityAcc.std...Y         | 40              | number        | Gravity acceleration in y direction (standard deviation)                                                  | g (gravity of earth = 9.80665 m/seg2) |
tGravityAcc.std...Z         | 41              | number        | Gravity acceleration in z direction (standard deviation)                                                  | g (gravity of earth = 9.80665 m/seg2) |
tBodyAccJerk.std...X        | 42              | number        | Linear body acceleration with jerk signal in x direction (standard deviation)                             | g (gravity of earth = 9.80665 m/seg2) |
tBodyAccJerk.std...Y        | 43              | number        | Linear body acceleration with jerk signal in y direction (standard deviation)                             | g (gravity of earth = 9.80665 m/seg2) |
tBodyAccJerk.std...Z        | 44              | number        | Linear body acceleration with jerk signal in z direction (standard deviation)                             | g (gravity of earth = 9.80665 m/seg2) |
tBodyGyro.std...X           | 45              | number        | Body gyroscope in x direction (standard deviation)                                                        | rad/seg                               |
tBodyGyro.std...Y           | 46              | number        | Body gyroscope in y direction (standard deviation)                                                        | rad/seg                               |
tBodyGyro.std...Z           | 47              | number        | Body gyroscope in z direction (standard deviation)                                                        | rad/seg                               |
tBodyGyroJerk.std...X       | 48              | number        | Body gyroscope with jerk signal in x direction (standard deviation)                                       | rad/seg                               |
tBodyGyroJerk.std...Y       | 49              | number        | Body gyroscope with jerk signal in y direction (standard deviation)                                       | rad/seg                               |
tBodyGyroJerk.std...Z       | 50              | number        | Body gyroscope with jerk signal in z direction (standard deviation)                                       | rad/seg                               |
tBodyAccMag.std..           | 51              | number        | Linear body acceleration magnitude (standard deviation)                                                   | g (gravity of earth = 9.80665 m/seg2) |
tGravityAccMag.std..        | 52              | number        | Gravity acceleration magnitude (standard deviation)                                                       | g (gravity of earth = 9.80665 m/seg2) |
tBodyAccJerkMag.std..       | 53              | number        | Linear body acceleration magnitude with jerk signal (standard deviation)                                  | g (gravity of earth = 9.80665 m/seg2) |
tBodyGyroMag.std..          | 54              | number        | Body gyroscope magnitude (standard deviation)                                                             | rad/seg                               |
tBodyGyroJerkMag.std..      | 55              | number        | Body gyroscope magnitude with jerk signal (standard deviation)                                            | rad/seg                               |
fBodyAcc.std...X            | 56              | number        | Fast fourier transform linear body acceleration in x direction (standard deviation)                       | g (gravity of earth = 9.80665 m/seg2) |
fBodyAcc.std...Y            | 57              | number        | Fast fourier transform linear body acceleration in y direction (standard deviation)                       | g (gravity of earth = 9.80665 m/seg2) |
fBodyAcc.std...Z            | 58              | number        | Fast fourier transform linear body acceleration in z direction (standard deviation)                       | g (gravity of earth = 9.80665 m/seg2) |
fBodyAccJerk.std...X        | 59              | number        | Fast fourier transform linear body acceleration with jerk signal in x direction (standard deviation)      | g (gravity of earth = 9.80665 m/seg2) |
fBodyAccJerk.std...Y        | 60              | number        | Fast fourier transform linear body acceleration with jerk signal in y direction (standard deviation)      | g (gravity of earth = 9.80665 m/seg2) |
fBodyAccJerk.std...Z        | 61              | number        | Fast fourier transform linear body acceleration with jerk signal in z direction (standard deviation)      | g (gravity of earth = 9.80665 m/seg2) |
fBodyGyro.std...X           | 62              | number        | Fast fourier transform body gyroscope in x direction (standard deviation)                                 | rad/seg                               |
fBodyGyro.std...Y           | 63              | number        | Fast fourier transform body gyroscope in y direction (standard deviation)                                 | rad/seg                               |
fBodyGyro.std...Z           | 64              | number        | Fast fourier transform body gyroscope in z direction (standard deviation)                                 | rad/seg                               |
fBodyAccMag.std..           | 65              | number        | Fast fourier transform linear body acceleration magnitude (standard deviation)                            | g (gravity of earth = 9.80665 m/seg2) |
fFreqBodyAccJerkMag.std..   | 66              | number        | Fast fourier transform linear body acceleration frequency magnitude with jerk signal (standard deviation) | g (gravity of earth = 9.80665 m/seg2) |
fFreqBodyGyroMag.std..      | 67              | number        | Fast fourier transform body gyroscope frequency magnitude (standard deviation)                            | rad/seg                               |
fFreqBodyGyroJerkMag.std..  | 68              | number        | Fast fourier transform body gyroscope frequency magnitude with jerk signal (standard deviation)           | rad/seg                               |
