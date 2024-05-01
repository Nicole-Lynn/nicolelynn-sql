-- Find when the message with ID 151 expires. You may use the message’s ID directly in your query.
    --Ensure your query uses the index automatically created on the primary key column of the messages table.

SELECT "expires_timestamp" FROM "messages" WHERE "id" = 151;
