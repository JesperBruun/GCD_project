Title CodeBook.md
========================================================
This documet is a codebook for the tidy dataset produced by run_analysis.R and stored in the text file td.txt.

##Study Design
The tidy dataset is obtained by processing a raw dataset that can be found at this web adress:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The tidy dataset contains a header descriping the content of the columns. Then following rows contain means of selected features fetched from the raw data as descriped in the README.md file. Each row represents one subject doing one of 6 activities. There are 30 subjects and 180 rows of data bedcause all subjects did all activities.

All features are normalized and bounded with [-1,1].

##Code Book

* SubjectId: Number telling which person did the test
* Activity: Text of the kind og activity

Key for decoding the variable (feature) names

* Time: Time domain data
* Freq: Frequency domain data. Cauculated from the time domain data via FFT.
* Body: Body part of the original acceleration measurement
* Gravity: Gravity part of the original acceleration measurement
* Acc: Acceleration
* Gyro: Gyroscope data
* Jerk: Jerk 
* Mag: Magnitude of signal relevant signal
* Mean: Mean value
* Std: Standard Deviation
* XYZ: Direction in a coordination system. X, Y and Z is perpendicular to each other


###Features in time domain
* TimeBodyAccMeanX: Time domain data; Body part of the original acceleration measurement; Acceleration; Mean value; X direction; 
* TimeBodyAccMeanY: Time domain data; Body part of the original acceleration measurement; Acceleration; Mean value; Y direction; 
* TimeBodyAccMeanZ: Time domain data; Body part of the original acceleration measurement; Acceleration; Mean value; Z direction
* TimeBodyAccStdX: Time domain data; Body part of the original acceleration measurement; Acceleration; Standard Deviation; X direction; 
* TimeBodyAccStdY: Time domain data; Body part of the original acceleration measurement; Acceleration; Standard Deviation; Y direction; 
* TimeBodyAccStdZ: Time domain data; Body part of the original acceleration measurement; Acceleration; Standard Deviation; Z direction
* TimeGravityAccMeanX: Time domain data; Gravity part of the original acceleration measurement; Acceleration; Mean value; X direction; 
* TimeGravityAccMeanY: Time domain data; Gravity part of the original acceleration measurement; Acceleration; Mean value; Y direction; 
* TimeGravityAccMeanZ: Time domain data; Gravity part of the original acceleration measurement; Acceleration; Mean value; Z direction
* TimeGravityAccStdX: Time domain data; Gravity part of the original acceleration measurement; Acceleration; Standard Deviation; X direction; 
* TimeGravityAccStdY: Time domain data; Gravity part of the original acceleration measurement; Acceleration; Standard Deviation; Y direction; 
* TimeGravityAccStdZ: Time domain data; Gravity part of the original acceleration measurement; Acceleration; Standard Deviation; Z direction
* TimeBodyAccJerkMeanX: Time domain data; Body part of the original acceleration measurement; Acceleration; Jerk; Mean value; X direction; 
* TimeBodyAccJerkMeanY: Time domain data; Body part of the original acceleration measurement; Acceleration; Jerk; Mean value; Y direction; 
* TimeBodyAccJerkMeanZ: Time domain data; Body part of the original acceleration measurement; Acceleration; Jerk; Mean value; Z direction
* TimeBodyAccJerkStdX: Time domain data; Body part of the original acceleration measurement; Acceleration; Jerk; Standard Deviation; X direction; 
* TimeBodyAccJerkStdY: Time domain data; Body part of the original acceleration measurement; Acceleration; Jerk; Standard Deviation; Y direction; 
* TimeBodyAccJerkStdZ: Time domain data; Body part of the original acceleration measurement; Acceleration; Jerk; Standard Deviation; Z direction
* TimeBodyGyroMeanX: Time domain data; Body part of the original acceleration measurement; Gyroscope data; Mean value; X direction; 
* TimeBodyGyroMeanY: Time domain data; Body part of the original acceleration measurement; Gyroscope data; Mean value; Y direction; 
* TimeBodyGyroMeanZ: Time domain data; Body part of the original acceleration measurement; Gyroscope data; Mean value; Z direction
* TimeBodyGyroStdX: Time domain data; Body part of the original acceleration measurement; Gyroscope data; Standard Deviation; X direction; 
* TimeBodyGyroStdY: Time domain data; Body part of the original acceleration measurement; Gyroscope data; Standard Deviation; Y direction; 
* TimeBodyGyroStdZ: Time domain data; Body part of the original acceleration measurement; Gyroscope data; Standard Deviation; Z direction
* TimeBodyGyroJerkMeanX: Time domain data; Body part of the original acceleration measurement; Gyroscope data; Jerk; Mean value; X direction; 
* TimeBodyGyroJerkMeanY: Time domain data; Body part of the original acceleration measurement; Gyroscope data; Jerk; Mean value; Y direction; 
* TimeBodyGyroJerkMeanZ: Time domain data; Body part of the original acceleration measurement; Gyroscope data; Jerk; Mean value; Z direction
* TimeBodyGyroJerkStdX: Time domain data; Body part of the original acceleration measurement; Gyroscope data; Jerk; Standard Deviation; X direction; 
* TimeBodyGyroJerkStdY: Time domain data; Body part of the original acceleration measurement; Gyroscope data; Jerk; Standard Deviation; Y direction; 
* TimeBodyGyroJerkStdZ: Time domain data; Body part of the original acceleration measurement; Gyroscope data; Jerk; Standard Deviation; Z direction
* TimeBodyAccMagMean: Time domain data; Body part of the original acceleration measurement; Acceleration; Magnitude of signal relevant signal; Mean value; 
* TimeBodyAccMagStd: Time domain data; Body part of the original acceleration measurement; Acceleration; Magnitude of signal relevant signal; Standard Deviation; 
* TimeGravityAccMagMean: Time domain data; Gravity part of the original acceleration measurement; Acceleration; Magnitude of signal relevant signal; Mean value; 
* TimeGravityAccMagStd: Time domain data; Gravity part of the original acceleration measurement; Acceleration; Magnitude of signal relevant signal; Standard Deviation; 
* TimeBodyAccJerkMagMean: Time domain data; Body part of the original acceleration measurement; Acceleration; Jerk; Magnitude of signal relevant signal; Mean value; 
* TimeBodyAccJerkMagStd: Time domain data; Body part of the original acceleration measurement; Acceleration; Jerk; Magnitude of signal relevant signal; Standard Deviation; 
* TimeBodyGyroMagMean: Time domain data; Body part of the original acceleration measurement; Gyroscope data; Magnitude of signal relevant signal; Mean value; 
* TimeBodyGyroMagStd: Time domain data; Body part of the original acceleration measurement; Gyroscope data; Magnitude of signal relevant signal; Standard Deviation; 
* TimeBodyGyroJerkMagMean: Time domain data; Body part of the original acceleration measurement; Gyroscope data; Jerk; Magnitude of signal relevant signal; Mean value; 
* TimeBodyGyroJerkMagStd: Time domain data; Body part of the original acceleration measurement; Gyroscope data; Jerk; Magnitude of signal relevant signal; Standard Deviation; 

