--Write a query that counts the number of episodes released in the last 6 years, from 2018 to 2023, inclusive.
-- You can use BETWEEN with dates, such as BETWEEN '2000-01-01' AND '2000-12-31'.
SELECT COUNT("episode_in_season") FROM "episodes" WHERE "air_date" BETWEEN '2018-01-01' AND '2023-12-31';
