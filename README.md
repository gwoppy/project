Course project (August 2014)
============================

This repo includes the following files:
- 'tidy.csv': a text (comma separated) data file output from 'run_analysis.R'

- 'run_analysis.R': the script that performs the analyses to get the data set in 'tidy.csv'

- 'CodeBook.md' : a code book that describes the variables and summaries in 'tidy.csv'

- 'README.md': (this file) which should explain the analyses steps coded in 'run_analysis.R'


Background (source of data)
===========================
The data set provided here ('tidy.txt') builds upon data obtained from:
-  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Reference on the data:
-  Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

Project description and extended details on Coursera:
-  https://class.coursera.org/getdata-006/human_grading/view/courses/972584/assessments/3/submissions

Briefly, the purpose is to summarize a large data set by calculating the average of each variable for each activity and each subject involved in the experiment described in the above reference. The output should be a clean data set ('tidy.csv' here) following the general rules that were taught in the course "Getting and Cleaning Data" by J. Leek.


Note
====

The data analysis has been restricted to the time domain as the frequency domain is dual (complementary), that is, it is another way to look into the data. Of course the frequency domain is valuable. However, within the context of this project and its purpose, we limited the processing to the time domain for the sake of clarity.


Analyses steps coded in run_analysis.R
======================================
The various steps in the script are listed below. Those that seem arguable are shortly commented to explain what choices were made (sure there are others, and likely most effective but these somewhat worked to get a reasonably clean outcome).

1. Load required libraries in R.

2. Read data files with labels of activities and variables.

3. Transform variable names into more readable ones. Due to the length of the variable names and considering that no strict recommendation was given, only characters that I am affraid can yield problems in the data processing were removed or replaced with "_" if a separation appeared useful for readability. These special characters were: "(", ")", ",", "-".

4. Read data files with measurements related to subjects and activities. Here we used the new variable names to name the data columns as appropriate.

5. Merge training and test data sets to create one data set.

6. Retain mean and std from all but frequency measurements. (See note above).

7. Calculate the average of each variable for each activity and each subject. This step involved several sub-steps. First, activity and subject ids were mutated into factors to split the whole data into activity and subject groups (180 in total, that is, 6 activities x 30 subjects). Then, the averages were calculated by group. It involved using lapply with an sapply in a single line. At this stage, a large data frame was issued that was somewhat compacted into a matrix adding a column to keep track of the corresponding group ids.

8. Final steps towards a tidy data set. The group ids were decoded to retrieve the corresponding subject id and activity id, in particular the activity name which appears more friendly to provide. A 'for' loop was used here as I did not find a more simple way to achieve this goal. A data frame was produced (though not necessary for writing the final file) with row names corresponding to the group ids to keep check that the decoding was correct.


