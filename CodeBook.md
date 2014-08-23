Code Book for the data set in the text file 'tidy.csv'
======================================================

For each variable in 'tidy.csv', we provide here its name as it appears in the header of the file and a brief description (data dictionnary).

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
- Numeric: [0.2, 0.4] (Units 'g')


tBodyAcc_mean_Y
- Average of the body acceleration in the y-axis direction
- Numeric: [-0.04, 0] (Units 'g')


tBodyAcc_mean_Z
 - Average of the body acceleration in the z-axis direction
 - Numeric: [-0.16, -0.07] (Units 'g')
 

tBodyAcc_std_X
- Average of the body acceleration standard deviation in the x-axis direction
- Numeric: [-1, 0.7] (Units 'g')


tBodyAcc_std_Y
- Average of the body acceleration standard deviation in the y-axis direction
- Numeric: [-1, 0.7] (Units 'g')

tBodyAcc_std_Z
- Average of the body acceleration standard deviation in the z-axis direction
- Numeric: [-1, 0.7] (Units 'g')


tGravityAcc_mean_X
- Average of the gravity acceleration in the x-axis direction
- Numeric: [-0.7, 1] (Units 'g')


tGravityAcc_mean_Y
- Average of the gravity acceleration in the y-axis direction
- Numeric: [-0.5, 1] (Units 'g')


tGravityAcc_mean_Z
- Average of the gravity acceleration in the z-axis direction
- Numeric: [-0.5, 1] (Units 'g')


tGravityAcc_std_X
- Average of the gravity acceleration standard deviation in the x-axis direction
- Numeric: [-1, -0.8] (Units 'g')


tGravityAcc_std_Y
- Average of the gravity acceleration standard deviation in the y-axis direction
- Numeric: [-1, -0.6] (Units 'g')


tGravityAcc_std_Z
- Average of the gravity acceleration standard deviation in the z-axis direction
- Numeric: [-1, -0.6] (Units 'g')


tBodyAccJerk_mean_X
- Average of the body acceleration jerk in the x-axis direction
- Numeric: [0, 0.2] (Units 'g')


tBodyAccJerk_mean_Y
- Average of the body acceleration jerk in the y-axis direction
- Numeric: [-0.1, 0.1] (Units 'g')


tBodyAccJerk_mean_Z
- Average of the body acceleration jerk in the z-axis direction
- Numeric: [-0.1, 0.1] (Units 'g')


tBodyAccJerk_std_X
- Average of the body acceleration jerk standard deviation in the x-axis
- Numeric: [-1, 0.6] (Units 'g')


tBodyAccJerk_std_Y
- Average of the body acceleration jerk standard deviation in the y-axis
- Numeric: [-1, 0.4] (Units 'g')


tBodyAccJerk_std_Z
- Average of the body acceleration jerk standard deviation in the z-axis
- Numeric: [-1, 0.1] (Units 'g')


tBodyGyro_mean_X
- Average of the body angular velocity in the x-axis direction
- Numeric: [-0.3, 0.2] (Units radians/second)


tBodyGyro_mean_Y
- Average of the body angular velocity in the y-axis direction
- Numeric: [-0.3, 0.1] (Units radians/second)


tBodyGyro_mean_Z
- Average of the body angular velocity in the z-axis direction
- Numeric: [-0.1, 0.2] (Units radians/second)


tBodyGyro_std_X
- Average of the body angular velocity standard deviation in the x-axis
- Numeric: [-1, 0.3] (Units radians/second)


tBodyGyro_std_Y
- Average of the body angular velocity standard deviation in the y-axis
- Numeric: [-1, 0.5] (Units radians/second)


tBodyGyro_std_Z
- Average of the body angular velocity standard deviation in the z-axis
- Numeric: [-1, 0.6] (Units radians/second)


tBodyGyroJerk_mean_X
- Average of the body angular velocity jerk in the x-axis direction
- Numeric: [-0.2, 0] (Units radians/second)


tBodyGyroJerk_mean_Y
- Average of the angular velocity jerk in the y-axis direction
- Numeric: [-0.1, 0] (Units radians/second)


tBodyGyroJerk_mean_Z
- Average of the body angular velocity jerk in the z-axis direction
- Numeric: [-0.1, 0] (Units radians/second)


tBodyGyroJerk_std_X
- Average of the body angular velocity jerk standard deviation in the x-axis
- Numeric: [-1, 0.2] (Units radians/second)


tBodyGyroJerk_std_Y
- Average of the body angular velocity jerk standard deviation in the y-axis
- Numeric: [-1, 0.3] (Units radians/second)


tBodyGyroJerk_std_Z
- Average of the body angular velocity jerk standard deviation in the z-axis
- Numeric: [-1, 0.2] (Units radians/second)


tBodyAccMag_mean
- Average of the body acceleration magnitude
- Numeric: [-1, 0.7] (Units 'g')


tBodyAccMag_std
- Average of the body acceleration magnitude standard deviation
- Numeric: [-1, 0.5] (Units 'g')


tGravityAccMag_mean
- Average of the gravity acceleration magnitude
- Numeric: [-1, 0.7] (Units 'g')


tGravityAccMag_std
- Average of the gravity acceleration magnitude standard deviation
- Numeric: [-1, 0.5] (Units 'g')


tBodyAccJerkMag_mean
- Average of the body acceleration jerk magnitude
- Numeric: [-1, 0.5] (Units 'g')


tBodyAccJerkMag_std
- Average of the body acceleration jerk magnitude standard deviation
- Numeric: [-1, 0.5] (Units 'g')


tBodyGyroMag_mean
- Average of the body angular velocity magnitude
- Numeric: [-1, 0.5] (Units radians/second)


tBodyGyroMag_std
- Average of the body angular velocity magnitude standard deviation
- Numeric: [-1, 0.3] (Units radians/second)


tBodyGyroJerkMag_mean
- Average of the body angular velocity jerk magnitude
- Numeric: [-1, 0.1] (Units radians/second)


tBodyGyroJerkMag_std
- Average of the body angular velocity jerk magnitude standard deviation
- Numeric: [-1, 0.3] (Units radians/second)


angle_tBodyAcc_mean_gravity
- Average angle between the body acceleration and gravity
- Numeric: [-0.2, 0.2] (Units radians)


angle_tBodyAccJerk_mean_gravity_mean
- Average angle between the body acceleration jerk and gravity
- Numeric: [-0.2, 0.3] (Units radians)


angle_tBodyGyro_mean_gravity_mean
- Average angle between the angular velocity and gravity
- Numeric: [-0.4, 0.5] (Units radians)


angle_tBodyGyroJerk_mean_gravity_mean
- Average angle between the angular velocity jerk and gravity
- Numeric: [-0.3, 0.2] (Units radians)


angle_X_gravity_mean
- Average angle between the x-axis and gravity
- Numeric: [-1, 0.8] (Units radians)


angle_Y_gravity_mean
- Average angle between the y-axis and gravity
- Numeric: [-0.9, 0.5] (Units radians)


angle_Z_gravity_mean
- Average angle between the z-axis and gravity
- Numeric: [-0.9, 0.4] (Units radians)


