# Codebook

## Features:
* SubjectID

  The ID of the Subject observed
* Activity

  The activity observed. Can be one of:
  * WALKING
  * WALKING_UPSTAIRS
  * WALKING_DOWNSTAIRS
  * SITTING
  * STANDING
  * LAYING

For the data fields below, the tidy_data is the average of each of the fields
by Subject/Activity. To understand the field names refer to 
[this reference table](##reference-table). You can also refer to the the 
original description of the data in ```data/feature_info.txt```

* TimeBodyAccMean{X, Y, Z}
* TimeGravityAccMean{X, Y, Z}
* TimeBodyAccJerkMean{X, Y, Z}
* TimeBodyGyroMean{X, Y, Z}
* TimeBodyGyroJerkMean{X, Y, Z}
* FourierBodyAccMean{X, Y, Z}
* FourierBodyAccJerkMean{X, Y, Z}
* FourierBodyGyroMean{X, Y, Z}
* TimeBodyAccStd{X, Y, Z}
* TimeGravityAccStd{X, Y, Z}
* TimeBodyAccJerkStd{X, Y, Z}
* TimeBodyGyroStd{X, Y, Z}
* TimeBodyGyroJerkStd{X, Y, Z}
* FourierBodyAccStd{X, Y, Z}
* FourierBodyAccJerkStd{X, Y, Z}
* FourierBodyGyroStd{X, Y, Z}
* TimeBodyAccMagMean
* TimeGravityAccMagMean
* TimeBodyAccJerkMagMean
* TimeBodyGyroMagMean
* TimeBodyGyroJerkMagMean
* FourierBodyAccMagMean
* FourierBodyBodyAccJerkMagMean
* FourierBodyBodyGyroMagMean
* FourierBodyBodyGyroJerkMagMean
* TimeBodyAccMagStd
* TimeGravityAccMagStd
* TimeBodyAccJerkMagStd
* TimeBodyGyroMagStd
* TimeBodyGyroJerkMagStd
* FourierBodyAccMagStd
* FourierBodyBodyAccJerkMagStd
* FourierBodyBodyGyroMagStd
* FourierBodyBodyGyroJerkMagStd

## Reference Table

| Code    | Description                              |
| ------- | ---------------------------------------- |
| Time    | Time domain signal                       |
| Fourier | Fast Fourier Transform applied to signal |
| Body    | Body acceleration signal                 |
| Acc     | Accelerometer                            |
| Mean    | Mean/Average                             |
| Gravity | Gravity acceleration signal              |
| Jerk    | Jerk signal                              |
| Gyro    | Gyroscope signal                         |
| Std     | Standard Deviation                       |
| Mag     | Magnitude of signal                      |




