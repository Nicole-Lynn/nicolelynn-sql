--Write a SQL query to find the names of districts that are no longer operational.
    -- Have “(non-op)” at the end of their name
SELECT "name" FROM "districts" WHERE "name" LIKE '%(non-op)%';
