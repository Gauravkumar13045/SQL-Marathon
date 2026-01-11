CREATE DATABASE company_db;
USE company_db;

CREATE TABLE companies (
company_id INT PRIMARY KEY,
company_name VARCHAR(50) NOT NULL,
city VARCHAR(20) NOT NULL,
established_year INT NOT NULL
);

INSERT INTO companies VALUES
(1, 'Tata Digital Services', 'Mumbai', 2014),
(2, 'Infosys Technologies', 'Bengaluru', 1981),
(3, 'Reliance Industries', 'Mumbai', 1973),
(4, 'Wipro Solutions', 'Bengaluru', 1945),
(5, 'HCL Technologies', 'Noida', 1976);

SELECT * FROM companies;


CREATE TABLE departments(
id INT PRIMARY KEY,
dept_name VARCHAR(50) NOT NULL,
company_id INT NOT NULL,
FOREIGN KEY (company_id) REFERENCES companies(company_id)
);

ALTER TABLE departments
RENAME COLUMN id TO dept_id;

INSERT INTO departments VALUES
(101, 'Human Resources', 1),
(102, 'Development', 1),
(103, 'Marketing', 2),
(104, 'Finance', 2),
(105, 'IT Support', 3);

SELECT * FROM departments;

CREATE TABLE employees(
emp_id INT PRIMARY KEY,
emp_name VARCHAR(100) NOT NULL,
age INT NOT NULL,
salary INT NOT NULL,
dept_id INT NOT NULL,
FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

ALTER TABLE employees
ADD job_title VARCHAR(50);

INSERT INTO employees VALUES
(1001, 'Rahul Sharma', 28, 45000, 101, 'Software Engineer'),
(1002, 'Anita Verma', 32, 52000, 102, 'HR Executive'),
(1003, 'Amit Patel', 26, 40000, 103, 'Marketing Analyst'),
(1004, 'Sneha Kulkarni', 35, 60000, 104, 'Finance Manager'),
(1005, 'Rohit Singh', 24, 35000, 105, 'IT Support Engineer');


SELECT * FROM employees;

