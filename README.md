==================================================================
Getting And Cleaning Data Course Project
==================================================================

Project description:
==================================================================

Current project was aimed to analyze data set whitch is a result of ' Human Activity Recognition Using Smartphones Dataset' experiment. You can read more about it in README.txt and other info files provided together with input data packed into zip file.

Implemented R script includes the following steps:
- merging training and test data sets from the input into single one
- adding meaningful variable names to data set
- replacing activity IDs with user friendly labels
- generating new tidy data set by computing average values of measurements for every person per activity

To successfully complete current analysis you should unpack all the data from the  into your R working directory.
Also 'dplyr' R package should be installed and loaded into your workspace as it's used for data analysis.

Files included into project repository:
=========================================

- README.md: contains general project description and input-output specification

- CodeBook.md: list with all variables in result data set and their relaitionship with the ones from the iput data set

- run_analyzis.R: R script to analyze inpjt data set and produce otput tidy data as a txt file
