USE company;

-- Q) need to find min salary and give names who are geeting more than min salary
-- apply subquery
-- SELECT MIN(salary) 
-- FROM employees;

SELECT name,salary
FROM employees 
WHERE salary> (SELECT MIN(salary) 
FROM employees);
-- and also to arrange salaries in decending order

SELECT name,salary
FROM employees 
WHERE salary> (SELECT MIN(salary) 
FROM employees)
ORDER BY salary DESC; 

-- find employes with minnimum age
/*SET SQL_SAFE_UPDATES = 0;
UPDATE employees
SET emp_age = 30
WHERE department IN ("HR","IT");*/

SELECT*FROM employees;
SELECT name,emp_age
FROM employees
WHERE emp_age > (SELECT MIN(emp_age)
FROM employees);

-- print employees with average age and age of employees
SELECT AVG(emp_age)
FROM employees ;
-- 
SELECT (SELECT AVG(emp_age)FROM employees) AS avg_age,emp_age
FROM employees;

-- Nth hightest salary
SELECT DISTINCT salary
FROM employees
ORDER BY salary DESC
 LIMIT 3,1;