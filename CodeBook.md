Code Book For Getting And Cleaning Data Course Project
=================================================

The set of variables that were selected for current data set:

- subject: ID of a person who performed the specific type of activity (from 1 to 30) extracted from input subject_test.txt and subject_train.txt data files

- activity_level: one of the following factor labels - WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING - received by mapping activity ids for each row in data set to labels specified in activity_labels.txt input

- list of average measurements for every activity per person calculated for each mean and standart deviation measurements from input data set:
tBodyAcc-mean()-X
tBodyAcc-mean()-Y
tBodyAcc-mean()-Z
tBodyAcc-std()-X
tBodyAcc-std()-Y
tBodyAcc-std()-Z
etc.

Full list of variables you can find in summarized_data.txt after runnig provided R script.
