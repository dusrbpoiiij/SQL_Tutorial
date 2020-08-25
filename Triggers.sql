CREATE TABLE trigger_test (
	message VARCHAR(100)
);

DROP TABLE trigger_test;

DELIMITER $$
CREATE 
	TRIGGER my_trigger BEFORE INSERT
	ON employee
    FOR EACH ROW BEGIN
		INSERT INTO trigger_test VALUES('added new employee');
	END$$
DELIMITER ;

DELIMITER $$
CREATE 
	TRIGGER my_trigger1 BEFORE INSERT
	ON employee
    FOR EACH ROW BEGIN
		INSERT INTO trigger_test VALUES(NEW.first_name);
	END$$
DELIMITER ;


DELIMITER $$
CREATE 
	TRIGGER my_trigger2 BEFORE INSERT
	ON employee
    FOR EACH ROW BEGIN
		IF NEW.sex = 'M' THEN
			INSERT INTO trigger_test VALUES('added male employee'); 
		ELSEIF NEW.sex = 'F' THEN 
			INSERT INTO trigger_test VALUES('added female employee'); 
		ELSE
			INSERT INTO trigger_test VALUES('added other employee'); 
		END IF;
	END$$
DELIMITER ;


DROP TRIGGER my_trigger2;




INSERT INTO employee VALUES(100, 'David', 'Wallace', '1967-11-17', 'M', 250000, NULL, NULL);
INSERT INTO employee VALUES(101, 'Jan', 'Levinson', '1961-05-11', 'F', 110000, 100, 1);

SELECT * FROM trigger_test;
SELECT * FROM employee;
DELETE FROM employee;