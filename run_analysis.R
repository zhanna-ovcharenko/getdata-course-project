##
## Curernt script provides functionalyty to merge, modify and analyze provided data (read more about it in README amd CodeBook).
## The input data provided as zip file should be unpacked into working directory keeping its structure.
##
## The result of script execution is txt file with tidy data set based on analyzed input data.
##
## Also should be noticed that 'dplyr' package is used while wirking with data. That's why it should be installed and loaded into your workspace:
##
## library(dplyr)
##


#
# read common data for both data sets: features and available activities
#
features <- read.table("features.txt")
activity_labels <- read.table("activity_labels.txt")

#
# read test data
#
test_set <- read.table("test/X_test.txt")
test_labels <- read.table("test/y_test.txt")
test_subjects <- read.table("test/subject_test.txt")

#
# read train data
#
train_set <- read.table("train/X_train.txt")
train_labels <- read.table("train/y_train.txt")
train_subjects <- read.table("train/subject_train.txt")

#
#merge train test and train data into single data set
#
data_set <- rbind(cbind(test_set,test_labels,test_subjects), cbind(train_set,train_labels,train_subjects))

#
#specify meaningful variable names for data set using features factor
#
names(data_set) <- factor(append(as.character(features[[2]]),c("activity_label","subject")))

#
#extract only mean and std measurements (vars) for data set
#
measurements <- data_set %>% select(contains("mean()"),contains("std()"), activity_label, subject)

#
#merge data set with activity_labeles data to provide meaningful activity names
#rename/remove redundant columns
#
analysezed_data <- merge(measurements, activity_labels, by.x = "activity_label", by.y = "V1") %>%
  mutate(activity_label = V2) %>%
  select(-V2)

#
#summarize measurement average data per each subject/activity
#
summarized_data <- analysezed_data %>%
  group_by(subject,activity_label) %>%
  summarise_each(funs(mean))
#
#Write results into TXT file
#
write.table(summarized_data, "summarized_data.txt", row.name=FALSE)
