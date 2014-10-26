#run_analysis.R

Create a TidyDataSet.txt file that is the aggregates of the UCI HAR Dataset by activity and by subject.

Script contains 6 functions namely

* Run_analysis
* step1
* step2
* step3
* step4
* step5



#Usage
source("run_analysis.R")

tidyds<-run_analysis()

#Requirements
Make sure the "getdata_projectfiles_UCI HAR Dataset.zip" file is in the folder where you run 
run_analysis.



#run_analysis function
This function unzips the  "getdata_projectfiles_UCI HAR Dataset.zip" if it has not yet been unzipped
It the sets up 2 variables that is used in the different functions as arguments.

*  mergeDir 
		the dir containing the merged data set
*   features
		vector of the feature names in the dataset
Then in order it runs the funtions
step1, step2, step3, step4 and finally step5

#step1 function
##Merges the training and the test sets to create one data set.
Checks if the dir specified as arg exists
if not it creates it and copies the test data set files to it
the files copied include:

*  y_test.txt
*  x_test.txt
*  subject_test.txt

It then appends to these same files the files from the train folder

*  y_train.txt
*  x_train.txt
*  subject_train.txt

#step2 function
##Extracts only the measurements on the mean and standard deviation 
Reads the merged files into a dataframe joining them using cbind.
Only the columns that contain mean() and std() from x_test.txt is joined to the dataframe
the dataframe is return to be used as input arg for step3
 
#step3 function
##Appropriately labels the data set with descriptive variable names.
Uses the features variable to get all the desc of cols with mean() or std() in it and combines it with a list containing "Subject","Activity". This combined list is assigned
to the cols of the merged dataset

#step4 function
##Uses descriptive activity names to name the activities in the data set
Replaces the Activity column in the data frame with the corresponding text read from
activity_labels.txt

#step5 function
##tidy dataframe
This step aggregates the merged data frame object by subject and activity to produce a tidy dataframe that is written out as "TidyDataSet.txt" the tidy dataframe is also returned so that the calling function can return this as a result.







