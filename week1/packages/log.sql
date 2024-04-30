
-- *** The Lost Letter ***
--Anneke's address id from addresses table
SELECT "id" FROM "addresses" WHERE "address" = '900 Somerville Avenue';

--Find the id of the package, the congratulatory letter, that came from Anneke's address
SELECT * FROM "packages" WHERE "from_address_id" = (
    SELECT "id" FROM "addresses" WHERE "address" = '900 Somerville Avenue'
);

--From scans, find the address id of where the package was dropped off
SELECT * FROM "scans" WHERE "action" = 'Drop' AND "package_id" = (
    SELECT "id" FROM "packages" WHERE "from_address_id" = (
        SELECT "id" FROM "addresses" WHERE "address" = '900 Somerville Avenue'
)
);

--Finally, get the address where the package was drelivered and find the location using the address id
SELECT * FROM "addresses" WHERE "id" = (
    SELECT "address_id" FROM "scans" WHERE "action" = 'Drop' AND "package_id" = (
        SELECT "id" FROM "packages" WHERE "from_address_id" = (
            SELECT "id" FROM "addresses" WHERE "address" = '900 Somerville Avenue'
))
);



-- *** The Devious Delivery ***
--Check from packages table for packages without a from address
SELECT * FROM "packages" WHERE "from_address_id" IS NULL;

--Check for all the information on the package and find the address where the package was dropped off
SELECT * FROM "scans" WHERE "package_id" = (
    SELECT "id" FROM "packages" WHERE "from_address_id" IS NULL
);

--From addresses table, look up the address where the package was delivered
SELECT * FROM "addresses" WHERE "id" = (
    SELECT "address_id" FROM "scans" WHERE "action" = 'Drop' AND "package_id" = (
        SELECT "id" FROM "packages" WHERE "from_address_id" IS NULL
   )
);



-- *** The Forgotten Gift ***
--Check for the addresses of the grandmother
SELECT * FROM "addresses" WHERE "address" = '109 Tileston Street';

--From packages, using grandmother's address as the from address find the information on the package she sent
SELECT * FROM "packages" WHERE "from_address_id" = (
    SELECT "id" FROM "addresses" WHERE "address" = '109 Tileston Street'
);

--Get more information on the address
SELECT "driver_id" FROM "scans" WHERE "package_id" = (
    SELECT "id" FROM "packages"
    WHERE "from_address_id" = (
        SELECT "id" FROM "addresses"
        WHERE "address" = '109 Tileston Street'
))
ORDER BY "timestamp" DESC LIMIT 1;

--Package was dropped and picked up, find the driver who picked it up
SELECT "name" FROM "drivers" WHERE "id" = (
    SELECT "driver_id" FROM "scans" WHERE "package_id" = (
    SELECT "id" FROM "packages"
    WHERE "from_address_id" = (
        SELECT "id" FROM "addresses"
        WHERE "address" = '109 Tileston Street'
))
ORDER BY "timestamp" DESC LIMIT 1
);
