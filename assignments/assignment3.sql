USE company_db;
SELECT * FROM employees;

ALTER TABLE employees
ADD manager_id INT;

UPDATE employees SET manager_id = 1004 WHERE emp_id = 1001;
UPDATE employees SET manager_id = 1004 WHERE emp_id = 1002;
UPDATE employees SET manager_id = 1005 WHERE emp_id = 1003;
UPDATE employees SET manager_id = NULL WHERE emp_id = 1004;
UPDATE employees SET manager_id = 1003 WHERE emp_id = 1005;

SELECT e.emp_name AS employees,
	   m.emp_name  AS manager
FROM employees e
LEFT JOIN employees m ON e.manager_id = m.emp_id;

SELECT emp_name , salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

SELECT e.emp_name, d.dept_name, c.company_name
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
JOIN companies c ON d.company_id = c.company_id;


SELECT emp_name, salary
FROM employees
WHERE salary = (
    SELECT MAX(salary)
    FROM employees
    WHERE salary < (SELECT MAX(salary) FROM employees)
);


SELECT emp_name,
       dept_id,
       salary,
       RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM employees;



SELECT emp_name,
       salary,
       CASE
           WHEN salary < 40000 THEN 'Low'
           WHEN salary BETWEEN 40000 AND 55000 THEN 'Medium'
           ELSE 'High'
       END AS salary_category
FROM employees;






