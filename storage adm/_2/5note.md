# Notes for Section 5

## 1. Conversion Functions

### Data Type Conversions
- **Types of conversions**:
  - Implicit (automatic)
  - Explicit (manually specified)

### Main Conversion Functions
1. **TO_CHAR**:
   - Converts dates and numbers to character format
   - Useful for formatting display output

2. **TO_NUMBER**:
   - Converts character strings to numbers
   - Needed for calculations

3. **TO_DATE**:
   - Converts character strings to dates
   - Format must match the input string

### Date Formatting Elements
- YYYY: Full year (e.g., 2024)
- MM: Month number
- MONTH: Full month name
- DD: Day of month
- HH24: 24-hour time
- MI: Minutes
- SS: Seconds

## 2. NULL Functions

### Key NULL Functions
1. **NVL(expr1, expr2)**:
   - Replaces NULL with another value
   - If expr1 is NULL, returns expr2

2. **NVL2(expr1, expr2, expr3)**:
   - If expr1 is NOT NULL → returns expr2
   - If expr1 is NULL → returns expr3

3. **NULLIF(expr1, expr2)**:
   - If expr1 = expr2 → returns NULL
   - If expr1 ≠ expr2 → returns expr1

4. **COALESCE(expr1, expr2, ..., exprN)**:
   - Returns first NON-NULL expression
   - Can handle multiple expressions

## 3. Conditional Expressions

### CASE Expression
```sql
CASE expr
    WHEN value1 THEN result1
    WHEN value2 THEN result2
    ELSE default_result
END
```

A slightly more real example:
```sql
SELECT 
    employee_id,
    first_name,
    last_name,
    department_id,
    CASE department_id
        WHEN 1 THEN 'Sales'
        WHEN 2 THEN 'Engineering'
        WHEN 3 THEN 'HR'
        ELSE 'Other'
    END AS department_name
FROM employees;
```

### DECODE Function
```sql
DECODE(column, 
    search1, result1,
    search2, result2,
    default_result)
```

Example:
```sql
SELECT 
    employee_id,
    first_name,
    last_name,
    department_id,
    DECODE(department_id, 
        1, 'Sales',
        2, 'Engineering',
        3, 'HR',
        'Other') AS department_name
FROM employees;
```

### Key Differences
- CASE: ANSI SQL standard
- DECODE: Oracle-specific
- Both provide IF-THEN-ELSE functionality
- CASE is more readable and flexible

### Best Practices
1. Use CASE over DECODE (industry standard)
2. Always include ELSE clause
3. Keep data types consistent within expressions
4. Use meaningful result values