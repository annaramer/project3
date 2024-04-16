-- Create the "housing" table
CREATE TABLE housing (
    city VARCHAR(220) NOT NULL,
    state VARCHAR(2) NOT NULL,
    year INT NOT NULL,
    price INT NOT NULL,
    PRIMARY KEY (city, state, year) -- Composite primary key
);

-- Create the "population" table
CREATE TABLE population (
    city VARCHAR(220) NOT NULL,
    state VARCHAR(2) NOT NULL,
    population_2022 INT NOT NULL,
    PRIMARY KEY (city, state) -- Composite primary key
);

-- Add foreign key constraints to enforce referential integrity
ADD CONSTRAINT fk_housing_population
FOREIGN KEY (city, state)
REFERENCES population (city, state);


SELECT * FROM housing;
SELECT * FROM population;