-- In this SQL file, write (and comment!) the typical SQL queries users will run on your database

-- Insert values into tables
INSERT INTO "movies"("movie_title", "date_released", "original_language")
VALUES
('Inside Out 2', '2024-06-11', 'en'),
('Kingdom of the Planet of the Apes', '2024-05-08', 'en'),
('Inside Out', '2015-06-17', 'en'),
('Despicable Me 4', '2024-06-20', 'en'),
('Bad Boys: Ride or Die', '2024-06-05', 'en'),
('Godzilla x Kong: The New Empire', '2024-03-27', 'en'),
('The Garfield Movie', '2024-04-30', 'en'),
('Furiosa: A Mad Max Saga', '2024-05-22', 'en'),
('Monkey Man', '2024-04-03', 'en'),
('Beverly Hills Cop: Axel F', '2024-06-20', 'en')
;

INSERT INTO "actors"("first_name", "last_name", "gender")
VALUES
('Amy', 'Poehler', 'F'),
('Maya', 'Hawke', 'F'),
('Kensington', 'Tallman', 'F'),
('Lewis', 'Black', 'M'),
('Phyllis', 'Smith', 'F'),
('Will', 'Smith', 'M'),
('Martin', 'Lawrence', 'M'),
('Vanessa', 'Hudgens', 'F'),
('Paola', 'Nuñez', 'F'),
('Jacob', 'Scipio', 'M')
;

INSERT INTO "genres"("genre_name")
VALUES
('Animation'),
('Comedy'),
('Action'),
('Adventure'),
('Crime'),
('Drama'),
('Family'),
('Science Fiction'),
('Thriller')
;

INSERT INTO "ratings"("movie_id", "avg_rating", "rating_count")
VALUES
((SELECT "id" FROM "movies" WHERE "movie_title" = 'Despicable Me 4'), 7.541, 270),
((SELECT "id" FROM "movies" WHERE "movie_title" = 'Inside Out 2'), 7.924, 433),
((SELECT "id" FROM "movies" WHERE "movie_title" = 'The Garfield Movie'), 7.203, 421),
((SELECT "id" FROM "movies" WHERE "movie_title" = 'Inside Out'), 7.916, 20713),
((SELECT "id" FROM "movies" WHERE "movie_title" = 'Kingdom of the Planet of the Apes'), 6.877, 1151),
((SELECT "id" FROM "movies" WHERE "movie_title" = 'Furiosa: A Mad Max Saga'), 7.651, 2127),
((SELECT "id" FROM "movies" WHERE "movie_title" = 'Godzilla x Kong: The New Empire'), 7.225, 2848),
((SELECT "id" FROM "movies" WHERE "movie_title" = 'Bad Boys: Ride or Die'), 7.2, 364),
((SELECT "id" FROM "movies" WHERE "movie_title" = 'Monkey Man'), 7.075, 590),
((SELECT "id" FROM "movies" WHERE "movie_title" = 'Beverly Hills Cop: Axel F'), 6.914, 558)
;

INSERT INTO "movie_cast"("movie_id", "actor_id", "role")
VALUES
((SELECT "id" FROM "movies" WHERE "movie_title" = 'Inside Out 2'),
(SELECT "id" FROM "actors" WHERE "first_name" = 'Amy' AND "last_name" = 'Poehler'), 'Joy (voice)'),
((SELECT "id" FROM "movies" WHERE "movie_title" = 'Inside Out 2'),
(SELECT "id" FROM "actors" WHERE "first_name" = 'Lewis' AND "last_name" = 'Black'), 'Anger (voice)'),
((SELECT "id" FROM "movies" WHERE "movie_title" = 'Inside Out 2'),
(SELECT "id" FROM "actors" WHERE "first_name" = 'Maya' AND "last_name" = 'Hawke'), 'Anxiety (voice)'),
((SELECT "id" FROM "movies" WHERE "movie_title" = 'Inside Out 2'),
(SELECT "id" FROM "actors" WHERE "first_name" = 'Kensington' AND "last_name" = 'Tallman'), 'Riley (voice)'),
((SELECT "id" FROM "movies" WHERE "movie_title" = 'Inside Out 2'),
(SELECT "id" FROM "actors" WHERE "first_name" = 'Phyllis' AND "last_name" = 'Smith'), 'Sadness (voice)'),
((SELECT "id" FROM "movies" WHERE "movie_title" = 'Bad Boys: Ride or Die'),
(SELECT "id" FROM "actors" WHERE "first_name" = 'Will' AND "last_name" = 'Smith'), 'Mike Lowrey'),
((SELECT "id" FROM "movies" WHERE "movie_title" = 'Bad Boys: Ride or Die'),
(SELECT "id" FROM "actors" WHERE "first_name" = 'Martin' AND "last_name" = 'Lawrence'), 'Marcus Burnett'),
((SELECT "id" FROM "movies" WHERE "movie_title" = 'Bad Boys: Ride or Die'),
(SELECT "id" FROM "actors" WHERE "first_name" = 'Vanessa' AND "last_name" = 'Hudgens'), 'Kelly'),
((SELECT "id" FROM "movies" WHERE "movie_title" = 'Bad Boys: Ride or Die'),
(SELECT "id" FROM "actors" WHERE "first_name" = 'Paola' AND "last_name" = 'Nuñez'), 'Rita'),
((SELECT "id" FROM "movies" WHERE "movie_title" = 'Inside Out'),
(SELECT "id" FROM "actors" WHERE "first_name" = 'Amy' AND "last_name" = 'Poehler'), 'Joy (voice)'),
((SELECT "id" FROM "movies" WHERE "movie_title" = 'Inside Out'),
(SELECT "id" FROM "actors" WHERE "first_name" = 'Lewis' AND "last_name" = 'Black'), 'Anger (voice)'),
((SELECT "id" FROM "movies" WHERE "movie_title" = 'Bad Boys: Ride or Die'),
(SELECT "id" FROM "actors" WHERE "first_name" = 'Jacob' AND "last_name" = 'Scipio'), 'Armando Aretas')
;


