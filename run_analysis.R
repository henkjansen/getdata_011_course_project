library("dplyr")


readColumnNames <- function() {
    df_column_names <- read.table("features.txt", col.names=c("column_index", "column_name"), colClasses=c("integer", "character"))

    return(df_column_names$column_name)
}

readActivityLabels <- function() {
    df_activity_labels <- read.table("activity_labels.txt", col.names=c("index", "label"))

    return (df_activity_labels$label)
}


# Read 'column names' and 'activity labels'
column_names <- readColumnNames()
activity_labels <- readActivityLabels()


readMeasurements <- function(measurements_file, activity_file, subject_file) {
    # Read mesurements
    # Label the data set with descriptive variable names
    df_measurements <- read.table(measurements_file, col.names=column_names)

    # Read activity data
    df_activity <- read.table(activity_file, col.names=c("activity"))

    # Use descriptive activity names
    # Use a factor for this
    df_activity$activity = factor(df_activity$activity, labels=activity_labels)

    # Add activity to measurements dataframe
    df_measurements$activity <- df_activity$activity

    # Read subject data
    df_subject <- read.table(subject_file, col.names=c("subject"))

    # Add subject to measurements dataframe
    df_measurements$subject <- df_subject$subject

    return(df_measurements)
}


# Read training and test sets
df_test_measurements <- readMeasurements("test/X_test.txt", "test/y_test.txt", "test/subject_test.txt")
df_train_measurements <- readMeasurements("train/X_train.txt", "train/y_train.txt", "train/subject_train.txt")

# Merge training and test sets
df_measurements <- rbind(df_test_measurements, df_train_measurements)

# Extract the measurements on the mean and standard deviation
df_measurements <- select(df_measurements, subject, activity, contains(".mean."), contains(".std."))

# Use descriptive activity names
# This is already done in readMeasurements

# Label the data set with descriptive variable names
# This is already done in readMeasurements

# Create a data set with the average of each variable for each activity and each subject
df_averages <- df_measurements %>% group_by(activity, subject) %>% summarise_each(funs(mean))

# Write the results to "result.txt"
write.table(df_averages, "result.txt", row.name=FALSE)

