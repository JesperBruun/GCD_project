## Getting and Cleaning Data Course Project
#run_analysis.R 

### delete in final version ######################################
setwd("C:/Users/Jesper/Getting-and-Cleaning-Data-Course-Project")
### delete in final version ######################################

list.files("../UCI HAR Dataset")

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

features

# "README.txt" : 'activity_labels.txt': Links the class labels with their activity name.
# reading list that links the class labels with their activity name
activity_labels<-read.table("../UCI HAR Dataset/activity_labels.txt")

# naming the coulumns for later use
colnames(activity_labels)<-c("Activity_Id","Activity")
activity_labels

# naming the dataframes "Activity_Id" of the one coulumn in 
# the test and training sets before merging
colnames(y_test)<-c("Activity_Id")
colnames(y_train)<-c("Activity_Id")

# naming the dataframes "Subject_Id" of the one coulumn in 
# the test and training sets before merging
colnames(subject_test)<-c("Subject_Id")
colnames(subject_train)<-c("Subject_Id")

# naming the features in the dataframes of test and training sets
colnames(x_test) <- features[,2]
colnames(x_train) <- features[,2]

# merging the dataset with the respective labels for both the test and traning sets
test<-cbind(subject_test,y_test,x_test)
train<-cbind(subject_train,y_train,x_train)

# merging the test and traning sets via rbind
dataset<-rbind(train,test)

head(names(dataset))
names(dataset)

# Merging the activity_labels dataset with the dataset to match the activity id 
# and the activity and add the activity as a column to the dataset
dataset<-merge(activity_labels,dataset)


# choose all features that are means or standard deviations ie. mean() or std()
# I use this argument "(?=.*-mean\\(\\))|(?=.*-std\\(\\))" for grepl to filter out 
# features of type "...meanFreq()"
# the subject and activity coloumn are preserved and interchanged via cbind(dataset[,3:2],...
# the Activity_Id are removed because it is no longer needed.
red_data <- cbind(dataset[,3:2],dataset[,grepl("(?=.*-mean\\(\\))|(?=.*-std\\(\\))", names(dataset), ignore.case=TRUE, perl=TRUE)])

head(names(red_data))
names(red_data)
dim(red_data)
red_data[c(1,2,3),c(1,2,3,4,5)]

# Mean values of the coloumns 3-68 are found with the subject and activity coloumn 
# as a key - this is done via aggregate
td <-aggregate(red_data[,3:68], by=list(red_data$Subject_Id, red_data$Activity),FUN=mean, na.rm=TRUE)

# The couloumn names of the tidy data set (td) for the subject and activity coloumn are copied from the reduced dataset red_data
colnames(td)[1:2]<-colnames(red_data)[1:2]

dim(td)
head(td)
td[c(1,2,3),c(1,2,3,4,5)]

# The tidy dataset is writen to a csv file "td.csv" via the function write.csv
write.csv(td, "td.csv", row.names=FALSE)

