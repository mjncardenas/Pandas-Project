-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/I6k20p
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "flight_data" (
    "flight_id" INT   NOT NULL,
    "fl_num" INT   NOT NULL,
    "origin" INT   NOT NULL,
    "dest" INT   NOT NULL,
    "flight_status" VARCHAR   NOT NULL,
    "weekday" VARCHAR   NOT NULL,
    CONSTRAINT "pk_flight_data" PRIMARY KEY (
        "flight_id"
     )
);

CREATE TABLE "airports" (
    "airport" VARCHAR   NOT NULL,
    "airport_id" INT   NOT NULL,
    CONSTRAINT "pk_airports" PRIMARY KEY (
        "airport_id"
     )
);

CREATE TABLE "flight_status" (
    "flight_status" INT   NOT NULL,
    "flight_status_id" INT   NOT NULL,
    CONSTRAINT "pk_flight_status" PRIMARY KEY (
        "flight_status_id"
     )
);

CREATE TABLE "days_of_the_week" (
    "weekday" VARCHAR   NOT NULL,
    "weekday_id" INT   NOT NULL,
    CONSTRAINT "pk_days_of_the_week" PRIMARY KEY (
        "weekday_id"
     )
);

ALTER TABLE "flight_data" ADD CONSTRAINT "fk_flight_data_origin" FOREIGN KEY("origin")
REFERENCES "airports" ("airport_id");

ALTER TABLE "flight_data" ADD CONSTRAINT "fk_flight_data_dest" FOREIGN KEY("dest")
REFERENCES "airports" ("airport_id");

ALTER TABLE "flight_data" ADD CONSTRAINT "fk_flight_data_flight_status" FOREIGN KEY("flight_status")
REFERENCES "flight_status" ("flight_status_id");

ALTER TABLE "flight_data" ADD CONSTRAINT "fk_flight_data_weekday" FOREIGN KEY("weekday")
REFERENCES "days_of_the_week" ("weekday_id");

