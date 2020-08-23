SELECT * 
FROM student;

SELECT *
FROM student
ORDER BY major, student_id DESC;

SELECT * 
FROM student
ORDER BY student_id DESC
LIMIT 2;

SELECT name, major
FROM student
WHERE major = 'Biology' OR name = 'Kate'
ORDER BY name DESC;

SELECT name, major 
FROM student
WHERE major <> 'Chemistry';

SELECT *
FROM student
WHERE student_id <= 3 AND name <> 'Jack';

SELECT *
FROM student 
WHERE name IN ('Claire', 'Kate', 'Mike');

SELECT *
FROM student 
WHERE major IN ('Biology', 'Chemistry') AND student_id > 2;


-- < > <= >= = <>(Not equal) AND OR 
