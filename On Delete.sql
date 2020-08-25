DELETE FROM employee
WHERE emp_id = 102;

SELECT * FROM branch;   -- 외래키인 mgr_id : null 되어버림. why? 처음 만들때 ON DELETE SET NULL 지정 했기 때문 

SELECT * FROM employee;   -- 내부키인 super_id : null 되어버림. why? 처음 만들때 ON DELETE SET NULL 지정 했기 때문 

DELETE FROM branch 
WHERE branch_id = 2;

SELECT * FROM branch_supplier;   -- 외래키인 branch_id : 삭제됨  why? 처음 만들때 ON DELETE CASCADE 지정 했기 때문 