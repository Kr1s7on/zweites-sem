-- SQL Basics

-- SELECT with specific columns
SELECT first_name, last_name FROM employees;

-- SELECT with ORDER BY
SELECT * FROM employees ORDER BY last_name ASC;

-- SELECT with LIMIT
SELECT * FROM employees LIMIT 10;

-- SELECT with GROUP BY
SELECT department, COUNT(*) FROM employees GROUP BY department;

-- SELECT with HAVING
SELECT department, AVG(salary) FROM employees GROUP BY department HAVING AVG(salary) > 60000;

-- INSERT INTO
INSERT INTO employees (first_name, last_name, department, salary) VALUES ('John', 'Doe', 'HR', 55000);

-- UPDATE
UPDATE employees SET salary = 60000 WHERE first_name = 'John' AND last_name = 'Doe';

-- DELETE
DELETE FROM employees WHERE first_name = 'John' AND last_name = 'Doe';

-- CREATE TABLE
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL
);

-- ALTER TABLE
ALTER TABLE employees ADD COLUMN hire_date DATE;

-- DROP TABLE
DROP TABLE departments;
