-- Create a view named total that contains the sums for each numeric column in census, across all districts and localities.
        --Ensure the view contains each of the following columns:
            -- families, households, population, male, female, which ares the sums from every locality in Nepal.


--DROP VIEW IF EXISTS "total";

CREATE VIEW "total" AS
SELECT SUM("families") AS "families", SUM("households") AS "households", SUM("population") AS "population",
SUM("male") AS "male", SUM("female") AS "female"
FROM "census";

