run_analysis<-function(){
    ##unzip the dataset zip files if unzip not yet exists
    if(!file_test("-d","UCI HAR Dataset/"))
    {
        unzip(zipfile = "getdata_projectfiles_UCI HAR Dataset.zip")
    }
    
    #setup variables
    mergedDir<-"MergedDataSet"
    #read features from file this is used in some of the steps 
    features<-read.table("UCI HAR Dataset/features.txt",
                         header = FALSE,stringsAsFactors = FALSE)
    
    ##Merges the training and the test sets to create one data set.
    step1(mergedDir)
    
    ##Extracts only the measurements on the mean and standard deviation 
    df<-step2(mergedDir,features)
    
    ##Appropriately labels the data set with descriptive variable names.
    df<-step3(df,features)
    
    ##Uses descriptive activity names to name the activities in the data set
    df<-step4(df)
   
    ##From the data set in step 4, creates a second, 
    ##independent tidy data set with the average of each variable 
    ##for each activity and each subject.
    tidy<-step5(df)
}

##Merges the training and the test sets to create one data set.
step1<-function(Dir) {
    
    if(!file_test("-d",Dir))
    {
        dir.create(Dir)
        #Copy all dataset files for test folder to merge Dir
        p<-"UCI HAR Dataset/test/%s_test.txt"
        file.copy(c(sprintf(p,"x"),sprintf(p,"y"),sprintf(p,"subject")),Dir)
        #Apppend all dataset files for train folder to corresponding files in 
        #merge dir
        p<-"UCI HAR Dataset/train/%s_train.txt"
        file.append(paste(Dir,"/X_test.txt",sep=""),sprintf(p,"x"))
        file.append(paste(Dir,"/y_test.txt",sep=""),sprintf(p,"y"))
        file.append(paste(Dir,"/subject_test.txt",sep=""),sprintf(p,"subject"))
    }
    
}

##Extracts only the measurements on the mean and standard deviation 
step2<-function(Dir,features) {
    path<-paste(Dir,"/%s_test.txt",sep = "")
    df  <-read.csv(sprintf(path,"subject"),header = FALSE)
    df  <-cbind(df,read.csv(sprintf(path,"y"),header = FALSE))
    
    ##for each measurement. 
    cols<-sort(c(grep("mean()",features[[2]],fixed = TRUE),
                 grep("std()",features[[2]], fixed = TRUE)))
    df<-cbind(df,read.table(sprintf(path,"X"),header = FALSE)[cols])
}

##Appropriately labels the data set with descriptive variable names.
step3<-function(df,features) {
    ##for each measurement. 
    cols<-sort(c(grep("mean()",features[[2]],fixed = TRUE),
                 grep("std()",features[[2]], fixed = TRUE)))
    colnames(df)<-c(c("Subject","Activity"),as.vector(features[[2]][cols]))
    colnames(df)<-gsub("-std()-","_STD_AVG_",x = colnames(df),fixed = TRUE)
    colnames(df)<-gsub("-mean()-","_AVG_AVG_",x = colnames(df),fixed = TRUE)
    colnames(df)<-gsub("-std()","_STD_AVG",x = colnames(df),fixed = TRUE)
    colnames(df)<-gsub("-mean()","_AVG_AVG",x = colnames(df),fixed = TRUE)
    colnames(df)<-gsub("BodyBody","Body",x = colnames(df),fixed = TRUE)
    df
}
##Uses descriptive activity names to name the activities in the data set
step4<-function(df) {
    activitylabels<-read.table("UCI HAR Dataset/activity_labels.txt")
    df$Activity=activitylabels[df$Activity,][[2]]
    df
}
##From the data set in step 4, creates a second, 
##independent tidy data set with the average of each variable 
##for each activity and each subject.
step5<-function(df) {
    tidy<-aggregate(df[,-(1:2)]
                    ,by = list(Subject=df$Subject,Activity=df$Activity)
                    ,FUN = mean)
    
    write.table(tidy,file="TidyDataSet.txt"
              ,row.names=FALSE)
    tidy
}
