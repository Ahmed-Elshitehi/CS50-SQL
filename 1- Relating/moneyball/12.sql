SELECT * FROM(
    SELECT "first_name", "last_name"
    FROM
        "players" join "salaries"
            ON "players"."id" = "salaries"."player_id"
            JOIN "performances"
            ON "players"."id" = "performances"."player_id"
                AND "performances"."year" = "salaries"."year"
    WHERE "H" > 0 AND "performances"."year" = 2001
    ORDER BY ("salary" / "H") ,"first_name", "last_name"
    LIMIT 10
)

INTERSECT

SELECT * FROM(
    SELECT "first_name", "last_name"
    FROM
        "players" join "salaries"
            ON "players"."id" = "salaries"."player_id"
            JOIN "performances"
            ON "players"."id" = "performances"."player_id"
                AND "performances"."year" = "salaries"."year"
    WHERE "RBI" > 0 AND "performances"."year" = 2001
    ORDER BY ("salary" / "RBI") ,"first_name", "last_name"
    LIMIT 10
)
ORDER BY "last_name";
