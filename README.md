# DatascienceCoursera
This is a README file for week 4 project of Getting and Cleaning Data Course in Data Science Specialization.

We begin by downloading and unziping the data file.  These are the contents that are extracted from the zip file:
- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Our task is to organize the data and make it tidydata.  We have to merge 'test' and 'train' data together.  WE are only to extract the mean and standard deviaton of the measurements along with informaton on the subject ID, and the type of activity associated with the observaton.  These are the six files that have all of the relavant observation: X_test.txt, y_test.txt, subject_test.txt, X_train.txt, subject_train.txt, y_train.text.  First, we will merge or bind the three files for each test and train data with column bind.  Then combine the rows of these test and train data set.

Each test and train set contain same observatons, the train data is much larger and has more rows.

 
   If you read the comments in the run_analysis.R file, I have a concise explanation of every step .  Some steps need a more lengthy explantatoin and they are marked alphabetically in and script, and they are detailed below:
    
 - (A) feature.txt file contained 561 variable names, and X_test.txt had 561 columns with 2947 rows, X_train.txt has 561 columns and 7352 rows .  From the Readme files I gather that variable names in feature.txt correspond in the given order to the columns of X_test.txt and X_train.txt.  Our assignment is to extract the meaurements on the mean and standart deviation of each measurement, I used the feature.txt file for this; load it into R and save it as 'feature_names' and explore it to determine which columns to extract from X_test.txt and X_train.txt.  *NOTE:* meanFreq variables are not of interest only mean variable are include.  Also there is lack of clarity if these last six varialbes are of interest, hence were included for completenss: `
    [1] "556 angle(tBodyAccJerkMean),gravityMean)"
    [2] "557 angle(tBodyGyroMean,gravityMean)"    
    [3] "558 angle(tBodyGyroJerkMean,gravityMean)"
    [4] "559 angle(X,gravityMean)"                
    [5] "560 angle(Y,gravityMean)"                
    [6] "561 angle(Z,gravityMean)" `

 - (B)
