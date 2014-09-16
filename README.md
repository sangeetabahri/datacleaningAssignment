## README for Cleaning Data Course Project Assignment

### Purpose  
The goal of the project is to collec, work and create tidy data for UCI HAR Dataset.

### Source Data 
The data for this assignment is from  <a href="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip">Human Activity Recognition Using Smartphones </a>

### Files for the Assignment
   * run_analysis.R - This is a R script that processes the data set, and generates the required tidy dataset.
   * Codebook.md    - This markdown file describes the variables, the data, and process for creating the tidy dataset.
   * README.md      - This markdown file is the README file for the project.
   * tidy_data.txt  - This is txt file that contains the tidy dataset.

### Executing the script 
Please ensure the following is true before running the script

   * Please make sure that all the data is in your working directory under folder name "data"
   * run_analysis.R script is in your working directory
   * plyr and reshape2 packages are installed in your R environment.


<b>To run the script source("run_analysis.R")</b>

### Image Explaining the Data
![ScreenShot](https://raw.githubusercontent.com/sangeetabahri/datacleaningAssignment/master/DatasetExplaination.png)

### Functionality
<b> Script run_analysis.R does the following  </b>
<ol>
<li>      Merges the X data for training ( X_train.txt  ) and the test  (X_test.txt) to create one data set for X.</li>
<li>      Appropriately labels the data set with descriptive variable names from features.txt </li>
<li>      Extracts only the measurements on the mean and standard deviation for each measurement for X. </li>
<li>      Merges the Y data for training ( Y_train.txt  ) and the test  (Y_test.txt) to create one data set for Y.</li>
<li>      Uses descriptive activity names to name the activities in the data set ( Y_train.txt and Y_test.txt) </li>
<li>      Merges the subject data for training ( subject_train.txt  ) and the test  (subject_test.txt) to create one data set for subject.</li>
<li>      Merges the subject data , X data, and Y (activity description) data to create one data set</li>
<li>      From the data set in step (7) above , creates a second, independent tidy data set with the average of each feature variable for each activity and each subject.</li>
</ol>
### Output 
The script run_analysis.R creates a tidy_data.txt in your working directory. The output file has total data of 180 rows, and 81 columns (subjectId,activity, and 79 variables from the data set meeting the cleanup rules).

