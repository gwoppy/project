## Course project. Getting and Cleanint Data by J. Leek. August 2014.
## Assumes the data directory "./UCI HAR Dataset" exists

## Sets the path to my working directory where the data are stored
# setwd("F:/GW/tmp/Tocopy/3_Rclean/homework2014/project")


## 1. Load required libraries
library(plyr)
library(reshape2)


## 2. Read data files with names of activities and variables
activities <- read.table("./UCI HAR Dataset/activity_labels.txt", sep=" ", 
                       col.names = c("activity_id", "activity_name"))
variables <- read.table("./UCI HAR Dataset/features.txt", sep=" ",
                        col.names = c("variable_id", "variable_name"))


## 3. Transform variable names into more readable ones
new_var_names <- gsub("(-|,)","_",variables$variable_name)
new_var_names <- sub("\\(\\)","",new_var_names)
new_var_names <- sub("\\)$","",new_var_names)
new_var_names <- gsub("Mean","_mean",new_var_names)
new_var_names <- sub("\\(","_",new_var_names)
new_var_names <- sub("\\)","",new_var_names)


## 4. Read measurement files and use the new variable names as apropriate
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt",
                             col.names = c("subject_id"))
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt",
                      col.names = new_var_names)
Y_train <- read.table("./UCI HAR Dataset/train/Y_train.txt",
                      col.names = c("activity_id"))

subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt",
                           col.names = c("subject_id"))
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt",
                     col.names = new_var_names)
Y_test <- read.table("./UCI HAR Dataset/test/Y_test.txt",
                      col.names = c("activity_id"))


## 5. Merge training and test data sets to create one data set
# First, activity and subject ids are added to corresponding record in X
X_train <- cbind(X_train, Y_train, subject_train)
X_test <- cbind(X_test, Y_test, subject_test)
# Second, test and train data sets are merged
X_all <- rbind(X_train, X_test)


## 6. Retain mean and std from all but frequency measurements 
retained_variables <- grep("(mean|std)",new_var_names,value=T)
retained_variables <- grep("^[^f]", retained_variables,value=T)
retained_variables <- c("activity_id", "subject_id", retained_variables)
X_retained <- subset(X_all, select = retained_variables)


## 7. Calculate the average of each variable for each activity and each subject
#First, mutate activity and subject ids into factors
X_retained <- mutate(X_retained, activity_id = factor(activity_id),
                  subject_id = factor(subject_id))

# Then, split the data set into activity and subject groups 
X_bygroups <- split(X_retained,
                    list(X_retained$subject_id, X_retained$activity_id))

# Calculate the averages for each group
averages <- lapply(X_bygroups, function(x) {sapply(x[3:49], mean)})

# Merge the data frames into a matrix and adds a column for group ids
group_ids <- names(averages)
temp = NULL;        # initializing a dummy variable
for(item in averages) {
    temp <- rbind(temp, item)
}
merged <- cbind(group_ids, temp)


## 8. Towards a tidy data set...
# Make activity names and subjects clear from group ids
subject_id = NULL; activity_id = NULL; activity_name = NULL
for (elt in group_ids) {
    temp1 <- sub("\\.+.+", "", elt)
    subject_id <- c(subject_id, temp1)
    temp2 <- sub(".+\\.", "", elt)
    activity_id <- c(activity_id, temp2)
    temp3 <- activities[[2]][as.numeric(temp2)]
    activity_name <- c(activity_name, as.character(temp3))
}
tidy <- cbind(activity_name, subject_id, merged[,2:48])
# Checks/reminds correspondences between groups and subjects/activities
tidydf <- data.frame(tidy, row.names = group_ids)  

## Write the tidy data set
write.table(tidydf,"tidy.csv", row.names=FALSE, sep = ",")

## Check wether it can be read without problem
# df <- read.csv("tidy.csv", header=T)


