SELECT "city", count (*) as 'Public schools' From "schools"
WHERE "type" = 'Public School'
GROUP BY "city" HAVING "Public schools" <=3
ORDER BY "public schools" DESC, "city";
