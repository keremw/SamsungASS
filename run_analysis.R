#This script takes in a set of measurments divided to test and train test
#And merges them to do a few manipulations 
#The scipt should be run in it's lexical order

#the destenition for the files. The file should be called Dataset.zip
dest<-"C:/Users/Kerem/Desktop/kerem/Coursera/Getting and Cleaning Data/ass2/Dataset.zip"

fileURL<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileURL,dest, method="curl")
unzip("Dataset.zip")

#Get the list of all activities 
activities<<-read.delim("UCI HAR Dataset/activity_labels.txt", header=F, sep=" ", stringsAsFactors=F)
#Get a list of all features
features<-read.delim("UCI HAR Dataset/features.txt", header=F, sep=" ", stringsAsFactors=F)
features<-features[,2]
features<-sub("\\(\\)","",features)
features<-sub("-","_",features)
features<-sub("-","_",features)
features<-sub("\\(","_",features)
features<-sub("\\,","_",features)
features<<-sub("\\)","",features)

#The following are the full path of the data. They should be inserted by user
testDir<-"C:/Users/Kerem/Desktop/kerem/Coursera/Getting and Cleaning Data/ass2/UCI HAR Dataset/test"
trainDir<-"C:/Users/Kerem/Desktop/kerem/Coursera/Getting and Cleaning Data/ass2/UCI HAR Dataset/train"

##this function gets a directory and reads all txt files by order into a data.frame
readAlldata<-function(directory=getwd()){
  #created the path to the file
  dirs<-strsplit(directory,"/")
  setName<-dirs[[1]][length(dirs[[1]])] #finds which type of data we are using
  #finds activities in set
  filey<-paste(directory, "/y_", setName, ".txt", sep="")
  Activities<-factor(unlist(read.delim(filey,header=F)))
  levels(Activities)<-activities[,2]
  #finds subject of set
  subjectFile<-paste(directory, "/subject_", setName, ".txt", sep="")
  subject<-factor(unlist(read.delim(subjectFile,header=F)))
  #gets the set and adds it's titles
  xFile<-paste(directory, "/X_", setName, ".txt", sep="")
  featureTable<-read.table(xFile,header=F)
  names(featureTable)<-features
  
  setData<-cbind(Activities, subject, featureTable)
  setData
}

#sends each of the sets to the function to get all data
testData<-readAlldata(testDir)
trainData<-readAlldata(trainDir)
#merges the two data sets together
allData<-rbind(trainData,testData)

#finds only the features which are either mean or std
meanLog<-grepl("mean", names(allData))
stdLog<-grepl("std", names(allData))
meanStdLog<-meanLog | stdLog
meanStdLog[1:2]<-T

allData<-allData[,meanStdLog]

#created a final table calculating the mean of each of the features per activity
#per subject
l<-ncol(allData)
splitAlldata<-split(allData[,3:l], list(allData$Activities, allData$subject), drop=T)
finalTable<-sapply(splitAlldata,colMeans)
finalTable<-t(finalTable)

#adds the activities and subject labels 
data_labels<-data.frame(do.call('rbind', strsplit(as.character(row.names(finalTable)),'\\.')))

finalTable<-as.data.frame(cbind(data_labels, finalTable))
colnames(finalTable)[1:2]=c("activities", "subject")

write.table(finalTable, "finalTable.txt", row.names=F)
