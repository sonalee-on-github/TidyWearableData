==================================================================
Human Activity Recognition Using Smartphones Dataset: 
The Tidying of a Dataset
==================================================================
Sona R.
Coursera - Getting and Cleaning Data
Course Project 
==================================================================

# Code Book

This code book summarizes the variables and data fields involved in the Course Project for Getting and Cleaning Data, as well as the transformations and work performed to clean up the data.

## Summary

The analysis conducted in this project pertains to experiments carried out with a group of 30 volunteers within an age range of 19-48 years. Each volunteer subject performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone on their waist. The data collected by the smartphones was recorded in terms of 3-axial linear acceleration and 3-axial angular velocity. The resulting dataset, which formed the basis of this Course Project, was randomly split into two sets where 70% of the volunteers provided the training data and the remaining 30% the test data. For more information on the dataset used to build out this project, please refer to the citation at the bottom of this Codebook. [1]
The dataset cited in footnote [1] was used to build a tidy dataset containing mean values of each variable for each subject and activity pair. Please see below for more information.
 
======================================

## Description of Tidying Process

The following list of steps describes transformations accomplished by the file `run_analysis.R`:
* Loads in the activity and feature info pertaining to the dataset 
* Loads in the training and test datasets, keeping only those columns which reflect a mean or standard deviation within the datasets
* Loads the activity and subject data for the training and test datasets, and merges those columns with both the training and the test dataset
* Merges the overall training and test datasets
* Replaces activity numbers with the corresponding activity names from the activity data
* Converts the activity and subject columns into factors
* Reshapes the dataset into a new, tidy dataset that contains the mean value of each variable for each subject and activity pair
* Writes the resulting, tidied dataset to the file tidyWearableData.txt

## Identifiers

The two identifiers by which the mean values in the tidy dataset are organized are:

* `subject` - The ID of the test subject
* `activity` - The type of activity performed when the corresponding measurements were taken

## List of Measurements

In addition to the discrete identifiers listed in the section above, the original dataset (see footnote [1]) includes the following data:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables.  

Notes: 
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

A complete list of these variables is included below:
* `tBodyAccMeanX`
* `tBodyAccMeanY`
* `tBodyAccMeanZ`
* `tBodyAccStdX`
* `tBodyAccStdY`
* `tBodyAccStdZ`
* `tGravityAccMeanX`
* `tGravityAccMeanY`
* `tGravityAccMeanZ`
* `tGravityAccStdX`
* `tGravityAccStdY`
* `tGravityAccStdZ`
* `tBodyAccJerkMeanX`
* `tBodyAccJerkMeanY`
* `tBodyAccJerkMeanZ`
* `tBodyAccJerkStdX`
* `tBodyAccJerkStdY`
* `tBodyAccJerkStdZ`
* `tBodyGyroMeanX`
* `tBodyGyroMeanY`
* `tBodyGyroMeanZ`
* `tBodyGyroStdX`
* `tBodyGyroStdY`
* `tBodyGyroStdZ`
* `tBodyGyroJerkMeanX`
* `tBodyGyroJerkMeanY`
* `tBodyGyroJerkMeanZ`
* `tBodyGyroJerkStdX`
* `tBodyGyroJerkStdY`
* `tBodyGyroJerkStdZ`
* `tBodyAccMagMean`
* `tBodyAccMagStd`
* `tGravityAccMagMean`
* `tGravityAccMagStd`
* `tBodyAccJerkMagMean`
* `tBodyAccJerkMagStd`
* `tBodyGyroMagMean`
* `tBodyGyroMagStd`
* `tBodyGyroJerkMagMean`
* `tBodyGyroJerkMagStd`
* `fBodyAccMeanX`
* `fBodyAccMeanY`
* `fBodyAccMeanZ`
* `fBodyAccStdX`
* `fBodyAccStdY`
* `fBodyAccStdZ`
* `fBodyAccMeanFreqX`
* `fBodyAccMeanFreqY`
* `fBodyAccMeanFreqZ`
* `fBodyAccJerkMeanX`
* `fBodyAccJerkMeanY`
* `fBodyAccJerkMeanZ`
* `fBodyAccJerkStdX`
* `fBodyAccJerkStdY`
* `fBodyAccJerkStdZ`
* `fBodyAccJerkMeanFreqX`
* `fBodyAccJerkMeanFreqY`
* `fBodyAccJerkMeanFreqZ`
* `fBodyGyroMeanX`
* `fBodyGyroMeanY`
* `fBodyGyroMeanZ`
* `fBodyGyroStdX`
* `fBodyGyroStdY`
* `fBodyGyroStdZ`
* `fBodyGyroMeanFreqX`
* `fBodyGyroMeanFreqY`
* `fBodyGyroMeanFreqZ`
* `fBodyAccMagMean`
* `fBodyAccMagStd`
* `fBodyAccMagMeanFreq`
* `fBodyBodyAccJerkMagMean`
* `fBodyBodyAccJerkMagStd`
* `fBodyBodyAccJerkMagMeanFreq`
* `fBodyBodyGyroMagMean`
* `fBodyBodyGyroMagStd`
* `fBodyBodyGyroMagMeanFreq`
* `fBodyBodyGyroJerkMagMean`
* `fBodyBodyGyroJerkMagStd`
* `fBodyBodyGyroJerkMagMeanFreq`

========

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
 
