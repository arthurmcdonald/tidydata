# tidydata - Getting and Cleaning Data Course Project

## Prerequisites
* Must have R installed
* Need the following packages installed:
  * dplyr
  * stringr

## Running this project
* Clone this repo to your local machine
* Run the run_analysis.R script in R or RStudio
* Output will be 'tidy_data.csv'

## About the run_analysis script
Input:
* ```data/test/```
  * ```X_test.txt```
  * ```y_test.txt```
  * ```subject_test.txt```
* ```data/train/```
  * ```X_train.txt```
  * ```y_train.txt```
  * ```subject_train.txt```
* ```data/features.txt```

The run script reads the test and train data files and appends the columns in
the test data, appends the columns in the train data, then row appends these two 
dataframes to get the full dataset. It uses the features.txt data as the column
headings for all of columns except SubjectID (found in the subject_* files) and
Activity (found in the y_* files).

The script then drops all columns that are not mean, std (standard deviation),
SubjectID, or Activity, does some cleaning of the column names and
changes the Activity codes to their corresponding labels (found in
```data/activity_labels.txt```.  The final step of the script is to group the 
data by SubjectID and Activity, and find the mean for each other column.

Output:

```tidy_data.csv```

180 rows (30 subjects * 6 activities)

68  cols (66 data variables + SubjectID + Activity)
