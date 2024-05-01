-- Write a SQL statement to create a view named frequently_reviewed.
    -- This view should contain the 100 most frequently reviewed listings, sorted from most- to least-frequently reviewed.
        -- Ensure the view contains the following columns: id, property_type, host_name, from the listings table and
                                                        -- reviews, which is the number of reviews the listing has received.
            -- If any listings have the same no. of reviews, sort by property_type ASC, then by host_name ASC.

CREATE VIEW "frequently_reviewed" AS
SELECT "listings"."id", "property_type", "host_name", COUNT("reviews"."comments") AS "reviews"  FROM "listings"
JOIN "reviews" ON "reviews"."listing_id" = "listings"."id"
GROUP BY "reviews"."listing_id"
ORDER BY "reviews" DESC, "property_type" ASC, "host_name" ASC
LIMIT 100;
