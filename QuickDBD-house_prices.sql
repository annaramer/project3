-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/XBqyQD
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "housing" (
    "city" varchar(220)   NOT NULL,
    "state" varchar(2)   NOT NULL,
    "year" INT   NOT NULL,
    "price" INT   NOT NULL
);

CREATE TABLE "population" (
    "city" varchar(220)   NOT NULL,
    "state" varchar(2)   NOT NULL,
    "population_2022" INT   NOT NULL
);

ALTER TABLE "population" ADD CONSTRAINT "fk_population_city_state" FOREIGN KEY("city", "state")
REFERENCES "housing" ("city", "state");

