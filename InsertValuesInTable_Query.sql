CREATE TABLE heroes(
	"id" SERIAL PRIMARY KEY,
	"names" VARCHAR(30),
	age INT
);

CREATE TABLE orcs(
	"id" SERIAL PRIMARY KEY,
	"name" VARCHAR(30),
	age INT
);

INSERT INTO orcs ("name", age)
VALUES
('Nikolay', 23);


INSERT INTO heroes ("names", age)
VALUES
('Nikolay', 23);