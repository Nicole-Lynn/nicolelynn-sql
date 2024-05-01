--Ingredients
CREATE TABLE "ingredients" (
    "id" INTEGER,
    "name" TEXT,
    "unit" TEXT,
    "price_per_unit" REAL,
    PRIMARY KEY("id")
);


--Donuts
CREATE TABLE "donuts" (
    "id" INTEGER,
    "name" TEXT,
    "gluten_level" TEXT CHECK("gluten_level" IN ("gluten free", "not gluten free")),
    "price" REAL,
    PRIMARY KEY("id")
);

CREATE TABLE "donut_ingredient" (
    "donut_id" INTEGER,
    "ingredient_id" INTEGER,
    PRIMARY KEY("donut_id", "ingredient_id"),
    FOREIGN KEY("donut_id") REFERENCES "donuts"("id"),
    FOREIGN KEY("ingredient_id") REFERENCES "ingredients"("id")
);


--Customers
CREATE TABLE "customers" (
    "id" INTEGER,
    "first_name" TEXT,
    "last_name" TEXT,
    "order_id" INTEGER,
    PRIMARY KEY("id"),
    FOREIGN KEY("order_id") REFERENCES "orders"("id")
);


--Orders
CREATE TABLE "orders" (
    "id" INTEGER,
    "customer_id" INTEGER,
    PRIMARY KEY("id"),
    FOREIGN KEY("customer_id") REFERENCES "customers"("id")
);

CREATE TABLE "order_donuts" (
    "order_id" INTEGER,
    "donut_id" INTEGER,
    "order_quantity" INTEGER,
    FOREIGN KEY("order_id") REFERENCES "orders"("id"),
    FOREIGN KEY("donut_id") REFERENCES "donuts"("id")
);




