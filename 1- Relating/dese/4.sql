SELECT "city", count (*) as 'schools' FROM "schools"
WHERE "type" = 'Public School'
Group by "city"
ORDER BY "schools" DESC
LIMIT 10;
