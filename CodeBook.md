Code Book for the data set in the text file 'tidy.csv'
======================================================

For each variable in 'tidy.csv', we provide its name as it appears in the header of the 'tidy.csv' file along with a brief description.

Remarks
=======
Most, but the first two of the variables, are averages, either from individual means or standard deviations for a given activity and subject. Furthermore, they were considered in the temporal domain and were normalized, that is, theoretical values are in the range [-1, +1]. However, bewlo are indicated the actual ranges observed. The source data from which the averages were computed is indicated in the README.md file (an URL points to the  zip file with the source data). A reference is also quoted for further details on the source data.
   

Data dictionnary
================

activity_name
- Type of activity in which subject is.
- Six categories were defined as follows:

  1. WALKING  
  2. WALKING_UPSTAIRS
  3. WALKING_DOWNSTAIRS
  4. SITTING
  5. STANDING
  6. LAYING


subject_id
- Subject identification
- Integer: 1 - 30


tBodyAcc_mean_X
- Average of the body acceleration in the x-axis direction
- Units 'g'
- Numeric: [0.2, 0.4] 


tBodyAcc_mean_Y
- Average of the body acceleration in the y-axis direction
- Units 'g'
- Numeric: [-0.04, 0] 


tBodyAcc_mean_Z
 - Average of the body acceleration in the z-axis direction
 - Units 'g'
 - Numeric: [-0.16, -0.07] 
 

tBodyAcc_std_X
- Average of the body acceleration standard deviation in the x-axis direction
- Units 'g'
- Numeric: [-1, 0.7] 


tBodyAcc_std_Y
- Average of the body acceleration standard deviation in the y-axis direction
- Units 'g'
- Numeric: [-1, 0.7] 

tBodyAcc_std_Z
- Average of the body acceleration standard deviation in the z-axis direction
- Units 'g'
- Numeric: [-1, 0.7] 


tGravityAcc_mean_X
- Average of the gravity acceleration in the x-axis direction
- Units 'g'
- Numeric: [-0.7, 1] 


tGravityAcc_mean_Y
- Average of the gravity acceleration in the y-axis direction 
- Units 'g'
- Numeric: [-0.5, 1] 


tGravityAcc_mean_Z
- Average of the gravity acceleration in the z-axis direction
- Units 'g'
- Numeric: [-0.5, 1] 


tGravityAcc_std_X
- Average of the gravity acceleration standard deviation in the x-axis direction
- Units 'g'
- Numeric: [-1, -0.8] 


tGravityAcc_std_Y
- Average of the gravity acceleration standard deviation in the y-axis direction
- Units 'g'
- Numeric: [-1, -0.6] 


tGravityAcc_std_Z
- Average of the gravity acceleration standard deviation in the z-axis direction
- Units 'g'
- Numeric: [-1, -0.6] 


tBodyAccJerk_mean_X
- Average of the body acceleration jerk in the x-axis direction
- Units 'g'
- Numeric: [0, 0.2] 


tBodyAccJerk_mean_Y
- Average of the body acceleration jerk in the y-axis direction
- Units 'g'
- Numeric: [-0.1, 0.1] 


tBodyAccJerk_mean_Z
- Average of the body acceleration jerk in the z-axis direction
- Units 'g'
- Numeric: [-0.1, 0.1] 


tBodyAccJerk_std_X
- Average of the body acceleration jerk standard deviation in the x-axis
- Units 'g'
- Numeric: [-1, 0.6] 


tBodyAccJerk_std_Y
- Average of the body acceleration jerk standard deviation in the y-axis
- Units 'g'
- Numeric: [-1, 0.4] 


tBodyAccJerk_std_Z
- Average of the body acceleration jerk standard deviation in the z-axis
- Units 'g'
- Numeric: [-1, 0.1] 


tBodyGyro_mean_X
- Average of the body angular velocity in the x-axis direction
- Units radians/second
- Numeric: [-0.3, 0.2] 


tBodyGyro_mean_Y
- Average of the body angular velocity in the y-axis direction
- Units radians/second
- Numeric: [-0.3, 0.1]


