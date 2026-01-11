USE company_db;
SELECT * FROM employees;


SELECT e.emp_id, e.emp_name , d.dept_name
FROM employees AS e
JOIN departments d ON e.dept_id = d.dept_id
WHERE d.dept_name = 'Development';


SELECT DISTINCT job_title
FROM employees;

SELECT * 
FROM employees
ORDER BY salary DESC ;


SELECT count(emp_name) AS total_emp
FROM employees;

SELECT d.dept_name, AVG(e.salary) AS average_salary
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
GROUP BY d.dept_name;

SELECT e.emp_name, d.dept_name 
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id;
