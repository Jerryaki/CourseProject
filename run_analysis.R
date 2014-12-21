run_analysis <- function(){

    ##First, set the working directory. The function is also assuming that the data files are being unzipped into the default "UCI HAR Dataset" folder.
    
    setwd("~/Desktop/Coursera/Cleaning_Data/CourseProject")

    ##The files are read into two data frames, and the subject ID and activity ID data are read into columns at the end. The two data frames are then merged using rbind.
    
    training <- read.csv("UCI HAR Dataset/train/X_train.txt", sep="", header=FALSE)
    training[,562] <- read.csv("UCI HAR Dataset/train/subject_train.txt", header=FALSE)
    training[,563] <- read.csv("UCI HAR Dataset/train/y_train.txt", header=FALSE)
    
    testing <- read.csv("UCI HAR Dataset/test/X_test.txt", sep="", header=FALSE)
    testing[,562] <- read.csv("UCI HAR Dataset/test/subject_test.txt", header=FALSE)
    testing[,563] <- read.csv("UCI HAR Dataset/test/y_test.txt", header=FALSE)
    
    merged_data <- rbind(training, testing)

    ##Read the data headers from the "Features" file into a data frame, and then truncate it to include only those rows that have -mean() or -std(). This is an exact match, and the function excludes fields such as "-meanFreq()."
    
    features <- read.csv("UCI HAR Dataset/features.txt", sep="", header=FALSE)    
    MeanStdCol <- grep("-mean[-()]|-std[-()]", features[,2])
    features <- features[MeanStdCol,]    
    features[,2] <- gsub("-mean","Mean",features[,2])
    features[,2] <- gsub("-std","Std",features[,2])
    features[,2] <- gsub("[-()]","",features[,2])

    ##Shorten the merged data set to only the columns identified above, and the subject ID and activity ID columns at the end. Also add the field headers.
    
    TargetCol <- c(MeanStdCol, 562, 563)
    merged_data <- merged_data[,TargetCol]
    colnames(merged_data) <- c(features$V2, "Subject","Activity")        

    ##Replace the numeric activity IDs with the actual text labels, using a loop that goes through a data frame with the activity label data.
    
    activities <- read.csv("UCI HAR Dataset/activity_labels.txt",sep="",header=FALSE)
    x = 1
    for(i in activities$V2){
        merged_data$Activity <- gsub(x, i, merged_data$Activity)
        x <- x + 1
    }

    ##Finally, generate a "tidy" data set that is calculating the mean of each column based on each unique subject ID + activity ID combination. The final data set removes the original subject ID and activity label columns at the end.
    
    tidy = aggregate(merged_data, by=list(activity = merged_data$Activity, subject = merged_data$Subject), mean)
    tidy <- tidy[,1:68]
    write.table(tidy, "tidy.txt", sep="\t", row.name=FALSE)    
    
}