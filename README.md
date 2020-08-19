# Flight Delays


## Abstract
The team project's goal is to create a supervised machine learning model able to accurately predict which flights will be delayed based on flight number, origin, destination, and day of the week. The team decided on the topic of flight delays because we like to travel and we want to improve our travel experience. The project uses a dataset, created by Yuanyu 'Wendy' Mu on Kaggle, covering flight delays from 2009 to 2018 [[1]](#1). The orginal data source is from the United States Department of Transportaton [[2]](#2).

## Discussion

### Preliminary Data Processing

Flight data from 2009 was selected out of the Kaggle dataset due to the sheer size of data in each CSV file. Then the team seclected a single airline by selecting the callsign, 'OO', SkyWest Airlines and dropping the rest of the data. A NaN check was conducted and all NaNs were dropped. The data then needed to be transformed before continuing. Flight data required to be changed to the timestamp, then converted to a weekday, and then the weekday name. Delay status required to be changed to an integer type for machine learning. Then dataframes were created for each table to load into the database. These four tables are flight data, airport, flight status, and days of the week. The cleaned data was then uploaded to the PostgreSQL database and downloaded into the machine learning notebook using SQLalchemy.

### Machine Learning Model

The model's target is 'flight status' and the rest of the data remained as features. Dummy variables were assigned to the data and then split into train and test sets, using the default ratio. The machine learning model used in this project is a random forest model to avoid overfitting, the ability to rank significance of input variables, and beacuse it can run efficiently with large data sets. The downside to using this model is the user cannot determine how the random forest model arrived to its answer.

### Model Results

#### First Model

The first random forest model had an accuracy of around 60% (Figure 1). While this model can answer the team's question, "Which flights will be delayed?," it is a mediocre model. The features used in model one were: flight_id, fl_num, origin, dest, flight_status, and weekday. One error in the model is having flight_id as one of the features. Flight ID does not provide any useful information for the random forest. Another issue is having fl_num, origin, and dest as as features as well. Flight number, origin, and destinaton are collinear because each route is assinged a specific flight number. The issue here is colinearity will confound the model: "Collinearity tends to inflate the variance of at least one estimated regression coefficient,ˆβj.This can cause at least some regression coef-ficients to have the wrong sign [[3]](#3)." The sorted features by importance shows low percentages for each of the flight numbers and weekdays (Figure 2). The team hoped by removing the collinear features, these importance scores could be increased. Another issue with the model is its low F-1 score. In a travel scenario being late or early can cause issues for the traveller. Thus, a balance between precision and recall is required [[4]](#4).

#### Second Model

The second random forest model had an accuracy of around 60% (Figure 3). Unfortunately, this was a minor improvement. The features sued in the moderl were: fl_num, flight_status, and weekday. The output for features sorted by importance barely changed [Figure 4]. 


## Conclusion

ipsum lorem



##### Project Outline

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

##### References

<a id='1'>[1]</a>
https://www.kaggle.com/yuanyuwendymu/airline-delay-and-cancellation-data-2009-2018?select=2011.csv

<a id='2'>[2]</a>
https://www.transtats.bts.gov/DL_SelectFields.asp?Table_ID=236&DB_Short_Name=On-Time

<a id='3'>[3]</a>
http://www.stat.tamu.edu/~hart/652/collinear.pdf

<a id='4'>[4]</a>
https://towardsdatascience.com/accuracy-precision-recall-or-f1-331fb37c5cb9









Figure 1





![Confusion Matrix #1](https://github.com/mjncardenas/Pandas-Project/blob/max/Resources/images/random_forest_first_instance_confusion_matrix.png)







Figure 2





![Sorted Feature Importance #1](https://github.com/mjncardenas/Pandas-Project/blob/max/Resources/images/random_forest_first_instance_sorted_features.png)




Figure 3





![Confusion Matrix #2](https://github.com/mjncardenas/Pandas-Project/blob/max/Resources/images/random_forest_second_instance_confusion_matrix.png)







Figure 4





![Sorted Feature Importance #2](https://github.com/mjncardenas/Pandas-Project/blob/max/Resources/images/random_forest_second_instance_sorted_features.png)












##### Communication Protocol

* Biweekly zoom meetings
* Communication via Slack or email will occurr daily
* In emergencies: call team member