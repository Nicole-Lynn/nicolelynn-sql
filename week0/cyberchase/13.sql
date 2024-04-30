--write a SQL query to explore a question of your choice.
--This query should: Involve at least one condition, using WHERE with AND or OR

--Write a query to list the seasons, titles and air dates of the first episodes of all seasons
SELECT "season","title", "air_date" FROM "episodes" WHERE "episode_in_season" = 1;
