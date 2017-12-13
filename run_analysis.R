#' Script to run the analysis, doing the following:
#'   1. Merges the training and the test sets to create one data set.
#'   2. Extracts only the measurements on the mean and standard deviation for each measurement.
#'   3. Uses descriptive activity names to name the activities in the data set
#'   4. Appropriately labels the data set with descriptive variable names.
#'   5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
#'   


# Download and extract data into data directory -----
# Create data directory
dir.create("data")

# Download data to this directory
url_dat <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url_dat,"data/dat.zip")

# Unzip data
unzip("data/dat.zip", exdir = "data")



# 1. Read in datasets and combine -------
# Read the test data
TestDat <- read.table("data/UCI HAR Dataset/test/X_test.txt",
                      header = FALSE)
TestDatActiv <- read.table("data/UCI HAR Dataset/test/y_test.txt",
                           header = FALSE)
# Combine these
TestDat <- cbind(TestDat, TestDatActiv)

# Do the same for the training data
TrainDat <- read.table("data/UCI HAR Dataset/train/X_train.txt",
                       header = FALSE)
TrainDatActiv <-  read.table("data/UCI HAR Dataset/train/y_train.txt",
                             header = FALSE)
# Combine these
TrainDat <- cbind(TrainDat, TrainDatActiv)

# Combine all
AllDat <- rbind(TestDat, TrainDat)



# Load subjects
subjects_test  <- read.table("data/UCI HAR Dataset/test/subject_test.txt",
                             header = FALSE)

subjects_train  <- read.table("data/UCI HAR Dataset/train/subject_train.txt",
                              header = FALSE)
# Combine these
subjects_all <- rbind(subjects_test,subjects_train)

AllDat <- cbind.data.frame(AllDat, subjects_all)


# 2. Extracts only the measurements on the mean and standard deviation for each measurement ---------
# means <- rowMeans(AllDat[,c(1:561)])
# SDs <- apply(AllDat[,c(1:561)], 1, sd)
# 
# SummaryDat <- data.frame(means = means, sd = SDs,
#                          activ_num = AllDat[,562])

# Load features details
features <- read.table("data/UCI HAR Dataset/features.txt", header = FALSE)

# Which features have sd or mean in them?
matches <- grep("mean|std", features$V2)
# Check that this looks correct
features$V2[matches]


# Keep only the variables included in above
AllDatRequired <- AllDat[,matches]
AllDatRequired$activ <- AllDat[,562]
AllDatRequired$subject <- AllDat[,563]
# 

# 3. Name activities with descriptive activity names ------

# Read in activity names
activ_labs <- read.table("data/UCI HAR Dataset/activity_labels.txt",
                         header = FALSE)
names(activ_labs) <- c("activ", "activ_name")

# Merge tables
AllDatRequired <- merge(AllDatRequired, activ_labs)


# 4. Appropriately label the data set with descriptive variable names. -------

# Edit variable names
varnames <- features$V2[matches]
varnames <- gsub("-", "_", varnames)
varnames <- sub("\\()", "", varnames)

# Label data frame
names(AllDatRequired) <- c("Activ_num", varnames,
                           "subject", "Activ_name")


#   5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject --------


# Summarise data
library("dplyr")
summary_data <- AllDatRequired %>% select(-1) %>%
        group_by(subject, Activ_name) %>%
        summarise_all(mean)

# Output data
write.table(summary_data, "data/tidy_data.txt",
            row.names = FALSE)
