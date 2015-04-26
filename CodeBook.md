Variables:

colNames - a vector used for column names storage
colClasses - a vector used to store data type for each columns
test_ds - data.frame used to store test data
train_ds - data.frame used to store train data
dataset - merged test and train data
avgDataset - data.frame used to store averages for each column

Data transformations

1. I have loaded and saved column names from features.txt.
2. Filter columns to only include those that have to do with standard deviations and means.
3. Read test and train datasets from text fiels and merge them into one.
4. Drop columns we are not interested in using colClasses parameter.
5. Find the averages for each column using colMeans().