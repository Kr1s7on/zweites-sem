**Group 1: Core Functions**

**4-1: Case and Character Manipulation**

**CASE Function:**
- Used to conditionally assign values.
  ```sql
  SELECT employee_id, 
         salary, 
         CASE 
             WHEN salary > 10000 THEN 'High Salary'
             WHEN salary BETWEEN 5000 AND 10000 THEN 'Medium Salary'
             ELSE 'Low Salary'
         END AS salary_category
  FROM employees;
  ```
  This query categorizes employees based on their salary.

**Character Manipulation Functions:**
- **INITCAP:** Capitalizes the first letter of each word.
  ```sql
  SELECT INITCAP(first_name) AS formatted_name
  FROM employees;
  ```
- **LOWER:** Converts all characters to lowercase.
- **UPPER:** Converts all characters to uppercase.
- **LENGTH:** Returns the length of a string.
- **SUBSTR:** Extracts a substring from a string.
  ```sql
  SELECT SUBSTR(last_name, 1, 3) AS last_name_initials
  FROM employees;
  ```

**4-2: Number Functions**
- **ROUND:** Rounds a number to a specified decimal place.
  ```sql
  SELECT ROUND(salary, 2) AS rounded_salary
  FROM employees;
  ```
- **TRUNC:** Truncates a number to a specified decimal place.
- **MOD:** Returns the remainder of a division operation.
- **ABS:** Returns the absolute value of a number.

**4-3: Date Functions**
- **SYSDATE:** Returns the current system date and time.
- **ADD_MONTHS:** Adds or subtracts months from a date.
  ```sql
  SELECT ADD_MONTHS(hire_date, 6) AS hire_date_plus_six_months
  FROM employees;
  ```
- **MONTHS_BETWEEN:** Calculates the number of months between two dates.

**5-1: Conversion Functions Practice Activities**
- **TO_CHAR:** Converts a date or number to a character string.
  ```sql
  SELECT TO_CHAR(hire_date, 'Month DD, YYYY') AS formatted_hire_date
  FROM employees;
  ```
- **TO_DATE:** Converts a character string to a date.
- **TO_NUMBER:** Converts a character string to a number.

**5-2: NULL Functions**
- **NVL:** Replaces NULL values with a specified value.
  ```sql
  SELECT NVL(commission_pct, 0) AS commission_pct
  FROM employees;
  ```
- **COALESCE:** Returns the first non-NULL value from a list of expressions.

**5-3: Conditional Expressions Practice Activities**
- **CASE** and **DECODE** functions can be used to create conditional expressions.
  ```sql
  SELECT employee_id, 
         salary, 
         DECODE(department_id, 
                10, 'Accounting', 
                20, 'Sales', 
                30, 'Marketing', 
                'Other') AS department_name
  FROM employees;
  ```
  This query categorizes employees based on their department ID.

**Group 2: Joins and Group Functions**

**6-1: Cross Joins and Natural Joins**
* **Cross Join:** Creates a Cartesian product of two tables, combining each row of the first table with each row of the second table.
  ```sql
  SELECT *
  FROM employees CROSS JOIN departments;
  ```
* **Natural Join:** Joins two tables based on columns with the same name and data type.
  ```sql
  SELECT *
  FROM employees NATURAL JOIN departments;
  ```

**6-2: Join Clauses**
* **INNER JOIN:** Returns rows that have matching values in both tables.
  ```sql
  SELECT e.first_name, d.department_name
  FROM employees e
  INNER JOIN departments d ON e.department_id = d.department_id;
  ```
* **LEFT OUTER JOIN:** Returns all rows from the left table, and the matched rows from the right table.
  ```sql
  SELECT e.first_name, d.department_name
  FROM employees e
  LEFT OUTER JOIN departments d ON e.department_id = d.department_id;
  ```
* **RIGHT OUTER JOIN:** Returns all rows from the right table, and the matched rows from the left table.
  ```sql
  SELECT e.first_name, d.department_name
  FROM employees e
  RIGHT OUTER JOIN departments d ON e.department_id = d.department_id;
  ```
* **FULL OUTER JOIN:** Returns all rows when there is a match in either left or right table.
  ```sql
  SELECT e.first_name, d.department_name
  FROM employees e
  FULL OUTER JOIN departments d ON e.department_id = d.department_id;
  ```

**6-3: Inner versus Outer Joins**
* **Inner Join:** Returns only the matching rows from both tables.
* **Outer Joins:** Return rows that match in either one or both tables, depending on the type of outer join.

**6-4: Self Joins and Hierarchical Queries**
* **Self Join:** Joins a table to itself to compare rows within the same table.
  ```sql
  SELECT e1.first_name, e2.first_name AS manager_name
  FROM employees e1
  JOIN employees e2 ON e1.manager_id = e2.employee_id;
  ```
