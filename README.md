# Flight Delays


## Abstract

The team project's goal is to create a supervised machine learning model able to accurately predict which flights will be delayed based on flight number, origin, destination, and day of the week. The team decided on the topic of flight delays because we like to travel, and we want to improve our travel experience. Using the raw data with Tableau, questions such as which city or routes had the most delays. The project uses a dataset, created by Yuanyu 'Wendy' Mu on Kaggle, covering flight delays from 2009 to 2018 [[1]](#1). The original data source is from the United States Department of Transportation [[2]](#2).

### Tableau


Questions
1. Which route had the most delays? 
or this part of the dashboard, we will be using Tableau to create graph.
We placed “Flight Status” and “Origin to Destination” in columns.
In rows, we placed the Count (Flight Status). This is continuous
For the filter, we also placed the Flight Status but it is filtered to “Delay.”
Lastly, we placed “Origin to Destination” in colors.
Findings: Flights from Denver to Aspen has the most delays
Image- (https://github.com/mjncardenas/Pandas-Project/blob/michelle/Resources/delayed_routes.png)

2. Which airport had the most delays? Salt Lake International Airport
This map shows which US cities has the most delays
The larger the circle the more the delays.
The spectrum goes from blue to red, where red has the most and the blue the least amount of delays
Tableau was also used to create the map.
For this map, the Destination Longitude and Latitude were placed for columns and rows
We placed flight status in filter, size and color.
Findings: Salt Lake City International Airport has the most delays 

Image- (https://github.com/mjncardenas/Pandas-Project/blob/michelle/Resources/US_cities_delays.png)

3. Which day of the week is the best to fly?
Daily flight status
This graph was created in Tableau
This graph will show the total delay hours per day of the week.
In order to create bar graph, we added “Flight Status” in columns.
We also placed “Flight Status” and “Weekday” in rows.
 Findings: Best day to fly because it has the least amount of delays is Thursday. Worst day to fly is Friday followed by Monday.

Image- (https://github.com/mjncardenas/Pandas-Project/blob/michelle/Resources/Daily_Flight_Status.png)
Which day is best to fly on? Thursday

4. Interactive
Interactive section also created in Tableau
For the interactive part of the dashboard, you will be able to choose the Origin Airport and the Destination Airport
After choosing the two airports, one will see the average of the total flight.
In order to create this, we placed “Origin Airport” and “Destination Airport” in rows.
To create filter, we placed “Flight Status,” “Origin Airport,” and “Destination Airport” in filter. 
This interactive page can be used when you would like to know how likely your flight will be delayed.
Image- (https://github.com/mjncardenas/Pandas-Project/blob/michelle/Resources/interactive.png)




### Preliminary Data Processing

Flight data from 2009 was selected from the Kaggle dataset due to the sheer data size of each CSV file. Then the team selected a single airline by selecting the callsign, 'OO,' SkyWest Airlines, and dropping the rest of the data. A NaN check was conducted, and all NaNs were dropped. The date needed to be transformed to a timestamp before continuing. Then, the date was converted to a weekday number, and then it was converted to the day's name. Delay status needed to be changed to an integer type for machine learning. Then data frames were created for each table to load into the database. These four tables are flight data, airport, flight status, and days of the week. The cleaned data was then uploaded to the PostgreSQL database and downloaded into the machine learning notebook using SQLalchemy.

### Machine Learning Model

The model's target is 'flight status,' and the rest of the data remained as features. Dummy variables were assigned to the data and split into train and test sets using the default ratio. The chosen machine learning model is a random forest model. The random forest was selected to avoid overfitting, its ability to rank the significance of input variables, and efficiency with large data sets. The downside to using this model is the user cannot determine how the random forest model arrived at its answer.

### Model Results

#### First Model

The first random forest model had an accuracy of around 60.81% using 64 n_estimators (Figure 1). The model is mediocre at answering which flights will be delayed. The features used in model one were: flight_id, fl_num, origin, dest, flight_status, and weekday. One error in the model is having flight_id as one of the features. Flight ID does not provide any useful information for the random forest. Another issue is using fl_num, origin, and dest as features as well. Flight number, origin, and destination are collinear because each route is assigned a specific flight number. The issue here is colinearity will confound the model: "Collinearity tends to inflate the variance of at least one estimated regression coefficient,ˆβj. This can cause at least some regression coefficients to have the wrong sign [[3]](#3)." The sorting features by importance show low percentages for each of the flight numbers and weekdays (Figure 2). The team hoped by removing the collinear features; these importance scores could be increased. Another issue with the model is its low F-1 score. In a travel scenario, being late or early can cause problems for the traveler. Thus, a balance between precision and recall is required [[4]](#4).

#### Second Model

The second random forest model had an accuracy of around 60.70% using 100 n_estimators to improve the model's accuracy (Figure 3). It had a similar F-1 score as the first model. The output for features sorted by importance barely changed [Figure 4]. Unfortunately, there was little change in the model's output on its second execution and would not be suitable for field use. One issue that might remain is the discrepancy between the number of delayed, on-time, and early flights [Figure 3]. Due to this issue, both models had low F-1 scores for on-time flights. The second model made a slight improvement in the precision of identifying on-time flights.


## Conclusion

The current random forest model is decent at predicting delayed, on-time, and early flights. Due to the early, on-time, and late flight sample size issue, adaptive or gradient boosting should be used rather than bootstrap aggregation. To further mitigate the smaller sample sizes issue, undersampling or SMOTEENN should be used as well. Further modeling should include weather data and adding the month the flight occurred to understand flight schedules better. The project as a whole can be improved by doing the following: using more years and airline data, using JavaScript to provide better in-depth visual data analysis.


Figure 1





![Confusion Matrix #1](https://github.com/mjncardenas/Pandas-Project/blob/max/Resources/images/random_forest_first_instance_confusion_matrix.png)







Figure 2





![Sorted Feature Importance #1](https://github.com/mjncardenas/Pandas-Project/blob/max/Resources/images/random_forest_first_instance_sorted_features.png)




Figure 3





![Confusion Matrix #2](https://github.com/mjncardenas/Pandas-Project/blob/max/Resources/images/random_forest_second_instance_confusion_matrix.png)







Figure 4


![Sorted Feature Importance #2](https://github.com/mjncardenas/Pandas-Project/blob/max/Resources/images/random_forest_second_instance_sorted_features.png)


##### References

<a id='1'>[1]</a>
https://www.kaggle.com/yuanyuwendymu/airline-delay-and-cancellation-data-2009-2018?select=2011.csv

<a id='2'>[2]</a>
https://www.transtats.bts.gov/DL_SelectFields.asp?Table_ID=236&DB_Short_Name=On-Time

<a id='3'>[3]</a>
http://www.stat.tamu.edu/~hart/652/collinear.pdf

<a id='4'>[4]</a>
https://towardsdatascience.com/accuracy-precision-recall-or-f1-331fb37c5cb9



##### Communication Protocol

* Biweekly zoom meetings
* Communication via Slack or email will occur daily
* In emergencies: call team members

##### Project Outline

1. Upload data CSV file into a Jupyter Notebook for cleaning
2. Send raw data to Tableau for dashboard creation
3. Clean data using Pandas
4. Create data frames to send to Postgres database
5. Crete SQLalchemy connection to database
6. Write data frames to database
7. Create new Jupyter Notebook for a machine learning model
8. Upload clean data from database
9. Create a machine learning model
10. Execute model and create confusion matrix

