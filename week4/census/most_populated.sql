-- Create a view named most_populated that contains, in order from greatest to least, the most populated districts in Nepal.
    --Ensure the view contains each of the following columns: district(name of the district),
        -- families, households, population, male, female, which are the total numbers in each district.


--DROP VIEW IF EXISTS "most_populated";

CREATE VIEW "most_populated" AS
SELECT "district", SUM("families") AS "families", SUM("households") AS "households", SUM("population") AS "population",
SUM("male") AS "male", SUM("female") AS "female"
FROM "census"
GROUP BY "district"
ORDER BY SUM("population") DESC;
