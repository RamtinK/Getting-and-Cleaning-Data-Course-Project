==================================================================
Human Activity Recognition Using Smartphones Dataset
Edited Version by “rmtn for Coursera, Getting and Cleaning Data course”
==================================================================
origin work of Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit‡ degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Then only those measures containing mean and standard deviation are take in to account and are exist in the dataset call data_mean_std.

Beside, there is a dataset which gets an average of all variable for each activity for each subject called data_average.

The dataset includes the following files:
=========================================

- 'README.txt'

- ‘Codebook.pdf’

- ‘data_mean_std.csv’

- ‘data_average.csv’


Notes: 
======
- Features are normalized and bounded within [-1,1].
