# coursera-getting-and-cleaning-data-assignment
Assignment

This is the course project for the Getting and Cleaning Data Coursera course. The R script, run_analysis.R, does the following:

1. prepares the assignemnt
- loads dplyr
- Loads both the training and test datasets (X Y, and subject).
- Loads features, activity labels and 


2. Merges the training and test datasets
3. Selects means and standard deviations and saves this into a dataset
4. Converts the activity columns into factors based on the values of the activity_labels dataset
5. Creates a tidy dataset that consists of the average (mean) value of each variable for each subject and activity pair.
6. The end result can be seen in the file tidy.txt.
