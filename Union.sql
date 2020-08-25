-- Find a list of employee and branch names and client_name
SELECT first_name AS Company_Names
FROM employee
UNION
SELECT branch_name 
FROM branch
UNION
SELECT client_name
FROM client;

-- Find a list of all clients & branch suppliers' name 
SELECT client_name, client.branch_id 
FROM client
UNION
SELECT supplier_name, branch_supplier.branch_id
FROM branch_supplier
ORDER BY branch_id;

-- Find a list of all money spent or earned by the company 
SELECT salary
FROM employee
UNION
SELECT total_sales
FROM works_with;
