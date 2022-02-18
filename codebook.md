# Codebook
The features selected for this dataset (the output of the run_analysis.R script)
come from the raw data listed in the [references](#references) section. 
The Mean and Standard Deviation features were selected and the averages of each 
feature, grouped by Subject and Activity, were calculated and used for 
this dataset.

The original raw data has 30 Subjects and 6 Activities, giving this data
```30 * 6 = 180``` rows. The columns are SubjectID, Activity, and the 66 
columns selected from the raw data, giving a total of 68.

## Features:
* SubjectID

  The ID of the Subject observed. Values are from 1 to 30.
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
[this reference table](#reference-table). You can also refer to the 
original description of the data in ```data/feature_info.txt```. In the original
data, each feature was normalized and bounded within [-1,1], so these averages
are also within that range.

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


## References
* Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013. 
* http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#



