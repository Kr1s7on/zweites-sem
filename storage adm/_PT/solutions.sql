======onetwo
-- Q1
SELECT Name, Salary
FROM employees;

-- Q2
SELECT *
FROM employees
WHERE Department = 'IT';

-- Q3
SELECT *
FROM employees
WHERE Department = 'IT' AND Salary > 6000;

-- Q4
SELECT *
FROM employees
WHERE Name LIKE 'J%';

-- Q5
SELECT *
FROM orders
WHERE OrderDate >= '2023-11-03'; -- Changed ">" to ">=" for clarity if you want the exact date.

-- Bonus
SELECT CustomerName, TotalAmount
FROM orders
WHERE TotalAmount > 200
OR CustomerName LIKE '%Green%';

============================================

======fourfive

-- 4.1
-- T1
SELECT UPPER(Name) AS UppercaseName
FROM Employees;

-- T2
SELECT INITCAP(Name) AS CapitalizedName
FROM Employees;

-- T3
SELECT CONCAT(Name, ' - ', Position) AS NamePosition
FROM Employees;

SELECT Name || ' - ' || Position AS NamePosition
FROM Employees;


-- 4.2
-- T4
SELECT ProductName, Price - (Price * Discount / 100) AS DiscountedPrice
FROM Products;

-- T5
SELECT 
    ProductName, 
    ROUND(Price - (Price * Discount / 100), 0) AS RoundedDPrice
From 
    Products;



============================================

SELECT Employees.Name AS EmpName

SELECT Employees.Name AS EmployeeName, Departments.DepartmentName
FROM Employees
CROSS JOIN Departments;

SELECT Name, DepartmentName
FROM Employees
NATURAL JOIN Departments;





-- Q1
SELECT last_name, department_name
FROM employees
CROSS JOIN departments;


-- Q2
SELECT department_id, department_name, location_id, city
FROM departments
NATURAL JOIN locations;


-- Q3
SELECT department_id, department_name, location_id, city
FROM departments
NATURAL JOIN locations
WHERE department_id IN (20, 50);


-- 6.2
-- Q1




