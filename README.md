Title README.md
========================================================
This readme file describes the R script run_analysis.R. The script process raw data to provide a tidy dataset saved in a txt file when run. The txt file can be loaded into R with the command: 
```
read.table("td.txt",header=TRUE)
```
The raw data for the project are dowloaded from this web adress:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

A full description of the raw data is available at the site where the raw data can be downloaded from:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The raw data consists of a test dataset, a train dataset and a common explanation and feature files.

A Code Book descriping the variables is can be found in CodeBook.md.

#Detail description of the script run_analysis.R
This part describes the script in detail. General and principal explanations are provided for a block of R commands that are shown in a "code block". The description of each command are provided directly in the code block before each command.

##Reading the raw data
The raw data are read into R via the read.table command. The data are stored in variables of meaningful names.
```
# reading training set
x_train<-read.table("../UCI HAR Dataset/train/X_train.txt")

# reading training set labeles
y_train<-read.table("../UCI HAR Dataset/train/y_train.txt")

# reading subject data for train
subject_train<-read.table("../UCI HAR Dataset/train/subject_train.txt")

# reading test set
x_test<-read.table("../UCI HAR Dataset/test/X_test.txt")

# reading test set labeles
y_test<-read.table("../UCI HAR Dataset/test/y_test.txt")

# reading subject data for test
subject_test<-read.table("../UCI HAR Dataset/test/subject_test.txt")

# reading list of all features
features<-read.table("../UCI HAR Dataset/features.txt")

# "README.txt" : 'activity_labels.txt': Links the class labels with their activity name.
# reading list that links the class labels with their activity name
activity_labels<-read.table("../UCI HAR Dataset/activity_labels.txt")
```
##preparation for merging the data
The raw data are divided into 8 parts (including the features). To be able to merge them the columns are named. The README file following the raw data gives the information og the content of the separaetd files.
```
# naming the columns for later use
colnames(activity_labels)<-c("ActivityId","Activity")

# naming the dataframes "Activity_Id" of the one column in 
# the test and training sets before merging
colnames(y_test)<-c("ActivityId")
colnames(y_train)<-c("ActivityId")

# naming the dataframes "Subject_Id" of the one column in 
# the test and training sets before merging
colnames(subject_test)<-c("SubjectId")
colnames(subject_train)<-c("SubjectId")

# naming the features in the dataframes of test and training sets
colnames(x_test) <- features[,2]
colnames(x_train) <- features[,2]
```
## Merging
The person doing each measurment is the subject and is stored in the subject_ variable. The y_ variable contains the activity Id while the x_ variable contains the test results. The are merged for both the test and train datasets respectably via cbind.

The test and train dataset are merged via rbind to form the variable dataset.

The activity description are included in the dataset by merging the dataset with the activity_labels variable where the ActivityId is the common key for the merging process.
```
# merging the dataset with the respective labels for both the test and traning sets
test<-cbind(subject_test,y_test,x_test)
train<-cbind(subject_train,y_train,x_train)

# merging the test and traning sets via rbind
dataset<-rbind(train,test)

# Merging the activity_labels dataset with the dataset to match the activity id 
# and the activity and add the activity as a column to the dataset
dataset<-merge(activity_labels,dataset)
```
##Reducing the dataset
A reduced dataset preserving the means and standard deviations only are obtained via a grepl filter. Only features of mean() and std() are fetched. The SubjectID and the Activity are preserved as well.
```
# choose all features that are means or standard deviations ie. mean() or std()
# I use this argument "(?=.*-mean\\(\\))|(?=.*-std\\(\\))" for grepl to filter out 
# features of type "...meanFreq()"
# the subject and activity column are preserved and interchanged via cbind(dataset[,3:2],...
# the Activity_Id are removed because it is no longer needed.
red_data <- cbind(dataset[,3:2],dataset[,grepl("(?=.*-mean\\(\\))|(?=.*-std\\(\\))", names(dataset), ignore.case=TRUE, perl=TRUE)])
```
##Tidy data
The tidy data set are produced via the command aggregate, where means of all features are calculated with the SubjectID and the Activity choosen as key.
```
# Sort the dataset by Subject as described in Tidy Data, Hadley Wickham
red_data<-red_data[order(red_data$SubjectId),]

# Mean values of the columns 3-68 are found with the subject and activity column 
# as a key - this is done via aggregate
td <-aggregate(red_data[,3:68], by=list(red_data$SubjectId, red_data$Activity),FUN=mean, na.rm=TRUE)
```
##Renaming features
The features are renamed for easier understanding. Easy abbreviations as acc for acceleration and std for standard deviation is kept and not changed. CamelCasing is used for all column names. Symbols like -,(,) are removed.
```
# The column names of the tidy data set (td) for the subject and activity column are copied from the reduced dataset red_data
colnames(td)[1:2]<-colnames(red_data)[1:2]

# The column names of the tidy data set (td) are trimmed for the brackets via gsub
names(td)<-gsub("*\\(\\)","",names(td))

# The error in the feature list with bodybody instead of body are changes via gsub
names(td)<-gsub("*BodyBody*","Body",names(td))

# names of time domain type are renamed to begin with Time instead of t
names(td)<-gsub("^t","Time",names(td))

# names of frequency domain type are renamed to begin with Freq instead of f
names(td)<-gsub("^f","Freq",names(td))

# names with dash bare are renamed and the following word are put to begin with upper case letter
names(td)<-gsub("'*\\-m","M",names(td))
names(td)<-gsub("'*\\-s","S",names(td))
names(td)<-gsub("'*\\-","",names(td))
```
##saving the data
The data are saved in a txt file in the working directory. 
```
# The tidy dataset is writen to a txt file "td.txt" via the function write.table
write.table(td, "td.txt", row.names=FALSE)
```

Further informatio of tidy data can be found in the paper Tidy Data, Hadley Wickham:
http://vita.had.co.nz/papers/tidy-data.pdf