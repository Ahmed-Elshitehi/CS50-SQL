SELECT "name", SUM("H") as 'total hits'
FROM "teams" join "performances"
    ON "teams"."id" = "performances"."team_id"
WHERE "performances"."year" = 2001
GROUP BY "teams"."id"
ORDER BY "total hits" DESC
LIMIT 5
;
