library(reshape2)

wdpath = getwd()
download.file('https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip', file.path(wdpath, 'filename.zip'), method='curl')
unzip('filename.zip')

features <- read.table('UCI HAR Dataset/features.txt')
activity_labels <- read.table('UCI HAR Dataset/activity_labels.txt')
activity_labels[,2] <- as.character(activity_labels[,2])
features[,2] <- as.character(features[,2])

ourCollumns <- grep('(mean|std)\\(\\)', features[,2])
ourCollumnsWithName <- features[ourCollumns, 2]
ourCollumnsWithName <- gsub('-mean', 'Mean', ourCollumnsWithName)
ourCollumnsWithName <- gsub('-std', 'Std', ourCollumnsWithName)
ourCollumnsWithName <- gsub('[-()]', '', ourCollumnsWithName)

subject_test <- read.table('UCI HAR Dataset/test/subject_test.txt')
x_test <- read.table('UCI HAR Dataset/test/X_test.txt')[ourCollumns]
y_test <- read.table('UCI HAR Dataset/test/y_test.txt')

subject_train <- read.table('UCI HAR Dataset/train/subject_train.txt')
x_train <- read.table('UCI HAR Dataset/train/X_train.txt')[ourCollumns]
y_train <- read.table('UCI HAR Dataset/train/y_train.txt')

#testing <- cbind(subject_test, y_test, x_test)
#training <- cbind(subject_train, y_train, x_train)
test_and_train <- rbind(cbind(subject_test, y_test, x_test), cbind(subject_train, y_train, x_train))

colnames(test_and_train) <- c('subject', 'activity', ourCollumnsWithName)

test_and_train$activity <- factor(test_and_train$activity, levels = activity_labels[,1], labels = activity_labels[,2])
test_and_train$subject <- as.factor(test_and_train$subject)

test_and_train.melted <- melt(test_and_train, id = c('subject', 'activity'))
test_and_train.mean <- dcast(test_and_train.melted, subject + activity ~ variable, mean)

write.table(test_and_train.mean, 'tidy.txt', row.names = FALSE, quote = FALSE)
