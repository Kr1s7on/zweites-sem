Certainly! Here’s **Grp 1** formatted with practical questions and solutions:

---

### **Grp 1 Topics**
1. **Case and Character Manipulation**
2. **Number Functions**
3. **Date Functions**
4. **Conversion Functions**
5. **NULL Functions**
6. **Conditional Expressions**

---

### **Practical Questions for Grp 1**

#### **4-1: Case and Character Manipulation**
Consider the **Employees** table:

| EmployeeID | Name       | Position  |
|------------|------------|-----------|
| 1          | John Smith | Manager  |
| 2          | Jane Doe   | Assistant|
| 3          | Alice Green| Manager  |

**Task 1**: Write a query to convert all employee names to uppercase.

**Task 2**: Write a query to capitalize the first letter of each employee’s name.

**Task 3**: Write a query to concatenate the `Name` and `Position` columns with a hyphen between them.

---

#### **4-2: Number Functions**
Consider the **Products** table:

| ProductID | ProductName | Price | Discount |
|-----------|-------------|-------|----------|
| 101       | Widget A    | 50    | 10       |
| 102       | Widget B    | 60    | 15       |
| 103       | Widget C    | 40    | 20       |

**Task 4**: Write a query to calculate the discounted price of each product.

**Task 5**: Write a query to round the discounted price to the nearest integer.

---

#### **4-3: Date Functions**
Consider the **Orders** table:

| OrderID | OrderDate  | TotalAmount |
|---------|------------|-------------|
| 1       | 2023-11-01 | 250         |
| 2       | 2023-11-05 | 120         |
| 3       | 2023-11-10 | 300         |

**Task 6**: Write a query to calculate the number of months between the current date and the order date.

**Task 7**: Write a query to display the last day of the month for each order's `OrderDate`.

---

#### **5-1: Conversion Functions**
Consider the **Sales** table:

| SaleID | SaleDate  | SaleAmount |
|--------|-----------|------------|
| 1      | 2023-11-01| 500        |
| 2      | 2023-11-03| 300        |

**Task 8**: Write a query to convert the `SaleDate` to a string format (`'YYYY-MM-DD'`).

**Task 9**: Write a query to convert the `SaleAmount` to a number.

---

#### **5-2: NULL Functions**
Consider the **Employees** table:

| EmployeeID | Name       | Department |
|------------|------------|------------|
| 1          | John Smith | HR         |
| 2          | Jane Doe   | NULL       |

**Task 10**: Write a query to return employee names, but replace `NULL` department values with the string `'No Department'`.

**Task 11**: Write a query to check if the department is `NULL` and return `'No Department'` or the actual department name.

---

#### **5-3: Conditional Expressions**
Consider the **Sales** table:

| SaleID | ProductName | Quantity | SaleAmount |
|--------|-------------|----------|------------|
| 1      | Widget A    | 5        | 100        |
| 2      | Widget B    | 3        | 150        |

**Task 12**: Write a query to display the sale amount with a message `'High Sale'` if it is above 120, and `'Low Sale'` otherwise.

**Task 13**: Write a query using the `DECODE` function to categorize employees into `'High'`, `'Medium'`, or `'Low'` based on their salary.

---

### **Solutions for Grp 1**

#### **4-1: Case and Character Manipulation**

**Solution 1**: Convert all employee names to uppercase.
```sql
SELECT UPPER(Name) AS UppercaseName
FROM Employees;
```

**Solution 2**: Capitalize the first letter of each employee’s name.
```sql
SELECT INITCAP(Name) AS CapitalizedName
FROM Employees;
```

**Solution 3**: Concatenate `Name` and `Position` with a hyphen.
```sql
SELECT CONCAT(Name, ' - ', Position) AS NamePosition
FROM Employees;
```
*Alternatively, use `||` operator in Oracle for concatenation*:
```sql
SELECT Name || ' - ' || Position AS NamePosition
FROM Employees;
```

---

#### **4-2: Number Functions**

**Solution 4**: Calculate the discounted price of each product.
```sql
SELECT ProductName, Price - (Price * Discount / 100) AS DiscountedPrice
FROM Products;
```

**Solution 5**: Round the discounted price to the nearest integer.
```sql
SELECT ProductName, ROUND(Price - (Price * Discount / 100), 0) AS RoundedDiscountedPrice
FROM Products;
```

---

#### **4-3: Date Functions**

**Solution 6**: Calculate the number of months between the current date and the order date.
```sql
SELECT OrderID, ORDERDATE, MONTHS_BETWEEN(SYSDATE, OrderDate) AS MonthsSinceOrder
FROM Orders;
```

**Solution 7**: Display the last day of the month for each order's `OrderDate`.
```sql
SELECT OrderID, ORDERDATE, LAST_DAY(OrderDate) AS LastDayOfMonth
FROM Orders;
```

---

#### **5-1: Conversion Functions**

**Solution 8**: Convert the `SaleDate` to a string format (`'YYYY-MM-DD'`).
```sql
SELECT SaleID, TO_CHAR(SaleDate, 'YYYY-MM-DD') AS FormattedSaleDate
FROM Sales;
```

**Solution 9**: Convert the `SaleAmount` to a number.
```sql
SELECT SaleID, TO_NUMBER(SaleAmount) AS NumericSaleAmount
FROM Sales;
```

---

#### **5-2: NULL Functions**

**Solution 10**: Return employee names, replacing `NULL` department values with `'No Department'`.
```sql
SELECT Name, NVL(Department, 'No Department') AS Department
FROM Employees;
```

**Solution 11**: Check if the department is `NULL` and return `'No Department'` or the actual department name.
```sql
SELECT Name, 
       CASE 
           WHEN Department IS NULL THEN 'No Department'
           ELSE Department
       END AS Department
FROM Employees;
```

---

#### **5-3: Conditional Expressions**

**Solution 12**: Display the sale amount with a message `'High Sale'` if it is above 120, and `'Low Sale'` otherwise.
```sql
SELECT ProductName, SaleAmount,
       CASE
           WHEN SaleAmount > 120 THEN 'High Sale'
           ELSE 'Low Sale'
       END AS SaleCategory
FROM Sales;
```

**Solution 13**: Use `DECODE` to categorize employees based on their salary.
```sql
SELECT Name, Salary, 
       DECODE(Salary, 
              WHEN Salary > 5000 THEN 'High', 
              WHEN Salary BETWEEN 3000 AND 5000 THEN 'Medium',
              'Low') AS SalaryCategory
FROM Employees;
```

---

### **Key Notes**
- **Case and Character Manipulation**: Functions like `UPPER`, `INITCAP`, `CONCAT`, and `||` are used for changing and concatenating text.
- **Number Functions**: Use `ROUND`, `TRUNC`, and `MOD` for numeric calculations and rounding.
- **Date Functions**: Functions like `MONTHS_BETWEEN`, `LAST_DAY`, and `SYSDATE` are useful for manipulating and comparing dates.
- **Conversion Functions**: `TO_CHAR`, `TO_NUMBER`, and `TO_DATE` help convert between different data types.
- **NULL Functions**: `NVL`, `NVL2`, and `COALESCE` are used to handle `NULL` values in SQL.
- **Conditional Expressions**: `CASE` and `DECODE` are used for conditional logic inside queries.

---

Let me know if you need further assistance or more clarification! 😊