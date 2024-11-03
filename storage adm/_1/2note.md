# Section 2 Notes (SQL Basic Queries & Filtering)

## SELECT Statement Basics
- Must include SELECT and FROM clauses
- WHERE clause is optional
- Basic syntax: `SELECT column FROM table [WHERE condition];`

## Column Operations
- Use `DESCRIBE` (or `DESC`) to see table structure and data types
- Concatenate columns using `||` operator
  - Example: `first_name || ' ' || last_name`
  - Useful for combining text output
- Use `DISTINCT` to remove duplicate rows
  - Must be right after SELECT keyword
  - Example: `SELECT DISTINCT department_id FROM employees;`

## WHERE Clause
- Filters rows based on conditions
- Follows the FROM clause
- Basic syntax: `WHERE column_name comparison_condition value`

## Comparison Operators
1. Basic operators:
   - `=` (equal to)
   - `>` (greater than)
   - `>=` (greater than or equal)
   - `<` (less than)
   - `<=` (less than or equal)
   - `<>` or `!=` (not equal)

2. Advanced operators:
   - `BETWEEN...AND`: Check range of values (inclusive)
     - Example: `WHERE salary BETWEEN 9000 AND 11000`
   - `IN`: Check if value matches any in a list
     - Example: `WHERE country_id IN ('UK', 'CA')`
   - `LIKE`: Pattern matching
     - % matches any sequence of characters
     - _ matches single character
     - Example: `WHERE last_name LIKE '_o%'`

## Working with Different Data Types
- Character strings need single quotes: `WHERE name = 'Smith'`
- Numbers don't need quotes: `WHERE salary = 5000`
- Dates need single quotes: `WHERE hire_date = '01-Jan-2000'`
- Case-sensitive for text searches

## NULL Values
- NULL means unavailable, unknown, or not applicable
- Use `IS NULL` to check for NULL values
- Use `IS NOT NULL` to check for non-NULL values
- Example: `WHERE manager_id IS NULL`
