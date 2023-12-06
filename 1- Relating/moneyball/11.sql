SELECT "first_name", "last_name", ("salary" / "H") as 'dollars per hit'
FROM
    "players" join "salaries"
        ON "players"."id" = "salaries"."player_id"
        JOIN "performances"
        ON "players"."id" = "performances"."player_id"
            AND "performances"."year" = "salaries"."year"
WHERE "H" > 0 AND "performances"."year" = 2001
ORDER BY "dollars per hit" ,"first_name", "last_name"
LIMIT 10;
