-- Deleting and Creating Database 
DROP DATABASE Tutorial;
CREATE DATABASE Tutorial;

-- Creating Table 
CREATE TABLE student (
	student_id INT AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL,
    major VARCHAR(20) DEFAULT 'Undecided',
    PRIMARY KEY(student_id)
);

-- Dscribing Table 
DESCRIBE student;

-- Deleting Table 
DROP TABLE student;

-- Alter(Modify) Table 
ALTER TABLE student ADD gpa DECIMAL(3, 2);
ALTER TABLE student DROP COLUMN gpa;