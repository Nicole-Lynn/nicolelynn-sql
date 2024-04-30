--Write a SQL query to school districts with below-average percentage of teachers rated “proficient”.
    --Return districts’ names, along with the district type and percentage of teachers rated proficient.
        --Sort results by percentage of teachers rated proficient (high to low), then the names alphabetically
SELECT "districts"."name", "districts"."type", "staff_evaluations"."proficient" FROM "districts"
JOIN "staff_evaluations" ON "staff_evaluations"."district_id" = "districts"."id"
WHERE "staff_evaluations"."proficient" < (
    SELECT AVG("proficient") FROM "staff_evaluations"
)
ORDER BY "proficient" DESC, "districts"."name" ASC;

