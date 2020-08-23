SELECT * FROM student;
SELECT COUNT(*) FROM student;

-- Insert Data 
INSERT INTO student(name, major) VALUES('Jack', 'Biology');
INSERT INTO student(name, major) VALUES('Kate', 'Sociology');
INSERT INTO student(name, major) VALUES('Claire', 'Chemistry');
INSERT INTO student(name, major) VALUES('Mike', 'Computer Science');

-- Update Data 
UPDATE student 
SET name = 'Tom', major = 'undecided'
WHERE student_id = 1;

UPDATE student 
SET major = 'Biochemistry'
WHERE major = 'Bio' OR major = 'Chemistry';

-- Delete Data 
DELETE FROM student
WHERE name = 'Tom' AND major = 'undecided';

DELETE FROM student;


