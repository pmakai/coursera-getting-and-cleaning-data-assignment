# coursera-getting-and-cleaning-data-assignment

This is the course project for the Getting and Cleaning Data Coursera course. The R script, run_analysis.R, does the following:

## prepares the assignemnt

- loads dplyr
- Loads both the training and test datasets (X Y, and subject).
- Loads features, activity labels and 

## Carries out the assignment

1. Merges the training and test datasets
2. Selects means and standard deviations and saves this into a dataset
3. Converts the activity columns into factors based on the values of the activity_labels dataset
4. Renames the unclear varaibles
5. Creates a tidy dataset that consists of the average (mean) value of each variable for each subject and activity pair.
6. The end result can be seen in the file tidy.txt.
