--Write a SQL query to find the 10 least expensive players per hit in 2001.
    --Return a table with 3 columns: players’ first names,  last names, and one called “dollars per hit”.
    --Calculate the “dollars per hit” column by dividing a player’s 2001 salary by the number of hits they made in 2001.
    --Dividing a salary by 0 hits will result in a NULL value. Avoid the issue by filtering out players with 0 hits.
    --Sort the table by the “dollars per hit” column, least-most expensive.
        --If 2 players have the same “dollars per hit”, order by first name, then last name,alphabetically.
    --As in 10.sql, ensure the salary’s year and the performance’s year match.
    --Assume, for simplicity, that a player will have 1 salary and 1 performance in 2001.

SELECT "players"."first_name", "players"."last_name", ("salaries"."salary" / "performances"."H") AS "dollars per hit"
FROM "players"
JOIN "salaries" ON "salaries"."player_id" = "players"."id"
JOIN "performances" ON "performances"."player_id" = "players"."id" AND "performances"."year" = "salaries"."year"
WHERE "performances"."H" > 0 AND "salaries"."year" = 2001 AND "performances"."year" = 2001
ORDER BY "dollars per hit" ASC, "players"."first_name" ASC, "players"."last_name" ASC
LIMIT 10;


