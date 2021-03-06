# Summarising activity data

Data are summarised from the dataset: Human Activity Recognition Using Smartphones Dataset - Version 1.0


## Tidy data summary 
For each recorded feature means and standard deviations were provided. For each of these means were then calculated for each subject and activity. Resulting in the following variables:

### Subject number (subject) and the activity name (Active_name)
1. subject
2. Activ_name

### Measures variables. Corresspond to the original variables, but with means extracted for each activity by subject.
3. tBodyAcc_mean_X
4. tBodyAcc_mean_Y
5. tBodyAcc_mean_Z
6. tBodyAcc_std_X
7. tBodyAcc_std_Y
8. tBodyAcc_std_Z
9. tGravityAcc_mean_X
10. tGravityAcc_mean_Y
11. tGravityAcc_mean_Z
12. tGravityAcc_std_X
13. tGravityAcc_std_Y
14. tGravityAcc_std_Z
15. tBodyAccJerk_mean_X
16. tBodyAccJerk_mean_Y
17. tBodyAccJerk_mean_Z
18. tBodyAccJerk_std_X
19. tBodyAccJerk_std_Y
20. tBodyAccJerk_std_Z
21. tBodyGyro_mean_X
22. tBodyGyro_mean_Y
23. tBodyGyro_mean_Z
24. tBodyGyro_std_X
25. tBodyGyro_std_Y
26. tBodyGyro_std_Z
27. tBodyGyroJerk_mean_X
28. tBodyGyroJerk_mean_Y
29. tBodyGyroJerk_mean_Z
30. tBodyGyroJerk_std_X
31. tBodyGyroJerk_std_Y
32. tBodyGyroJerk_std_Z
33. tBodyAccMag_mean
34. tBodyAccMag_std
35. tGravityAccMag_mean
36. tGravityAccMag_std
37. tBodyAccJerkMag_mean
38. tBodyAccJerkMag_std
39. tBodyGyroMag_mean
40. tBodyGyroMag_std
41. tBodyGyroJerkMag_mean
42. tBodyGyroJerkMag_std
43. fBodyAcc_mean_X
44. fBodyAcc_mean_Y
45. fBodyAcc_mean_Z
46. fBodyAcc_std_X
47. fBodyAcc_std_Y
48. fBodyAcc_std_Z
49. fBodyAcc_meanFreq_X
50. fBodyAcc_meanFreq_Y
51. fBodyAcc_meanFreq_Z
52. fBodyAccJerk_mean_X
53. fBodyAccJerk_mean_Y
54. fBodyAccJerk_mean_Z
55. fBodyAccJerk_std_X
56. fBodyAccJerk_std_Y
57. fBodyAccJerk_std_Z
58. fBodyAccJerk_meanFreq_X
59. fBodyAccJerk_meanFreq_Y
60. fBodyAccJerk_meanFreq_Z
61. fBodyGyro_mean_X
62. fBodyGyro_mean_Y
63. fBodyGyro_mean_Z
64. fBodyGyro_std_X
65. fBodyGyro_std_Y
66. fBodyGyro_std_Z
67. fBodyGyro_meanFreq_X
68. fBodyGyro_meanFreq_Y
69. fBodyGyro_meanFreq_Z
70. fBodyAccMag_mean
71. fBodyAccMag_std
72. fBodyAccMag_meanFreq
73. fBodyBodyAccJerkMag_mean
74. fBodyBodyAccJerkMag_std
75. fBodyBodyAccJerkMag_meanFreq
76. fBodyBodyGyroMag_mean
77. fBodyBodyGyroMag_std
78. fBodyBodyGyroMag_meanFreq
79. fBodyBodyGyroJerkMag_mean
80. fBodyBodyGyroJerkMag_std
81. fBodyBodyGyroJerkMag_meanFreq


# Running the script
## Run run_analysis.R
The script is fully self-contained, including data download, unzipping, and then the data processing. Simply execute the full script. At the end of this there will the tidy data file 'tidy_data.txt' located in the 'data' directory of your working directory.
