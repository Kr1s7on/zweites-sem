## Section 2 Quiz
(Answer all questions in this section)

**1. Which SELECT statement will display both unique and non-unique combinations of the MANAGER_ID and DEPARTMENT_ID values from the EMPLOYEES table?**
- A. SELECT manager_id, department_id DISTINCT FROM employees;
- B. SELECT manager_id, department_id FROM employees;
- C. SELECT manager_id, DISTINCT department_id FROM employees;
- D. SELECT DISTINCT manager_id, department_id FROM employees;

<details>
<summary>Answer</summary>
D. SELECT DISTINCT manager_id, department_id FROM employees;
</details>

**2. Which of the following statements will work?**
- A. SELECT first_name ||' '||last_name NAME, department_id DEPARTMENT, salary*12 "ANNUAL SALARY" FROM employees WHERE name = 'King';
- B. SELECT first_name ||' '||last_name NAME, department_id DEPARTMENT, salary*12 'ANNUAL SALARY' FROM employees WHERE last_name = 'King';
- C. SELECT first_name ||' '||last_name NAME, department_id DEPARTMENT, salary*12 "ANNUAL SALARY" FROM employees WHERE last_name = 'King';
- D. SELECT first_name ||' '||last_name NAME, department_id DEPARTMENT, salary*12 'ANNUAL SALARY' FROM employees WHERE name = 'King';

<details>
<summary>Answer</summary>
C. SELECT first_name ||' '||last_name NAME, department_id DEPARTMENT, salary*12 "ANNUAL SALARY" FROM employees WHERE last_name = 'King';
</details>

**3. What will be the result of the SELECT statement and what will display?**
```sql
SELECT last_name, salary, salary + 300 FROM employees;
```

- A. Display the last name and salary of all employees who have a salary greater than 300.
- B. Display the last name, salary, and the results of adding 300 to each salary for all the employees.
- C. Modify the salary column by adding 300 and only display the last name and the new salary.
- D. Display the last name, salary, and the results of adding 300 to the salary of the first employee row.

<details>
<summary>Answer</summary>
B. Display the last name, salary, and the results of adding 300 to each salary for all the employees.
</details>

**4. Which of the following are true? (Choose Two)**
(Choose all correct answers)

- A. Date values are format-sensitive.
- B. Date values are enclosed in single quotation marks.
- C. Character strings are enclosed in double quotation marks.
- D. Character values are not case-sensitive.

<details>
<summary>Answer</summary>
A. Date values are format-sensitive, B. Date values are enclosed in single quotation marks.
</details>

**5. The PLAYERS table contains these columns:**

- PLAYER_ID NUMBER(9)
- LAST_NAME VARCHAR2(20)
- FIRST_NAME VARCHAR2(20)
- TEAM_ID NUMBER(4)
- MANAGER_ID NUMBER(9)
- POSITION_ID NUMBER(4)

**Which SELECT statement should you use if you want to display unique combinations of the TEAM_ID and MANAGER_ID columns?**

- A. SELECT team_id, DISTINCT manager_id FROM players;
- B. SELECT DISTINCT team_id, manager_id FROM players;
- C. SELECT team_id, manager_id FROM players;
- D. SELECT * FROM players;
- E. SELECT team_id, manager_id DISTINCT FROM players;

<details>
<summary>Answer</summary>
B. SELECT DISTINCT team_id, manager_id FROM players;
</details>

**6. The following is a valid SQL SELECT statement. True or False?**

```sql
SELECT first_name || ' ' || last_name alias AS Employee_Name FROM employees;
```

- A. True
- B. False

<details>
<summary>Answer</summary>
B. False
</details>

**7. Which comparison condition would you use to select rows that match a character pattern?**

- A. ALMOST
- B. SIMILAR
- C. LIKE
- D. IN

<details>
<summary>Answer</summary>
C. LIKE
</details>

**8. Which clause would you include in a SELECT statement to restrict the data returned to only the employees in department 10?**

- A. IS
- B. SELECT
- C. WHERE
- D. FROM

<details>
<summary>Answer</summary>
C. WHERE
</details>

**9. You need to display employees whose salary is in the range of 10000 through 25000 for employees in department 50. What does the WHERE clause look like?**

- A. WHERE department_id = 50 AND salary BETWEEN 25001 AND 10001
- B. WHERE department_id < 50 AND salary BETWEEN 10000 AND 25000
- C. WHERE department_id > 50 AND salary BETWEEN 10000 AND 25000
- D. WHERE department_id = 50 AND salary BETWEEN 10000 AND 25000

<details>
<summary>Answer</summary>
D. WHERE department_id = 50 AND salary BETWEEN 10000 AND 25000
</details>

**10. Which comparison operator searches for a specified character pattern?**

- A. BETWEEN...AND...
- B. LIKE
- C. IN
- D. IS NULL

<details>
<summary>Answer</summary>
B. LIKE
</details>

**11. Which of the following WHERE clauses would not select the number 10?**

- A. WHERE hours BETWEEN 10 AND 20
- B. WHERE hours <>10
- C. WHERE hours <= 10
- D. WHERE hours IN (8,9,10)

<details>
<summary>Answer</summary>
B. WHERE hours <>10
</details>

**12. Which two statements would select salaries that are greater than or equal to 2500 and less than or equal to 3500? (Choose two)**
(Choose all correct answers)

- A. WHERE salary <=2500 AND salary >= 3500
- B. WHERE salary >= 2500 AND salary <= 3500
- C. WHERE salary BETWEEN 3500 AND 2500
- D. WHERE salary BETWEEN 2500 AND 3500

<details>
<summary>Answer</summary>
B. WHERE salary >= 2500 AND salary <= 3500, D. WHERE salary BETWEEN 2500 AND 3500
</details>

**13. The EMPLOYEES table contains these columns:**

- LAST_NAME VARCHAR2(25)
- FIRST_NAME VARCHAR2(25)
- EMAIL VARCHAR2(50)

**You are writing a SELECT statement to retrieve the names of employees that have an email address.**

```sql
SELECT last_name||', '||first_name "Employee Name" FROM employees;
```

**Which WHERE clause should you use to complete this statement?**

- A. WHERE email = NULL;
- B. WHERE email IS NULL;
- C. WHERE email IS NOT NULL;
- D. WHERE email != NULL;

<details>
<summary>Answer</summary>
C. WHERE email IS NOT NULL;
</details>

**14. If you write queries using the BETWEEN operator, it does not matter in what order you enter the values, i.e. BETWEEN low value AND high value will give the same result as BETWEEN high value and low value. True or False?**

- A. True
- B. False

<details>
<summary>Answer</summary>
B. False
</details>

**15. Which of the following are examples of comparison operators used in the WHERE clause?**

- A. =, >, <, <=, >=, <>
- B. between _**and**_
- C. in (..,..,.. )
- D. like
- E. is null
- F. All of the above

<details>
<summary>Answer</summary>
F. All of the above
</details>
