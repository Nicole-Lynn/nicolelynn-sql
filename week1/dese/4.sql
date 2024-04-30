--Write a SQL query to find the 10 cities with the most public schools.
    --Return names of the cities and the no. of public schools within them, ordered in descending order.
        --If two cities have the same number of public schools, order them alphabetically.
SELECT "city", COUNT("type") FROM "schools"
WHERE "type" = 'Public School'
GROUP BY "city"
ORDER BY COUNT("type") DESC, "city" ASC
LIMIT 10;
