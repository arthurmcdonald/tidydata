# read in the feature names from source data
feature_names <- read.table("data/features.txt", sep="", header=FALSE,
                            col.names=c("id", "feature"))

# remove special characters from feature names
feature_names <- feature_names %>%
  mutate(feature=str_replace_all(feature, "\\,|\\(|\\)", ""))

# drop the 'id' column from feature_nams datafram
feature_names <- feature_names[2]

# read in the training data into 3 dataframes
X_train <- read.table("data/train/X_train.txt", sep="", header=FALSE,
                      col.names=unlist(feature_names))
y_train <- read.table("data/train/y_train.txt", sep="", header=FALSE,
                      col.names=c("Activity"))
subject_train <- read.table("data/train/subject_train.txt", sep="",
                            header=FALSE, col.names=c("SubjectID"))

# drop columns that aren't "mean" or "std"
X_train <- X_train %>% select(contains("mean.") | contains("std.") | 
                                matches("mean$", ignore.case = FALSE) | 
                                matches("std$", ignore.case = FALSE))

# combine all the training data columns
train_data <- cbind(subject_train, y_train, X_train)

# now do all of the above for the test data
X_test <- read.table("data/test/X_test.txt", sep="", header=FALSE,
                      col.names=unlist(feature_names))
y_test <- read.table("data/test/y_test.txt", sep="", header=FALSE,
                      col.names=c("Activity"))
subject_test <- read.table("data/test/subject_test.txt", sep="",
                            header=FALSE, col.names=c("SubjectID"))

# drop columns that aren't "mean" or "std"
X_test <- X_test %>% select(contains("mean.") | contains("std.") | 
                                matches("mean$", ignore.case = FALSE) | 
                                matches("std$", ignore.case = FALSE))
test_data <- cbind(subject_test, y_test, X_test)

# create the full dataset by appending train_data and test_data
full_data <- rbind(train_data, test_data)

# clean up the columns names
names(full_data) <- gsub(x=names(full_data), pattern="\\.", replacement="")
names(full_data) <- gsub(x=names(full_data), pattern="^t", replacement="Time")
names(full_data) <- gsub(x=names(full_data), pattern="^f", replacement="Fourier")
names(full_data) <- gsub(x=names(full_data), pattern="mean", replacement="Mean")
names(full_data) <- gsub(x=names(full_data), pattern="std", replacement="Std")

# convert the "Activity" column from code to readable value
full_data["Activity"][full_data["Activity"] == 1] <- "WALKING"
full_data["Activity"][full_data["Activity"] == 2] <- "WALKING_UPSTAIRS"
full_data["Activity"][full_data["Activity"] == 3] <- "WALKING_DOWNSTAIRS"
full_data["Activity"][full_data["Activity"] == 4] <- "SITTING"
full_data["Activity"][full_data["Activity"] == 5] <- "STANDING"
full_data["Activity"][full_data["Activity"] == 6] <- "LAYING"

# calculate the average of all of the observations by SubjectID and Activity
tidy_data <- full_data %>% group_by(SubjectID, Activity) %>% summarise_all(mean)

# write the tidy_data out to a csv
write.table(tidy_data, "tidy_data.csv", sep=",", row.names=FALSE)
