# Flight Delays

## Abstract
The team project's goal is to create a supervised machine learning model able to accurately predict which flights will be delayed based on flight number, origin, destination, and day of the week. The team decided on the topic of flight delays because we like to travel and we want to improve our travel experience. The project uses a dataset, created by Yuanyu 'Wendy' Mu on Kaggle, covering flight delays from 2009 to 2018 [[1]](#1). The orginal data source is from the United States Department of Transportaton [[2]](#2).

## Discussion

#### Preliminary Data Processing

Flight data from 2009 was selected out of the Kaggle dataset due to the sheer size of data in each CSV file. Then the team seclected a single airline by selecting the callsign, 'OO', SkyWest Airlines and dropping the rest of the data. A NaN check was conducted and all NaNs were dropped. The data then needed to be transformed before continuing. Flight data required to be changed to the timestamp, then converted to a weekday, and then the weekday name. Delay status required to be changed to an integer type for machine learning. Then dataframes were created for each table to load into the database. These four tables are flight data, airport, flight status, and days of the week. The cleaned data was then uploaded to the PostgreSQL database and downloaded into the machine learning notebook using SQLalchemy.

#### Machine Learning Model

The model's target is 'flight status' and the rest of the data remained as features. Dummy variables were assigned to the data and then split into train and test sets, using the default ratio. The machine learning model used in this project is a random forest model to avoid overfitting, the ability to rank significance of input variables, and beacuse it can run efficiently with large data sets. The downside to using this model is the user cannot determine how the random forest model arrived to its answer.

#### Model Results

###### First Model

The first random forest model had an accuracy of around 60%.

##### Second Model



## Conclusion

ipsum lorem

##### Communication Protocol

* Biweekly zoom meetings
* Communication via Slack or email will occurr daily
* In emergencies: call team member

#### Project Outline

1. Upload data CSV file into a Jupyter Notebook for cleaning
2. Send raw data to Tableu for dashboard creation
3. Clean data using Pandas
4. Create dataframes to send to Postgres database
5. Crete sqlalchemy connection with database
6. Write dataframes to database
7. Create new Jupyter Notebook for machine learning model
8. Upload clean data from database
9. Create machine learning model
10. Execute model and create confusion matrix

References

<a id='1'>[1]</a>
https://www.kaggle.com/yuanyuwendymu/airline-delay-and-cancellation-data-2009-2018?select=2011.csv

<a id='2'>[2]</a>
https://www.transtats.bts.gov/DL_SelectFields.asp?Table_ID=236&DB_Short_Name=On-Time

![Confusion Matrix #1](https://github.com/mjncardenas/Pandas-Project/blob/max/Resources/images/random_forest_first_instance_confusion_matrix.png)

![Sorted Feature Importance #1](https://github.com/mjncardenas/Pandas-Project/blob/max/Resources/images/random_forest_first_instance_sorted_features.png)
