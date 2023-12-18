CREATE TABLE Users(
    "user_name",
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    PRIMARY KEY ("user_name")
);

CREATE TABLE Schools(
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "type" TEXT NOT NULL,
    "location" TEXT NOT NULL,
    "year" INTEGER NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE Companies(
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "industry" TEXT NOT NULL,
    "location" TEXT NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE userconnections (
    "user_A" TEXT,
    "user_B" TEXT,
    FOREIGN KEY ("user_A") REFERENCES "Users"("user_name"),
    FOREIGN KEY ("user_B") REFERENCES "Users"("user_name")
);

CREATE TABLE schoolsconnections (
    "user_name" TEXT,
    "shool_id" INTEGER,
    "start_date" TEXT NOT NULL,
    "end_date" TEXT,
    "degree" TEXT NOT NULL,
    FOREIGN KEY ("user_name") REFERENCES "Users"("user_name"),
    FOREIGN KEY ("shool_id") REFERENCES "shools"("id")
);

CREATE TABLE companiesconnections (
    "user_name" TEXT,
    "companies_id" INTEGER,
    "start_date" TEXT NOT NULL,
    "end_date" TEXT,
    "title" TEXT NOT NULL,
    FOREIGN KEY ("user_name") REFERENCES "Users"("user_name"),
    FOREIGN KEY ("Companies_id") REFERENCES "Companies"("id")
);
