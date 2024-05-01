--Write a SQL statement to create a view named one_bedrooms. This view should contain all listings that have exactly one bedroom.
    -- The view contains the following columns: id, property_type, host_name and accommodates, all from the listings table.

CREATE VIEW "one_bedrooms" AS
SELECT "id", "property_type", "host_name", "accommodates" FROM "listings" WHERE "bedrooms" = 1;
