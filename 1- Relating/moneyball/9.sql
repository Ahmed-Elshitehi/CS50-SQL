SELECT "name" ,ROUND(AVG("salary"), 2) as 'AVG'
FROM "teams" join "salaries"
    ON "teams"."id" = "salaries"."team_id"
WHERE "salaries"."year" = 2001
GROUP BY "teams"."id"
ORDER BY "AVG"
LIMIT 5;
