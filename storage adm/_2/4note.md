# Notes for Section 4

## Single-Row Functions in Oracle SQL

### 1. Character Functions

#### Case Manipulation Functions
- **LOWER**: Converts text to lowercase 
- **UPPER**: Converts text to uppercase
- **INITCAP**: Makes first letter of each word uppercase

#### Other Character Functions
- **CONCAT**: Joins two strings together
- **SUBSTR**: Gets part of a string
- **LENGTH**: Shows how long a string is
- **INSTR**: Finds position of a character in text
- **LPAD/RPAD**: Adds padding to left/right of text
- **TRIM**: Removes specified characters
- **REPLACE**: Swaps one text for another

### 2. Number Functions

- **ROUND**: Rounds numbers (can specify decimal places)
  - ROUND(45.926, 2) = 45.93
  - ROUND(45.926) = 46

- **TRUNC**: Cuts off decimal places without rounding
  - TRUNC(45.926, 2) = 45.92
  - TRUNC(45.926) = 45

- **MOD**: Gets remainder after division
  - Useful for checking odd/even numbers
  - MOD(5,2) = 1

### 3. Date Functions

- **SYSDATE**: Gets current database date/time

- **MONTHS_BETWEEN**: Calculates months between two dates

- **ADD_MONTHS**: Adds specific months to a date

- **NEXT_DAY**: Finds next occurrence of specified day

- **LAST_DAY**: Gets last day of the month

- **ROUND**: Rounds dates
  - Can round to nearest month/year

- **TRUNC**: Truncates dates
  - Removes time portion

### Important Notes:
- Use DUAL table to test functions without real data
- Functions can be used in SELECT, WHERE, and ORDER BY clauses
- Oracle stores dates internally as numbers
- Valid dates: January 1, 4712 BC to December 31, 9999 AD
- Default date format: DD-MON-YYYY

### Substitution Variables
- Use `:variable_name` in queries
- Lets you reuse queries with different values
- No quotes needed for text/date variables
- Must disable pop-up blockers to use