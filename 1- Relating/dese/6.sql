SELECT "name" from "schools" WHERE "id" in (
    SELECT "school_id" FROM "graduation_rates" WHERE "graduated" = 100
);
