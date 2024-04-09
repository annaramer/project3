-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


SET XACT_ABORT ON

BEGIN TRANSACTION QUICKDBD

CREATE TABLE [Housing] (
    [id] int  NOT NULL ,
    [city] varchar(50)  NOT NULL ,
    [state] varchar(2)  NOT NULL ,
    [avg_price] int  NOT NULL ,
    [year] int  NOT NULL ,
    CONSTRAINT [PK_Housing] PRIMARY KEY CLUSTERED (
        [id] ASC
    )
)

CREATE TABLE [Population] (
    [id] int  NOT NULL ,
    [city] varchar(50)  NOT NULL ,
    [state] varchar(2)  NOT NULL ,
    [population] int  NOT NULL ,
    CONSTRAINT [PK_Population] PRIMARY KEY CLUSTERED (
        [id] ASC
    )
)

ALTER TABLE [Population] WITH CHECK ADD CONSTRAINT [FK_Population_city_state] FOREIGN KEY([city], [state])
REFERENCES [Housing] ([city], [state])

ALTER TABLE [Population] CHECK CONSTRAINT [FK_Population_city_state]

COMMIT TRANSACTION QUICKDBD