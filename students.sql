-- Students SQL

-- Creating Table
CREATE TABLE IF NOT EXISTS students (
	id INT PRIMARY KEY,
	firstname VARCHAR(40),
	lastname VARCHAR(80),
	age INT
);

-- Inserting Data
INSERT INTO students
	VALUES (1, 'Fred', 'Flintstone', 35),
	(2, 'Wilma', 'Flintstone', 29),
	(3, 'Barney', 'Rubble', 33),
	(4, 'Betty', 'Rubble', 29),
	(5, 'Pebbles', 'Flintstone', 1),
	(6, 'Bam-Bam', 'Rubble', 1),
	(7, 'Michael', 'Scott', 41),
	(8, 'Dwight', 'Schrute', 35),
	(9, 'Pam', 'Beesly', 26),
	(10, 'Jim', 'Halpert', 26);
