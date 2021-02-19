Reassigning the vector of features as columns of the dataset required to do some processing, like:
- removing unfriendly characters "(", ")", "-" spaces and ",".
- fix duplicate names

Also, binding the vector of activities y_train and y_test required to replace the activity code by the corresponding label.

As a final step records wer averaged by subject - activity pair, resulting in 30 subjects times 6 activies, that is to say 180 records.

Processed features are:

 [1] subject                          
 [2] activity                         
 [3] tBodyAccMeanX                    
 [4] tBodyAccMeanY                    
 [5] tBodyAccMeanZ                    
 [6] tGravityAccMeanX                 
 [7] tGravityAccMeanY                 
 [8] tGravityAccMeanZ                 
 [9] tBodyAccJerkMeanX                
[10] tBodyAccJerkMeanY                
[11] tBodyAccJerkMeanZ                
[12] tBodyGyroMeanX                   
[13] tBodyGyroMeanY                   
[14] tBodyGyroMeanZ                   
[15] tBodyGyroJerkMeanX               
[16] tBodyGyroJerkMeanY               
[17] tBodyGyroJerkMeanZ               
[18] tBodyAccMagMean                  
[19] tGravityAccMagMean               
[20] tBodyAccJerkMagMean              
[21] tBodyGyroMagMean                 
[22] tBodyGyroJerkMagMean             
[23] fBodyAccMeanX                    
[24] fBodyAccMeanY                    
[25] fBodyAccMeanZ                    
[26] fBodyAccMeanFreqX                
[27] fBodyAccMeanFreqY                
[28] fBodyAccMeanFreqZ                
[29] fBodyAccJerkMeanX                
[30] fBodyAccJerkMeanY                
[31] fBodyAccJerkMeanZ                
[32] fBodyAccJerkMeanFreqX            
[33] fBodyAccJerkMeanFreqY            
[34] fBodyAccJerkMeanFreqZ            
[35] fBodyGyroMeanX                   
[36] fBodyGyroMeanY                   
[37] fBodyGyroMeanZ                   
[38] fBodyGyroMeanFreqX               
[39] fBodyGyroMeanFreqY               
[40] fBodyGyroMeanFreqZ               
[41] fBodyAccMagMean                  
[42] fBodyAccMagMeanFreq              
[43] fBodyBodyAccJerkMagMean          
[44] fBodyBodyAccJerkMagMeanFreq      
[45] fBodyBodyGyroMagMean             
[46] fBodyBodyGyroMagMeanFreq         
[47] fBodyBodyGyroJerkMagMean         
[48] fBodyBodyGyroJerkMagMeanFreq     
[49] angletBodyAccMeanGravity         
[50] angletBodyAccJerkMeanGravityMean 
[51] angletBodyGyroMeanGravityMean    
[52] angletBodyGyroJerkMeanGravityMean
[53] angleXGravityMean                
[54] angleYGravityMean                
[55] angleZGravityMean                
[56] tBodyAccStdX                     
[57] tBodyAccStdY                     
[58] tBodyAccStdZ                     
[59] tGravityAccStdX                  
[60] tGravityAccStdY                  
[61] tGravityAccStdZ                  
[62] tBodyAccJerkStdX                 
[63] tBodyAccJerkStdY                 
[64] tBodyAccJerkStdZ                 
[65] tBodyGyroStdX                    
[66] tBodyGyroStdY                    
[67] tBodyGyroStdZ                    
[68] tBodyGyroJerkStdX                
[69] tBodyGyroJerkStdY                
[70] tBodyGyroJerkStdZ                
[71] tBodyAccMagStd                   
[72] tGravityAccMagStd                
[73] tBodyAccJerkMagStd               
[74] tBodyGyroMagStd                  
[75] tBodyGyroJerkMagStd              
[76] fBodyAccStdX                     
[77] fBodyAccStdY                     
[78] fBodyAccStdZ                     
[79] fBodyAccJerkStdX                 
[80] fBodyAccJerkStdY                 
[81] fBodyAccJerkStdZ                 
[82] fBodyGyroStdX                    
[83] fBodyGyroStdY                    
[84] fBodyGyroStdZ                    
[85] fBodyAccMagStd                   
[86] fBodyBodyAccJerkMagStd           
[87] fBodyBodyGyroMagStd              
[88] fBodyBodyGyroJerkMagStd