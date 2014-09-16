## README for Cleaning Data Course Project Assignment

### Purpose  
The goal of the project is to collect, work and create tidy data for UCI HAR Dataset.

### Source Data 
The data for this assignment is from  <a href="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip">Human Activity Recognition Using Smartphones </a>

### Files for the Assignment
   * run_analysis.R - This is an R script that processes the data set, and generates the required tidy dataset.
   * Codebook.md    - This markdown file describes the variables, the data, and process for creating the tidy dataset.
   * README.md      - This markdown file is the README file for the project.
   * tidy_data.txt  - This is txt file that contains the tidy dataset.

### Executing the script 
Please ensure the following is true before running the script

   * Please make sure that all the data is in your working directory under folder name "data"
   * run_analysis.R script is in your working directory
   * plyr and reshape2 packages are installed in your R environment.


<b>To run the script source("run_analysis.R")</b>

### Functionality
#### Data files
- Data file  X_train.txt has 7352 observations, and 561 columns
- Data file  X_test.txt  has 2947 observations, and 561 columns
- Data file  Y_train.txt has 7352 observations, and one column
- Data file  Y_test.txt  has 2947 observations, and one column
- Data file  subject_train.txt has 7352 observations, and one column
- Data file  subject_test.txt has 2947 observations, and one column
- Data file  features.txt has 561 observations, and one column
- Data file  activies.txt has 6 observations, and 2 columns ( id, and activity description)


#### Dataset and variable names connections to each other
The image below is provided by David TA for this course
![ScreenShot](https://raw.githubusercontent.com/sangeetabahri/datacleaningAssignment/master/DatasetExplaination.png)

#### Steps

The tidy data was created by following steps
<ol>
<li>
Merge X data ( X_train and X_test)  , as seen from above both have same number of columns
</li><li>
Assign columns names to the combined X data from the features.txt. The number of columns in X data are the same as number of observations in features.txt
</li><li>
Creating a subset of X data, for those column names that have either "mean()" or "std()"", rest are dropped
</li><li>
Merge Y data ( Y_train and Y_test) , as seen from above both have same number of columns
</li><li>
Data in Y are activity ids, so we change Y to have activity description instead of activitvy id
</li><li>
Merge subject data ( subject_train and subject_test) , as seen from above both have same number of columns
</li><li>
Combine data from step 6, 5 and 3 ( subject,activity,X datasets) into a single data frame.
</li><li>
The script calculates mean values for all features variables, group by subject and activity_name
</li><li>
The output file tidy_data.txt is generated, there are 180 observations and 81 columns
</li>
</ol>

### Output 
The script run_analysis.R creates a tidy_data.txt in your working directory. The output file has total data of 180 rows, and 81 columns (subjectId,activity, and 79 variables from the data set meeting the cleanup rules).

