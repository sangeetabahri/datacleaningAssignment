## Cookbook - Cleaning Data Course Project Assignment

### Data
The data for this assignment is from <a href="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip">Human Activity Recognition Using Smartphones </a>

### Data files

- Data file  X_train.txt has 7352 observations, and 561 columns
- Data file  X_test.txt  has 2947 observations, and 561 columns
- Data file  Y_train.txt has 7352 observations, and one column
- Data file  Y_test.txt  has 2947 observations, and one column
- Data file  subject_train.txt has 7352 observations, and one column
- Data file  subject_test.txt has 2947 observations, and one column
- Data file  features.txt has 561 observations, and one column
- Data file  activies.txt has 6 observations, and 2 columns ( id, and activity description)


### Cleaning Process

![ScreenShot](https://raw.githubusercontent.com/sangeetabahri/datacleaningAssignment/master/DatasetExplaination.png)

## Steps

The tidy data was created by following steps
<ol>
<li>
Merge X data ( X_train and X_test)  , as seen from above both have same number of columns
<li></li>
Assign columns names to the combined X data from the features.txt. The number of columns in X data are the same as number of observations in features.txt
<li></li>
Creating a subset of X data, for those column names that have either "mean()" or "std()"", rest are dropped
<li></li>
Merge Y data ( Y_train and Y_test) , as seen from above both have same number of columns
<li></li>
Data in Y are activity ids, so we change Y to have activity description instead of activitvy id
<li></li>
Merge subject data ( subject_train and subject_test) , as seen from above both have same number of columns
<li></li>
Combine data from step 6, 5 and 3 ( subject,activity,X datasets) into a single data frame.
<li></li>
The script calculates mean values for all features variables, group by subject and activity_name
</li>
</ol>

*  <b>The data is cleaned up by run_analysis.R script</b>

*<b></i>  The output file tidy_data.txt is generated, there are 180 observations and 81 columns</i></b>

## Tidy Data Variables

The following are 81 variables in the tidy dataset 

### ID Variables
<ol>
<li>subjectid : The participant Id</li>
<li>activitY  : The description of the activity performed when the measurement was taken</li>
</ol>
### Extracted Feature Variables
#### To see a full list and description of the measurement vectors see 'features_info.txt' in the data package.
<ol>
<li> tBodyAcc-mean()-X  Column  1 </li>
<li> tBodyAcc-mean()-Y  Column  2 </li>
<li> tBodyAcc-mean()-Z  Column  3 </li>
<li> tBodyAcc-std()-X  Column  4 </li>
<li> tBodyAcc-std()-Y  Column  5 </li>
<li> tBodyAcc-std()-Z  Column  6 </li>
<li> tGravityAcc-mean()-X  Column  41 </li>
<li> tGravityAcc-mean()-Y  Column  42 </li>
<li> tGravityAcc-mean()-Z  Column  43 </li>
<li> tGravityAcc-std()-X  Column  44 </li>
<li> tGravityAcc-std()-Y  Column  45 </li>
<li> tGravityAcc-std()-Z  Column  46 </li>
<li> tBodyAccJerk-mean()-X  Column  81 </li>
<li> tBodyAccJerk-mean()-Y  Column  82 </li>
<li> tBodyAccJerk-mean()-Z  Column  83 </li>
<li> tBodyAccJerk-std()-X  Column  84 </li>
<li> tBodyAccJerk-std()-Y  Column  85 </li>
<li> tBodyAccJerk-std()-Z  Column  86 </li>
<li> tBodyGyro-mean()-X  Column  121 </li>
<li> tBodyGyro-mean()-Y  Column  122 </li>
<li> tBodyGyro-mean()-Z  Column  123 </li>
<li> tBodyGyro-std()-X  Column  124 </li>
<li> tBodyGyro-std()-Y  Column  125 </li>
<li> tBodyGyro-std()-Z  Column  126 </li>
<li> tBodyGyroJerk-mean()-X  Column  161 </li>
<li> tBodyGyroJerk-mean()-Y  Column  162 </li>
<li> tBodyGyroJerk-mean()-Z  Column  163 </li>
<li> tBodyGyroJerk-std()-X  Column  164 </li>
<li> tBodyGyroJerk-std()-Y  Column  165 </li>
<li> tBodyGyroJerk-std()-Z  Column  166 </li>
<li> tBodyAccMag-mean()  Column  201 </li>
<li> tBodyAccMag-std()  Column  202 </li>
<li> tGravityAccMag-mean()  Column  214 </li>
<li> tGravityAccMag-std()  Column  215 </li>
<li> tBodyAccJerkMag-mean()  Column  227 </li>
<li> tBodyAccJerkMag-std()  Column  228 </li>
<li> tBodyGyroMag-mean()  Column  240 </li>
<li> tBodyGyroMag-std()  Column  241 </li>
<li> tBodyGyroJerkMag-mean()  Column  253 </li>
<li> tBodyGyroJerkMag-std()  Column  254 </li>
<li> fBodyAcc-mean()-X  Column  266 </li>
<li> fBodyAcc-mean()-Y  Column  267 </li>
<li> fBodyAcc-mean()-Z  Column  268 </li>
<li> fBodyAcc-std()-X  Column  269 </li>
<li> fBodyAcc-std()-Y  Column  270 </li>
<li> fBodyAcc-std()-Z  Column  271 </li>
<li> fBodyAcc-meanFreq()-X  Column  294 </li>
<li> fBodyAcc-meanFreq()-Y  Column  295 </li>
<li> fBodyAcc-meanFreq()-Z  Column  296 </li>
<li> fBodyAccJerk-mean()-X  Column  345 </li>
<li> fBodyAccJerk-mean()-Y  Column  346 </li>
<li> fBodyAccJerk-mean()-Z  Column  347 </li>
<li> fBodyAccJerk-std()-X  Column  348 </li>
<li> fBodyAccJerk-std()-Y  Column  349 </li>
<li> fBodyAccJerk-std()-Z  Column  350 </li>
<li> fBodyAccJerk-meanFreq()-X  Column  373 </li>
<li> fBodyAccJerk-meanFreq()-Y  Column  374 </li>
<li> fBodyAccJerk-meanFreq()-Z  Column  375 </li>
<li> fBodyGyro-mean()-X  Column  424 </li>
<li> fBodyGyro-mean()-Y  Column  425 </li>
<li> fBodyGyro-mean()-Z  Column  426 </li>
<li> fBodyGyro-std()-X  Column  427 </li>
<li> fBodyGyro-std()-Y  Column  428 </li>
<li> fBodyGyro-std()-Z  Column  429 </li>
<li> fBodyGyro-meanFreq()-X  Column  452 </li>
<li> fBodyGyro-meanFreq()-Y  Column  453 </li>
<li> fBodyGyro-meanFreq()-Z  Column  454 </li>
<li> fBodyAccMag-mean()  Column  503 </li>
<li> fBodyAccMag-std()  Column  504 </li>
<li> fBodyAccMag-meanFreq()  Column  513 </li>
<li> fBodyBodyAccJerkMag-mean()  Column  516 </li>
<li> fBodyBodyAccJerkMag-std()  Column  517 </li>
<li> fBodyBodyAccJerkMag-meanFreq()  Column  526 </li>
<li> fBodyBodyGyroMag-mean()  Column  529 </li>
<li> fBodyBodyGyroMag-std()  Column  530 </li>
<li> fBodyBodyGyroMag-meanFreq()  Column  539 </li>
<li> fBodyBodyGyroJerkMag-mean()  Column  542 </li>
<li> fBodyBodyGyroJerkMag-std()  Column  543 </li>
<li> fBodyBodyGyroJerkMag-meanFreq()  Column  552 </li>
</ol>

## Features Variable Columns 

### Column Index
c(1,2,3,4,5,6,41,42,43,44,45,46,81,82,83,84,85,86,121,122,123,124,125,126,161,162,163,164,165,166,201,202,214,215,227,228,240,241,253,254,266,267,268,269,270,271,294,295,296,345,346,347,348,349,350,373,374,375,424,425,426,427,428,429,452,453,454,503,504,513,516,517,526,529,530,539,542,543,552)

### Column Names

"c(tBodyAcc-mean()-X,tBodyAcc-mean()-Y,tBodyAcc-mean()-Z,tBodyAcc-std()-X,tBodyAcc-std()-Y,tBodyAcc-std()-Z,tGravityAcc-mean()-X,tGravityAcc-mean()-Y,tGravityAcc-mean()-Z,tGravityAcc-std()-X,tGravityAcc-std()-Y,tGravityAcc-std()-Z,tBodyAccJerk-mean()-X,tBodyAccJerk-mean()-Y,tBodyAccJerk-mean()-Z,tBodyAccJerk-std()-X,tBodyAccJerk-std()-Y,tBodyAccJerk-std()-Z,tBodyGyro-mean()-X,tBodyGyro-mean()-Y,tBodyGyro-mean()-Z,tBodyGyro-std()-X,tBodyGyro-std()-Y,tBodyGyro-std()-Z,tBodyGyroJerk-mean()-X,tBodyGyroJerk-mean()-Y,tBodyGyroJerk-mean()-Z,tBodyGyroJerk-std()-X,tBodyGyroJerk-std()-Y,tBodyGyroJerk-std()-Z,tBodyAccMag-mean(),tBodyAccMag-std(),tGravityAccMag-mean(),tGravityAccMag-std(),tBodyAccJerkMag-mean(),tBodyAccJerkMag-std(),tBodyGyroMag-mean(),tBodyGyroMag-std(),tBodyGyroJerkMag-mean(),tBodyGyroJerkMag-std(),fBodyAcc-mean()-X,fBodyAcc-mean()-Y,fBodyAcc-mean()-Z,fBodyAcc-std()-X,fBodyAcc-std()-Y,fBodyAcc-std()-Z,fBodyAcc-meanFreq()-X,fBodyAcc-meanFreq()-Y,fBodyAcc-meanFreq()-Z,fBodyAccJerk-mean()-X,fBodyAccJerk-mean()-Y,fBodyAccJerk-mean()-Z,fBodyAccJerk-std()-X,fBodyAccJerk-std()-Y,fBodyAccJerk-std()-Z,fBodyAccJerk-meanFreq()-X,fBodyAccJerk-meanFreq()-Y,fBodyAccJerk-meanFreq()-Z,fBodyGyro-mean()-X,fBodyGyro-mean()-Y,fBodyGyro-mean()-Z,fBodyGyro-std()-X,fBodyGyro-std()-Y,fBodyGyro-std()-Z,fBodyGyro-meanFreq()-X,fBodyGyro-meanFreq()-Y,fBodyGyro-meanFreq()-Z,fBodyAccMag-mean(),fBodyAccMag-std(),fBodyAccMag-meanFreq(),fBodyBodyAccJerkMag-mean(),fBodyBodyAccJerkMag-std(),fBodyBodyAccJerkMag-meanFreq(),fBodyBodyGyroMag-mean(),fBodyBodyGyroMag-std(),fBodyBodyGyroMag-meanFreq(),fBodyBodyGyroJerkMag-mean(),fBodyBodyGyroJerkMag-std(),fBodyBodyGyroJerkMag-meanFreq())"
