## README
## This is a README file for week 4 project of Getting and Cleaning Data Course in Data Science Specialization.

Our task is to organize the data and make it tidydata.  We have to merge 'test' and 'train' data together.  WE are only to extract the mean and standard deviaton of the measurements along with informaton on the subject ID, and the type of activity associated with the observaton.  These are the six files that have all of the relavant observation: X_test.txt, y_test.txt, subject_test.txt, X_train.txt, subject_train.txt, y_train.text.  First, we will merge or bind the three files for each test and train data with column bind.  Then combine the rows of these test and train data set.

Each test and train set contain same observatons, the train data is much larger and has more rows.

 
   If you read the comments in the run_analysis.R file, I have a concise explanation of every step .  Some steps need a more lengthy explantatoin and they are marked alphabetically in and script, and they are detailed below:
    
 - (A) Use Regular expression in grep function to extract the location of mean and standard deviation variable from feature.txt; it contained 561 variable names, and X_test.txt has 561 columns with 2947 rows while X_train.txt has 561 columns and 7352 rows .  From the Readme files I gather that variable names in feature.txt correspond in the given order to the columns of X_test.txt and X_train.txt.  Our assignment is to extract the meaurements on the mean and standart deviation of each measurement. I use the order of variable names in feature.txt to create a vector, logical_col_measures, it contains the  ordered combination for loaction of columns to extract from X_test.txt and X_train.txt.  *NOTE:* meanFreq variables are not of interest only mean variable are include.  Also there is lack of clarity if these last six varialbes are of interest, hence were included for completenss: `
    [1] "556 angle(tBodyAccJerkMean),gravityMean)"
    [2] "557 angle(tBodyGyroMean,gravityMean)"    
    [3] "558 angle(tBodyGyroJerkMean,gravityMean)"
    [4] "559 angle(X,gravityMean)"                
    [5] "560 angle(Y,gravityMean)"                
    [6] "561 angle(Z,gravityMean)" `

 - (B) Use Regular expression to trim the names of variables.  I kept the information of type of signal, and type of estimate. 


  # STEP BY STEP ANALYSIS DETAIL.
 This is the overview of the analysis, in the script each step is detailed furter;
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

---------------------------------------------------------------------------------------------------------------------------

-Once the files are unzipped, load these files into R: X_test.txt, X_train.txt, y_test.txt, y_train.txt, subject_test.txt, subject_train.txt, features.txt, activity_labels.txt.

-Extract the text of 'features.txt' file it contain the information on the variables/columns of the data in X_test and X_train. 

-Merge X_test.txt, X_train.txt, y_test.txt, y_train.txt, subject_test.txt, subject_train.txt and called the resulting dataset "top_bot". Recall we only selected mean and std varible estimates on the measurements mapped from the 'features.txt' file.

-Use the information in 'activity_labels.txt' file to give the appropriate names to each activity in the merged data.

-Give appropriate names to the columns, first two are subject' ID and the second is the name of the activity.  For the remaining columns the names are choosing as description in this format: signal name-type of estimate(either mean or std)-direction.

-Manipulate the dataset, top_bot, to group_by subjectID and activity.  Then get the mean all the measurement's varibles.  Save this dataset as "prj341_fin".

-Use write.table to save the last tidy data as prj341_fin.txt.

-The data set with the average of each variable for each activity and each subject, called 'prj341_fin.txt' is uploaded with the submission.  You can load it into R by saving it in the working directory with the following command:
read.table("./prj341_fin.txt", header= TRUE)
