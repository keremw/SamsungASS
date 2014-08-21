---
title: "CodeBook"
author: "keremw"
date: "Thursday, August 21, 2014"
output: html_document
---

The data indicated means of the next features. The means are calculated of each 
activity:

* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

per each of the 30 people who participated in the experiement.

The different features are:

* tBodyAcc_mean_X - mean of accelaration of body in x direction.
* tBodyAcc_mean_Y - mean of accelaration of body in y direction.
* tBodyAcc_mean_Z - mean of accelaration of body in z direction.
* tBodyAcc_std_X - standart deviation of body in x direction.
* tBodyAcc_std_Y - standart deviation of body in y direction.
* tBodyAcc_std_Z - standart deviation of body in z direction.
* tGravityAcc_mean_X - mean of gravity on x
* tGravityAcc_mean_Y - mean of gravity on y
* tGravityAcc_mean_Z - mean of gravity on z
* tGravityAcc_std_X - standart deviation of gravity on x
* tGravityAcc_std_Y - standart deviation of gravity on y
* tGravityAcc_std_Z -standart deviation of gravity on z
* tBodyAccJerk_mean_X - mean acceleration of jerk on x
* tBodyAccJerk_mean_Y - mean acceleration of jerk on y
* tBodyAccJerk_mean_Z - mean acceleration of jerk on z
* tBodyAccJerk_std_X - standart deviation of acceleration of jerk on x
* tBodyAccJerk_std_Y - standart deviation of acceleration of jerk on y
* tBodyAccJerk_std_Z - standart deviation of acceleration of jerk on z
* tBodyGyro_mean_X - mean of gyroscope on x
* tBodyGyro_mean_Y - mean of gyroscope on y
* tBodyGyro_mean_Z - mean of gyroscope on z
* tBodyGyro_std_X - standart deviation of gyroscope on x
* tBodyGyro_std_Y - standart deviation of gyroscope on y
* tBodyGyro_std_Z - standart deviation of gyroscope on z
* tBodyGyroJerk_mean_X - mean of gyroscope jerk on x
* tBodyGyroJerk_mean_Y - mean of gyroscope jerk on y
* tBodyGyroJerk_mean_Z - mean of gyroscope jerk on z
* tBodyGyroJerk_std_X - standart deviation of gyroscope jerk on x
* tBodyGyroJerk_std_Y - standart deviation of gyroscope jerk on y
* tBodyGyroJerk_std_Z - standart deviation of gyroscope jerk on y
* tBodyAccMag_mean - mean of the magnitute of body accelatation
* tBodyAccMag_std - standart deviation of the magnitute of body accelatation
* tGravityAccMag_mean - mean of the magnitute of gravity accelatation
* tGravityAccMag_std - standart deviation of the magnitute of gravity accelatation
* tBodyAccJerkMag_mean - mean of the magnitute of body jerk accelatation
* tBodyAccJerkMag_std - standart deviation of the magnitute of body jerk accelatation
* tBodyGyroMag_mean - mean of the magnitute of the gyroscope
* tBodyGyroMag_std - standart deviation of the magnitute of the gyroscope
* tBodyGyroJerkMag_mean - mean of the magnitute of gyroscope jerk accelatation
* tBodyGyroJerkMag_std - standart deviation of the magnitute of gyroscope jerk accelatation

The next variables are the same as previous with Fast Fourier Transform (FFT)

* fBodyAcc_mean_X
* fBodyAcc_mean_Y
* fBodyAcc_mean_Z
* fBodyAcc_std_X
* fBodyAcc_std_Y
* fBodyAcc_std_Z
* fBodyAcc_meanFreq_X
* fBodyAcc_meanFreq_Y
* fBodyAcc_meanFreq_Z
* fBodyAccJerk_mean_X
* fBodyAccJerk_mean_Y
* fBodyAccJerk_mean_Z
* fBodyAccJerk_std_X
* fBodyAccJerk_std_Y
* fBodyAccJerk_std_Z
* fBodyAccJerk_meanFreq_X
* fBodyAccJerk_meanFreq_Y
* fBodyAccJerk_meanFreq_Z
* fBodyGyro_mean_X
* fBodyGyro_mean_Y
* fBodyGyro_mean_Z
* fBodyGyro_std_X
* fBodyGyro_std_Y
* fBodyGyro_std_Z
* fBodyGyro_meanFreq_X
* fBodyGyro_meanFreq_Y
* fBodyGyro_meanFreq_Z
* fBodyAccMag_mean
* fBodyAccMag_std
* fBodyAccMag_meanFreq
* fBodyBodyAccJerkMag_mean
* fBodyBodyAccJerkMag_std
* fBodyBodyAccJerkMag_meanFreq
* fBodyBodyGyroMag_mean
* fBodyBodyGyroMag_std
* fBodyBodyGyroMag_meanFreq
* fBodyBodyGyroJerkMag_mean
* fBodyBodyGyroJerkMag_std
* fBodyBodyGyroJerkMag_meanFreq
