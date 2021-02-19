==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Enrique Figueroa
Getting and Cleaning Data Assignment
Consolidation of partitioned datasets from DITEN experiments (www.smartlab.ws)
==================================================================
The generated dataset comes from the DITEN's experiments that were carried out with a group of 30 volunteers within an age bracket of 19-48 years. On these experiments each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Three-axial linear acceleration and 3-axial angular velocity were captured at a constant rate of 50Hz using its embedded accelerometer and gyroscope and then were pre-processed by applying noise filters and sampled in fixed-width sliding windows resulting in a set of features in the time and frequency domain. 

Since the particular processing of the DITEN team implied the partition of the dataset into train and test sets as well as into train and test subjects, our task is to recompose the dataset and, as an additional task, to summarize it, but only through the mean of a subset of features: those features that are a mean or standard deviation of a measurement. Thus, in the end we reduced the set of features from 561 to only 86.

On the resulting summarized dataset each record represents the mean of each measurement for a pair of subject - activity (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) .

The dataset includes the following files:
=========================================

- 'README.md'

- 'features_info.md': Shows information about the variables used on the original feature vector.

- 'features.md': List of all original features.

- 'CodeBook.md': List of all processed features.

- 'summarized.txt': Averaged measurements by subject - activity pair.

- run_analysis.R: code in R.