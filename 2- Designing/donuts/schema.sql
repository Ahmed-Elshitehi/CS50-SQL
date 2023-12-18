CREATE TABLE Ingredients(
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "price" INTEGER NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE Donuts(
    "id" INTEGER,
    "ingredient_id" INTEGER,
    "gluten_free" INTEGER NOT NULL,
    "price" INTEGER NOT NULL,
    PRIMARY KEY ("id"),
    FOREIGN KEy ("ingredient_id") REFERENCES "Ingredients"("id")
);

CREATE TABLE Customers(
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE Orders(
    "id" INTEGER,
    "donut_id" INTEGER,
    "customer_id" INTEGER,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("donut_id") REFERENCES "Donuts"("id")
    FOREIGN KEY ("customer_id") REFERENCES "Customers"("id")
);
