# DatascienceCoursera
This is a README file for week 4 project of Getting and Cleaning Data Course in Data Science Specialization.

Our task is to organize the data and make it tidydata.  We have to merge 'test' and 'train' data together, there are six files we are gonna merge.  First merge or bind the three files for each test and train data with column bind.  Then combine the rows of the combined resulting from the combined test and train files.

 
    If you read the comments in the run_analysis.R file, I have a concise explanation of every step .  Some steps need a more lengthy explantatoin and they are marked alphabetically in and script, and they are detailed below:
    
    - (A) feature.txt file contained 561 variable names, and X_test.txt had 561 columns with 2947 rows.  From the Readme files I gather that variable names in feature.txt correspond in the given order to the coloums of X_test.txt.  Our assignment is to extract the meaurements on the mean and standart deviation of each measurement.  I read the feature.txt file into R and save it as 'feature_names' and explore it to determine which columns to extract from X_test.txt
