--Passengers
CREATE TABLE "passengers" (
    "id" INTEGER,
    "first_name" TEXT,
    "last_name" TEXT,
    "age" INTEGER,
    PRIMARY KEY("id")
);

--Airlines
CREATE TABLE "airlines" (
    "id" INTEGER,
    "name" TEXT,
    "concourses" TEXT CHECK("concourses" IN ('A', 'B', 'C', 'D', 'E', 'F', 'T')),
    PRIMARY KEY("id")
);

--Flights
CREATE TABLE "flights" (
    "id" INTEGER,
    "flight_number" INTEGER,
    "airline_id" INTEGER,
    "airport_from_code" TEXT,
    "departure_datetime" NUMERIC,
    "airport_to_code" TEXT,
    "arrival_datetime" NUMERIC,
    PRIMARY KEY("id"),
    FOREIGN KEY("airline_id") REFERENCES "airlines"("id")
);

--Check ins
CREATE TABLE "check_ins" (
    "id" INTEGER,
    "passenger_id" INTEGER,
    "flight_id" INTEGER,
    "datetime" NUMERIC,
    PRIMARY KEY("id"),
    FOREIGN KEY("passenger_id") REFERENCES "passengers"("id"),
    FOREIGN KEY("flight_id") REFERENCES "flights"("id")
);
