#Reading the data
X_train <- read.table('./train/X_train.txt', header = FALSE)
y_train <- read.table('./train/y_train.txt', header = FALSE)
X_test  <- read.table('./test/X_test.txt', header = FALSE)
y_test  <- read.table('./test/y_test.txt', header = FALSE)
y_train_test <- rbind(y_train, y_test)
data_activities_labels <- merge(y_train_test, activity_labels, by.y = "V1",
                                all = TRUE) %>% select(V2)
subject_train <- read.table('./train/subject_train.txt', header = FALSE)
subject_test  <- read.table('./test/subject_test.txt', header = FALSE)

activity_labels <- read.table('./activity_labels.txt', header = FALSE)
features <- read.table('./features.txt', header = FALSE)

features$V2 <- gsub("-","", features$V2)
features$V2 <- gsub(",","", features$V2)
features$V2 <- gsub("[:():]","", features$V2)

#Extracts only the measurements on the mean and standard deviation for each 
#measurement.
desire_colsNum <- grep(pattern = "mean|std", features$V2)
desire_colsVal <- grep(pattern = "mean|std", features$V2, value = TRUE)
X_train <- X_train %>% select(desire_colsNum)
X_test  <- X_test  %>% select(desire_colsNum)


data_train <- cbind(subject_train, X_train)
data_test  <- cbind(subject_test, X_test)

#Merges the training and the test sets to create one data set.
data <- rbind(data_train, data_test)

#Uses descriptive activity names to name the activities in the data set
data <- cbind(data, data_activities_labels)



#Appropriately labels the data set with descriptive variable names.
names(data) <- c("subject", as.character(desire_colsVal), "activity_labels")

data_mean_std <- data %>% arrange(subject)

#From the data set in step 4, creates a second, independent tidy data set with 
#the average of each variable for each activity and each subject.

dataMelt <- melt(data_mean_std, id.vars = c("subject", "activity_labels"))
data_average <- dcast(dataMelt, subject + activity_labels ~ variable, mean)

colnames(data_average)[3:81] <- paste("MeanOf", colnames(data_average)[3:81], 
                                      sep = "_")
