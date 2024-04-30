--Write a SQL query to find public school districts with above-average per-pupil expenditures and
-- an above-average percentage of teachers rated “exemplary”.
    --Return districts’ names, their per-pupil expenditures and percentage of teachers rated exemplary.
        --Sort first by %-age of teachers rated exemplary (high to low), then by per-pupil expenditure (high to low).
SELECT "districts"."name", "expenditures"."per_pupil_expenditure", "staff_evaluations"."exemplary" FROM "districts"
JOIN "expenditures" ON "expenditures"."district_id" = "districts"."id"
JOIN "staff_evaluations" ON "staff_evaluations"."district_id" = "districts"."id"
WHERE "districts"."type" = 'Public School District'
AND "expenditures"."per_pupil_expenditure" > (
    SELECT AVG("per_pupil_expenditure") FROM "expenditures"
)
AND "staff_evaluations"."exemplary" > (
    SELECT AVG("exemplary") FROM "staff_evaluations"
)
ORDER BY "exemplary" DESC, "per_pupil_expenditure" DESC;
