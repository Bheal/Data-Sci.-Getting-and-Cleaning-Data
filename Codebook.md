## Codebook for prj341.txt file.

The first to variables/columns are for 'subjectID' a 'activity'.  Based on these two columns, each row represents the subject who performed the activity, and the activity he performed.  There were 30 subjects(1-30) and 6 activities((WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).  There are 180 rows (30 times 6) for each subject and each activity.

The remaining columns record the averages of the value for the signals that were recored in orginal dataset.

In columns 3:68 the averages of mean and standard deviation are recorded, they are estimated from the signals below. The names of these columns include: signal name-type of estimate(either mean or std)-direction.

Data on these signals were collected and used to estimate several variables in the original dataset.  Only the mean and sd of signal for a given subject and activity are recorded here:  
('-XYZ' is used to denote 3-axial signals in the X, Y and Z directions).

      tBodyAcc-XYZ
      tGravityAcc-XYZ
      tBodyAccJerk-XYZ
      tBodyGyro-XYZ
      tBodyGyroJerk-XYZ
      tBodyAccMag
      tGravityAccMag
      tBodyAccJerkMag
      tBodyGyroMag
      tBodyGyroJerkMag
      fBodyAcc-XYZ
      fBodyAccJerk-XYZ
      fBodyGyro-XYZ
      fBodyAccMag
      fBodyAccJerkMag
      fBodyGyroMag
      fBodyGyroJerkMag

#### The merged test and train data set, with mean and standard deviation of the observation signals is called 'top_bot' in the file run_analysis.R.  It had these variables:
 [1] "Subject Id"                          
 [2] "activity"                            
 [3] "tBodyAcc-mean-X"                     
 [4] "tBodyAcc-mean-Y"                     
 [5] "tBodyAcc-mean-Z"                     
 [6] "tBodyAcc-std-X"                      
 [7] "tBodyAcc-std-Y"                      
 [8] "tBodyAcc-std-Z"                      
 [9] "tGravityAcc-mean-X"                  
[10] "tGravityAcc-mean-Y"                  
[11] "tGravityAcc-mean-Z"                  
[12] "tGravityAcc-std-X"                   
[13] "tGravityAcc-std-Y"                   
[14] "tGravityAcc-std-Z"                   
[15] "tBodyAccJerk-mean-X"                 
[16] "tBodyAccJerk-mean-Y"                 
[17] "tBodyAccJerk-mean-Z"                 
[18] "tBodyAccJerk-std-X"                  
[19] "tBodyAccJerk-std-Y"                  
[20] "tBodyAccJerk-std-Z"                  
[21] "tBodyGyro-mean-X"                    
[22] "tBodyGyro-mean-Y"                    
[23] "tBodyGyro-mean-Z"                    
[24] "tBodyGyro-std-X"                     
[25] "tBodyGyro-std-Y"                     
[26] "tBodyGyro-std-Z"                     
[27] "tBodyGyroJerk-mean-X"                
[28] "tBodyGyroJerk-mean-Y"                
[29] "tBodyGyroJerk-mean-Z"                
[30] "tBodyGyroJerk-std-X"                 
[31] "tBodyGyroJerk-std-Y"                 
[32] "tBodyGyroJerk-std-Z"                 
[33] "tBodyAccMag-mean"                    
[34] "tBodyAccMag-std"                     
[35] "tGravityAccMag-mean"                 
[36] "tGravityAccMag-std"                  
[37] "tBodyAccJerkMag-mean"                
[38] "tBodyAccJerkMag-std"                 
[39] "tBodyGyroMag-mean"                   
[40] "tBodyGyroMag-std"                    
[41] "tBodyGyroJerkMag-mean"               
[42] "tBodyGyroJerkMag-std"                
[43] "fBodyAcc-mean-X"                     
[44] "fBodyAcc-mean-Y"                     
[45] "fBodyAcc-mean-Z"                     
[46] "fBodyAcc-std-X"                      
[47] "fBodyAcc-std-Y"                      
[48] "fBodyAcc-std-Z"                      
[49] "fBodyAccJerk-mean-X"                 
[50] "fBodyAccJerk-mean-Y"                 
[51] "fBodyAccJerk-mean-Z"                 
[52] "fBodyAccJerk-std-X"                  
[53] "fBodyAccJerk-std-Y"                  
[54] "fBodyAccJerk-std-Z"                  
[55] "fBodyGyro-mean-X"                    
[56] "fBodyGyro-mean-Y"                    
[57] "fBodyGyro-mean-Z"                    
[58] "fBodyGyro-std-X"                     
[59] "fBodyGyro-std-Y"                     
[60] "fBodyGyro-std-Z"                     
[61] "fBodyAccMag-mean"                    
[62] "fBodyAccMag-std"                     
[63] "fBodyBodyAccJerkMag-mean"            
[64] "fBodyBodyAccJerkMag-std"             
[65] "fBodyBodyGyroMag-mean"               
[66] "fBodyBodyGyroMag-std"                
[67] "fBodyBodyGyroJerkMag-mean"           
[68] "fBodyBodyGyroJerkMag-std"            
[69] "angle(tBodyAccMean,gravity)"         
[70] "angle(tBodyAccJerkMean),gravityMean)"
[71] "angle(tBodyGyroMean,gravityMean)"    
[72] "angle(tBodyGyroJerkMean,gravityMean)"
[73] "angle(X,gravityMean)"                
[74] "angle(Y,gravityMean)"                
[75] "angle(Z,gravityMean)" 
