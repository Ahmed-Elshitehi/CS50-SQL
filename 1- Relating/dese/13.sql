SELECT "schools"."id", "graduation_rates"."school_id", "graduation_rates"."id"
FROM "schools" join "graduation_rates"
ON "schools"."id" = "graduation_rates"."school_id"
