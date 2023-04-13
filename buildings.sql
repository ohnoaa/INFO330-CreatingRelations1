-- BUILDINGS

-- Creating Buildings Table
CREATE TABLE IF NOT EXISTS buildings (
	id INTEGER PRIMARY KEY NOT NULL,
	name VARCHAR(80) NOT NULL,
	shortname VARCHAR(10) UNIQUE
);

-- Inserting Buildings Data
INSERT INTO buildings (name, shortname)
	VALUES ('Kane Hall', 'KNE'),
	('Raitt Hall', 'RAI'),
	('Mary Gates Hall', 'MGH');

-- Creating Rooms Table	
CREATE TABLE IF NOT EXISTS rooms (
	number INT,
	buildingid INT,
	seating INT,
	FOREIGN KEY (buildingid) REFERENCES buildings(id)
);

-- Inserting Rooms Data
INSERT INTO rooms
	VALUES (131, (SELECT id FROM buildings WHERE name = 'Kane Hall'), 700),
	(123, (SELECT id FROM buildings WHERE name = 'Raitt Hall'), 70),
	(430, (SELECT id FROM buildings WHERE name = 'Mary Gates Hall'), 35);
