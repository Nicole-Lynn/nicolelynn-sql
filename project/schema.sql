-- In this SQL file, write (and comment!) the schema of your database, including the CREATE TABLE, CREATE INDEX, CREATE VIEW,
-- etc. statements that compose it

--Delete tables if exists
DROP TABLE IF EXISTS "movies";
DROP TABLE IF EXISTS "actors";
DROP TABLE IF EXISTS "genres";
DROP TABLE IF EXISTS "ratings";
DROP TABLE IF EXISTS "movie_cast";
DROP TABLE IF EXISTS "movie_genre";

--Delete indexes if exists
DROP INDEX IF EXISTS "search_movie_by_title";
DROP INDEX IF EXISTS "search_actor_name";
DROP INDEX IF EXISTS "ratings_search";
DROP INDEX IF EXISTS "search_movie_actor_id";
DROP INDEX IF EXISTS "search_genre_id_by_movie_id";
DROP INDEX IF EXISTS "search_movie_id_by_genre_id";

VACUUM;


-- Represent movies information
CREATE TABLE "movies"(
    "id" INTEGER,
    "movie_title" TEXT NOT NULL,
    "date_released" NUMERIC,
    "original_language" TEXT NOT NULL,
    PRIMARY KEY("id")
);


-- For all actors information
CREATE TABLE "actors"(
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "gender" TEXT NOT NULL CHECK("gender" IN ('M','F')),
    PRIMARY KEY("id")
);


-- For all genres information
CREATE TABLE "genres"(
    "id" INTEGER,
    "genre_name" TEXT UNIQUE NOT NULL,
    PRIMARY KEY("id")
);


-- Movie ratings for different movies
CREATE TABLE "ratings"(
    "movie_id" INTEGER,
    "avg_rating" NUMERIC,
    "rating_count" INTEGER,
    PRIMARY KEY("movie_id"),
    FOREIGN KEY("movie_id") REFERENCES "movies"("id")
);


--RELATION TABLES
-- Represents information of the actors role in the movie
CREATE TABLE "movie_cast"(
    "id" INTEGER,
    "movie_id" INTEGER,
    "actor_id" INTEGER,
    "role" TEXT NOT NULL,
    PRIMARY KEY("id"),
    FOREIGN KEY("movie_id") REFERENCES "movies"("id"),
    FOREIGN KEY("actor_id") REFERENCES "actors"("id")
);


-- Represents the genres of certain movies
CREATE TABLE "movie_genre"(
    "movie_id" INTEGER,
    "genre_id" INTEGER,
    PRIMARY KEY("movie_id", "genre_id"),
    FOREIGN KEY("movie_id") REFERENCES "movies"("id"),
    FOREIGN KEY("genre_id") REFERENCES "genres"("id")
);


-- Create indexes to speed common searches
CREATE INDEX "search_movie_title" ON "movies"("movie_title");
CREATE INDEX "search_actor_name" ON "actors"("first_name", "last_name");
CREATE INDEX "ratings_search" ON "ratings"("movie_id", "avg_rating");
CREATE INDEX "search_movie_actor_id" ON "movie_cast"("movie_id", "actor_id");
CREATE INDEX "search_genre_id_by_movie_id" ON "movie_genre"("movie_id");
CREATE INDEX "search_movie_id_by_genre_id" ON "movie_genre"("genre_id");
