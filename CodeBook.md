# The Code Book

The data used for this project is called Human Activity Recognition Using Smartphones Data Set. It can be retrived from the link below:
    https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
A detailed description of the data can be read here:
    http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
    
The variables included in the dataset are the following:
    subject
    activity
    tbodyaccmeanx
    tbodyaccmeany
    tbodyaccmeanz
    tbodyaccstdx
    tbodyaccstdy
    tbodyaccstdz
    tgravityaccmeanx
    tgravityaccmeany
    tgravityaccmeanz
    tgravityaccstdx
    tgravityaccstdy
    tgravityaccstdz
    tbodyaccjerkmeanx
    tbodyaccjerkmeany
    tbodyaccjerkmeanz
    tbodyaccjerkstdx
    tbodyaccjerkstdy
    tbodyaccjerkstdz
    tbodygyromeanx
    tbodygyromeany
    tbodygyromeanz
    tbodygyrostdx
    tbodygyrostdy
    tbodygyrostdz
    tbodygyrojerkmeanx
    tbodygyrojerkmeany
    tbodygyrojerkmeanz
    tbodygyrojerkstdx
    tbodygyrojerkstdy
    tbodygyrojerkstdz
    tbodyaccmagmean
    tbodyaccmagstd
    tgravityaccmagmean
    tgravityaccmagstd
    tbodyaccjerkmagmean
    tbodyaccjerkmagstd
    tbodygyromagmean
    tbodygyromagstd
    tbodygyrojerkmagmean
    tbodygyrojerkmagstd
    fbodyaccmeanx
    fbodyaccmeany
    fbodyaccmeanz
    fbodyaccstdx
    fbodyaccstdy
    fbodyaccstdz
    fbodyaccmeanfreqx
    fbodyaccmeanfreqy
    fbodyaccmeanfreqz
    fbodyaccjerkmeanx
    fbodyaccjerkmeany
    fbodyaccjerkmeanz
    fbodyaccjerkstdx
    fbodyaccjerkstdy
    fbodyaccjerkstdz
    fbodyaccjerkmeanfreqx
    fbodyaccjerkmeanfreqy
    fbodyaccjerkmeanfreqz
    fbodygyromeanx
    fbodygyromeany
    fbodygyromeanz
    fbodygyrostdx
    fbodygyrostdy
    fbodygyrostdz
    fbodygyromeanfreqx
    fbodygyromeanfreqy
    fbodygyromeanfreqz
    fbodyaccmagmean
    fbodyaccmagstd
    fbodyaccmagmeanfreq
    fbodybodyaccjerkmagmean
    fbodybodyaccjerkmagstd
    fbodybodyaccjerkmagmeanfreq
    fbodybodygyromagmean
    fbodybodygyromagstd
    fbodybodygyromagmeanfreq
    fbodybodygyrojerkmagmean
    fbodybodygyrojerkmagstd
    fbodybodygyrojerkmagmeanfreq
    
Final outputs of the analysis included the following transformations:
    merged_data.txt
        - only measures for mean and standard deviations are retained
        - names were made descriptive
        - column names were transformed to lower case and symbols were removed
    average_data.txt
        - data was aggregated to get the average of each variable for each activity and subject