* **Hierarchical Queries:** Used to query hierarchical data structures, such as organizational hierarchies.
  ```sql
  SELECT employee_id, first_name, manager_id
  FROM employees
  START WITH manager_id IS NULL
  CONNECT BY PRIOR employee_id = manager_id;
  ```

**Understanding Different Joins**

Here's a breakdown of when to use different types of joins and their purposes:

**1. Inner Join:**
   - **Purpose:** Returns rows that have matching values in both tables.
   - **When to use:** When you want to combine rows from two tables based on a common column and only keep the rows that have matching values in both tables.

**2. Left Outer Join:**
   - **Purpose:** Returns all rows from the left table, and the matched rows from the right table.
   - **When to use:** When you want to retrieve all rows from the left table, even if there are no matching rows in the right table.

**3. Right Outer Join:**
   - **Purpose:** Returns all rows from the right table, and the matched rows from the left table.
   - **When to use:** Similar to a left outer join, but focuses on the right table.

**4. Full Outer Join:**
   - **Purpose:** Returns all rows when there is a match in either left or right table.
   - **When to use:** When you want to combine rows from two tables and include all rows from both tables, whether or not they have matching values.

**5. Self Join:**
   - **Purpose:** Joins a table to itself to compare rows within the same table.
   - **When to use:** When you want to compare rows within a single table, such as finding employees who are also managers.

**Example Scenario:**
Imagine you have two tables: `employees` and `departments`.

**Scenario 1: Finding employees and their departments**
* **Inner Join:**
   ```sql
   SELECT e.first_name, d.department_name
   FROM employees e
   INNER JOIN departments d ON e.department_id = d.department_id;
   ```
   This will return a list of employees and their corresponding departments.

**Scenario 2: Finding employees who don't have a department**
* **Left Outer Join:**
   ```sql
   SELECT e.first_name, d.department_name
   FROM employees e
   LEFT OUTER JOIN departments d ON e.department_id = d.department_id
   WHERE d.department_id IS NULL;
   ```
   This will return a list of employees who don't have a department assigned.

By understanding the purpose of each join, you can effectively combine data from multiple tables to answer specific queries.


**7-1: Oracle Equijoin and Cartesian Product Practice Solutions**
* Practice exercises involving equijoins and Cartesian products.

**8-1: Group Functions**
* **COUNT:** Counts the number of rows.
  ```sql
  SELECT COUNT(*) AS total_employees
  FROM employees;
  ```
* **SUM:** Calculates the sum of values.
  ```sql
  SELECT SUM(salary) AS total_salary
  FROM employees;
  ```
* **AVG:** Calculates the average of values.
  ```sql
  SELECT AVG(salary) AS average_salary
  FROM employees;
  ```
* **MIN:** Returns the minimum value.
  ```sql
  SELECT MIN(salary) AS minimum_salary
  FROM employees;
  ```
* **MAX:** Returns the maximum value.
  ```sql
  SELECT MAX(salary) AS maximum_salary
  FROM employees;
  ```

**8-2: COUNT, DISTINCT, NVL**
* **COUNT(DISTINCT column_name):** Counts the number of distinct values in a column.
  ```sql
  SELECT COUNT(DISTINCT department_id) AS number_of_departments
  FROM employees;
  ```
* **NVL:** Replaces NULL values with a specified value. (Already explained in Group 1)

**Group 3: Advanced Queries**

**9-1: Using GROUP BY and HAVING Clauses**
* **GROUP BY:** Groups rows based on one or more columns.
  ```sql
  SELECT department_id, AVG(salary) AS average_salary
  FROM employees
  GROUP BY department_id;
  ```
* **HAVING:** Filters the groups created by the GROUP BY clause.
  ```sql
  SELECT department_id, AVG(salary) AS average_salary
  FROM employees
  GROUP BY department_id
  HAVING AVG(salary) > 10000;
  ```

**9-3: Set Operators**
* **UNION:** Combines the result sets of two or more SELECT statements, eliminating duplicate rows.
  ```sql
  (SELECT employee_id, first_name, last_name FROM employees WHERE department_id = 10)
  UNION
  (SELECT employee_id, first_name, last_name FROM employees WHERE department_id = 20);
  ```
* **UNION ALL:** Combines the result sets of two or more SELECT statements, including duplicate rows.
* **INTERSECT:** Returns rows that are present in both result sets.
* **MINUS:** Returns rows that are present in the first result set but not in the second.

**10-1: Fundamentals of Subqueries**
* **Subqueries:** Queries nested within another query.
  ```sql
  SELECT employee_id, first_name, last_name
  FROM employees
  WHERE salary > (SELECT AVG(salary) FROM employees);
  ```
  This query selects employees with a salary greater than the average salary.

**10-2: Single-Row Subqueries**
* Subqueries that return a single value.
  ```sql
  SELECT employee_id, first_name, last_name
  FROM employees
  WHERE department_id = (SELECT department_id FROM departments WHERE department_name = 'Sales');
  ```
  This query selects employees from the 'Sales' department.
