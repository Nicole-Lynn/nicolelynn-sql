--Users
CREATE TABLE "users" (
    "id" INTEGER,
    "first_name" TEXT,
    "last_name" TEXT,
    "username" TEXT UNIQUE,
    "password" TEXT,
    PRIMARY KEY("id")
);

--Schools and universities
CREATE TABLE "schools" (
    "id" INTEGER,
    "name" TEXT,
    "type" TEXT,
    "school_location" TEXT,
    "year_founded" INTEGER,
    PRIMARY KEY("id")
);

--Companies
CREATE TABLE "companies" (
    "id" INTEGER,
    "name" TEXT,
    "industry" TEXT,
    "company_location" TEXT,
    PRIMARY KEY("id")
);

--Connections:
    --people
CREATE TABLE "people_connect" (
    "id" INTEGER,
    "user1_id" INTEGER,
    "user2_id" INTEGER,
    PRIMARY KEY("id"),
    FOREIGN KEY("user1_id") REFERENCES "users"("id"),
    FOREIGN KEY("user2_id") REFERENCES "users"("id")
);

    --school
CREATE TABLE "school_connect" (
    "id" INTEGER,
    "user_id" INTEGER,
    "school_id" INTEGER,
    "start_date" TEXT,
    "end_date" TEXT,
    "degree_type" TEXT,
    PRIMARY KEY("id"),
    FOREIGN KEY("user_id") REFERENCES "users"("id"),
    FOREIGN KEY("school_id") REFERENCES "schools"("id")
);

    --company
CREATE TABLE "company_connect" (
    "id" INTEGER,
    "user_id" INTEGER,
    "company_id" INTEGER,
    "start_date" TEXT,
    "end_date" TEXT,
    "title" TEXT,
    PRIMARY KEY("id"),
    FOREIGN KEY("user_id") REFERENCES "users"("id"),
    FOREIGN KEY("company_id") REFERENCES "companies"("id")
);
