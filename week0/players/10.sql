--Write SQL query to answer a question of your choice. This query should:
    --Make use of AS to rename a column
    --Involve at least condition, using WHERE
    --Sort by at least one column using ORDER BY
-- Those missing weight and height data
SELECT "first_name" AS "First Name", "last_name" AS "Last Name" FROM "players"
WHERE "height" IS NULL AND "weight" IS NULL
ORDER BY "first_name" ASC, "last_name" ASC;

