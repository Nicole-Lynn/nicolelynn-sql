--Write a SQL query to find the 50 players paid the least in 2001.
    --Sort players by salary, lowest to highest.
    --If two players have the same salary, sort alphabetically by first name and then by last name.
    --If two players have the same first and last name, sort by player ID.
    --Your query should return 3 columns, one for players’ first names, one for their last names, and one for their salaries.

SELECT "players"."first_name", "players"."last_name", "salaries"."salary" FROM "players"
JOIN "salaries" ON "salaries"."player_id" = "players"."id"
WHERE "salaries"."year" = 2001
ORDER BY "salaries"."salary" ASC, "players"."first_name" ASC, "players"."last_name" ASC, "players"."id"
LIMIT 50;
