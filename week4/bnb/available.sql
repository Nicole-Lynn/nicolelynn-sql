-- Write a SQL statement to create a view named available. This view should contain all dates that are available at all listings.
    -- Ensure the view contains the following columns: id, property_type, host_name, from the listings table and
                                                    -- date, from availabilities table, the date of the availability.

CREATE VIEW "available" AS
SELECT "listings"."id", "property_type", "host_name", "date" FROM "listings"
JOIN "availabilities" ON "availabilities"."listing_id" = "listings"."id"
WHERE "availabilities"."available" = 'TRUE';
