# Pandas-Project
Flight Delays
##Abstract

The team project's goal is to create a supervised machine learning model able to accurately predict which flights will be delayed based on flight number, origin, destination, and day of the week. The team decided on the topic of flight delays because we like to travel and we want to improve our travel experience. The project uses a dataset, created by Yuanyu 'Wendy' Mu on Kaggle, covering flight delays from 2009 to 2018 [1]. The orginal data source is from the United States Department of Transportaton [2].

##Discussion
###Preliminary Data Processing

Flight data from 2009 was selected out of the Kaggle dataset due to the sheer size of data in each CSV file. Then the team seclected a single airline by selecting the callsign, 'OO', SkyWest Airlines and dropping the rest of the data. A NaN check was conducted and all NaNs were dropped. The data then needed to be transformed before continuing. Flight data required to be changed to the timestamp, then converted to a weekday, and then the weekday name. Delay status required to be changed to an integer type for machine learning. Then dataframes were created for each table to load into the database. These four tables are flight data, airport, flight status, and days of the week. The cleaned data was then uploaded to the PostgreSQL database and downloaded into the machine learning notebook using SQLalchemy.
Machine Learning Model

The model's target is 'flight status' and the rest of the data remained as features. Dummy variables were assigned to the data and then split into train and test sets, using the default ratio. The machine learning model used in this project is a random forest model to avoid overfitting, the ability to rank significance of input variables, and beacuse it can run efficiently with large data sets. The downside to using this model is the user cannot determine how the random forest model arrived to its answer.

##Communication Protocol

1)	We will mee through zoom at least 2 times a week to discuss what we have accomplished
2)	We will use slack and email to talk to each other on a daily basis or when we have a question.
3)	For emergencies, we have each other’s cell phone numbers. We will call or text one another if we need to contact one another right awat

## Presentation
Topic: Can we predict which airports will be most likely delayed and what days/times are they most delayed?

1)	What does your group hope to achieve?
•	We would like to predict delays time for flights 
•   We are planning to use the datasets to identify which airports have the most delays. 
•   We also would like to identify what days and months have the most delays. 
•   We would like to identify which day of the week are airports the busiest
•   We would like to identify if delays occur more in the west coast of the US or east coast of the US.

2) Why did you select this topic?
•	We like to travel and improve our travel experience

2)	Description of their source of data
•	We have found the datasets in Kaggle

4) Questions they hope to answer with the data
•	Which destinations cause the least and most delays for Southwest Airlines?
        Flights from Denver to Aspen has the most delays
•	What are the airports with the most delays?
        Airports with the most delay is Salt Lake City
•	Which day of the week has the most delays?
        Fridays has the most delays, followed by Monday


5) Project Outline

    Upload data CSV file into a Jupyter Notebook for cleaning
    Send raw data to Tableu for dashboard creation
    Clean data using Pandas
    Create dataframes to send to Postgres database
    Crete sqlalchemy connection with database
    Write dataframes to database
    Create new Jupyter Notebook for machine learning model
    Upload clean data from database
    Create machine learning model
    Execute model and create confusion matrix

References

[1] https://www.kaggle.com/yuanyuwendymu/airline-delay-and-cancellation-data-2009-2018?select=2011.csv

[2] https://www.transtats.bts.gov/DL_SelectFields.asp?Table_ID=236&DB_Short_Name=On-Time

[3] http://www.stat.tamu.edu/~hart/652/collinear.pdf

[4] https://towardsdatascience.com/accuracy-precision-recall-or-f1-331fb37c5cb9


6) Google Slides   
https://docs.google.com/presentation/d/1OwAqNvC6R_ztFjqak5jTbcJXZBwkI31_YG8IKfRAUPQ/edit?usp=sharing

https://docs.google.com/presentation/d/1TuF1_l5AwxgvbOCYwFYlXY_Ghcyn62s73fqBKCvWS-M/edit?usp=sharing