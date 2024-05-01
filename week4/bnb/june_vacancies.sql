-- Write a SQL statement to create a view named june_vacancies.
    -- This view should contain all listings and the number of days in June of 2023 that they remained vacant.
        -- Ensure the view contains the following columns: id, property_type, host_name, from the listings table and
                                    -- days_vacant, which is the number of days in June of 2023, that available is True.

CREATE VIEW "june_vacancies" AS
SELECT "listings"."id", "property_type", "host_name", COUNT("availabilities"."date") AS "days_vacant" FROM "listings"
JOIN "availabilities" ON "availabilities"."listing_id" = "listings"."id"
WHERE ("available" = 'TRUE') AND ("date" BETWEEN '2023-06-01' AND '2023-06-30')
GROUP BY "listing_id";
