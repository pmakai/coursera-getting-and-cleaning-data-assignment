# CodeBook

The data describes the results of a study on wearable computing. 
The original data can be found here: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The following data processing steps have been performed:

0. Creating test and training datasets based on measurements, activity labels and variable labels
1. Merging the training and test datasets
2. Selecting means and standard deviations and saves this into a dataset
3. Converted the activity columns into factors based on the values of the activity_labels dataset
4. Renames the unclear variables
5. Creates a tidy dataset that consists of the average (mean) value of each variable for each subject and activity pair.

## List of variables

### Identifying variables

 [1] "subject"          subject number values: 1-30                                       
 [2] "activity"         activity type, factor, possible responses: WALKING, WALKING_UPSTAIRS,WALKING_DOWNSTAIRS,SITTINGSTANDING, LAYING

### Measurement values

These variables are all measurements from the original dataset, and contain means and standrad deviations per variable. These are all numeric variables.

 [3] "timeBodyAccelerator-mean()-X"                        
 [4] "timeBodyAccelerator-mean()-Y"                        
 [5] "timeBodyAccelerator-mean()-Z"                        
 [6] "timeBodyAccelerator-std()-X"                         
 [7] "timeBodyAccelerator-std()-Y"                         
 [8] "timeBodyAccelerator-std()-Z"                         
 [9] "timeGravityAccelerator-mean()-X"                     
[10] "timeGravityAccelerator-mean()-Y"                     
[11] "timeGravityAccelerator-mean()-Z"                     
[12] "timeGravityAccelerator-std()-X"                      
[13] "timeGravityAccelerator-std()-Y"                      
[14] "timeGravityAccelerator-std()-Z"                      
[15] "timeBodyAcceleratorJerk-mean()-X"                    
[16] "timeBodyAcceleratorJerk-mean()-Y"                    
[17] "timeBodyAcceleratorJerk-mean()-Z"                    
[18] "timeBodyAcceleratorJerk-std()-X"                     
[19] "timeBodyAcceleratorJerk-std()-Y"                     
[20] "timeBodyAcceleratorJerk-std()-Z"                     
[21] "timeBodyGyroscope-mean()-X"                          
[22] "timeBodyGyroscope-mean()-Y"                          
[23] "timeBodyGyroscope-mean()-Z"                          
[24] "timeBodyGyroscope-std()-X"                           
[25] "timeBodyGyroscope-std()-Y"                           
[26] "timeBodyGyroscope-std()-Z"                           
[27] "timeBodyGyroscopeJerk-mean()-X"                      
[28] "timeBodyGyroscopeJerk-mean()-Y"                      
[29] "timeBodyGyroscopeJerk-mean()-Z"                      
[30] "timeBodyGyroscopeJerk-std()-X"                       
[31] "timeBodyGyroscopeJerk-std()-Y"                       
[32] "timeBodyGyroscopeJerk-std()-Z"                       
[33] "timeBodyAcceleratorMagnitude-mean()"                 
[34] "timeBodyAcceleratorMagnitude-std()"                  
[35] "timeGravityAcceleratorMagnitude-mean()"              
[36] "timeGravityAcceleratorMagnitude-std()"               
[37] "timeBodyAcceleratorJerkMagnitude-mean()"             
[38] "timeBodyAcceleratorJerkMagnitude-std()"              
[39] "timeBodyGyroscopeMagnitude-mean()"                   
[40] "timeBodyGyroscopeMagnitude-std()"                    
[41] "timeBodyGyroscopeJerkMagnitude-mean()"               
[42] "timeBodyGyroscopeJerkMagnitude-std()"                
[43] "frequencyBodyAccelerator-mean()-X"                   
[44] "frequencyBodyAccelerator-mean()-Y"                   
[45] "frequencyBodyAccelerator-mean()-Z"                   
[46] "frequencyBodyAccelerator-std()-X"                    
[47] "frequencyBodyAccelerator-std()-Y"                    
[48] "frequencyBodyAccelerator-std()-Z"                    
[49] "frequencyBodyAccelerator-meanFreq()-X"               
[50] "frequencyBodyAccelerator-meanFreq()-Y"               
[51] "frequencyBodyAccelerator-meanFreq()-Z"               
[52] "frequencyBodyAcceleratorJerk-mean()-X"               
[53] "frequencyBodyAcceleratorJerk-mean()-Y"               
[54] "frequencyBodyAcceleratorJerk-mean()-Z"               
[55] "frequencyBodyAcceleratorJerk-std()-X"                
[56] "frequencyBodyAcceleratorJerk-std()-Y"                
[57] "frequencyBodyAcceleratorJerk-std()-Z"                
[58] "frequencyBodyAcceleratorJerk-meanFreq()-X"           
[59] "frequencyBodyAcceleratorJerk-meanFreq()-Y"           
[60] "frequencyBodyAcceleratorJerk-meanFreq()-Z"           
[61] "frequencyBodyGyroscope-mean()-X"                     
[62] "frequencyBodyGyroscope-mean()-Y"                     
[63] "frequencyBodyGyroscope-mean()-Z"                     
[64] "frequencyBodyGyroscope-std()-X"                      
[65] "frequencyBodyGyroscope-std()-Y"                      
[66] "frequencyBodyGyroscope-std()-Z"                      
[67] "frequencyBodyGyroscope-meanFreq()-X"                 
[68] "frequencyBodyGyroscope-meanFreq()-Y"                 
[69] "frequencyBodyGyroscope-meanFreq()-Z"                 
[70] "frequencyBodyAcceleratorMagnitude-mean()"            
[71] "frequencyBodyAcceleratorMagnitude-std()"             
[72] "frequencyBodyAcceleratorMagnitude-meanFreq()"        
[73] "frequencyBodyBodyAcceleratorJerkMagnitude-mean()"    
[74] "frequencyBodyBodyAcceleratorJerkMagnitude-std()"     
[75] "frequencyBodyBodyAcceleratorJerkMagnitude-meanFreq()"
[76] "frequencyBodyBodyGyroscopeMagnitude-mean()"          
[77] "frequencyBodyBodyGyroscopeMagnitude-std()"           
[78] "frequencyBodyBodyGyroscopeMagnitude-meanFreq()"      
[79] "frequencyBodyBodyGyroscopeJerkMagnitude-mean()"      
[80] "frequencyBodyBodyGyroscopeJerkMagnitude-std()"       
[81] "frequencyBodyBodyGyroscopeJerkMagnitude-meanFreq()"  


