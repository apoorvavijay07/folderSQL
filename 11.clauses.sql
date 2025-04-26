USE company;

SELECT*FROM employees;

-- Group by department based on average salary
SELECT department,AVG(salary) AS avgsal FROM employees
GROUP BY department;
-- count no. of employes according to department in company
SELECT department,count(name) AS no_employes FROM employees
GROUP BY department;

-- use condition for filtering
SELECT department,name    ,AVG(salary) AS avgsal
FROM employees
GROUP BY department,name
HAVING avgsal >= 35000;

-- q)find total no. of employes based on location
SELECT location, COUNT(name) as no_of_employes
FROM employees
GROUP BY location;

SELECT*FROM employees;
-- Q) Find max salary of employe from each location and in decending order
SELECT location, MAX(salary) AS max_salary_of_employee
FROM employees 
GROUP BY location
ORDER BY max_salary_of_employee DESC ;

-- Q) Find no. of employe from each department and arrange  in decending order
SELECT department, COUNT(name) as no_of_employes
FROM employees
GROUP BY department
ORDER BY no_of_employes DESC;

SELECT department,location    ,AVG(salary) AS avgsal
FROM employees
GROUP BY department,location
HAVING avgsal >= 35000;


