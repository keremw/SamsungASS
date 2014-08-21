---
title: "README"
author: "keremw"
date: "Thursday, August 21, 2014"
output: html_document
---

##Asignment to organize Human Activity Recognition Using Smartphones Data Set
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.


The first lines download the data to a destinition file that needs to be entered 
by the **user** into a variable named **dest** the file should be named **Data.zip**

The dataset comes as a zip code and after unziping the code **assumes it is ran in 
the Dataset directory**

in the main "UCI HAR Dataset" folder there is a file named "activity_labels.txt" which indicates the activities that were determined, and a file named "features.txt" indicating the measurments made over the data. In addition there are 2 folders one of the test set and one 
of the training. Both files are read and modified to a better representation.

Afterwards the **user** should insert the full path for the test and training datasets into 
**testDir** and **trainDir** accordingly.
Afterwards a function named "readAlldata" is run. The function gets the directories of the 2 sets and extracts all releavent data. The "subject" file containing ids of the people, "y" file indicating what activity was determined and a "X" file containing all the data calculated from raw data (which is in the Inertial Signals) folder. 
In addition the function changes the y activities to informative names and names the different calculated features according to their names.
**Returns** a dataset of either train or test set with their activities, people and dataset.

The two datasets are then joint
and then only features containg mean and standart deviation are saved.

Using these features and an intergration of activity and subjuct ids all meand of all measurments in the different features are calculated. The activity and subject ids are added and the table is saved into a file named **"finalTable.txt"**