tBodyGyro_mean_Z
- Average of the body angular velocity in the z-axis direction
- Numeric: [-0.1, 0.2] (Units radians/second)


tBodyGyro_std_X
- Average of the body angular velocity standard deviation in the x-axis
- Units radians/second
- Numeric: [-1, 0.3]


tBodyGyro_std_Y
- Average of the body angular velocity standard deviation in the y-axis
- Units radians/second
- Numeric: [-1, 0.5]


tBodyGyro_std_Z
- Average of the body angular velocity standard deviation in the z-axis
- Units radians/second
- Numeric: [-1, 0.6]


tBodyGyroJerk_mean_X
- Average of the body angular velocity jerk in the x-axis direction
- Units radians/second
- Numeric: [-0.2, 0]


tBodyGyroJerk_mean_Y
- Average of the angular velocity jerk in the y-axis direction
- Units radians/second
- Numeric: [-0.1, 0]


tBodyGyroJerk_mean_Z
- Average of the body angular velocity jerk in the z-axis direction
- Units radians/second
- Numeric: [-0.1, 0]


tBodyGyroJerk_std_X
- Average of the body angular velocity jerk standard deviation in the x-axis
- Units radians/second
- Numeric: [-1, 0.2] 


tBodyGyroJerk_std_Y
- Average of the body angular velocity jerk standard deviation in the y-axis
- Units radians/second
- Numeric: [-1, 0.3] 


tBodyGyroJerk_std_Z
- Average of the body angular velocity jerk standard deviation in the z-axis
- Units radians/second
- Numeric: [-1, 0.2]


tBodyAccMag_mean
- Average of the body acceleration magnitude
- Units 'g'
- Numeric: [-1, 0.7]


tBodyAccMag_std
- Average of the body acceleration magnitude standard deviation
- Units 'g'
- Numeric: [-1, 0.5]


tGravityAccMag_mean
- Average of the gravity acceleration magnitude
- Units 'g'
- Numeric: [-1, 0.7] 


tGravityAccMag_std
- Average of the gravity acceleration magnitude standard deviation
- Units 'g'
- Numeric: [-1, 0.5]


tBodyAccJerkMag_mean
- Average of the body acceleration jerk magnitude
- Units 'g'
- Numeric: [-1, 0.5]


tBodyAccJerkMag_std
- Average of the body acceleration jerk magnitude standard deviation
- Units 'g'
- Numeric: [-1, 0.5]


tBodyGyroMag_mean
- Average of the body angular velocity magnitude
- Units radians/second
- Numeric: [-1, 0.5]


tBodyGyroMag_std
- Average of the body angular velocity magnitude standard deviation
- Units radians/second
- Numeric: [-1, 0.3]


tBodyGyroJerkMag_mean
- Average of the body angular velocity jerk magnitude
- Units radians/second
- Numeric: [-1, 0.1]


tBodyGyroJerkMag_std
- Average of the body angular velocity jerk magnitude standard deviation
- Units radians/second
- Numeric: [-1, 0.3]


angle_tBodyAcc_mean_gravity
- Average angle between the body acceleration and gravity
- Units radians
- Numeric: [-0.2, 0.2]


angle_tBodyAccJerk_mean_gravity_mean
- Average angle between the body acceleration jerk and gravity
- Units radians
- Numeric: [-0.2, 0.3]


angle_tBodyGyro_mean_gravity_mean
- Average angle between the angular velocity and gravity
- Units radians
- Numeric: [-0.4, 0.5]


angle_tBodyGyroJerk_mean_gravity_mean
- Average angle between the angular velocity jerk and gravity
- Units radians
- Numeric: [-0.3, 0.2]


angle_X_gravity_mean
- Average angle between the x-axis and gravity
- Units radians
- Numeric: [-1, 0.8]


angle_Y_gravity_mean
- Average angle between the y-axis and gravity
- Units radians
- Numeric: [-0.9, 0.5]


angle_Z_gravity_mean
- Average angle between the z-axis and gravity
- Units radians
- Numeric: [-0.9, 0.4] 


