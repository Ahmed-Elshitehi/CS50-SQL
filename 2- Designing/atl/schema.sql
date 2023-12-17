CREATE TABLE Airlines(
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "concourse" TEXT NOT NULL CHECK("concourse" in ('A', 'B', 'C', 'D', 'E', 'F','T')),
    PRIMARY KEY ("id")
);

CREATE TABLE Flights (
    "id" INTEGER,
    "airline_id" INTEGER,
    "from" TEXT NOT NULL,
    "to" TEXT NOT NULL,
    "departure" TEXT NOT NULL,
    "arrival" TEXT NOT NULL,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("airline_id") REFERENCES "Airlines"("id")
);

CREATE TABLE Passengers (
    "id" INTEGER,
    "first_name" TEXT,
     "last_name" TEXT,
     "age" INTEGER CHECK ("age" > 0),
     PRIMARY KEY ("id")
);

CREATE TABLE Check_Ins (
    "id" INTEGER,
    "Passenders_id" INTEGER,
    "date_time" TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "flight_id" INTEGER,
    PRIMARY KEY("id"),
    FOREIGN KEY("Passenders_id") REFERENCES "Passengers"("id"),
    FOREIGN KEY("flight_id") REFERENCES "Passengers"("id")
);
