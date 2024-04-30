--Each player’s name, salary for each year they’ve been playing, and their no. of HRs for each year they’ve been playing.
    --All player’s first names, last names, salaries, home runs, year the player was paid that salary and hit those HRs

SELECT "players"."first_name", "players"."last_name", "salaries"."salary", "salaries"."year", "performances"."HR"
FROM "players"
JOIN "salaries" ON "salaries"."player_id" = "players"."id"
JOIN "performances" ON "performances"."player_id" = "players"."id" AND "performances"."year" = "salaries"."year"
ORDER BY "players"."id" ASC, "salaries"."year" DESC, "performances"."HR" DESC, "salaries"."salary" DESC;

