-- REGISTRATIONS

-- Creating table
CREATE TABLE IF NOT EXISTS student_courses (
	studentid INT,
	course INT,
	grade FLOAT DEFAULT NULL,
	FOREIGN KEY (studentid) REFERENCES students(id),
	FOREIGN KEY (course) REFERENCES courses(code)
);

-- Inserting data
INSERT INTO student_courses (studentid, course)
	VALUES ((SELECT id FROM students WHERE id = 1), (SELECT code FROM courses WHERE code = 'INFO330A')),
	((SELECT id FROM students WHERE id = 1), (SELECT code FROM courses WHERE code = 'INFO448A')),
	((SELECT id FROM students WHERE id = 1), (SELECT code FROM courses WHERE code = 'INFO314')),
	((SELECT id FROM students WHERE id = 3), (SELECT code FROM courses WHERE code = 'INFO330A')),
	((SELECT id FROM students WHERE id = 3), (SELECT code FROM courses WHERE code = 'INFO449A')),
	((SELECT id FROM students WHERE id = 2), (SELECT code FROM courses WHERE code = 'BAW0100')),
	((SELECT id FROM students WHERE id = 2), (SELECT code FROM courses WHERE code = 'BAW100A')),
	((SELECT id FROM students WHERE id = 4), (SELECT code FROM courses WHERE code = 'BAW0100'));
