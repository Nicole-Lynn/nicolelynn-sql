--substr(sentence,  start point character,  length from starting character)

--Drop table and view if they already exist
DROP TABLE IF EXISTS "list_inscribed";
DROP VIEW IF EXISTS "message";


CREATE TABLE "list_inscribed"(
    "sentence_id" INTEGER,
    "start_character" INTEGER,
    "length" INTEGER
);

INSERT INTO "list_inscribed"("sentence_id", "start_character", "length")
VALUES
(14, 98, 4),
(114, 3, 5),
(618, 72, 9),
(630, 7, 3),
(932, 12, 5),
(2230, 50, 7),
(2346, 44, 10),
(3041, 14, 5);


--CREATE THE VIEW NAMED MESSAGE that contains the full message
CREATE VIEW "message" AS
SELECT substr("sentence", "start_character", "length") AS "phrase" FROM "sentences"
JOIN "list_inscribed" ON "list_inscribed"."sentence_id" = "sentences"."id";