INSERT INTO "movie_genre"("movie_id", "genre_id")
VALUES
((SELECT "id" FROM "movies" WHERE "movie_title" = 'Inside Out 2'), (SELECT "id" FROM "genres" WHERE "genre_name" = 'Animation')),
((SELECT "id" FROM "movies" WHERE "movie_title" = 'Inside Out 2'), (SELECT "id" FROM "genres" WHERE "genre_name" = 'Family')),
((SELECT "id" FROM "movies" WHERE "movie_title" = 'Inside Out 2'), (SELECT "id" FROM "genres" WHERE "genre_name" = 'Drama')),
((SELECT "id" FROM "movies" WHERE "movie_title" = 'Inside Out 2'), (SELECT "id" FROM "genres" WHERE "genre_name" = 'Adventure')),
((SELECT "id" FROM "movies" WHERE "movie_title" = 'Inside Out 2'), (SELECT "id" FROM "genres" WHERE "genre_name" = 'Comedy')),
((SELECT "id" FROM "movies" WHERE "movie_title" = 'Despicable Me 4'), (SELECT "id" FROM "genres" WHERE "genre_name" = 'Action')),
((SELECT "id" FROM "movies" WHERE "movie_title" = 'Despicable Me 4'), (SELECT "id" FROM "genres" WHERE "genre_name" = 'Animation')),
((SELECT "id" FROM "movies" WHERE "movie_title" = 'Despicable Me 4'), (SELECT "id" FROM "genres" WHERE "genre_name" = 'Comedy')),
((SELECT "id" FROM "movies" WHERE "movie_title" = 'Despicable Me 4'), (SELECT "id" FROM "genres" WHERE "genre_name" = 'Family'))
;



--QUERIES
-- Start by viewing all available movies
SELECT "movie_title" FROM "movies";

-- Find names of all actors that were in a specific movie given the movie title
SELECT "first_name", "last_name" FROM "actors" WHERE "id" IN (
    SELECT "actor_id" FROM "movie_cast" WHERE "movie_id" = (
        SELECT "id" FROM "movies" WHERE "movie_title" = 'Bad Boys: Ride or Die'
    )
)
;

--Find the movies that a certain actor was in given their first and last names
SELECT "movie_title" FROM "movies" WHERE "id" IN (
    SELECT "movie_id" FROM "movie_cast" WHERE "actor_id" = (
        SELECT "id" FROM "actors" WHERE "first_name" = 'Amy' AND "last_name" = 'Poehler'
    )
)
;

-- Find all movies in a certain genre in this query, Animation
SELECT * FROM "movies" WHERE "id" IN (
    SELECT "movie_id" FROM "movie_genre" WHERE "genre_id" = (
        SELECT "id" FROM "genres" WHERE "genre_name" = 'Animation'
    )
)
;

-- Find genres in a movie given the movie title
SELECT * FROM "genres" WHERE "id" IN (
    SELECT "genre_id" FROM "movie_genre" WHERE "movie_id" = (
        SELECT "id" FROM "movies" WHERE "movie_title" = 'Inside Out 2'
    )
)
;

-- Find the 5 top rated movies from the highest to lowest and if more than one movies have the same average rating,
-- order alphabetically
SELECT "movie_title", "avg_rating" FROM "movies"
JOIN "ratings" ON "ratings"."movie_id" = "movies"."id"
ORDER BY "avg_rating" DESC, "movie_title" ASC
LIMIT 5;



