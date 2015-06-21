# Check / Download the dataset in working directory
if (!file.exists("dataset.zip")) {
  fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileUrl,destfile="dataset.zip")
}

list.files("./")

# Check / create data directory
if (!file.exists("data")) {
  dir.create("data")
}

# Uznip the file and note timestamp
unzip ("dataset.zip", exdir = "./data")
dateDownloaded <- date()
dateDownloaded

