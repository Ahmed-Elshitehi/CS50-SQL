.import --csv meteorites.csv "temp"

UPDATE "temp"
SET "mass" = NULL WHERE "mass" = '';

UPDATE "temp"
SET "year" = NULL WHERE "year" = '';

UPDATE "temp"
SET "lat" = NULL WHERE "lat" = '';

UPDATE "temp"
SET "long" = NULL WHERE "long" = '';

UPDATE "temp" SET
    "mass" = ROUND("mass", 2),
    "lat"  = ROUND("lat", 2),
    "long" = ROUND("long", 2);

DELETE FROM "temp" WHERE "nametype" = 'Relict';

create table "meteorites" (
    "id" INTEGER,
    "name" TEXT NOT NULL ,
    "class" TEXT NOT NULL,
    "mass" NUMBER DEFAULT NULL,
    "discovery" TEXT NOT NULL,
    "year" int DEFAULT NULL,
    "lat" number DEFAULT NULL,
    "long" number DEFAULT NULL,
    PRIMARY KEY ("id")
);

INSERT INTO "meteorites" ("name", "class", "mass", "discovery", "year", "lat", "long")
SELECT "name", "class", "mass", "discovery", "year", "lat", "long" FROM "temp"
ORDER BY "year", "name";

DROP TABLE "temp";
