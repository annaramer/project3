-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/XBqyQD
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "housing" (
    "city" varchar(220)   NOT NULL,
    "state" varchar(2)   NOT NULL,
    "2014_avg" Int   NOT NULL,
    "2015_avg" Int   NOT NULL,
    "2016_avg" Int   NOT NULL,
    "2017_avg" Int   NOT NULL,
    "2018_avg" Int   NOT NULL,
    "2019_avg" Int   NOT NULL,
    "2020_avg" Int   NOT NULL,
    "2021_avg" Int   NOT NULL,
    "2022_avg" Int   NOT NULL,
    "2023_avg" Int   NOT NULL,
    "2024_avg" Int   NOT NULL
);

CREATE TABLE "population" (
    "city" varchar(220)   NOT NULL,
    "state" varchar(2)   NOT NULL,
    "2020_yr" float   NOT NULL,
    "2021_yr" float   NOT NULL,
    "2022_yr" float   NOT NULL
);

