--Write a SQL query to find players among the 10 least expensive players per hit and
    -- among the 10 least expensive players per RBI in 2001.
--Your query should return a table with 2 columns: players’ first names and last names.
--Calculate a player’s salary per RBI by dividing their 2001 salary by their number of RBIs in 2001.
--Assume, for simplicity, a player will only have one salary and one performance in 2001.
--Order results by player ID, least to greatest (or alphabetically by last name, as both are the same in this case!).
--Keep in mind the lessons you’ve learned in 10.sql and 11.sql!

SELECT "first_name", "last_name" FROM (
    SELECT "first_name", "last_name" FROM (
        SELECT "players"."first_name", "players"."last_name" FROM "players"
        JOIN "salaries" ON "salaries"."player_id" = "players"."id"
        JOIN "performances" ON "performances"."player_id" = "players"."id" AND "performances"."year" = "salaries"."year"
        WHERE "performances"."H" > 0 AND "salaries"."year" = 2001 AND "performances"."year" = 2001
        ORDER BY ("salaries"."salary" / "performances"."H") ASC
        LIMIT 10
    )

    INTERSECT

    SELECT "first_name", "last_name" FROM (
        SELECT "players"."first_name", "players"."last_name"
        FROM "players"
        JOIN "salaries" ON "salaries"."player_id" = "players"."id"
        JOIN "performances" ON "performances"."player_id" = "players"."id" AND "performances"."year" = "salaries"."year"
        WHERE "performances"."RBI" > 0 AND "salaries"."year" = 2001 AND "performances"."year" = 2001
        ORDER BY ("salaries"."salary" / "performances"."RBI") ASC
        LIMIT 10
    )
)
ORDER BY "last_name" ASC;

