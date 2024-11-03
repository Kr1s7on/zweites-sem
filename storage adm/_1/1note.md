# Section 1 Notes

## 1. **Oracle Application Express (APEX)**

### Purpose & Role
- APEX is a tool to interact with Oracle databases, allowing users to build tables and retrieve information.
- Acts like an application layer, simplifying complex SQL operations for end-users.
- **Components in APEX:**
  - **SQL Workshop:** Used for learning SQL.
  - **Application Builder:** Used to design applications.

### Basics of SQL in APEX
- **Basic SELECT Statement:** Retrieves all rows from a table.
  - Syntax:  
    ```sql
    SELECT * FROM <table_name>;
    ```
- **SELECT with Conditions:** Retrieves a subset of rows based on specified conditions.
  - Syntax:  
    ```sql
    SELECT <column_name1>, <column_name2> FROM <table_name> WHERE <condition>;
    ```
- **Error Handling:** Correctly spell SQL commands and column/table names to avoid errors.

---

## 2. **Relational Database Technology**

### Key Concepts
- **Relational Database (RDBMS):** Stores data in tables with relationships via common fields.
- **Importance in Daily Life:** Used in ATM transactions, reservations, and traffic control systems.
  
### Properties of Tables
- Single-valued entries in columns, unique rows, and unique column names.
- Rows and columns order is insignificant to the database.

### SQL Statement Categories
1. **Data Manipulation Language (DML):** INSERT, UPDATE, DELETE.
2. **Data Definition Language (DDL):** CREATE, ALTER, DROP.
3. **Transaction Control Language (TCL):** COMMIT, ROLLBACK.
4. **Data Control Language (DCL):** GRANT, REVOKE.

### Key Terms
- **Primary Key:** Uniquely identifies each row.
- **Foreign Key:** Links to a primary key in another table to create relationships.

---

## 3. **Anatomy of a SQL Statement**

### SQL SELECT Statement
- **Purpose:** Retrieves data from a database.
- **Basic Structure:**  
  ```sql
  SELECT <column(s)> FROM <table_name>;
  ```
- **Projection:** Specifies columns to display.
- **Selection:** Specifies rows to display based on conditions.

### Operators in SQL
- **Arithmetic Operators:** Used for calculations (e.g., `+`, `-`, `*`, `/`).
- **Precedence:** Multiplication and division have higher precedence than addition and subtraction. Parentheses can alter order.

### Special Concepts
- **NULL Values:** Represents unknown or inapplicable data, distinct from zero or blank.
  - Arithmetic operations involving `NULL` result in `NULL`.
  
- **Aliases:** Rename column headings in the output for readability.
  - Syntax:
    ```sql
    SELECT column AS "Alias Name" FROM table;
    ```

---

### Summary
- **Oracle Application Express (APEX):** Key tool for SQL interaction.
- **SQL Basics:** SELECT statement, conditions, and handling errors.
- **Relational Database Structure:** Tables, relationships, and data access principles.
- **SQL Functions and Usage:** Using SELECT with projection and selection, operators, NULL values, and aliases.
