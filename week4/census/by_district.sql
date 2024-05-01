-- Create a view named by_district containing the sums for each numeric column in census, grouped by district.
    --Ensure the view contains each of the following columns: district(name of the district),
        -- families, households, population, male, female, which are the total numbers in each district.


--DROP VIEW IF EXISTS "by_district";

CREATE VIEW "by_district" AS
SELECT "district", SUM("families") AS "families", SUM("households") AS "households", SUM("population") AS "population",
SUM("male") AS "male", SUM("female") AS "female"
FROM "census"
GROUP BY "district";
