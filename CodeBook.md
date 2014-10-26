#Codebook for Human Activity Recognition Using Smartphones Summarized Data

##Original DataSet Information

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

##This DataSet Information

The original dataset had 2 seperate datasets training and test. They were combined. 

Then all the features in the combined dataset was averaged for each Activity and each Subject producing a much smaller dataset.

It was noted that in the features.txt file

fBodyBody was incorrectly written where fBody was expected in some of the features.txt. Analysis script removes the duplicate.


##TidyDataSet.csv 

| VARIABLE NAME | POSITION| DESCRIPTION  | VALUES OR EXPLANATION |
| :------------- | -------------:|:------------|:-------------|
| SUBJECT     | 1         | identifies the subject who performed the activity |Its range is from 1 to 30|
| ACTIVITY     | 2     		| Activity peformed for time window sample ||
| TIME_BODY_ACCEL_AVG_XYZ | 3 	| Mean of all the mean values of subject's body Acceleration on X axis  |    $1 
| tBodyAcc_AVG_AVG_X | 3 | The Mean of all the Mean values | Its range is from 0.22159824394 to 0.3014610196 |
| tBodyAcc_AVG_AVG_Y | 4 | The Mean of all the Mean values | Its range is from -0.0405139534294 to -0.00130828765170213 |
| tBodyAcc_AVG_AVG_Z | 5 | The Mean of all the Mean values | Its range is from -0.152513899520833 to -0.07537846886 |
| tBodyAcc_STD_AVG_X | 6 | The Mean of all the Standard Deviation values | Its range is from -0.996068635384615 to 0.626917070512821 |
| tBodyAcc_STD_AVG_Y | 7 | The Mean of all the Standard Deviation values | Its range is from -0.990240946666667 to 0.616937015333333 |
| tBodyAcc_STD_AVG_Z | 8 | The Mean of all the Standard Deviation values | Its range is from -0.987658662307692 to 0.609017879074074 |
| tGravityAcc_AVG_AVG_X | 9 | The Mean of all the Mean values | Its range is from -0.680043155060241 to 0.974508732 |
| tGravityAcc_AVG_AVG_Y | 10 | The Mean of all the Mean values | Its range is from -0.479894842941176 to 0.956593814210526 |
| tGravityAcc_AVG_AVG_Z | 11 | The Mean of all the Mean values | Its range is from -0.49508872037037 to 0.9578730416 |
| tGravityAcc_STD_AVG_X | 12 | The Mean of all the Standard Deviation values | Its range is from -0.996764227384615 to -0.829554947808219 |
| tGravityAcc_STD_AVG_Y | 13 | The Mean of all the Standard Deviation values | Its range is from -0.99424764884058 to -0.643578361424658 |
| tGravityAcc_STD_AVG_Z | 14 | The Mean of all the Standard Deviation values | Its range is from -0.990957249538462 to -0.610161166287671 |
| tBodyAccJerk_AVG_AVG_X | 15 | The Mean of all the Mean values | Its range is from 0.0426880986186441 to 0.130193043809524 |
| tBodyAccJerk_AVG_AVG_Y | 16 | The Mean of all the Mean values | Its range is from -0.0386872111282051 to 0.056818586275 |
| tBodyAccJerk_AVG_AVG_Z | 17 | The Mean of all the Mean values | Its range is from -0.0674583919268293 to 0.0380533591627451 |
| tBodyAccJerk_STD_AVG_X | 18 | The Mean of all the Standard Deviation values | Its range is from -0.994604542264151 to 0.544273037307692 |
| tBodyAccJerk_STD_AVG_Y | 19 | The Mean of all the Standard Deviation values | Its range is from -0.989513565652174 to 0.355306716915385 |
| tBodyAccJerk_STD_AVG_Z | 20 | The Mean of all the Standard Deviation values | Its range is from -0.993288313333333 to 0.0310157077775926 |
| tBodyGyro_AVG_AVG_X | 21 | The Mean of all the Mean values | Its range is from -0.205775427307692 to 0.19270447595122 |
| tBodyGyro_AVG_AVG_Y | 22 | The Mean of all the Mean values | Its range is from -0.204205356087805 to 0.0274707556666667 |
| tBodyGyro_AVG_AVG_Z | 23 | The Mean of all the Mean values | Its range is from -0.0724546025804878 to 0.179102058245614 |
| tBodyGyro_STD_AVG_X | 24 | The Mean of all the Standard Deviation values | Its range is from -0.994276591304348 to 0.267657219333333 |
| tBodyGyro_STD_AVG_Y | 25 | The Mean of all the Standard Deviation values | Its range is from -0.994210471914894 to 0.476518714444444 |
| tBodyGyro_STD_AVG_Z | 26 | The Mean of all the Standard Deviation values | Its range is from -0.985538363333333 to 0.564875818162963 |
| tBodyGyroJerk_AVG_AVG_X | 27 | The Mean of all the Mean values | Its range is from -0.157212539189362 to -0.0220916265065217 |
| tBodyGyroJerk_AVG_AVG_Y | 28 | The Mean of all the Mean values | Its range is from -0.0768089915604167 to -0.0132022768074468 |
| tBodyGyroJerk_AVG_AVG_Z | 29 | The Mean of all the Mean values | Its range is from -0.0924998531372549 to -0.00694066389361702 |
| tBodyGyroJerk_STD_AVG_X | 30 | The Mean of all the Standard Deviation values | Its range is from -0.99654254057971 to 0.179148649684615 |
| tBodyGyroJerk_STD_AVG_Y | 31 | The Mean of all the Standard Deviation values | Its range is from -0.997081575652174 to 0.295945926186441 |
| tBodyGyroJerk_STD_AVG_Z | 32 | The Mean of all the Standard Deviation values | Its range is from -0.995380794637681 to 0.193206498960417 |
| tBodyAccMag_AVG_AVG | 33 | The Mean of all the Mean values | Its range is from -0.986493196666667 to 0.644604325128205 |
| tBodyAccMag_STD_AVG | 34 | The Mean of all the Standard Deviation values | Its range is from -0.986464542615385 to 0.428405922622222 |
| tGravityAccMag_AVG_AVG | 35 | The Mean of all the Mean values | Its range is from -0.986493196666667 to 0.644604325128205 |
| tGravityAccMag_STD_AVG | 36 | The Mean of all the Standard Deviation values | Its range is from -0.986464542615385 to 0.428405922622222 |
| tBodyAccJerkMag_AVG_AVG | 37 | The Mean of all the Mean values | Its range is from -0.99281471515625 to 0.434490400974359 |
| tBodyAccJerkMag_STD_AVG | 38 | The Mean of all the Standard Deviation values | Its range is from -0.994646916811594 to 0.450612065720513 |
| tBodyGyroMag_AVG_AVG | 39 | The Mean of all the Mean values | Its range is from -0.980740846769231 to 0.418004608615385 |
| tBodyGyroMag_STD_AVG | 40 | The Mean of all the Standard Deviation values | Its range is from -0.981372675614035 to 0.299975979851852 |
| tBodyGyroJerkMag_AVG_AVG | 41 | The Mean of all the Mean values | Its range is from -0.997322526811594 to 0.0875816618205128 |
| tBodyGyroJerkMag_STD_AVG | 42 | The Mean of all the Standard Deviation values | Its range is from -0.997666071594203 to 0.250173204117966 |
| fBodyAcc_AVG_AVG_X | 43 | The Mean of all the Mean values | Its range is from -0.995249932641509 to 0.537012022051282 |
| fBodyAcc_AVG_AVG_Y | 44 | The Mean of all the Mean values | Its range is from -0.989034304057971 to 0.524187686888889 |
| fBodyAcc_AVG_AVG_Z | 45 | The Mean of all the Mean values | Its range is from -0.989473926666667 to 0.280735952206667 |
| fBodyAcc_STD_AVG_X | 46 | The Mean of all the Standard Deviation values | Its range is from -0.996604570307692 to 0.658506543333333 |
| fBodyAcc_STD_AVG_Y | 47 | The Mean of all the Standard Deviation values | Its range is from -0.990680395362319 to 0.560191344 |
| fBodyAcc_STD_AVG_Z | 48 | The Mean of all the Standard Deviation values | Its range is from -0.987224804307692 to 0.687124163703704 |
| fBodyAccJerk_AVG_AVG_X | 49 | The Mean of all the Mean values | Its range is from -0.994630797358491 to 0.474317256051282 |
| fBodyAccJerk_AVG_AVG_Y | 50 | The Mean of all the Mean values | Its range is from -0.989398823913043 to 0.276716853307692 |
| fBodyAccJerk_AVG_AVG_Z | 51 | The Mean of all the Mean values | Its range is from -0.992018447826087 to 0.157775692377778 |
| fBodyAccJerk_STD_AVG_X | 52 | The Mean of all the Standard Deviation values | Its range is from -0.995073759245283 to 0.476803887476923 |
| fBodyAccJerk_STD_AVG_Y | 53 | The Mean of all the Standard Deviation values | Its range is from -0.990468082753623 to 0.349771285415897 |
| fBodyAccJerk_STD_AVG_Z | 54 | The Mean of all the Standard Deviation values | Its range is from -0.993107759855072 to -0.00623647528983051 |
| fBodyGyro_AVG_AVG_X | 55 | The Mean of all the Mean values | Its range is from -0.99312260884058 to 0.474962448333333 |
| fBodyGyro_AVG_AVG_Y | 56 | The Mean of all the Mean values | Its range is from -0.994025488297872 to 0.328817010088889 |
| fBodyGyro_AVG_AVG_Z | 57 | The Mean of all the Mean values | Its range is from -0.985957788 to 0.492414379822222 |
| fBodyGyro_STD_AVG_X | 58 | The Mean of all the Standard Deviation values | Its range is from -0.994652185217391 to 0.196613286661538 |
| fBodyGyro_STD_AVG_Y | 59 | The Mean of all the Standard Deviation values | Its range is from -0.994353086595745 to 0.646233637037037 |
| fBodyGyro_STD_AVG_Z | 60 | The Mean of all the Standard Deviation values | Its range is from -0.986725274871795 to 0.522454216314815 |
| fBodyAccMag_AVG_AVG | 61 | The Mean of all the Mean values | Its range is from -0.986800645362319 to 0.586637550769231 |
| fBodyAccMag_STD_AVG | 62 | The Mean of all the Standard Deviation values | Its range is from -0.987648484461539 to 0.178684580868889 |
| fBodyAccJerkMag_AVG_AVG | 63 | The Mean of all the Mean values | Its range is from -0.993998275797101 to 0.538404846128205 |
| fBodyAccJerkMag_STD_AVG | 64 | The Mean of all the Standard Deviation values | Its range is from -0.994366667681159 to 0.316346415348718 |
| fBodyGyroMag_AVG_AVG | 65 | The Mean of all the Mean values | Its range is from -0.986535242105263 to 0.203979764835897 |
| fBodyGyroMag_STD_AVG | 66 | The Mean of all the Standard Deviation values | Its range is from -0.981468841692308 to 0.236659662496296 |
| fBodyGyroJerkMag_AVG_AVG | 67 | The Mean of all the Mean values | Its range is from -0.997617389275362 to 0.146618569064407 |
| fBodyGyroJerkMag_STD_AVG | 68 | The Mean of all the Standard Deviation values | Its range is from -0.99758523057971 to 0.287834616098305 |
||

 