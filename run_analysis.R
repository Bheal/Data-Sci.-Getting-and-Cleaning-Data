setwd("C:/Users/avtarsingh/Downloads/data/c3w4")
# I downloaded the (Samsung data zip file) data file to my working directory 'c3w4'.
# 'c3w4' in my working directory.  And I saveed the zip file in that directory as 'pr341.zip'


url341 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

download.file(url341, destfile = "./pr341.zip")

# Next I unzip the contents of that file in the same dirctory.

unzip("./pr341.zip", exdir="C:/Users/avtarsingh/Downloads/data/c3w4")

list.files() # Shows the contents of 'c3w4'
# There is new directory 'UCI HAR Dataset'

# List the contents of 'UCI HAR Dataset'
list.files("UCI HAR Dataset")

# In 'UCI HAR Dataset' there are four .txt files, these contain the information about this dataset.

# The file "activity_label.txt" gives us the description of activity values.
# The 'feature.txt' has names of 561 variables.
feature_names <- readLines("./UCI HAR Dataset/features.txt") # character vector with 561.
activity_names <- readLines("./UCI HAR Dataset/activity_labels.txt")

# List  the files of 'test' and 'trair' directories.
list.files("./UCI HAR Dataset/test")
list.files("./UCI HAR Dataset/train")

# Read in the .txt files from each dir and combine them horizontally, i.e. column bind.

setwd("C:/Users/avtarsingh/Downloads/data/c3w4/UCI HAR Dataset") # Set 'UCI HAR Dataset' as my working directory for convenience.


x_test <- (read.table("./test/X_test.txt", header=FALSE))           # 1
x_train <- (read.table("./train/x_train.txt", header=FALSE))        # 2
names(x_test) <- feature_names
names(x_train) <- feature_names
# x_test and x_train have 561 columns, and feature_names from above had 561 corresponding names.

subject_test <- (read.table("./test/subject_test.txt", header=F))   # 3
y_test <- (read.table("./test/y_test.txt", header=F))               # 4

subject_train <- (read.table("./train/subject_train.txt", header=F)) # 5
y_train <- (read.table("./train/y_train.txt", header=F))            #6

# Next we want to only select estimated mean and standard deviation variables.
# ***see (A) in the README file for more info.

logical_col_measures <-grep("(*mean[^Freq])|(*std*)", feature_names, ignore.case = TRUE)
# These are variable columns that are of interset, see (A) in README file for more info.

  #   *Objective 2: Use 'logical_col_measures' to extract only the measurements on the mean and standard deviation for each measurement.

test_top<-cbind(subject_test, y_test, x_test[,logical_col_measures])
train_bot<-cbind(subject_train, y_train, x_train[,logical_col_measures])

top_bot <-rbind(test_top, train_bot)
  #   *Objective 1:Merged the training and the test sets to create one data set

# 'top_bot' is the combined data with the 6 files of interest. The first columns is Subject Id;
# and he second column is activity type, columns 3:75 are mean and standard deviaton measures.


names(top_bot)[1:2] <- c("subjectId", "activity")


# Use Descriptive activity names for the activity column, Recall we extracted the activity_names earlier.
activity_names

table(top_bot[['activity']])

top_bot[['activity']] <- mapvalues(top_bot[['activity']], substring(activity_names,1,1), substring(activity_names,3))

table(top_bot[['activity']])
  #   *Objective 3: Accurately replaced the activity column value identifies with descriptive name.


names(top_bot) <- gsub("(^[0-9]{1,3} )|\\()", "", names(top_bot), fixed = FALSE)
  #   *Objective 4:appropriately labels the data set with descriptive variable names
# Made the column names of 'top_bot' lean by removing unnecessary numbers and characters.


    #   *Finally, the last objective is:
#   From the data set 'top_bot' in step 4, creates a second, independent tidy data set
#   with the average of each variable for each activity and each subject.

prj341_fin <- top_bot %>% group_by(subjectId, activity) %>%
                                summarise_all(funs(mean))

View(prj341_fin
     )