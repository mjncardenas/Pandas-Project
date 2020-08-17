# Flight Delays

## Abstract

## Discussion

#### Preliminary Data Processing

Flight data from 2009 was selected out of the Kaggle dataset due to the sheer size of data in each CSV file. Then the team seclected a single airline by selecting the callsign, 'OO', SkyWest Airlines and dropping the rest of the data. A NaN check was conducted and all NaNs were dropped. The data then needed to be transformed before continuing. Flight data required to be changed to the timestamp, then converted to a weekday, and then the weekday name. Delay status required to be changed to an integer type for machine learning. Then dataframes were created for each table to load into the database. These four tables are flight data, airport, flight status, and days of the week. The cleaned data was then uploaded to the PostgreSQL database and downloaded into the machine learning notebook using SQLalchemy.

#### Machine Learning

The model's target is 'flight status' and the rest of the data remained as features. Dummy variables were assigned to the data and then split into train and test sets, using the default ratio. The machine learning model used in this project is a random forest model to avoid overfitting, the ability to rank significance of input variables, and beacuse it can run efficiently with large data sets. The downside to using this model is that it is a blackbox model.



## Conclusion

##### Communication Protocol
We will use zoom at least 2 times a week to discuss what we have accomplished. We will use slack and email to talk to each other on a daily basis or when we have a question For emergencies, we have each other’s cell phone numbers.
​
Presentation
Topic: Can we predict which airlines will be most likely delayed
​
1)	What does your group hope to achieve?
•	We would like to predict delays time for flights
•	We are planning to use the datasets to identify which airlines have the most delays. 
•	We also would like to identify what days and months have the most delays. 
•	We would also like to predict delays based on several features
​
2) Why did you select this topic?
•	We like to travel and improve our travel experience
​
2)	Description of their source of data
•	We have found the datasets in Kaggle
​
4) Questions they hope to answer with the data
•	Which airlines have the least/most delays?
•	Are most of the delays correlated with the weather?
•	Which days/months have the most delays?
•	Does departure and destination affect delays?
•	What are/mode causes of the delays?
​
​
5) Segment 1:
•	Upload csv in Jupyter
•	Merge Csv in Jupyter
•	Clean up data in Jupyter
•	Connect the database to Jupyter notebook
•	Move clean data to Postgres database using Pyspark
•	Use machine learning model
•	We will be using flight date, carrier, destination,  origin and destination to describe the 
arrival delay
•	Use Plotlib:
•	For visualization to answer which airlines have the least/most delays, and which months have the most delays 
•	To compare airlines and their air-time and elapsed time
•	To find taxi-in and taxi-out delays in each airport
•	Our machine learning model will answer the question based on what origin airline and 
destination to predict the arrival delay using carrier, flight date, wheels on and off.
•	Our machine learning model will also predict the delays of the flights
•	Our machine learning model will answer the question which airports have the longest time do airplanes have to wait before letting passengers out
​
• 