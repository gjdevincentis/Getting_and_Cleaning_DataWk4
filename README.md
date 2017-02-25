## Getting and Cleaning Data Week 4 Assignment
### Items included
* README.md - which you are currently reading!
* Codebook.md - describes all variables calculated, how data was gathered, and units
* run_analysis.R - a script which will download and unzip a file into the working directory, and create a tidy data file
* tidyData.txt - a tab delimited tidy data set created by the script

### How the script works
1. Script checks the working directory for the zip file, if not there it downloads and unzips
2. Reads the features data into R and filters for mean and std, creates column index for those variables
3. Only reads in the X_test and X_train data which corresponds to those variable names to save time and combines them
4. Reads and combines subject data
5. Reads and combines activity data and labels, then replaces indexes with activty labels
6. Combines all columns in the following order [subject, activity, X data]
7. Melts the new dataset, and dcasts it by taking mean of X data variables
8. Writes the tidyData.txt file in the working directory
