--Write a SQL query to find cities with 3 or fewer public schools
    --Return names of the cities and the number of public schools, ordered DESC
        --If two cities have the same number of public schools, order them alphabetically.
SELECT "city", COUNT("type") FROM "schools"
WHERE "type" = 'Public School'
GROUP BY "city"
HAVING COUNT("type") <= 3
ORDER BY COUNT("type") DESC, "city" ASC;
