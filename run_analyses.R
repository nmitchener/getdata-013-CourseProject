##
# Process column names first so we can limit our reads with colClasses
##

colNames <- as.vector(read.table('~/Downloads/UCI HAR Dataset/features.txt')$V2)
colClasses <- vector(length=length(colNames))

for(i in 1:length(colNames)) {
  if (grepl('*mean*', colNames[i], ignore.case=TRUE) ||
        grepl('*-std*', colNames[i], ignore.case=TRUE)) {   
    colClasses[i] <- NA
  } else {
    colClasses[i] <- "NULL"
  }
}

###
# Read Dataset
###

test_ds<-read.table('~/Downloads/UCI HAR Dataset/test/X_test.txt', col.names=colNames, colClasses=colClasses)
train_ds<-read.table('~/Downloads/UCI HAR Dataset/train/X_train.txt', col.names=colNames, colClasses=colClasses)

dataset<-merge(test_ds, train_ds, all=TRUE)

###
# Find average per each column
###

avgDataset <- colMeans(dataset)

write.table(avgDataset, fiel = "~/Downloads/UCI HAR Dataset/submit.txt", row.name=FALSE)