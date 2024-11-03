# Notes for Section 3

## 1. Sorting Data (ORDER BY) - Key Test Topics

### Basic Syntax
```sql
SELECT column1, column2
FROM table_name
ORDER BY column1 [ASC|DESC];
```

### Important Points for Tests
1. Column Alias Usage:
```sql
SELECT last_name, hire_date AS "Start Date"
FROM employees
ORDER BY "Start Date";
```

2. Multiple Column Sorting:
```sql
-- Orders by department first, then by last name
SELECT department_id, last_name
FROM employees
ORDER BY department_id DESC, last_name ASC;
```

3. Common Test Questions:
- Order of execution in queries:
  1. FROM clause (finds table)
  2. WHERE clause (filters rows)
  3. SELECT clause (gets columns)
  4. ORDER BY clause (sorts results)
- Position requirement: ORDER BY must always be last
- Can sort by column number (not recommended):
  ```sql
  SELECT last_name, salary
  FROM employees
  ORDER BY 2;  -- Orders by salary
  ```

## 2. Logical Operators - Test Focus Areas

### Common Test Scenarios

1. Complex WHERE Clauses:
```sql
SELECT last_name, salary, department_id
FROM employees
WHERE (department_id = 50 OR department_id = 80)
AND salary > 5000;
```

2. Precedence Rules Examples:
```sql
-- These queries give different results:
-- Query 1
WHERE department_id = 50 AND salary > 5000 OR job_id = 'IT_PROG'

-- Query 2
WHERE department_id = 50 AND (salary > 5000 OR job_id = 'IT_PROG')
```

### Key Test Points
1. Truth Tables:
- AND: True only if both conditions true
- OR: True if at least one condition true
- NOT: Reverses the condition

2. Common Mistakes to Avoid:
- Forgetting AND takes precedence over OR
- Not using parentheses to group conditions
- Incorrect operator combinations with NULL values

## 3. SQL Functions - Exam Topics

### Single-Row Functions
1. Types to Remember:
- Character Functions
  ```sql
  UPPER('hello')  -- Result: HELLO
  LOWER('HELLO')  -- Result: hello
  LENGTH('hello') -- Result: 5
  ```
- Number Functions
  ```sql
  ROUND(45.926, 2)  -- Result: 45.93
  TRUNC(45.926, 2)  -- Result: 45.92
  ```
- Date Functions
  ```sql
  SYSDATE          -- Current date
  ADD_MONTHS(date, n)
  MONTHS_BETWEEN(date1, date2)
  ```

### Multiple-Row Functions
1. Basic Group Functions:
```sql
SELECT 
    COUNT(*),      -- Counts rows
    MAX(salary),   -- Highest salary
    MIN(salary),   -- Lowest salary
    AVG(salary),   -- Average salary
    SUM(salary)    -- Total salary
FROM employees;
```

### Test-Related Points
1. Key Differences:
- Single-row: One output per input row
- Multiple-row: One output per group of rows

2. Common Exam Questions:
- Identifying function type (single vs multiple)
- Proper function syntax
- NULL handling in functions
- Nested function usage

### Practice Questions to Consider
1. What would this return?
```sql
SELECT department_id, last_name
FROM employees
WHERE department_id IN (50,80) 
AND first_name LIKE 'C%'
OR last_name LIKE '%s%';
```

2. How would these sorts differ?
```sql
-- Sort 1
ORDER BY hire_date, salary DESC

-- Sort 2
ORDER BY hire_date DESC, salary
```

3. Function identification:
- Which is NOT a multiple-row function?
  a) COUNT
  b) UPPER
  c) AVG
  d) SUM

### Remember
- Order of operations is crucial in complex queries
- Parentheses can change default precedence
- NULL values follow special rules in sorting and functions
- Function types determine how many rows of output you'll get

These topics commonly appear in tests through:
- Multiple choice questions
- SQL query writing
- Query output prediction
- Error identification in queries
- Sorting order questions
- Function categorization