###Features in frequency domain
* FreqBodyAccMeanX: Frequency domain data. Cauculated from the time domain data via FFT.; Body part of the original acceleration measurement; Acceleration; Mean value; X direction; 
* FreqBodyAccMeanY: Frequency domain data. Cauculated from the time domain data via FFT.; Body part of the original acceleration measurement; Acceleration; Mean value; Y direction; 
* FreqBodyAccMeanZ: Frequency domain data. Cauculated from the time domain data via FFT.; Body part of the original acceleration measurement; Acceleration; Mean value; Z direction
* FreqBodyAccStdX: Frequency domain data. Cauculated from the time domain data via FFT.; Body part of the original acceleration measurement; Acceleration; Standard Deviation; X direction; 
* FreqBodyAccStdY: Frequency domain data. Cauculated from the time domain data via FFT.; Body part of the original acceleration measurement; Acceleration; Standard Deviation; Y direction; 
* FreqBodyAccStdZ: Frequency domain data. Cauculated from the time domain data via FFT.; Body part of the original acceleration measurement; Acceleration; Standard Deviation; Z direction
* FreqBodyAccJerkMeanX: Frequency domain data. Cauculated from the time domain data via FFT.; Body part of the original acceleration measurement; Acceleration; Jerk; Mean value; X direction; 
* FreqBodyAccJerkMeanY: Frequency domain data. Cauculated from the time domain data via FFT.; Body part of the original acceleration measurement; Acceleration; Jerk; Mean value; Y direction; 
* FreqBodyAccJerkMeanZ: Frequency domain data. Cauculated from the time domain data via FFT.; Body part of the original acceleration measurement; Acceleration; Jerk; Mean value; Z direction
* FreqBodyAccJerkStdX: Frequency domain data. Cauculated from the time domain data via FFT.; Body part of the original acceleration measurement; Acceleration; Jerk; Standard Deviation; X direction; 
* FreqBodyAccJerkStdY: Frequency domain data. Cauculated from the time domain data via FFT.; Body part of the original acceleration measurement; Acceleration; Jerk; Standard Deviation; Y direction; 
* FreqBodyAccJerkStdZ: Frequency domain data. Cauculated from the time domain data via FFT.; Body part of the original acceleration measurement; Acceleration; Jerk; Standard Deviation; Z direction
* FreqBodyGyroMeanX: Frequency domain data. Cauculated from the time domain data via FFT.; Body part of the original acceleration measurement; Gyroscope data; Mean value; X direction; 
* FreqBodyGyroMeanY: Frequency domain data. Cauculated from the time domain data via FFT.; Body part of the original acceleration measurement; Gyroscope data; Mean value; Y direction; 
* FreqBodyGyroMeanZ: Frequency domain data. Cauculated from the time domain data via FFT.; Body part of the original acceleration measurement; Gyroscope data; Mean value; Z direction
* FreqBodyGyroStdX: Frequency domain data. Cauculated from the time domain data via FFT.; Body part of the original acceleration measurement; Gyroscope data; Standard Deviation; X direction; 
* FreqBodyGyroStdY: Frequency domain data. Cauculated from the time domain data via FFT.; Body part of the original acceleration measurement; Gyroscope data; Standard Deviation; Y direction; 
* FreqBodyGyroStdZ: Frequency domain data. Cauculated from the time domain data via FFT.; Body part of the original acceleration measurement; Gyroscope data; Standard Deviation; Z direction
* FreqBodyAccMagMean: Frequency domain data. Cauculated from the time domain data via FFT.; Body part of the original acceleration measurement; Acceleration; Magnitude of signal relevant signal; Mean value; 
* FreqBodyAccMagStd: Frequency domain data. Cauculated from the time domain data via FFT.; Body part of the original acceleration measurement; Acceleration; Magnitude of signal relevant signal; Standard Deviation; 
* FreqBodyAccJerkMagMean: Frequency domain data. Cauculated from the time domain data via FFT.; Body part of the original acceleration measurement; Acceleration; Jerk; Magnitude of signal relevant signal; Mean value; 
* FreqBodyAccJerkMagStd: Frequency domain data. Cauculated from the time domain data via FFT.; Body part of the original acceleration measurement; Acceleration; Jerk; Magnitude of signal relevant signal; Standard Deviation; 
* FreqBodyGyroMagMean: Frequency domain data. Cauculated from the time domain data via FFT.; Body part of the original acceleration measurement; Gyroscope data; Magnitude of signal relevant signal; Mean value; 
* FreqBodyGyroMagStd: Frequency domain data. Cauculated from the time domain data via FFT.; Body part of the original acceleration measurement; Gyroscope data; Magnitude of signal relevant signal; Standard Deviation; 
* FreqBodyGyroJerkMagMean: Frequency domain data. Cauculated from the time domain data via FFT.; Body part of the original acceleration measurement; Gyroscope data; Jerk; Magnitude of signal relevant signal; Mean value; 
* FreqBodyGyroJerkMagStd: Frequency domain data. Cauculated from the time domain data via FFT.; Body part of the original acceleration measurement; Gyroscope data; Jerk; Magnitude of signal relevant signal; Standard Deviation; 

