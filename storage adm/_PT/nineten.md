Here's **Grp 3** with practical questions and solutions:

---

### **Grp 3 Topics**
1. **Using GROUP BY and HAVING Clauses**
2. **Set Operators**
3. **Fundamentals of Subqueries**
4. **Single-Row Subqueries**

---

### **Practical Questions for Grp 3**

#### **9-1: Using GROUP BY and HAVING Clauses**
Consider the **Sales** table:

| SaleID | ProductName | Quantity | SaleAmount |
|--------|-------------|----------|------------|
| 1      | Widget A    | 5        | 100        |
| 2      | Widget B    | 3        | 150        |
| 3      | Widget A    | 7        | 140        |
| 4      | Widget C    | 2        | 80         |
| 5      | Widget B    | 4        | 160        |

**Task 1**: Write a query to find the total `SaleAmount` and `Quantity` for each `ProductName`, grouping by `ProductName`.

**Task 2**: Write a query to find products with total sales (`SaleAmount`) greater than 200 using the `HAVING` clause.

---

#### **9-3: Set Operators**
Consider the **Employees** table:

| EmployeeID | Name          | Department |
|------------|---------------|------------|
| 1          | John Smith    | HR         |
| 2          | Jane Doe      | IT         |
| 3          | Alice Green   | HR         |
| 4          | Bob Brown     | Finance    |

**Task 3**: Write a query to return all employees from either the **HR** or **IT** department using the `UNION` operator.

**Task 4**: Write a query to find employees who are only in the **HR** department, excluding those in **IT**, using the `EXCEPT` operator (or `MINUS` in Oracle).

---

#### **10-1: Fundamentals of Subqueries**
Consider the **Employees** table:

| EmployeeID | Name         | Department | Salary |
|------------|--------------|------------|--------|
| 1          | John Smith   | HR         | 5000   |
| 2          | Jane Doe     | IT         | 6000   |
| 3          | Bob Brown    | IT         | 4500   |

**Task 5**: Write a query to find all employees whose salary is greater than the **average salary** of all employees.

---

#### **10-2: Single-Row Subqueries**
Consider the **Orders** table:

| OrderID | CustomerName | OrderDate  | TotalAmount |
|---------|--------------|------------|-------------|
| 1       | John Smith   | 2023-11-01 | 250         |
| 2       | Alice Green  | 2023-11-15 | 120         |
| 3       | Bob Brown    | 2023-11-10 | 300         |

**Task 6**: Write a query to display the `OrderID` and `CustomerName` of orders where the `TotalAmount` is higher than the **maximum** order amount.

---

### **Solutions for Grp 3**

#### **9-1: Using GROUP BY and HAVING Clauses**

**Solution 1**: Find the total `SaleAmount` and `Quantity` for each `ProductName`, grouping by `ProductName`.
```sql
SELECT ProductName, SUM(SaleAmount) AS TotalSaleAmount, SUM(Quantity) AS TotalQuantity
FROM Sales
GROUP BY ProductName;
```

**Solution 2**: Find products with total sales greater than 200 using the `HAVING` clause.
```sql
SELECT ProductName, SUM(SaleAmount) AS TotalSaleAmount
FROM Sales
GROUP BY ProductName
HAVING SUM(SaleAmount) > 200;
```

---

#### **9-3: Set Operators**

**Solution 3**: Return all employees from either **HR** or **IT** department using the `UNION` operator.
```sql
SELECT Name FROM Employees WHERE Department = 'HR'
UNION
SELECT Name FROM Employees WHERE Department = 'IT';
```

**Solution 4**: Find employees who are only in the **HR** department, excluding those in **IT**, using the `EXCEPT` (Oracle's `MINUS`) operator.
```sql
SELECT Name FROM Employees WHERE Department = 'HR'
MINUS
SELECT Name FROM Employees WHERE Department = 'IT';
```

---

#### **10-1: Fundamentals of Subqueries**

**Solution 5**: Find all employees whose salary is greater than the **average salary** of all employees.
```sql
SELECT Name, Salary
FROM Employees
WHERE Salary > (SELECT AVG(Salary) FROM Employees);
```

---

#### **10-2: Single-Row Subqueries**

**Solution 6**: Display the `OrderID` and `CustomerName` of orders where the `TotalAmount` is higher than the **maximum** order amount.
```sql
SELECT OrderID, CustomerName
FROM Orders
WHERE TotalAmount > (SELECT MAX(TotalAmount) FROM Orders);
```

---

### **Key Notes**
- **GROUP BY**: Groups rows that have the same values in specified columns and applies aggregate functions (e.g., `SUM()`, `COUNT()`) on those groups.
- **HAVING**: Used to filter the results after `GROUP BY` (like `WHERE` but for grouped data).
- **Set Operators**: Used to combine results from multiple queries:
  - `UNION`: Combines results, removing duplicates.
  - `EXCEPT` or `MINUS` (Oracle): Returns the difference between two result sets.
- **Subqueries**:
  - A **subquery** is a query nested within another query (usually in `SELECT`, `FROM`, or `WHERE`).
  - **Single-row subqueries** return only one row/column and can be used for comparison.
  - You can use a subquery in place of a value or as part of a condition (e.g., greater than average).

---

Let me know if you need further explanation or if you'd like to move on to more topics! 😊